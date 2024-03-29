describe('UserGameCtrl', function(){
    var scope = {};

    var routeParams = {};
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

        Motivator.query = function() {
            return [
                {"id":1, "name":"mot1"},
                {"id":2, "name":"mot2"},
                {"id":3, "name":"mot3"},
                {"id":4, "name":"mot4"},
                {"id":5, "name":"mot5"},
                {"id":6, "name":"mot6"},
                {"id":7, "name":"mot7"},
                {"id":8, "name":"mot8"},
                {"id":9, "name":"mot9"},
                {"id":10, "name":"mot10"}];
        };

        Game.query = function(){ return [{"id":1,"name":"Game1","url":"http://0.0.0.0:3000/games/1.json"},
            {"id":2,"name":"Game2","url":"http://0.0.0.0:3000/games/2.json"},
            {"id":3,"name":"Game3","url":"http://0.0.0.0:3000/games/3.json"},
            {"id":4,"name":"Game4","url":"http://0.0.0.0:3000/games/4.json"},
            {"id":5,"name":"Game5","url":"http://0.0.0.0:3000/games/5.json"}];};

        Game.get = function(game_id) {
            if (game_id==1) {
                return {"id": 1, "name": "Game1", "url": "http://0.0.0.0:3000/games/1.json"};
            }
        };

        UserGame.query = function() {
            return [{"id":1,"user_id":1,"game_id":1,"url":"http://0.0.0.0:3000/user_games/1.json", "completed":true},
                {"id":2,"user_id":1,"game_id":2,"url":"http://0.0.0.0:3000/user_games/2.json", "completed":false},
                {"id":3,"user_id":1,"game_id":3,"url":"http://0.0.0.0:3000/user_games/3.json", "completed":false}];
        };

        UserGame.get = function(user_game_id) {
            if (user_game_id==1) {
                return {"id": 1, "user_id": 1, "game_id": 1, "completed": false, "url": "http://0.0.0.0:3000/user_games/1.json"};
            }
        };

        LevelPermission.query = function(){ return []; };

        GameLevel.query = function() { return [
            {"id":1,"name":"sorting","level":1,"game_id":1,"url":"http://0.0.0.0:3000/game_levels/1.json"},
            {"id":2,"name":"moving","level":2,"game_id":1,"url":"http://0.0.0.0:3000/game_levels/2.json"}];
        };
        /*
        it cant return a list
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
        */
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

    it('should fill up the motivators', inject(function($controller){
        routeParams.user_game_id = 1;
        var ctrl = $controller('UserGameCtrl', {$scope:scope, $routeParams:routeParams, Motivator:Motivator, LevelPermission:LevelPermission, Game:Game, GameLevel:GameLevel, GameLevelPermission:GameLevelPermission, UserGame:UserGame, UserGameLevel:UserGameLevel, UserGameLevelResult:UserGameLevelResult});
        expect(scope.motivators.length).toBe(10);
    }));

    it('should fill up the right user_game', inject(function($controller){
        routeParams.user_game_id = 1;
        var ctrl = $controller('UserGameCtrl', {$scope:scope, $routeParams:routeParams, Motivator:Motivator, LevelPermission:LevelPermission, Game:Game, GameLevel:GameLevel, GameLevelPermission:GameLevelPermission, UserGame:UserGame, UserGameLevel:UserGameLevel, UserGameLevelResult:UserGameLevelResult});
        expect(scope.user_game.id).toBe(1);
    }));


    it('should fill up the right game', inject(function($controller){
        routeParams.user_game_id = 1;
        var ctrl = $controller('UserGameCtrl', {$scope:scope, $routeParams:routeParams, Motivator:Motivator, LevelPermission:LevelPermission, Game:Game, GameLevel:GameLevel, GameLevelPermission:GameLevelPermission, UserGame:UserGame, UserGameLevel:UserGameLevel, UserGameLevelResult:UserGameLevelResult});
        expect(scope.game.name).toBe("Game1");
    }));

    /*
    keep on doing it later.
    it('should fill up the right game_level', inject(function($controller){
        routeParams.user_game_id = 1;
        var ctrl = $controller('UserGameCtrl', {$scope:scope, $routeParams:routeParams, Motivator:Motivator, LevelPermission:LevelPermission, Game:Game, GameLevel:GameLevel, GameLevelPermission:GameLevelPermission, UserGame:UserGame, UserGameLevel:UserGameLevel, UserGameLevelResult:UserGameLevelResult});
        expect(scope.game_level.name).toBe("sorting");
    }));

    it('should fill up the right next_game_level', inject(function($controller){
        routeParams.user_game_id = 1;
        var ctrl = $controller('UserGameCtrl', {$scope:scope, $routeParams:routeParams, Motivator:Motivator, LevelPermission:LevelPermission, Game:Game, GameLevel:GameLevel, GameLevelPermission:GameLevelPermission, UserGame:UserGame, UserGameLevel:UserGameLevel, UserGameLevelResult:UserGameLevelResult});
        expect(scope.next_game_level.name).toBe("moving");
    }));
    */
});
