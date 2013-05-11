describe "Task Model", ->

  it "should exist", ->
    expect(Todo_app.Models.Task).toBeDefined()

  it "should have title field", ->
    task = new Todo_app.Models.Task()
    task.set("title", "Attend DCRUG")
    expect(task.get("title")).toEqual "Attend DCRUG"
