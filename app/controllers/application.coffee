ApplicationController = Em.ObjectController.extend

  native: not document.location.href.match(/^http/)

`export default ApplicationController`