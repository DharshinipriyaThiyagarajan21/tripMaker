myApp.directive('multiSelect', function() {
  return {
    require: "ngModel",
    link: function(scope, element, attr) {
      $(element).select2()
    }
  }
})
