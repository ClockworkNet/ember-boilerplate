User = DS.Model.extend
  name         : DS.attr()
  email        : DS.attr()
  bio          : DS.attr()
  avatarUrl    : (->
                  "//www.gravatar.com/avatar/#{md5 jQuery.trim @get 'email'}?s=512"
                  ).property 'email'
  creationDate : DS.attr()

`export default User`
