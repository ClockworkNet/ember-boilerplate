RoomsRoute = Em.Route.extend
  model: ->
    @store.find('room')

  activate: ->
    document.title = 'Rooms'

  # setupController: ->
  #   @_super(controller, model)
  #   @controller.set 'devices', @store.find 'device'

`export default RoomsRoute`