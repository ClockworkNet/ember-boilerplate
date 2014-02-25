SectionsIndexView = Em.View.extend

  didInsertElement: ->

    Em.run.scheduleOnce 'afterRender', this, ->
      rooms = $ '.rooms'
      devices = $ '.devices'

      slid = (swiper, direction)->
        console.log swiper, direction
        devices.swipeTo swiper.activeIndex - 1

      rooms = rooms
        .swiper
          mode            : 'horizontal'
          loop            : true
          calculateHeight : true
          onSlideChangeEnd: slid

      devices = devices.swiper
          mode            : 'horizontal'
          loop            : true
          calculateHeight : true
          noSwiping       : true
    

  didLoadRooms: ->
    #

`export default SectionsIndexView`