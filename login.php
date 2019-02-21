<?php
	require_once('connect.php');
	print($_POST);
?>
<!DOCTYPE html>
<html>
	<head>
		<title>User Registration</title>

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
		<link rel="stylesheet" href="styles.css" >
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	</head>
	<body>
		<div class="container">
			<form class="form-signin" method="POST">
			<h2 class="form-signin-heading">Please Login</h2>
			<div class="input-group">
				<span class="input-group-addon" id="basic-addon1">ID</span>
				<input type="text" 
						name="username" 
						class="form-control" 
						placeholder="Number" 
						required>
			</div>
        
		<label for="inputPassword" class="sr-only">Password</label>
        <input type="password" 
				name="password" 
				id="inputPassword" 
				class="form-control" 
				placeholder="Password" 
				required>
				
        <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
        <a class="btn btn-lg btn-primary btn-block" href="register.php">Register</a>
			</form>
		</div>
	</body>
</html>