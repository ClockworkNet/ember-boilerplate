RoomsRoute = Em.Route.extend
  model: ->
    @store.find('room')

  activate: ->
    document.title = 'Rooms'

`export default RoomsRoute`