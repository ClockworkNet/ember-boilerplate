SectionsRoute = Em.Route.extend
  model: ->
    @store.find('section')

  # setupController: (controller, model)->
  #   @_super(controller, model)
  #   @controller.set 'rooms', @store.find 'room'

  activate: ->
    document.title = 'Sections'

`export default SectionsRoute`