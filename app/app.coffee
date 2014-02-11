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
      types

injectScript = (url, onload, onerror) ->
  script = document.createElement 'script'
  # onload fires even when script fails loads with an error.
  script.onload = onload;
  script.onerror = onerror || onload;
  script.src = url;
  document.head.appendChild script

if not document.location.href.match(/^http/)
  injectScript 'cordova.js'

`export default App`