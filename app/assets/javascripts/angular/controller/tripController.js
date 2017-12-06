myApp.controller('tripController', ['$scope','Trip','$window', function ($scope,Trip,$window) {
	$scope.itenaries=[{}];
	$scope.pois = [];
	$scope.init = function() {
		if(typeof json != 'undefined'){
			angular.forEach(json,function(value,key) {
				$scope[key] = value;
			});
		}
	}

	$scope.init();

	$scope.saveTrip = function() {
		console.log($scope.trip);	
		console.log($scope.itenaries);
		trip = new Trip($scope.trip);
		trip.itenaries = $scope.itenaries;
		trip.save().then(function(response){
			console.log("response",response);
			$window.location.href="/thankyou"
		});
	}

	$scope.addItenary = function() {
		$scope.itenaries.push({});
	}

	$scope.removeItenary = function(index){
		$scope.itenaries.splice(index,1)
	}

	$scope.getPOI = function($index) {
		console.log($scope.itenaries[$index].city)
		Trip.get_data($scope.itenaries[$index].city).then(function(response){
			$scope.pois.push(response.pois);
			console.log($scope.pois);
		})

	}
	
}])