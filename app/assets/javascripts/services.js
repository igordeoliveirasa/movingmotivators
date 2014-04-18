var mmServices = angular.module('mmServices', ['ngResource']);

mmServices.

factory('Feedback', ['$resource',
    function($resource){
      return $resource('feedbacks/:id.json', {}, {
        query: {method:'GET', params:{feedbackId:'feedbacks'}, isArray:true}
      });
    }]).

factory('Motivator', ['$resource',
    function($resource){
      return $resource('motivators/:id.json', {}, {
        query: {method:'GET', params:{motivatorId:'motivators'}, isArray:true}
      });
    }]).

factory('Game', ['$resource',
    function($resource){
      return $resource('games/:id.json', {}, {
        query: {method:'GET', params:{gameId:'games'}, isArray:true}
      });
    }]);
