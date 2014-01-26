Account = DS.Model.extend
  miosun   : DS.attr 'string'
  miospw   : DS.attr 'string'
  devices  : DS.hasMany 'machine'
  user     : DS.belongsTo 'user'

`export default Account`