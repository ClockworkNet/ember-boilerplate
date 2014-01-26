Device = DS.Model.extend
  deviceId     : DS.attr 'number'
  name         : DS.attr 'string'
  manufacturer : DS.belongsTo 'manufacturer'
  room         : DS.belongsTo 'room'
  model        : DS.attr 'string'
  type         : DS.attr 'string'
  embedded     : DS.attr 'boolean'
  disabled     : DS.attr 'boolean'
  created      : DS.attr 'date'
  machine      : DS.belongsTo 'machine'
  states       : DS.hasMany 'state'
  subcategory  : DS.belongsTo 'subcategory'
  actions      : DS.hasMany 'deviceAction'
  parent       : DS.belongsTo 'device'

`export default Device`
