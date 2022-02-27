<?php
	include('includes/config.php');
	$reqErr = $loginErr = "";
	if($_SERVER['REQUEST_METHOD'] == "POST") {
		if(!empty($_POST['txtUsername']) && !empty($_POST['txtPassword']) && isset($_POST['login_type'])){
			session_start();
			$username = $_POST['txtUsername'];
			$password = $_POST['txtPassword'];
			$_SESSION['sessLogin_type'] = $_POST['login_type'];
			if($_SESSION['sessLogin_type'] == "retailer") {
				//if selected type is retailer than check for valid retailer.
				$query_selectRetailer = "SELECT retailer_id,username,password FROM retailer WHERE username='$username' AND password='$password'";
				$result = mysqli_query($con,$query_selectRetailer);
				$row = mysqli_fetch_array($result);
				if($row) {
					$_SESSION['retailer_id'] =  $row['retailer_id'];
					$_SESSION['sessUsername'] = $_POST['txtUsername'];
					$_SESSION['sessPassword'] = $_POST['txtPassword'];
					$_SESSION['retailer_login'] = true;
					header('Location:retailer/index.php');
				}
				else {
					$loginErr = "* Username or Password is incorrect.";
				}
			}
			else if($_SESSION['sessLogin_type'] == "manufacturer") {
				//if selected type is manufacturer than check for valid manufacturer.
				$query_selectManufacturer = "SELECT man_id,username,password FROM manufacturer WHERE username='$username' AND password='$password'";
				$result = mysqli_query($con,$query_selectManufacturer);
				$row = mysqli_fetch_array($result);
				if($row) {
					$_SESSION['manufacturer_id'] =  $row['man_id'];
					$_SESSION['sessUsername'] = $_POST['txtUsername'];
					$_SESSION['sessPassword'] = $_POST['txtPassword'];
					$_SESSION['manufacturer_login'] = true;
					header('Location:manufacturer/index.php');
				}
				else {
					$loginErr = "* Username or Password is incorrect.";
				}
			}
			else if($_SESSION['sessLogin_type'] == "admin") {
				$query_selectAdmin = "SELECT username,password FROM admin WHERE username='$username' AND password='$password'";
				$result = mysqli_query($con,$query_selectAdmin);
				$row = mysqli_fetch_array($result);
					if($row) {
						$_SESSION['admin_login'] = true;
						$_SESSION['sessUsername'] = $_POST['txtUsername'];
						$_SESSION['sessPassword'] = $_POST['txtPassword'];
						header('Location:admin/index.php');
					}
					else {
						$loginErr = "* Username or Password is incorrect.";
					}
				}
			}
		else {
			$reqErr = "* All fields are required.";
		}
	}
?>
<!DOCTYPE html>
<html>
 <head>
        <meta charset="utf-8" />
        <title>VSMS | Admin Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <!-- App css -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/metismenu.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/style.css" rel="stylesheet" type="text/css" />

        <script src="assets/js/modernizr.min.js"></script>

    </head>




 <body class="account-pages">

        <!-- Begin page -->
        <div class="accountbg" style="background: url('assets/images/bg-1.jpg');background-size: cover;background-position: center;"></div>

        <div class="wrapper-page account-page-full">

            <div class="card">
                <div class="card-block">

                    <div class="account-box">

                        <div class="card-box p-5">
                            <h3 class="text-uppercase text-center pb-4">
                                <a href="../index.php" class="text-success">
                                    <span>VSMS | Admin Login</span>
                                </a>
                            </h3>
                            <p style="font-size:16px; color:red" align="center"> <?php if($msg){
    echo $msg;
  }  ?> </p>
	
	<form action="" method="POST" class="">
	
	 <div class="form-group m-b-20 row">
                                    <div class="col-12">
		 <label for="login:username">Username</label> 
		 <input type="text" id="login:username" name="txtUsername" placeholder="Username" /> 
	</div>
                 </div>

		<div class="form-group m-b-20 row">
                                    <div class="col-12">

		<label for="login:password">Password</label> </div>
		 <input type="password" id="login:password" name="txtPassword" placeholder="Password" /> 
	</div>
                 </div>

	<div class="form-group m-b-20 row">
                                    <div class="col-12">
	
		 <label for="login:type">Login Type</label> 
		
		<select name="login_type" id="login:type">
		<option value="" disabled selected>-- Select Type --</option>
		<option value="retailer">Retailer</option>
		<option value="manufacturer">Stockiest</option>
		
		<option value="admin">Admin</option>
		<option value="distributer">Distributer</option>
		</select>
		
	</div>
                 </div>
		<input type="submit" value="Login" class="submit_button" /> <span class="error_message"> <?php echo $loginErr; echo $reqErr; ?> </span>
	
	</form>
</body>
</html>