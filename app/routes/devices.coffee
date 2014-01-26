DevicesRoute = Em.Route.extend
  model: ->
    @store.find('device')

  activate: ->
    document.title = 'Devices'

`export default DevicesRoute`