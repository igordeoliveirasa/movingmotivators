'use strict';

angular.module('mm', ['ngRoute', 'mmServices', 'mmControllers']).

config(["$httpProvider", function($httpProvider){ 
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content');
}]).

config(['$routeProvider', '$locationProvider', function($routeProvider, $locationProvider) {
  $routeProvider.when('/dashboard', {templateUrl: 'partials/dashboard.html', controller: 'DashboardCtrl'});
  $routeProvider.when('/feedback', {templateUrl: 'partials/feedback.html', controller: 'FeedbackCtrl'});
//$routeProvider.otherwise({redirectTo: '/view1'});
  $locationProvider.html5Mode(true);
//$locationProvider.hasPrefix('!');
}]);
