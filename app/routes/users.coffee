`import User from 'abode/models/user'`

UsersRoute = Em.Route.extend
  model: ->
    @store.find('user')
  activate: ->
    document.title = 'Users'

`export default UsersRoute`