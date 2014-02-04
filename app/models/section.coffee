Section = DS.Model.extend
  name        : DS.attr 'string'
  rooms       : DS.hasMany 'room',
                    async: true
                    inverse: 'section'
  dataversion : DS.attr 'number'
  account     : DS.belongsTo 'account'


`export default Section`