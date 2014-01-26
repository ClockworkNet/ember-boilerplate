deviceAction = DS.Model.extend
  name      : DS.attr 'string'
  device    : DS.belongsTo 'device'
  arguments : DS.hasMany 'deviceArgument'

`export default deviceAction`