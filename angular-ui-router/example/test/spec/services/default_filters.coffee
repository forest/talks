'use strict'

describe 'Service: defaultFilters', () ->

  # load the service's module
  beforeEach module 'exampleApp'

  # instantiate service
  defaultFilters = {}
  beforeEach inject (_defaultFilters_) ->
    defaultFilters = _defaultFilters_

  it 'should do something', () ->
    expect(!!defaultFilters).toBe true
