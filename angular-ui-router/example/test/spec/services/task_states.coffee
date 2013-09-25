'use strict'

describe 'Service: taskStates', () ->

  # load the service's module
  beforeEach module 'exampleApp'

  # instantiate service
  taskStates = {}
  beforeEach inject (_taskStates_) ->
    taskStates = _taskStates_

  it 'should do something', () ->
    expect(!!taskStates).toBe true
