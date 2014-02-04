DevicesRoute = Em.Route.extend
  model: ->
    @store.find('device')

  activate: ->
    document.title = 'Devices'

  # setupController: ->
  #   @controller.set 'rooms', @store.find 'room'
  #   @_super.apply arguments

`export default DevicesRoute`