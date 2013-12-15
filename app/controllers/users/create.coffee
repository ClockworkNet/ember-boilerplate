UsersCreateController = Em.ObjectController.extend

  actions:
    
    save: ->
      @get('model')
        .set 'creationDate', new Date()
      newUser = @store.createRecord 'user', @get 'model'
      newUser.save()
      @transitionToRoute 'user', newUser

`export default UsersCreateController`