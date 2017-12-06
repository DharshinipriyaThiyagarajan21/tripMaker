myApp.controller('destinationController', ['$scope','$window','Upload', function ($scope,$window,Upload) {
	$scope.itenaries=[{}];
	$scope.init = function() {
		if(typeof json != 'undefined'){
			angular.forEach(json,function(value,key) {
				$scope[key] = value;
			});
		}
	}

	$scope.init();

	$scope.saveDestination = function() {
		console.log($scope.destination);
		Upload.upload({
			method: 'POST',
			url: '/destination',
			data: { destination: $scope.destination }
		}).then(function(response){
			console.log("response",response);
			$scope.destinationResponse = response;
			// $window.location.href = '/destinations'
		});
	}


}])