CredentialType = DS.Model.extend
  name      : DS.attr 'string'
  title     : DS.attr 'string'
  protected : DS.attr 'boolean'
  credentials: DS.hasMany 'credential'

# Hard coded mapping of credential types
# 
CredentialType.FIXTURES = [
    id          : 0
    name        : 'gutstoken'
    protected   : false
    title       : 'Guts Token'
    credentials : null
  ,
    id          : 1
    name        : 'ldap'
    protected   : false
    title       : 'LDAP Login Name'
    credentials : null
  ,
    id          : 2
    name        : 'mioslogin'
    protected   : false
    title       : 'MiOS Username'
    credentials : null
  ,
    id          : 3
    name        : 'miospassword'
    protected   : true
    title       : 'MiOS Password'
    credentials : null
]

`export default CredentialType`