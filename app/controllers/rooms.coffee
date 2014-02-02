RoomsController = Em.ArrayController.extend
  needs: ['devices']
  devices: Ember.computed.alias("controllers.devices")

  # sortProperties: ['name']

  sortAscending: true
  
  roomscount: (->
    @get('model.length')
  ).property('@each')

  # init: ->

`export default RoomsController`