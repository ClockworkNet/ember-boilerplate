MachineRoute = Em.Route.extend
  model: ->
    @store.find('machine')

  setupController: ->
    @controller.set 'devices', @store.find 'device'

  activate: ->
    document.title = 'Machines'

`export default MachineRoute`