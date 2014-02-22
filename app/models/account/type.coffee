AccountType = DS.Model.extend
	type 			: DS.attr 'string'
	title 			: DS.attr 'string'
	credentialTypes : DS.hasMany 'credential/type',
                      async: true

# Hard coded mapping of account types and required credentials
# 

AccountType.FIXTURES = [
    id          : 1
    type        : 'guts'
    title       : 'Clockwork Guts Account'
    credentialTypes : [0, 1]
  ,
    id          : 2
    type        : 'mios'
    title       : 'MiOS Account'
    credentialTypes : [2, 3]
]

`export default AccountType`