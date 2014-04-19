describe('FeedbackCtrl', function(){
  var scope = {};
  var Feedback = {};

  beforeEach(function(){
    module('mmControllers');
    
    Feedback.query = function(){ return [{},{}]; };
    Feedback.save = function(feedback) {};
  });


  it('should keep containing 2, since we are passing null', inject(function($controller){    
    var ctrl = $controller('FeedbackCtrl', {$scope:scope, Feedback:Feedback});
    spyOn(Feedback,'query');
    spyOn(Feedback, 'save');

    scope.save(null);
    
    expect(Feedback.save).not.toHaveBeenCalled();
    expect(Feedback.query).not.toHaveBeenCalled();
  }));
  
  it('should contain 2, since we are passing data', inject(function($controller){    
    var ctrl = $controller('FeedbackCtrl', {$scope:scope, Feedback:Feedback});

    spyOn(Feedback,'query');
    spyOn(Feedback, 'save');
    
    scope.save({description:'bla bla'});

    expect(Feedback.save).toHaveBeenCalled();
    expect(Feedback.query).toHaveBeenCalled();
  }));
  
});
