var mmServices = angular.module('mmServices', ['ngResource']);

mmServices.factory('Game', ['$resource',
    function($resource){
      return $resource('games/:id', {}, {
      });
    }]);
