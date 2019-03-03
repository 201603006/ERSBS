<?php
	require_once('connect.php');
	include('config.php');
	if(isset($_POST) & !empty($_POST)){
		$username 		 = mysqli_real_escape_string($db, $_POST['username']);
		$email    		 = mysqli_real_escape_string($db, $_POST['email']);
		$password 		 = md5($_POST['password']);
		$passwordagain 	 = md5($_POST['passwordagain']);
			if($password == $passwordagain){
			$fmsg = "";
			
			$usernamesql = "SELECT * FROM `users` WHERE idnum='$username'";
			$usernameres = mysqli_query($db, $usernamesql);
			$usernamecount = mysqli_num_rows($usernameres);
				if($usernamecount ==1){
					$fmsg .= "ID number already exists";
				}

			$emailsql = "SELECT * FROM `users` WHERE email='$email'";
			$emailres = mysqli_query($db, $emailsql);
			$emailcount = mysqli_num_rows($emailres);
				if($emailcount == 1){
					$fmsg .= "Email already exists";
				}
			
			$sql = "INSERT INTO `users` (idnum, email, password) VALUES ('$username', '$email', '$password')";
			$result = mysqli_query($db, $sql);
			if($result){
				$smsg = "User registered successfully";

			require 'PHPMailer/PHPMailerAutoload.php';
			$mail = new PHPMailer;                             
			try {
				//Server settings
				$mail->SMTPDebug = 2;                                 
				$mail->isSMTP();                                      
				$mail->Host = '$smtphost';  
				$mail->SMTPAuth = true;                               
				$mail->Username = '$smtpuser';                 
				$mail->Password = '$smtppass';                           
				$mail->SMTPSecure = 'ssl';                           
				$mail->Port = 587;                                    

				//Recipients
				$mail->setFrom('somethinginfo.com', 'Pixel');
				$mail->addAddress('nayumi02@yahoo.com', 'Joe User');    

				//Content
				$mail->isHTML(true);                                  
				$mail->Subject = 'Here is the subject';
				$mail->Body    = 'This is the HTML message body <b>in bold!</b>';
				$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

				$mail->send();
				echo 'Message has been sent';
				} catch (Exception $e) {
					echo 'Message could not be sent. Mailer Error: ', $mail->ErrorInfo;
				}
			
			} else {
				$fmsg .= " Failed to register user";
			}
		} else {
			$fmsg = "Passwords did not matched";
		}
	}	
?>

<html>
	<head>
		<title>User Registration</title>
		
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
		<link rel="stylesheet" href="styles.css" >
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		
	</head>
<body>
<div class="container">
	<!-- ALERT MESSAGE : SUCCESS & FAIL -->
	<?php if(isset($smsg)) { ?>
		<div class="alert alert-success" role="alert"><?php echo $smsg; ?></div>
	<?php } ?>	
	<?php if(isset($fmsg)) { ?>	
		<div class="alert alert-danger"  role="alert"><?php echo $fmsg; ?></div>
	<?php } ?>
	<!------------------------------------>
	
	<form class="form-signin" method="POST">
	
	<h2 class="form-signin-heading">User Registration</h2>
	
	<div class="input-group">
		<span class="input-group-addon" id="basic-addon1"> ID</span>
		<input type="text"
				name="username"
				class="form-control" 
				placeholder="number"
				value="<?php if(isset($username) & !empty($username)){echo $username;}?>" 
				required>
	</div>
	
		<label for="inputEmail" class="sr-only"> Email address</label>
        <input type="email"
				name="email"    
				id="email"    
				class="form-control" 
				placeholder="Email address" 
				value="<?php if(isset($email) & !empty($email)){echo $email;}?>" 
				required autofocus>
        
		<label for="inputPassword" class="sr-only">Password</label>
        <input type="password" 
				name="password" 
				id="password" 
				class="form-control" 
				placeholder="Password" 
				required>
        
		<label for="inputPassword" class="sr-only">Re-type Password</label>
        <input type="password" 
				name="passwordagain" 
				id="password" 
				class="form-control" 
				placeholder="Re-type in password" 
				required>
				
		<button class="btn btn-lg btn-primary btn-block" 
				type="submit">Register</button>
		
		<a class="btn btn-lg btn-primary btn-block" href="login.php">  Login</a>
	</form>
</div>
	
</body>
</html>