`import UserRoute from 'abode/routes/user'`

UserEditRoute = UserRoute.extend
  model: ->
    @modelFor 'user'

  setupController: (controller, model) ->
    route = @
    @store
      .find('account')
      .then (data) ->
        route.controllerFor('accounts').set 'content', data
      .catch (data) ->
        console.log data

    @_super.apply this, arguments

`export default UserEditRoute`