SectionsRoute = Em.Route.extend

  beforeModel: (model)->
    adapter = @get('container').lookup 'adapter:section'
    adapter.set 'login', 'drewcovi'
    adapter.set 'password', 'connor4wi1'

  activate: ->
    document.title = 'Sections'

`export default SectionsRoute`