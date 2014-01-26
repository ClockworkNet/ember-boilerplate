Machine = DS.Model.extend
  name     : DS.attr 'string'
  devices  : DS.hasMany 'device'
  account  : DS.belongsTo 'account'

`export default Machine`