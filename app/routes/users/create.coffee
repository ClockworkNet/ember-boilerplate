`import User from 'abode/models/user'`

UsersCreateRoute = Em.Route.extend
  model: ->
    @store.createRecord 'user'

  renderTemplate: ->
    @render 'user.edit',
      controller: 'users.create'

`export default UsersCreateRoute`