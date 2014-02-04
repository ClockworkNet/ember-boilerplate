DevicesController = Em.ArrayController.extend
  # needs: ['rooms']
  # rooms: Ember.computed.alias("controllers.rooms")
  # sortProperties: ['name']

  sortAscending: true

  # import: (data)->
  #   @syncdevices(data.devices)
  #   # @setparents(data.devices)

  # setparents: (data)->
  #   self = @
  #   for device in data
  #     do (device) ->
  #       all = self.get 'model'
  #       rooms = self.store.all 'room'

  #       record = all.findBy 'deviceId', device.id
  #       parent = all.findBy 'deviceId', device.parent
  #       room = rooms.findBy 'roomId', device.room
        

  #       if parent
  #         parent.get('children').pushObject record
  #         record.set 'parent', parent
  #         parent.save()

  #       if room
  #         record.set 'room', room

  # syncdevices: (data)->
  #   self = @
  #   record = null
  #   records = for device in data
  #     do (device) ->
  #       all = self.get 'model'
  #       record = all.findBy 'deviceId', device.id
        
  #       exists = Boolean record

  #       if exists
  #         record.setProperties
  #           name    : device.name
  #           deviceId: device.id

  #       # add new devices to datastore
  #       else
  #         record = self.store.createRecord \
  #                   'device',
  #                     name    : device.name
  #                     deviceId: device.id
  #                     children: []
  #                     room    : null

  #     record.save()
  
  devicesCount: (->
    @get('model.length')
  ).property('@each')

`export default DevicesController`