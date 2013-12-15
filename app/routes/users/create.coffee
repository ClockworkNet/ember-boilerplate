UsersCreateRoute = Em.Route.extend
  model: ->
    Em.Object.create()

  renderTemplate: ->
    @render 'user.edit',
      controller: 'users.create'

`export default UsersCreateRoute`