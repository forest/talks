'use strict'

describe 'Service: taskOwners', () ->

  # load the service's module
  beforeEach module 'exampleApp'

  # instantiate service
  taskOwners = {}
  beforeEach inject (_taskOwners_) ->
    taskOwners = _taskOwners_

  it 'should do something', () ->
    expect(!!taskOwners).toBe true
