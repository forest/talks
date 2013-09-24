'use strict'

describe 'Controller: TasksFilterControllerCtrl', () ->

  # load the controller's module
  beforeEach module 'exampleApp'

  TasksFilterControllerCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    TasksFilterControllerCtrl = $controller 'TasksFilterControllerCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
