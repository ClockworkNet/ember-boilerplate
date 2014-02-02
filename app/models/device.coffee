Device = DS.Model.extend
  deviceId     : DS.attr 'number'
  name         : DS.attr 'string'
  manufacturer : DS.belongsTo 'manufacturer'
  room         : DS.belongsTo 'room',
                    inverse: 'devices'
  model        : DS.attr 'string'
  type         : DS.attr 'string'
  embedded     : DS.attr 'boolean'
  disabled     : DS.attr 'boolean'
  created      : DS.attr 'date'
  machine      : DS.belongsTo 'machine'
  states       : DS.hasMany 'state'
  subcategory  : DS.belongsTo 'subcategory'
  actions      : DS.hasMany 'device/action'
  parent       : DS.belongsTo 'device',
                    inverse: 'children'
  children     : DS.hasMany 'device',
                    inverse: 'parent'
                    async: true


`export default Device`
