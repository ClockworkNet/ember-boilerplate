`import User from 'abode/models/user'`

UserIndexRoute = Em.Route.extend
  model: (params) ->
    @modelFor 'user'

`export default UserIndexRoute`