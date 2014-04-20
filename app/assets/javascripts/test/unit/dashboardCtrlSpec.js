describe('DashboardCtrl', function(){
  var scope = {};
  var UserGame = {};
  var Motivator = {};

  beforeEach(function(){
    module('mmControllers');
    
    UserGame.query = function(){ return []; };
    Motivator.query = function(){ return []; };
  });


  it('should return true, once there is no game defined for player and system', inject(function($controller){    
    var ctrl = $controller('DashboardCtrl', {$scope:scope, UserGame:UserGame, Motivator:Motivator});
    var userGame = { game:{game_levels:[]}, user_game_levels:[]};
    expect(scope.isGameDone(userGame)).toBe(true);
  }));
  
  it('should return false once the player have not began', inject(function($controller){    
    var ctrl = $controller('DashboardCtrl', {$scope:scope, UserGame:UserGame, Motivator:Motivator});
    var userGame = { game:{game_levels:[{},{}]}, user_game_levels:[]};
    expect(scope.isGameDone(userGame)).toBe(false);
  }));

  it('should return false once the player completed one of two', inject(function($controller){    
    var ctrl = $controller('DashboardCtrl', {$scope:scope, UserGame:UserGame, Motivator:Motivator});
    var userGame = { game:{game_levels:[{},{}]}, user_game_levels:[{}]};
    expect(scope.isGameDone(userGame)).toBe(false);
  }));

  it('should return true once the player completed two of two', inject(function($controller){    
    var ctrl = $controller('DashboardCtrl', {$scope:scope, UserGame:UserGame, Motivator:Motivator});
    var userGame = { game:{game_levels:[{},{}]}, user_game_levels:[{}, {}]};
    expect(scope.isGameDone(userGame)).toBe(true);
  }));

});