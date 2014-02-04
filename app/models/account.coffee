Account = DS.Model.extend
  miosun   : DS.attr 'string'
  miospw   : DS.attr 'string'
  sections  : DS.hasMany 'sections'
  user     : DS.belongsTo 'user'

`export default Account`