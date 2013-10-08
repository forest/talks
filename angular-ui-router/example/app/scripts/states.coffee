'use strict'

angular.module('listerApp')

.config ['$stateProvider', '$urlRouterProvider', 
  ($stateProvider, $urlRouterProvider) ->
    # handle invalid URLs
    $urlRouterProvider
      .otherwise '/'

    # configure application states and ui views
    $stateProvider

      .state 'base',
        abstract: true
        url: ''
        views:
          'header':
            templateUrl: 'views/header.html'

      .state 'base.home',
        url: '/'
        views:
          '@':
            templateUrl: 'views/home.html'
          'message@':
            templateUrl: 'views/home.message.html'

      .state 'base.tasks',
        url: '/tasks'
        views:
          '@':
            templateUrl: 'views/tasks.html'
          'message@':
            templateUrl: 'views/tasks.message.html'
]
