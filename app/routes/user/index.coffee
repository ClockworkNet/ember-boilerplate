`import UserRoute from 'abode/routes/user'`

UserIndexRoute = UserRoute.extend
  model: ->
    @modelFor 'user'

`export default UserIndexRoute`