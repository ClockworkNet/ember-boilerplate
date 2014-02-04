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
      type.toString = (-> typeKey)
      type

DS.LSAdapter.reopen
  createRecord: (store, type, record) ->
    namespaceRecords = this._namespaceForType(type)
    recordHash = record.serialize includeId: true

    namespaceRecords.records[recordHash.id] = recordHash

    this.persistData type, namespaceRecords
    return Ember.RSVP.resolve()

#   _namespaceForType: (type) ->
#     namespace = this.modelNamespace(type)
#     storage   = localStorage.getItem(this.adapterNamespace())
#     obj       = JSON.parse(storage) if storage
#     data      = obj[namespace] if obj

#     if data
#         data
#       else
#         records:{}


# DS.JSONSerializer.reopen
#     serializeHasMany : ( record, json, relationship ) ->
#         key = relationship.key
#         relationshipType = DS
#                             .RelationshipChange
#                             .determineRelationshipType record.constructor, relationship

#         if relationshipType is 'manyToNone' or 'manyToMany' or 'manyToOne'
#             json[key] = Em.get(record, key).mapBy('id')


`export default App`