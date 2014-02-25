ApplicationRoute = Em.Route.extend
  beforeModel: ->
    route = @
    @store
      .find('user')
      .then (results)->
        route
          .controllerFor('application')
          .set('user', results.get 'firstObject')

`export default ApplicationRoute`