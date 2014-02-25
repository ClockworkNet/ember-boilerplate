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
      @toggleProperty 'deleteMode'

    confirmDelete: ->
      @get('model')
        .deleteRecord()
      @get('model')
        .save()
      @toggleProperty 'deleteMode'
      @transitionToRoute 'users'

`export default UserController`