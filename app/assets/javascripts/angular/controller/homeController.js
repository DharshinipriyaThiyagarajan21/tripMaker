myApp.controller('homeController', ['$scope','Home','$mdDialog', function ($scope,Home,$mdDialog) {
	$scope.init = function() {
		if(typeof json != 'undefined'){
			angular.forEach(json,function(value,key) {
				$scope[key] = value;
			});
		}
	}

	$scope.init();

	$scope.bookNow = function(dest) {
		console.log(dest);
		$scope.showAdvanced(dest);
	}

	function DialogController($scope,$mdDialog){
		$scope.cancel = function() {
			$mdDialog.cancel();
		};
	}
	
	$scope.showAdvanced = function(ev) {
		$mdDialog.show({
			controller: DialogController,
			templateUrl: 'bookNow.tmpl.html',
			parent: angular.element(document.body),
			targetEvent: ev,
			clickOutsideToClose:true
    })
    console.log(ev);
	};

}])