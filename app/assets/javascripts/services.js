angular.module('SampleServices', ['ngResource']).
  factory('Sample', function ($resource) {
    return $resource('/samples/:id', {id: '@id'}, {update: {method: 'PUT'}});
  });
