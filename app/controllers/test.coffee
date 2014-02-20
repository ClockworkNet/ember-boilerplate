TestController = Em.ObjectController.extend
  needs: 'application'
  directionInput: (->
      "-webkit-transform: rotate(#{@get 'heading' }deg);"
    ).property('heading')

  heading: 0

  actions:
    capture: ->
      navigator
        .camera
        .getPicture \
          (->
            alert 'success!'
          ),
          (->
            alert 'error :('
          ),
          quality : 75,
          destinationType : Camera.DestinationType.DATA_URL
          sourceType : Camera.PictureSourceType.CAMERA
          allowEdit : true
          encodingType: Camera.EncodingType.JPEG
          targetWidth: 100
          targetHeight: 100
          popoverOptions: CameraPopoverOptions
          saveToPhotoAlbum: false

    direction: ->
      self = @
      
      navigator
        .compass
        .watchHeading \
          (heading)->
            self.set 'heading', -heading.magneticHeading
            # alert heading.magneticHeading
          ,
          ()->
            alert 'failed'
  

`export default TestController`