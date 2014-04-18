'use strict';


var mmControllers = angular.module('mmControllers', []);

mmControllers.controller('DashboardCtrl', ['$scope', 'Game', 'Motivator',  function($scope, Game, Motivator) {
  
  $scope.games = Game.query();
  $scope.motivators = Motivator.query();

}]).



controller('FeedbackCtrl', ['$scope', 'Feedback', function($scope, Feedback) {
  
  $scope.save = function(feedback) {
    Feedback.save($scope.feedback, function(result){
      alert('Saved!');
    });
  }

}]);
