'use strict'

angular.module('listerApp')
  .config ['$stateProvider', '$urlRouterProvider', ($stateProvider, $urlRouterProvider) ->
    # handle invalid URLs
    $urlRouterProvider
      .otherwise '/'
  
    # configure application states and ui views
    $stateProvider

      .state 'base',
        abstract: true
        url: ''
        views:
          # '':
          #   template: '<ui-view/>'
          'header':          
            templateUrl: 'views/header.html'
          # 'message':
          #   template: '<ui-view="message"/>'


      .state 'base.home',
        url: '/'
        views:
          '@':
            templateUrl: 'views/home.html'
            # controller: 'AppController'
          'message@':          
            templateUrl: 'views/home.message.html'

      .state 'base.list',
        url: '/list'
        views:
          '@':
            template: '<p>List</p>'
            # controller: 'AppController'
          'message@':          
            template: '<p>List Message</p>'
  
  ]
