'use strict';


var mmControllers = angular.module('mmControllers', []);

mmControllers.controller('DashboardCtrl', ['$scope', 'Game', function($scope, Game) {
  
  $scope.games = Game.query();


}]);
