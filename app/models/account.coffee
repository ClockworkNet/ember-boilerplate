Account = DS.Model.extend
  name          : DS.attr 'string'
  title         : DS.attr 'string'
  credentials   : DS.hasMany 'credential/type',
                    async: true

# Hard coded mapping of account types and required credentials
# 

Account.FIXTURES = [
    id          : 0
    name        : 'guts'
    title       : 'Clockwork Guts Account'
    credentials : [0, 1]
  ,
    id          : 1
    name        : 'mios'
    title       : 'MiOS Account'
    credentials : [2, 3]
]

`export default Account`