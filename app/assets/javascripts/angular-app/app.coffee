angular.module('pickemApp', [
  'ui.router'
  'templates'
])
  .config [
    '$stateProvider'
    '$urlRouterProvider'
    '$locationProvider'
    ($stateProvider, $urlRouterProvider, $locationProvider) ->

      $urlRouterProvider.otherwise '/home'
      # the HTML5 History API
      $locationProvider.html5Mode(true)

      $stateProvider
        .state('home',
          url: '/home'
          templateUrl: 'partial-home.html')
        .state('home.list',
          url: '/list'
          templateUrl: 'partial-home-list.html'
          controller: ($scope) ->
            $scope.dogs = [
              'Bernese'
              'Husky'
              'Goldendoodle'
            ]
          )
        .state('home.paragraph',
          url: '/paragraph'
          template: 'Hello World from a partial view.')
        .state('about',
          url: '/about'
          views:
            '': templateUrl: 'partial-about.html'
            'columnOne@about': template: '<h1>Look I am a column!</h1>'
            'columnTwo@about':
              templateUrl: 'table-data.html'
              controller: 'teamController')
  ]
