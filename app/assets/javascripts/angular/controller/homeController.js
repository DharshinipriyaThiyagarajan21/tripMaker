myApp.controller('homeController', ['$scope','Home','$mdDialog','Trip','$timeout', function ($scope,Home,$mdDialog,Trip,$timeout) {
	$scope.itenaries=[{}];
	// $scope.pois = [];
	$scope.destValue;
	$scope.init = function() {
		if(typeof json != 'undefined'){
			angular.forEach(json,function(value,key) {
				$scope[key] = value;
			});
		}
	}

	$scope.init();

	$scope.bookNow = function(dest) {
		$scope.destValue = dest.name;
		$mdDialog.show({
			contentElement: '#bookNow',
			parent: angular.element(document.body),
			targetEvent: dest,
			clickOutsideToClose:true
    })
    $scope.getPOI(dest.name);
	}

	$scope.addItenary = function() {
		$scope.itenaries.push({});
	}

	$scope.removeItenary = function(index){
		$scope.itenaries.splice(index,1)
	}

	$scope.getPOI = function(city) {
		console.log(city)
		Trip.get_data(city).then(function(response){
			$scope.pois = response.pois;
			console.log($scope.pois);
		})
	}

	$scope.saveTrip = function() {
		console.log($scope.trip);	
		console.log($scope.itenaries);
		console.log($scope.destValue);
		home = new Home($scope.trip);
		home.itenaries = $scope.itenaries;
		home.city = $scope.destValue;
		home.save().then(function(response){
			console.log("response",response);
			if(response != undefined) {
				$scope.success = 'Trip Saved Successfully';
				var close = function() {
					$scope.cancel();
				}
				$timeout(close, 500);
				$scope.trip = '';
				$scope.itenaries = '';
			}
		});
	}

	$scope.cancel = function() {
		$mdDialog.cancel();
	};

}])