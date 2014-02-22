UserIndexController = Em.ObjectController.extend
  needs: 'application'
  app: Ember
          .computed
          .alias('controllers.application')

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

    loginAs: ->
      @get('app')
        .set('user', @get('model'))

`export default UserIndexController`