SectionsRoute = Em.Route.extend

  beforeModel: (model)->
    adapter = @get('container').lookup 'adapter:section'
    adapter.set 'host', 'https://home.drewcovi.com:3000/cors?url='+
              'https%3A%2F%2Ffwd6.mios.com%2F'+
              'drewcovi'+
              '%2F'+
              'connor4wi1'+
              '%2Fdata_request%3Fid%3Dsdata%26format%3Djson'

  activate: ->
    document.title = 'Sections'

`export default SectionsRoute`