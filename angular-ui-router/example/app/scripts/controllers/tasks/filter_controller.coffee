'use strict'

# angular.module('listerApp.tasks.filter', [])
angular.module('listerApp')

.controller('TasksFilterController', ['$scope', '$state', '$stateParams',
    ($scope, $state, $stateParams) ->
      $scope.data =
        filter:
          state: $stateParams.state
          owner: $stateParams.owner
          labels: $stateParams.labels

      $scope.submit = ->
        # console.log @data.filter
        $state.go 'base.tasks.list', @data.filter

      $scope.clear = ->
        $state.transitionTo 'base.tasks.list'
  ])
