'use strict'

angular.module('listerApp')

.config ['$stateProvider', '$urlRouterProvider', 
  ($stateProvider, $urlRouterProvider) ->
    # handle invalid URLs
    $urlRouterProvider
      .otherwise '/'

    # configure application states and ui views
    $stateProvider

      .state 'home',
        url: '/'
        templateUrl: 'views/home.html'
]
