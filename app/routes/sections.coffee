SectionsRoute = Em.Route.extend

  beforeModel: (model)->
    route = @
    adapter = @get('container').lookup 'adapter:section'
    app = @controllerFor('application')
    if app.get('user.accounts') then \
      app
        .get('user.accounts')
        .then (accounts)->
          acct = app.get('user.accounts').findBy('type', 'mios')
          creds = acct
                    .get('credentials')
                    .then (creds)->
                      login = creds.findBy('type', 'login').get('value')
                      pw = creds.findBy('type', 'password').get('value')
                      adapter.set 'login', login
                      adapter.set 'password', pw

  activate: ->
    document.title = 'Sections'

`export default SectionsRoute`