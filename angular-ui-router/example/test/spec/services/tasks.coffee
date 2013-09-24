'use strict'

describe 'Service: tasks', () ->

  # load the service's module
  beforeEach module 'exampleApp'

  # instantiate service
  tasks = {}
  beforeEach inject (_tasks_) ->
    tasks = _tasks_

  it 'should do something', () ->
    expect(!!tasks).toBe true
