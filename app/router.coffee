Router = Em.Router.extend() # ensure we don't share routes between all Router instances

Router.reopen
  location: 'history'

Router.map ->
  @route 'component-test'
  @route 'helper-test'
  @resource 'users', ->
    @resource 'user',
      path: '/:user_id', ->
        @route 'edit'
    @route 'create'

`export default Router`