window.Todo_app =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new Todo_app.Routers.Tasks()
    Backbone.history.start
      pushState: true
      root: '/main/index'

$(document).ready ->
  Todo_app.init()
