'use strict';


var mmControllers = angular.module('mmControllers', []);

mmControllers.controller('DashboardCtrl', ['$scope', 'UserGame', 'Motivator',  function($scope, UserGame, Motivator) {
  
  $scope.user_games = UserGame.query();
  $scope.motivators = Motivator.query();

  $scope.isGameDone = function(user_game) {
    return user_game.game.game_levels.length == user_game.user_game_levels.length;
  }


}]).



controller('FeedbackCtrl', ['$scope', 'Feedback', function($scope, Feedback) {
 
  $scope.feedbacks = Feedback.query();

  $scope.feedback = {};

  $scope.save = function(feedback) {
    if (feedback!=null && feedback!={}) {
      Feedback.save(feedback);
      $scope.feedbacks = Feedback.query();
    }
  }

}]);
