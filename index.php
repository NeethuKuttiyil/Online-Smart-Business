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
        <title>Users Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <!-- App favicon -->
        <link rel="shortcut icon" href="assets1/images/favicon.ico">

        <!-- App css -->
        <link href="assets1/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets1/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets1/css/metismenu.min.css" rel="stylesheet" type="text/css" />
        <link href="assets1/css/style.css" rel="stylesheet" type="text/css" />

        <script src="assets1/js/modernizr.min.js"></script>

    </head>




 <body class="account-pages" >

        <!-- Begin page -->
        <div class="accountbg" style="background: url('assets/img/back1.jpg');background-size: cover;background-position: center;"></div>

        <div class="wrapper-page account-page-full">

            <div class="card">
                <div class="card-block">

                    <div class="account-box">

                        <div class="card-box p-5">
                            <h3 class="text-uppercase text-center pb-4">
                               
                                   User Login
                            </h3>
 
	
	<form action="" method="POST" class="">
	
		 	 

	
              
<br><br>
	
                                    <div class="col-12">
	
		 <label for="login:type">Login Type</label>
		
		<select name="login_type" id="login:type" style="height : 35px; width:105%;">
		<option value="" disabled selected>-- Select Type --</option>
		<option value="retailer">Retailer</option>
		<option value="manufacturer">Stockiest</option>
		
		<option value="admin">Admin</option>
		<option value="distributer">Distributer</option>
	 

		</select>
		
	<br><br>
 <div class="form-group m-b-20 row">
                                    <div class="col-12">
		 <label for="login:username">Username</label> 
		 
 <input class="form-control" type="text" id="login:username" name="txtUsername" placeholder="Username" required=""/>
	</div>
                 </div>

		
                                    <div class="col-12">

		<label for="login:password">Password</label> </div>
	 <input class="form-control" type="password" id="login:password" name="txtPassword" placeholder="Password" required="" /> 
                 
	
	
<br><br><br><br>
	

	  <div class="form-group row text-center m-t-10">
                                    <div class="col-12">
                                        <button class="btn btn-block btn-custom waves-effect waves-light" type="submit"  value="Login">Sign In</button><span class="error_message"> <?php echo $loginErr; echo $reqErr; ?> </span>
                                    </div>
                                </div>
   
	</form>






        <!-- jQuery  -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/metisMenu.min.js"></script>
        <script src="assets/js/waves.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>

    </body>
</html>
