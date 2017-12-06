myApp.controller('userController', ['$scope','User','$window', function ($scope,User,$window) {
	$scope.init = function() {
		if(typeof json != 'undefined'){
			angular.forEach(json,function(value,key) {
				$scope[key] = value;
			});
		}
	}

	$scope.init();

	$scope.saveUser = function() {
		console.log($scope.user);	
		if($scope.user != undefined) {
			user = new User($scope.user);
			user.save().then(function(response){
				console.log("response",response);
				$scope.userResponse = response;	

				if(response.error != undefined) {
					$window.location.href = '/users/new'
				}
				else {
					$window.location.href = '/users'
				}
			});
		}
	}
	
}])