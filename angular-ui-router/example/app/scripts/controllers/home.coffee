'use strict'

angular.module('listerApp')

.controller 'HomeController', ['$scope', ($scope) ->
  $scope.awesomeThings = [
    'HTML5 Boilerplate'
    'AngularJS'
    'Karma'
  ]
]
