SectionsErrorRoute = Em.Route.extend

  # Example Source @ http://jsbin.com/opogOzU/2/edit

  activate: ->
    document.title = 'Sections'

  beforeModel: ->
      console.log 'SectionsErrorRoute#beforeModel'
  
  afterModel: (error) ->
    # use case - errors returns from JSON server need to have their responseText property parsed as JSON so that the bar error template can display information from them
     console.log 'BarErrorRoute#afterModel'
  
  setupController: (controller, error) ->
      controller.set 'model', error

  actions:
    recoverFromError: ->
      #use case - decide which route in the application to transition to based on the error and the state of foo or bar models.
      # console.log 'BarErrorRoute#actions.recoverFromError'
      # console.log 'app model', this.modelFor 'application'
      # console.log 'foo model', this.modelFor 'setion'
      # console.log 'bar model', this.modelFor 'room'

`export default SectionsErrorRoute`