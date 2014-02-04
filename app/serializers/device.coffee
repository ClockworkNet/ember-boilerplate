DeviceSerializer = DS.RESTSerializer.extend
  normalize: (type, hash)->
    fields = Em.get type, 'fields'

    return this._super.apply this, arguments

`export default DeviceSerializer`