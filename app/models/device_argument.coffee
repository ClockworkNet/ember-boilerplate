deviceArgument = DS.Model.extend
  variable    : DS.attr 'string'
  action      : DS.belongsTo 'deviceAction'
  isRange     : DS.attr 'boolean'
  rangeMax    : DS.attr 'number'
  rangeMin    : DS.attr 'number'

`export default deviceArgument`
