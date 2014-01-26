DevicesController = Em.ArrayController.extend

  # sortProperties: ['name']

  sortAscending: true
  
  devicesCount: (->
    @get('model.length')
  ).property('@each')

  # init: ->

`export default DevicesController`