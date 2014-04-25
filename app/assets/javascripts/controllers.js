'use strict';


var mmControllers = angular.module('mmControllers', []);

mmControllers.controller('DashboardCtrl', ['$scope', 'Motivator', 'LevelPermission', 'Game', 'GameLevel', 'GameLevelPermission', 'UserGame', 'UserGameLevel', 'UserGameLevelResult', function($scope, Motivator, LevelPermission, Game, GameLevel, GameLevelPermission, UserGame, UserGameLevel, UserGameLevelResult) {

    $scope.games = Game.query();
    $scope.game_levels = GameLevel.query();

    $scope.user_games = UserGame.query();
    $scope.user_game_levels = UserGameLevel.query();

    $scope.motivators = Motivator.query();

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

    $scope.listGameLevels = function(game_id) {
        var ret = [];

        for (var i=0; i<$scope.game_levels.length; i++) {
            var game_level = $scope.game_levels[i];
            if (game_level.game_id == game_id) {
                ret.push(game_level);
            }
        }

        return ret;
    }

    $scope.listAvailableGames = function() {
        var ret = [];
        for (var i=0; i<$scope.user_games.length; i++) {
            var user_game = $scope.user_games[i];
            if (!user_game.completed)
            {
                ret.push(user_game);
            }
        }
        return ret;
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
