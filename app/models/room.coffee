Room = DS.Model.extend
  name      : DS.attr 'string'
  devices   : DS.hasMany 'device',
                async: true,
                inverse: 'room'
  roomId    : DS.attr 'number'

`export default Room`