'use strict'

describe 'Controller: TasksListControllerCtrl', () ->

  # load the controller's module
  beforeEach module 'exampleApp'

  TasksListControllerCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    TasksListControllerCtrl = $controller 'TasksListControllerCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
