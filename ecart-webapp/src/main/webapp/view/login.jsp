<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Login</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="../resources/css/bootstrap/bootstrap.min.css" />
	<link rel="stylesheet" href="../resources/css/bootstrap/bootstrap-theme.min.css" />
	<link rel="stylesheet" href="../resources/css/custom/app.css" />
	<script src="../resources/scripts/angularjs/lib/angular.min.js"></script>
	<script src="../resources/scripts/angularjs/lib/angular-route.min.js"></script>
	<script src="../resources/scripts/angularjs/app.js"></script>
	<script src="../resources/scripts/angularjs/module.js"></script>
	<script src="../resources/scripts/jquery/jquery-3.1.1.min.js"></script>
</head>
<body>
	<div class="container" ng-app="loginApp">
		<div class="page-header">
			<h3>ecart</h3>
		</div>
		<div class="row">
			<div class="col-md-9">
			</div>
			<div class="col-md-3" ng-controller="loginController">
				<form id="login-form">
					<div class="form-group">
						<label for="user-name">User Name:</label>
						<input id="user-name" name="userName" placeholder="User Name" autofocus="true" required="true" type="text" class="form-control" ng-model="userName" ng-change="clearError()"/>
					</div>
					<div class="form-group">
						<label for="user-password">Password:</label>
						<input id="user-password" name="userPassword" placeholder="Password" autofocus="true" required="true" type="text" class="form-control" ng-model="userPassword" ng-change="clearError()"/>
					</div>
					<div>
						<label id="remember-me">
							<input type="checkbox" id="remember-me" /> Remember Me
						</label>
						<input type="submit" value="Log in" id="login" class="btn btn-primary btn-block" ng-click="isValidUser()" formaction="home.jsp"/>
					</div>
					<div>
						<label id="forgot-password">
							<a href="#forgotpass" id="forgot-password"> Forgot Password</a>
						</label>
					</div>
					<div>
						<p align="center" style="color: red;">{{message}}</p>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>