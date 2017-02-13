mainApp.controller("loginController", function($scope, $http, $location) {
	$scope.isValidUser = function() {
		$http({
			method : "POST",
    		url : "/rest/users/login",
    		data : {userName : $scope.userName, userPassword : $scope.userPassword}
    	}).then(function(response) {
    		
    	}, function(response) {
    		$scope.message = "Invalid User Name or Password";
    		$location.path("/home.jsp");
    	});
	}
	$scope.clearError = function() {
		$scope.message = "";
	}
});


// Test module for testing purpose only
regApp.controller("registerController", function($scope, $http) {
	$scope.registerUser = function () {
    	$http({
    		method : "POST",
    		url : "/rest/users",
    		data : {userName : $scope.userName, userPassword : $scope.userPassword}
    	}).then(function(response) {
    		$scope.responseStatus = response.headers;
    	});
    }
    $scope.getUser = function () {
    	$http({
    		method : "GET",
    		url : "/rest/users/2"
    	}).then(function(response) {
    		$scope.responseStatus = response.data;
    	});
    }
});