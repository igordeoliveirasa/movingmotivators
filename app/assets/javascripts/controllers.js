'use strict';

var mmControllers = angular.module('mmControllers', []);

mmControllers.controller('DashboardCtrl', ['$scope', 'Motivator', 'LevelPermission', 'Game', 'GameLevel', 'GameLevelPermission', 'UserGame', 'UserGameLevel', 'UserGameLevelResult', function($scope, Motivator, LevelPermission, Game, GameLevel, GameLevelPermission, UserGame, UserGameLevel, UserGameLevelResult) {

    $scope.games = Game.query();
    $scope.game_levels = GameLevel.query();

    $scope.user_games = UserGame.query();
    $scope.user_game_levels = UserGameLevel.query();

    $scope.motivators = Motivator.query();

    $scope.getGameFromUserGame = function(game_id) {
        var games = getJSONByKeyAndValue($scope.games, "id", game_id);
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


controller('UserGameCtrl', ['$scope', '$routeParams', 'Motivator', 'LevelPermission', 'Game', 'GameLevel', 'GameLevelPermission', 'UserGame', 'UserGameLevel', 'UserGameLevelResult', function($scope, $routeParams, Motivator, LevelPermission, Game, GameLevel, GameLevelPermission, UserGame, UserGameLevel, UserGameLevelResult) {
        $scope.motivators = Motivator.query();
        $scope.user_game = UserGame.get($routeParams.user_game_id);
        $scope.game = Game.get($scope.user_game.game_id);
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
