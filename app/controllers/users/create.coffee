UsersCreateController = Em.ObjectController.extend

  actions:
    
    save: ->
      self = @
      user = @get 'model'
      user.set 'creationDate', new Date()
      newUser = @store.createRecord 'user', user
        # name          : @content.get 'name'
        # email         : @content.get 'email'
        # creationDate  : new Date()
        # bio           : @content.get 'bio'

      newUser
        .save()
        .then (model)->
          self.transitionToRoute 'user', newUser

`export default UsersCreateController`