IndexRoute = Em.Route.extend
  model: ->
    ['red', 'yellow', 'blue']
  activate: ->
    console.log 'activating index'
    document.title = 'Home'

`export default IndexRoute`