CredentialType = DS.Model.extend
  type      : DS.attr 'string'
  title     : DS.attr 'string'
  protected : DS.attr 'boolean'
  credentials: DS.hasMany 'credential'

# Hard coded mapping of credential types
# 
CredentialType.FIXTURES = [
    id          : 0
    type        : 'token'
    protected   : false
    title       : 'Guts Token'
    credentials : null
  ,
    id          : 1
    type        : 'login'
    protected   : false
    title       : 'LDAP Login type'
    credentials : null
  ,
    id          : 2
    type        : 'login'
    protected   : false
    title       : 'MiOS Usertype'
    credentials : null
  ,
    id          : 3
    type        : 'password'
    protected   : true
    title       : 'MiOS Password'
    credentials : null
]

`export default CredentialType`