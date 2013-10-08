'use strict'

angular.module('listerApp.tasks.filter', [
    'listerApp.services.taskStates', 
    'listerApp.services.taskOwners'
  ])

.controller('TasksFilterController', ['$rootScope', '$scope', 'TaskStates', 'TaskOwners',
    ($rootScope, $scope, TaskStates, TaskOwners) ->
      $scope.data =
        filter:
          state: null
          owner: null
          labels: null
        states: TaskStates.all()
        owners: TaskOwners.all()

      $scope.submit = ->
        # console.log @data.filter
        $rootScope.$broadcast('TasksFilterChanged', @data.filter)

      $scope.clear = ->
        @data.filter.state = null
        @data.filter.owner = null
        @data.filter.labels = null
        
        $rootScope.$broadcast('TasksFilterChanged', null)
  ])
