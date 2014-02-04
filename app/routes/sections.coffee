MachineRoute = Em.Route.extend
  model: ->
    @store.find('section')

  # setupController: ->
  #   @controller.set 'rooms', @store.find 'room'
  #   @controller.set 'devices', @store.find 'device'

  activate: ->
    document.title = 'Machines'

`export default MachineRoute`