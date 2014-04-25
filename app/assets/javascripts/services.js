var mmServices = angular.module('mmServices', ['ngResource']);

mmServices.
    factory('Feedback', ['$resource',
        function($resource){
          return $resource('feedbacks/:id.json', {}, {
            query: {method:'GET', params:{feedbackId:'feedbacks'}, isArray:true}
          });
        }]).

    factory('GameLevel', ['$resource',
        function($resource){
          return $resource('game_levels/:id.json', {}, {
            query: {method:'GET', params:{gameLevelId:'game_levels'}, isArray:true}
          });
        }]).

    factory('LevelPermission', ['$resource',
        function($resource){
            return $resource('level_permissions/:id.json', {}, {
                query: {method:'GET', params:{levelPermissionId:'level_permissions'}, isArray:true}
            });
        }]).

    factory('GameLevelPermission', ['$resource',
        function($resource){
            return $resource('game_level_permissions/:id.json', {}, {
                query: {method:'GET', params:{gameLevelPermissionId:'game_level_permissions'}, isArray:true}
            });
        }]).

    factory('Motivator', ['$resource',
    function($resource){
      return $resource('motivators/:id.json', {}, {
        query: {method:'GET', params:{motivatorId:'motivators'}, isArray:true}
      });
    }]).

    factory('UserGame', ['$resource',
        function($resource){
          return $resource('user_games/:id.json', {}, {
            query: {method:'GET', params:{userGameId:'user_games'}, isArray:true}
          });
        }]).

    factory('UserGameLevel', ['$resource',
        function($resource){
          return $resource('user_game_levels/:id.json', {}, {
            query: {method:'GET', params:{userGameLevelId:'user_game_levels'}, isArray:true}
          });
        }]).

    factory('UserGameLevelResult', ['$resource',
        function($resource){
          return $resource('user_game_level_results/:id.json', {}, {
            query: {method:'GET', params:{userGameLevelResultId:'user_game_level_results'}, isArray:true}
          });
        }]).

    factory('Game', ['$resource',
        function($resource){
          return $resource('games/:id.json', {}, {
            query: {method:'GET', params:{gameId:'games'}, isArray:true}
          });
        }]);
