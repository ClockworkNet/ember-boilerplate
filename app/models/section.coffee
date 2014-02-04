Section = DS.Model.extend
  name     : DS.attr 'string'
  rooms    : DS.hasMany 'room',
                inverse: 'section'
  account  : DS.belongsTo 'account'


`export default Section`