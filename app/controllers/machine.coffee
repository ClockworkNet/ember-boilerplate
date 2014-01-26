MachineController = Em.ObjectController.extend
  needs: 'devices'
  devices: Ember.computed.alias("controllers.devices")
  actions:
    checkMachine: ->
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

          # Pull a list of devices from cp.mios
          devices = for device in data.devices
            name      : device.name
            deviceId  : parseInt device.id
            parent    : device.id_parent

          rooms = for room in data.rooms
            name      : room.name
            room      : room.id

          setparents = ()->
            for device in devices
              do (device) ->   
                all = self.store.find 'device'

                all.then ->
                  record = all.findBy 'deviceId', device.deviceId
                  parent = all.findBy 'deviceId', device.parent
                  record.set 'parent', parent
                  record.save()

          setrooms = ()->
            for room in rooms
              do (room) ->
                all = self.store.find 'room'
                # all.then ->

          sync = (device) ->
            all = self.store.all 'device'
            record = all.findBy 'deviceId', device.deviceId
            exists = Boolean record
            if exists
              record.set 'name', device.name

            # add new devices to datastore
            else
              updates = true
              record = self.store.createRecord 'device', 
                name: device.name
                deviceId: device.deviceId

              record.save()

            count++
            if count is devices.length
              setparents()

          for device in devices

            sync device

`export default MachineController`