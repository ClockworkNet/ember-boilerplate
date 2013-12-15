UserEditController = Em.ObjectController.extend
  actions:
    save: ->
      user = @get 'model'
      user.save()
      @transitionToRoute 'user', user

`export default UserEditController`