User = DS.Model.extend
  name         : DS.attr()
  email        : DS.attr()
  bio          : DS.attr()
  avatarUrl    : DS.attr()
  creationDate : DS.attr()

User.FIXTURES = [{
    id: 1,
    name: 'Sponge Bob'
    email: 'bob@sponge.com'
    bio: 'Lorem ispum dolor sit amet in voluptate fugiat nulla pariatur.'
    avatarUrl: 'http://jkneb.github.io/ember-crud/assets/images/avatars/sb.jpg'
    creationDate: 'Mon, 26 Aug 2013 20:23:43 GMT'
  },{
    id: 2,
    name: 'John David'
    email: 'john@david.com'
    bio: 'Lorem ispum dolor sit amet in voluptate fugiat nulla pariatur.'
    avatarUrl: 'http://jkneb.github.io/ember-crud/assets/images/avatars/jk.jpg'
    creationDate: 'Fri, 07 Aug 2013 10:10:10 GMT'
  },{
    id: 3,
    name: 'Drew Covi'
    email: 'drew.covi@me.com'
    bio: 'Lorem ispum dolor sit amet in voluptate fugiat nulla pariatur.'
    avatarUrl: 'http://2.gravatar.com/avatar/da2a38457aee5ff208d3e71b2477ff71?s=148'
    creationDate: 'Fri, 07 Aug 2013 10:10:10 GMT'
  }]

`export default User`
