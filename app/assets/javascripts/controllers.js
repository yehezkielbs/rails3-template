var samples = {
  ListCtrl: function ($scope, Sample) {
    $scope.samples = Sample.query();
  },
  NewCtrl: function ($scope, Sample, $location) {
    $scope.sample = new Sample();
    $scope.add = function () {
      $scope.sample.$save(function (sample) {
        $location.url('/samples/' + sample.id);
      });
    };
  },
  ShowCtrl: function ($scope, Sample, $location, $routeParams) {
    $scope.sample = Sample.get({id: $routeParams.id});
    $scope.update = function () {
      $scope.sample.$update();
      $location.url('/samples/' + $scope.sample.id);
    };
    $scope.remove = function () {
      $scope.sample.$remove();
      $location.url('/samples');
    }
  }
};

samples.ListCtrl.$inject = ['$scope'];
samples.NewCtrl.$inject = ['$scope', '$location'];
samples.ShowCtrl.$inject = ['$scope', '$location', '$routeParams'];
