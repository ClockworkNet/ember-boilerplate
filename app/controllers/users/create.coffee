UsersCreateController = Em.ObjectController.extend

  actions:
    
    save: ->
      self = @
      user = @get 'model'
      user.set 'creationDate', new Date()

      console.log user
      user
        .save()
        .then (model)->
          console.log 'done'
          self.transitionToRoute 'user', user

`export default UsersCreateController`