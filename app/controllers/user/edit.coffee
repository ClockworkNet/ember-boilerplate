`import UserController from 'abode/controllers/user'`

UserEditController = UserController.extend
  needs: 'accounts'
  actions:
    save: ->
      user = @get 'model'
      user.save()
      @transitionToRoute 'user', user

    addAccount: ->
      user = @get 'model'
      user.get('accounts').pushObject(@get('selectedAccount'))
      user.save()

    deleteAccount: (account) ->
      user = @get 'model'
      user.get('accounts').removeObject(account)
      user.save()

  allAccounts: Ember
                .computed
                .alias('controllers.accounts')

  filteredAccounts: (->
    all = @get 'allAccounts'
    accounts = @content.get 'accounts'
    
    console.log accounts

    all
      .filter (item)->
        console.log accounts.objectAt(0), item
        return true

  ).property('allAccounts.content', 'content')

  creds: null

  selectedAccount: null

  accountFields: (->
    @get('selectedAccount').get('credentials')
  ).observes('selectedAccount')

`export default UserEditController`