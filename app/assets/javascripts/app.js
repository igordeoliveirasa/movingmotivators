'use strict';

angular.module('mm', ['ngRoute', 'mm.controllers']).

config(['$routeProvider', '$locationProvider', function($routeProvider, $locationProvider) {
  $routeProvider.when('/dashboard', {templateUrl: 'partials/dashboard.html', controller: 'DashboardCtrl'});
//$routeProvider.otherwise({redirectTo: '/view1'});
  $locationProvider.html5Mode(true);
//$locationProvider.hasPrefix('!');
}]);
