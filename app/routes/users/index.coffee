`import User from 'abode/models/user'`

UsersIndexRoute = Em.Route.extend
  model: (params) ->
    @modelFor 'users'

`export default UsersIndexRoute`