`import User from 'abode/models/user'`

UserEditRoute = Em.Route.extend
  model: ->
    @modelFor 'user'


`export default UserEditRoute`