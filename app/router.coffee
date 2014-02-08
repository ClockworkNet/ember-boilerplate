# ensure we don't share routes between all Router instances
Router = Em.Router.extend()

# Router.reopen
#   location: 'history'

Router.map ->
  @route 'component-test'
  @route 'helper-test'
  @route 'portfolio'
  @resource 'devices'
  @resource 'rooms'
  @resource 'sections', ->
    @resource 'section'
  @resource 'users', ->
    @resource 'user',
      path: '/:user_id', ->
        @route 'edit'
    @route 'create'

`export default Router`