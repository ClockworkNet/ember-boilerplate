User = DS.Model.extend
  name         : DS.attr 'string'
  email        : DS.attr 'string'
  bio          : DS.attr 'string'
  avatarUrl    : (->
                  "//www.gravatar.com/avatar/" +
                  "#{md5 jQuery.trim @get 'email'}?s=512"
                  ).property 'email'
  creationDate : DS.attr 'date'
  account      : DS.belongsTo 'account'

User.url = '/users'

`export default User`
