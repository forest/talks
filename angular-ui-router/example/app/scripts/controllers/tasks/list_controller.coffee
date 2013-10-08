'use strict'

angular.module('listerApp.tasks.list', [
    'ui.inflector'
  ])

.controller('TasksListController', ['$scope', 'resolvedTasks'
    ($scope, resolvedTasks) ->
      $scope.data =
        tasks: resolvedTasks

      $scope.start = (task) ->
        task.state = 'started'

      $scope.finish = (task) ->
        task.state = 'finished'
  ])
