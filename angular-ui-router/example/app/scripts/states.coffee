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
        abstract: true
        url: '/tasks'
        views:
          '@':
            templateUrl: 'views/tasks.html'
          'message@':
            templateUrl: 'views/tasks.message.html'

      .state 'base.tasks.list',
          url: '?state&owner&labels'
          views:
            'filter':
              templateUrl: 'views/tasks.filter.html'
              controller: 'TasksFilterController'
            'list':
              templateUrl: 'views/tasks.list.html'
              controller: 'TasksListController'
          resolve:
            resolvedTasks: ['Tasks', '$stateParams',
              (Tasks, $stateParams) ->
                Tasks.get($stateParams)
            ]
  
]
