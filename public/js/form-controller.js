angular.module('l3', [])
  .controller('FormController', function($scope, $http) {

    $scope.household = {
      members: []
    };

    $scope.addHouseholdMember = function() {
      $scope.household.members.push({
        workAddress: "",
        workDays: 5,
      });
    };

    $scope.addVehicle = function(idx) {
      $scope.household.members[idx]["vehicle"] = {
        electric: false,
        mpg: 26,
      };
    };

    $scope.submit = function() {
      $http.post('/', {address: $scope.address}).success(function(response) {
        $scope.res = response;
      });
    };
  });
