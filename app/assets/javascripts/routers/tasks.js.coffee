class Todo_app.Routers.Tasks extends Backbone.Router
  routes:
    '': 'index'
    'tasks/:id': 'show'

  initialize: ->
    console.log "Todo_app.Routers.Tasks initialize"
    @collection = new Todo_app.Collections.Tasks()
    Todo_app.collection = @collection
    @collection.fetch
      success: =>
        Todo_app.tasksCollection = @collection
        console.log @collection.length

  index: ->
    console.log "Todo_app.Routers.Tasks initialize"
    view = new Todo_app.Views.TasksIndex(collection: @collection)
    $('#container').html(view.render().el)

  show: (id) ->
    console.log "Task #{id}"