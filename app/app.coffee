`import Resolver from 'resolver'`

App = Em.Application.extend
  LOG_ACTIVE_GENERATION: true
  LOG_MODULE_RESOLVER: true
  LOG_TRANSITIONS: true
  LOG_TRANSITIONS_INTERNAL: true
  LOG_VIEW_LOOKUPS: true
  modulePrefix: 'abode' # TODO: loaded via config
  Resolver: Resolver['default']

Ember.RSVP.configure 'onerror', (error) ->
  ### ensure unhandled promises raise awareness.
  may result in false negatives, but visibility is more important
  ###
  if error instanceof Error
    Ember.Logger.assert(false, error)
    Ember.Logger.error(error.stack)

DS.DebugAdapter.reopen
  getModelTypes: ->
    self = this
    Em.keys(requirejs._eak_seen).filter (key)->
      match = key.match /models\//
      requireModule = self.detect require(key).default
      !! match and requireModule
    .map (key)->
      type = require(key).default
      typeKey = key.match(/models\/(.*)/)[1]
      type.toString = (-> typeKey);
      type

DS.LSAdapter.reopen
  _namespaceForType: (type)->
    namespace = Em.String.pluralize type.typeKey || type.toString()
    this._data[namespace] || this._data[namespace] = records: {}

  createRecord: (store, type, record) ->
    @_loadData()
    namespace = this._namespaceForType type
    @_addRecordToNamespace namespace, record
    @_saveData()
    Em.RSVP.resolve()

  updateRecord: (store, type, record) ->
    @_loadData()
    namespace = @_namespaceForType type
    id = record.get 'id'
    namespace.records[id] = record.toJSON includeId: true
    this._saveData()
    Em.RSVP.resolve()

DS.JSONSerializer.reopen
    serializeHasMany : ( record, json, relationship ) ->
        key = relationship.key
        relationshipType = DS
                            .RelationshipChange
                            .determineRelationshipType record.constructor, relationship

        if relationshipType is 'manyToNone' or 'manyToMany' or 'manyToOne'
            json[key] = Em.get(record, key).mapBy('id')


`export default App`