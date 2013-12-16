IndexRoute = Em.Route.extend
  model: ->
    ['red', 'yellow', 'blue']
  activate: ->
    document.title = 'Home'

`export default IndexRoute`