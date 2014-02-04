Room = DS.Model.extend
  name      : DS.attr 'string'
  devices   : DS.hasMany 'device',
                inverse: 'room'
  section   : DS.belongsTo 'section',
                inverse: 'rooms'

`export default Room`