SectionsIndexRoute = Em.Route.extend
  model: ->
    @store.find('section')

  # setupController: (controller, model)->


  activate: ->
    document.title = 'Sections'

`export default SectionsIndexRoute`