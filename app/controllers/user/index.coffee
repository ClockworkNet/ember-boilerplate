UserIndexController = Em.ObjectController.extend

  actions:
    edit: ->
      @transitionToRoute 'user.edit'

    delete: ->
      @toggleProperty 'deleteMode'
      $('#confirm')
        .modal('show')

    cancelDelete: ->
      @set 'deleteMode', false

    confirmDelete: ->
      @get('model')
        .deleteRecord()
      @get('model')
        .save()
      @transitionToRoute 'users'

`export default UserIndexController`