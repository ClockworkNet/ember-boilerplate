RoomsController = Em.ArrayController.extend
  needs: ['devices']
  devices: Ember.computed.alias("controllers.devices")
  # sortProperties: ['name']

  # sortAscending: true

  # import: (data) ->
  #   @syncrooms(data.rooms)
  #   # @setrooms(data.rooms)

  # setrooms: (data) ->
  #   self = @
  #   for room in data
  #     do (room) ->
  #       all = @content
  #       rooms = @store.all 'room'

  #       record = rooms.findBy 'roomId', room.id

  #       devices = all.filterProperty 'room', record
  #       record.get('devices').pushObjects devices
  #       record.save()

  # syncrooms: (data) ->
  #   self = @
  #   record = null
  #   records = for room in data
  #     do (room) ->
  #       all = self.get 'model'
  #       record  = all.findBy 'roomId', room.id

  #       exists = Boolean record

  #       if exists
  #         record.setProperties
  #           name    : room.name
  #           roomId  : room.id

  #       else
  #         record = self.store.createRecord 'room',
  #           name    : room.name
  #           roomId  : room.id
  #           devices : []

  #       record.save()

  roomscount: (->
    @get('model.length')
  ).property('@each')

`export default RoomsController`