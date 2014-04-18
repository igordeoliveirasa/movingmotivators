'use strict';


var mmControllers = angular.module('mmControllers', []);

mmControllers.controller('DashboardCtrl', ['$scope', 'Game', 'Motivator',  function($scope, Game, Motivator) {
  
  $scope.games = Game.query();
  $scope.motivators = Motivator.query();

}]).



controller('FeedbackCtrl', ['$scope', 'Feedback', function($scope, Feedback) {
 
  $scope.feedbacks = Feedback.query();

  $scope.feedback = {};

  $scope.save = function(feedback) {
    Feedback.save(feedback, function(result){
      alert('Saved!');
      $scope.feedbacks = Feedback.query();
    });
  }

}]);
