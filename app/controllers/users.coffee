UsersController = Em.ArrayController.extend

  sortProperties: ['name']

  sortAscending: true
  
  usersCount: (->
    @get('model.length')
  ).property('@each')

`export default UsersController`