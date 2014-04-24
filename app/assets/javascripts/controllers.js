'use strict';


var mmControllers = angular.module('mmControllers', []);

mmControllers.controller('DashboardCtrl', ['$scope', 'Game', 'GameLevel', 'UserGame', 'UserGameLevel', 'UserGameLevelResult', 'Motivator', function($scope, Game, GameLevel, UserGame, UserGameLevel, UserGameLevelResult, Motivator) {

    $scope.games = Game.query();
    $scope.game_levels = GameLevel.query();

    $scope.user_games = UserGame.query();
    $scope.user_game_levels = UserGameLevel.query();

    $scope.motivators = Motivator.query();

    $scope.isGameCompleted = function(user_game) {
        //return user_game.game.game_levels.length == user_game.user_game_levels.length;
        var game_levels = $scope.getJSONByKeyAndValue($scope.game_levels, "game_id", user_game.game_id);
        var user_game_levels = $scope.getJSONByKeyAndValue($scope.user_game_levels, "user_game_id", user_game.id);
        return game_levels.length == user_game_levels.length && user_game_levels.length != 0;
    }

    $scope.getJSONByKeyAndValue = function(jsons, key, value) {
        var ret = []
        for (var i=0; i<jsons.length; i++) {
            if (jsons[i][key] == value) {
                ret.push(jsons[i]);
            }
        }
        return ret;
    }

    $scope.getGameFromUserGame = function(user_game) {
        var games = $scope.getJSONByKeyAndValue($scope.games, "id", user_game.game_id);
        return games[0];
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
