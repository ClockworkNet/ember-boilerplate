Room = DS.Model.extend
  name      : DS.attr 'string'
  devices   : DS.hasMany 'device'

`export default Room`