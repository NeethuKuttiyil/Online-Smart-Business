<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

.bg-img {
  /* The image used */
  background-image: url('../assets/img/ret6.jpg');

  min-height: 180px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  
  /* Needed to position the navbar */
  position: center;
}

/* Position the navbar container inside the image */
.container {
  position:retalive;
  margin: 20px;
  width: auto;
}

/* The navbar */
.topnav {
	  overflow: hidden;
	 margin:0px;
	text-align:center;
	font-size:30px;

	color: black;
  
	
	  padding: 24px 16px;

	
	
}

/* Navbar links */
.topnav a {
  color: black;

}

.topnav a:hover {
  background-color: #48A14D;
  color: black;
}
</style>
</head>
<body>
<div class="bg-img">


  <div class="container">
    <div class="topnav">
      
	


	<a href="../retailer/index.php">Home</a><!--
	--><a href="../retailer/view_products.php">Products</a><!--
	--><a href="../retailer/view_my_orders.php">My Orders</a><!--
	--><a href="../retailer/view_my_invoices.php">My Invoices</a>

    </div>
  </div>
</div>

</body>
</html>
