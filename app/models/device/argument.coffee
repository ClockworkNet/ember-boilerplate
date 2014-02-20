DeviceArgument = DS.Model.extend
  variable    : DS.attr 'string'
  action      : DS.belongsTo 'device/action'
  isRange     : DS.attr 'boolean'
  rangeMax    : DS.attr 'number'
  rangeMin    : DS.attr 'number'

`export default DeviceArgument`
