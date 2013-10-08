'use strict'

angular.module('listerApp.tasks.list', [
    'ui.inflector'
  ])

.controller('TasksListController', ['$scope', 'Tasks'
    ($scope, Tasks) ->
      $scope.data =
        tasks: Tasks.get()

      $scope.$on 'TasksFilterChanged', (event, filter) ->
        $scope.data.tasks = Tasks.get(filter)

      $scope.start = (task) ->
        task.state = 'started'

      $scope.finish = (task) ->
        task.state = 'finished'
  ])
