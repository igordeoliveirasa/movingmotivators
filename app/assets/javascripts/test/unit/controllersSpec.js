describe('DashboardCtrl', function(){
  beforeEach(module('mmControllers'));
  it('should return false to the isGameDone', function() {
    var scope = {};
    var UserGame = {};
    var Motivator = {};
    var user_game = {};
    ctrl = new DashboardCtrl(scope, UserGame, Motivator);
    expect(scope.isGameDone(user_game)).toBe(false);
  });
});
