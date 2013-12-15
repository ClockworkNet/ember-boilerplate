FormatDate = Em.Handlebars.helper 'format-date', (date) ->
  moment(date).fromNow();

`export default FormatDate`