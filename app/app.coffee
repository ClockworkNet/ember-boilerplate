`import Resolver from 'ember/resolver'`

App = Em.Application.extend
  LOG_ACTIVE_GENERATION: true
  LOG_MODULE_RESOLVER: true
  LOG_TRANSITIONS: true
  LOG_TRANSITIONS_INTERNAL: true
  LOG_VIEW_LOOKUPS: true
  customEvents: 
    'show.bs.collapse'    : 'show.bs.collapse'
    'hide.bs.collapse'    : 'hide.bs.collapse'
    'hidden.bs.collapse'  : 'hidden.bs.collapse'
    'shown.bs.collapse'   : 'shown.bs.collapse'

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

# DS.LSAdapter = DS.LSAdapter.extend

window.addEventListener 'load', ->
  FastClick.attach document.body

injectScript = (url, onload, onerror) ->
  script = document.createElement 'script'
  script.onload = onload;
  script.onerror = onerror || onload;
  script.src = url;
  document.head.appendChild script

if not document.location.href.match(/^http/)
  html = $ 'html'

  injectScript 'cordova.js'
  html.addClass 'native'
  document.addEventListener 'deviceready', ->
    status = StatusBar

`export default App`