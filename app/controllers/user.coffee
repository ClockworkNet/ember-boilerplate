UserController = Em.ObjectController.extend
  actions:
    edit: ->
      @transitionToRoute 'user.edit'

    delete: ->
      @toggleProperty 'deleteMode'
      # bootstrap call from jquery
      $ '#confirm'
        .modal 'show'

    cancelDelete: ->
      @set 'deleteMode', false

    confirmDelete: ->
      @get('model')
        .deleteRecord()
      @get('model')
        .save()
      @transitionToRoute 'users'

`export default UserController`