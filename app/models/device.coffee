Device = DS.Model.extend
  # deviceId     : DS.attr 'number'
  name         : DS.attr 'string'
  manufacturer : DS.belongsTo 'manufacturer'
  room         : DS.belongsTo 'room',
                    inverse: 'devices'
  model        : DS.attr 'string'
  type         : DS.attr 'string'
  embedded     : DS.attr 'boolean'
  disabled     : DS.attr 'boolean'
  created      : DS.attr 'date'
  states       : DS.hasMany 'state'
  category     : DS.belongsTo 'category'
  actions      : DS.hasMany 'device/action'
  parent       : DS.belongsTo 'device',
                    inverse: 'children'
  children     : DS.hasMany 'device',
                    inverse: 'parent'

# Device.url = '/device'

`export default Device`
