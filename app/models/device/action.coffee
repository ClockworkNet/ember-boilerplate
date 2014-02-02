DeviceAction = DS.Model.extend
  name      : DS.attr 'string'
  device    : DS.belongsTo 'device'
  arguments : DS.hasMany 'device/argument'

`export default DeviceAction`