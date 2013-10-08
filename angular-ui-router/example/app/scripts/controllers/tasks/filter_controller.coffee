'use strict'

angular.module('listerApp.tasks.filter', [
    'listerApp.services.taskStates', 
    'listerApp.services.taskOwners'
  ])

.controller('TasksFilterController', ['$scope', '$state', '$stateParams', 'TaskStates', 'TaskOwners',
    ($scope, $state, $stateParams, TaskStates, TaskOwners) ->
      $scope.data =
        filter:
          state: $stateParams.state
          owner: $stateParams.owner
          labels: $stateParams.labels
        states: TaskStates.all()
        owners: TaskOwners.all()

      $scope.submit = ->
        # console.log @data.filter
        $state.go 'base.tasks.list', @data.filter

      $scope.clear = ->
        $state.transitionTo 'base.tasks.list'
  ])
