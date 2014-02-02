MachineController = Em.ObjectController.extend
  needs: ['devices', 'rooms']
  devices: Ember.computed.alias("controllers.devices")
  rooms: Ember.computed.alias("controllers.rooms")
  actions:
    check: ->
      username = 'drewcovi'
      password = 'connor4wi1'
      self = @
      updates = false
      request = 
        $.get '/api/cors?url='+
              'https%3A%2F%2Ffwd6.mios.com%2F'+
              username+
              '%2F'+
              password+
              '%2Fdata_request%3Fid%3Duser_data%26format%3Djson'

      request
        .done (data) ->
          count = 0
          queue = $.Deferred( )

          # Pull a list of devices from cp.mios
          miosdevices = for device in data.devices
            name      : device.name
            id        : parseInt device.id
            parent    : device.id_parent
            room      : parseInt device.room

          miosrooms = for room in data.rooms
            name      : room.name
            id        : room.id

          setparents = ()->
            for device in miosdevices
              do (device) ->
                all = self.store.all 'device'
                rooms = self.store.all 'room'

                record = all.findBy 'deviceId', device.id
                parent = all.findBy 'deviceId', device.parent
                room = rooms.findBy 'roomId', device.room
                

                if parent
                  parent.get('children').pushObject record
                  record.set 'parent', parent
                  parent.save()

                if room
                  record.set 'room', room
                record.save()

          setrooms = () ->
            for room in miosrooms
              do (room) ->
                all = self.store.all 'device'
                rooms = self.store.all 'room'

                record = rooms.findBy 'roomId', room.id

                devices = all.filterProperty 'room', record

                record.get('devices').pushObjects devices
                record.save()

          syncrooms = ()->
            record = null
            records = for room in miosrooms
              do (room) ->

                all = self.store.all 'room'
                record  = all.findBy 'roomId', room.id

                exists = Boolean record

                if exists
                  record.setProperties
                    name    : room.name
                    roomId  : room.id

                else
                  record = self.store.createRecord 'room',
                    name    : room.name
                    roomId  : room.id
                    devices : []

                record.save()

          syncdevices = () ->
            record = null
            records = for device in miosdevices
              do (device) ->
                all = self.store.all 'device'
                record = all.findBy 'deviceId', device.id
                
                exists = Boolean record

                if exists
                  record.setProperties
                    name    : device.name
                    deviceId: device.id

                # add new devices to datastore
                else
                  record = self.store.createRecord \
                            'device',
                              name    : device.name
                              deviceId: device.id
                              children: []
                              room    : null

                record.save()

          Em.RSVP
            .all(syncrooms(), syncdevices())
            .then ->
              setparents()
              setrooms()

`export default MachineController`