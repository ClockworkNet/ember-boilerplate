SectionsController = Em.ArrayController.extend()
  # needs: 'rooms'
  # rooms: Ember.computed.alias("controllers.rooms")

  # actions:
  #   check: ->
  #     username = 'drewcovi'
  #     password = 'connor4wi1'
  #     self = @
  #     updates = false
  #     request = 
  #       $.get '/api/cors?url='+
  #             'https%3A%2F%2Ffwd6.mios.com%2F'+
  #             username+
  #             '%2F'+
  #             password+
  #             '%2Fdata_request%3Fid%3Duser_data%26format%3Djson'

  #     request
  #       .done (data) ->
  #         count = 0
  #         queue = $.Deferred( )

  #         # Pull a list of devices from cp.mios
  #         miosdevices = for device in data.devices
  #           name      : device.name
  #           id        : parseInt device.id
  #           parent    : device.id_parent
  #           room      : parseInt device.room

  #         miosrooms = for room in data.rooms
  #           name      : room.name
  #           id        : room.id

  #         mios = \
  #           devices   : miosdevices,
  #           rooms     : miosrooms

  #         self.controllerFor('devices').import(mios)
  #         self.controllerFor('rooms').import(mios)

  #         console.log(self.store.all('room').getEach('name'))
  #         # console.log self
  #         # .import(mios)

  #         # Em.RSVP
  #         #   .all(syncrooms(), syncdevices())
  #         #   .then ->
  #         #     # console.log 'foo'
  #         #     setparents()
  #         #     setrooms()

`export default SectionsController`