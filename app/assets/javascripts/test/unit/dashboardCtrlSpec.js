describe('DashboardCtrl', function(){
    var scope = {};

    var Motivator = {};
    var LevelPermission = {};

    var Game = {};
    var GameLevel = {};
    var GameLevelPermission = {};

    var UserGame = {};
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
            return [{"id":1,"user_id":1,"game_id":1,"url":"http://0.0.0.0:3000/user_games/1.json", "completed":true},
                {"id":2,"user_id":1,"game_id":2,"url":"http://0.0.0.0:3000/user_games/2.json", "completed":false},
                {"id":3,"user_id":1,"game_id":3,"url":"http://0.0.0.0:3000/user_games/3.json", "completed":false}];
        };

        Motivator.query = function(){ return []; };
        LevelPermission.query = function(){ return []; };

        GameLevel.query = function() { return [
            {"id":1,"name":"sorting","level":1,"game_id":1,"url":"http://0.0.0.0:3000/game_levels/1.json"},
            {"id":2,"name":"moving","level":2,"game_id":1,"url":"http://0.0.0.0:3000/game_levels/2.json"}];
        };

        GameLevel.get = function(param) {
            if (param == {game_id:1}) {
                return [{"id":1,"name":"sorting","level":1,"game_id":1,"url":"http://0.0.0.0:3000/game_levels/1.json"},
                    {"id":2,"name":"moving","level":2,"game_id":1,"url":"http://0.0.0.0:3000/game_levels/2.json"}];
            }
            else if (param == {game_id:2}) {
                return [{"id":3,"name":"sorting","level":1,"game_id":2,"url":"http://0.0.0.0:3000/game_levels/3.json"},
                    {"id":4,"name":"moving","level":2,"game_id":2,"url":"http://0.0.0.0:3000/game_levels/4.json"}];
            }
            else if (param == {game_id:3}) {
                return [{"id":5,"name":"sorting","level":1,"game_id":3,"url":"http://0.0.0.0:3000/game_levels/5.json"},
                    {"id":6,"name":"moving","level":2,"game_id":3,"url":"http://0.0.0.0:3000/game_levels/6.json"}];
            }
        };

        GameLevelPermission.query = function(){ return []; };

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
        var ctrl = $controller('DashboardCtrl', {$scope:scope, Motivator:Motivator, LevelPermission:LevelPermission, Game:Game, GameLevel:GameLevel, GameLevelPermission:GameLevelPermission, UserGame:UserGame, UserGameLevel:UserGameLevel, UserGameLevelResult:UserGameLevelResult});
        expect(scope.getJSONByKeyAndValue(scope.games, "id", 4)[0].name).toBe("Game4");
    }));

    it('should return empty by invalid json id', inject(function($controller){
        var ctrl = $controller('DashboardCtrl', {$scope:scope, Motivator:Motivator, LevelPermission:LevelPermission, Game:Game, GameLevel:GameLevel, GameLevelPermission:GameLevelPermission, UserGame:UserGame, UserGameLevel:UserGameLevel, UserGameLevelResult:UserGameLevelResult});
        expect(scope.getJSONByKeyAndValue(scope.games, "id", 10).length).toBe(0);
    }));

    it('Getting game from user game 1 should return game with name: UserGame1', inject(function($controller){
        var ctrl = $controller('DashboardCtrl', {$scope:scope, Motivator:Motivator, LevelPermission:LevelPermission, Game:Game, GameLevel:GameLevel, GameLevelPermission:GameLevelPermission, UserGame:UserGame, UserGameLevel:UserGameLevel, UserGameLevelResult:UserGameLevelResult});
        expect(scope.getGameFromUserGame(scope.user_games[0]).name).toBe("Game1");
    }));

    it('Getting game from user game 2 should return game with name: UserGame2', inject(function($controller){
        var ctrl = $controller('DashboardCtrl', {$scope:scope, Motivator:Motivator, LevelPermission:LevelPermission, Game:Game, GameLevel:GameLevel, GameLevelPermission:GameLevelPermission, UserGame:UserGame, UserGameLevel:UserGameLevel, UserGameLevelResult:UserGameLevelResult});
        expect(scope.getGameFromUserGame(scope.user_games[1]).name).toBe("Game2");
    }));

    it('should return a list of available games', inject(function($controller){
        var ctrl = $controller('DashboardCtrl', {$scope:scope, Motivator:Motivator, LevelPermission:LevelPermission, Game:Game, GameLevel:GameLevel, GameLevelPermission:GameLevelPermission, UserGame:UserGame, UserGameLevel:UserGameLevel, UserGameLevelResult:UserGameLevelResult});
        expect(scope.listAvailableGames().length).toBe(2);
        expect(scope.listAvailableGames()[0].id).toBe(2);
        expect(scope.listAvailableGames()[1].id).toBe(3);
    }));

    it('should return a list of available games', inject(function($controller){
        var ctrl = $controller('DashboardCtrl', {$scope:scope, Motivator:Motivator, LevelPermission:LevelPermission, Game:Game, GameLevel:GameLevel, GameLevelPermission:GameLevelPermission, UserGame:UserGame, UserGameLevel:UserGameLevel, UserGameLevelResult:UserGameLevelResult});
        expect(scope.listGameLevels(scope.games[0].id).length).toBe(2);
    }));

});
