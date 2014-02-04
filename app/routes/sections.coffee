MachineRoute = Em.Route.extend
  model: ->
    @store.find('section')

  setupController: (controller, model)->
    @_super(controller, model)
    @controller.set 'rooms', @store.find 'room'


  activate: ->
    document.title = 'Machines'

`export default MachineRoute`