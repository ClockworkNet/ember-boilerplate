`import User from 'abode/models/user'`

UserEditRoute = Em.Route.extend
  model: ->
    @modelFor 'user'
  # renderTemplate: ->
  #   @render 'user/edit',
  #       into: 'application'
  #       outlet: 'main'

`export default UserEditRoute`