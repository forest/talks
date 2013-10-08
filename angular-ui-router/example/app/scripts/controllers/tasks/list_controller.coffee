'use strict'

angular.module('listerApp.tasks.list', [
    'ui.inflector', 
    'listerApp.services.currentUser'
  ])

.controller('TasksListController', ['$scope', 'resolvedTasks', 'currentUser'
    ($scope, resolvedTasks, currentUser) ->
      $scope.data =
        tasks: resolvedTasks

      $scope.start = (task) ->
        task.state = 'started'
        task.owner = currentUser

      $scope.finish = (task) ->
        task.state = 'finished'
  ])
