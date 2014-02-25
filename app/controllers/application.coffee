ApplicationController = Em.ObjectController.extend
  
  needs: 'user'

  users: Ember
            .computed
            .alias('controllers.user.content')

  user: null
  
  native: not document.location.href.match(/^http/)

`export default ApplicationController`