Credential = DS.Model.extend
  name         : DS.attr 'string'
  value        : DS.attr 'string'
  protected    : DS.attr 'boolean'
  user         : DS.belongsTo 'user'
  type         : DS.belongsTo 'credential/type'

`export default Credential`
