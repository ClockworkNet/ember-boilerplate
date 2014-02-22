Credential = DS.Model.extend
  name         : DS.attr 'string'
  value        : DS.attr 'string'
  protected    : DS.attr 'boolean'
  title        : DS.attr 'string'
  account      : DS.belongsTo 'account',
                    async: true

Credential.url = '/credential'

`export default Credential`
