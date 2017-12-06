myApp.controller('poiController', ['$scope','POI','$window','Upload', function ($scope,POI,$window,Upload) {
	$scope.itenaries=[{}];
	$scope.init = function() {
		if(typeof json != 'undefined'){
			angular.forEach(json,function(value,key) {
				$scope[key] = value;
			});
		}
	}

	$scope.init();

	$scope.savePOI = function() {
		console.log($scope.poi);
		Upload.upload({
			method: 'POST',
			url: '/poi',
			data: { poi: $scope.poi }
		}).then(function(response){
			console.log("response",response);
			$scope.poiResponse = response;
			$window.location.href = '/pois'
		});
	}

	$scope.addItenary = function() {
		$scope.itenaries.push({});
	}

	$scope.removeItenary = function(index){
		$scope.itenaries.splice(index,1)
	}


}])