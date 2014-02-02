UsersCreateController = Em.ObjectController.extend

  actions:
    
    save: ->
      self = @
      user = @get 'model'
      user.set 'creationDate', new Date()

      user
        .save()
        .then (model)->
          self.transitionToRoute 'user', user

`export default UsersCreateController`