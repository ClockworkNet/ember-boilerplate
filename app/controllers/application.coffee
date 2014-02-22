ApplicationController = Em.ObjectController.extend
  
  user: null
  
  native: not document.location.href.match(/^http/)

`export default ApplicationController`