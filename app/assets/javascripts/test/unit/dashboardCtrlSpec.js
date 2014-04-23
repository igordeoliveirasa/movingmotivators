describe('DashboardCtrl', function(){
    var scope = {};
    var UserGame = {};
    var Motivator = {};

    var Game = {};
    var GameLevel = {};
    var UserGameLevel = {};
    var UserGameLevelResult = {};

    beforeEach(function(){
    module('mmControllers');

        Game.query = function(){ return [{"id":1,"name":"Game1","url":"http://0.0.0.0:3000/games/1.json"},
            {"id":2,"name":"Game2","url":"http://0.0.0.0:3000/games/2.json"},
            {"id":3,"name":"Game3","url":"http://0.0.0.0:3000/games/3.json"},
            {"id":4,"name":"Game4","url":"http://0.0.0.0:3000/games/4.json"},
            {"id":5,"name":"Game5","url":"http://0.0.0.0:3000/games/5.json"}];};

        UserGame.query = function() {
            return [{"id":1,"user_id":1,"game_id":1,"url":"http://0.0.0.0:3000/user_games/1.json"},
                {"id":2,"user_id":1,"game_id":2,"url":"http://0.0.0.0:3000/user_games/2.json"},
                {"id":3,"user_id":1,"game_id":3,"url":"http://0.0.0.0:3000/user_games/3.json"}];
        };

        Motivator.query = function(){ return []; };

        GameLevel.query = function() { return [{"id":1,"name":"sorting","level":1,"game_id":1,"url":"http://0.0.0.0:3000/game_levels/1.json"},{"id":2,"name":"moving","level":2,"game_id":1,"url":"http://0.0.0.0:3000/game_levels/2.json"}]; };
        GameLevel.get = function(param) {
            if (param == {game_id:1}) {
                return [{},{}];
            }
            else if (param == {game_id:2}) {
                return [{},{}];
            }
            else if (param == {game_id:3}) {
                return [{},{}];
            }
        };

        UserGameLevel.query = function() { return [{user_game_id:1},{user_game_id:1}]; };
        UserGameLevel.get = function(param) {
            if (param=={user_game_id:1}) {
                return [{},{}];
            }
            else if (param=={user_game_id:2}) {
                return [];
            }
            else if (param=={user_game_id:3}) {
                return [{}];
            }
        };
        UserGameLevelResult.query = function() { return []; };
  });

    it('should return the right json by id', inject(function($controller){
        var ctrl = $controller('DashboardCtrl', {$scope:scope, Game:Game, GameLevel:GameLevel, UserGame:UserGame, UserGameLevel:UserGameLevel, UserGameLevelResult:UserGameLevelResult, Motivator:Motivator});
        expect(scope.getJSONByKeyAndValue(scope.games, "id", 4)[0].name).toBe("Game4");
    }));

    it('should return empty by invalid json id', inject(function($controller){
        var ctrl = $controller('DashboardCtrl', {$scope:scope, Game:Game, GameLevel:GameLevel, UserGame:UserGame, UserGameLevel:UserGameLevel, UserGameLevelResult:UserGameLevelResult, Motivator:Motivator});
        expect(scope.getJSONByKeyAndValue(scope.games, "id", 10).length).toBe(0);
    }));

    it('should return true once the player completed two of two', inject(function($controller){
        var ctrl = $controller('DashboardCtrl', {$scope:scope, Game:Game, GameLevel:GameLevel, UserGame:UserGame, UserGameLevel:UserGameLevel, UserGameLevelResult:UserGameLevelResult, Motivator:Motivator});
        expect(scope.isGameCompleted(scope.user_games[0])).toBe(true);
    }));

    it('should return false once the player have not began', inject(function($controller){
        var ctrl = $controller('DashboardCtrl', {$scope:scope, Game:Game, GameLevel:GameLevel, UserGame:UserGame, UserGameLevel:UserGameLevel, UserGameLevelResult:UserGameLevelResult, Motivator:Motivator});
        expect(scope.isGameCompleted(scope.user_games[1])).toBe(false);
  }));

  it('should return false once the player completed one of two', inject(function($controller){
      var ctrl = $controller('DashboardCtrl', {$scope:scope, Game:Game, GameLevel:GameLevel, UserGame:UserGame, UserGameLevel:UserGameLevel, UserGameLevelResult:UserGameLevelResult, Motivator:Motivator});
        expect(scope.isGameCompleted(scope.user_games[2])).toBe(false);
  }));


});
