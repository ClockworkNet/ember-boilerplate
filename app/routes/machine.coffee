MachineRoute = Em.Route.extend
  model: ->
    @store.find('machine')

  setupController: ->
    @controller.set 'devices', @store.find 'device'
    @controller.set 'rooms', @store.find 'room'

  activate: ->
    document.title = 'Machines'

`export default MachineRoute`