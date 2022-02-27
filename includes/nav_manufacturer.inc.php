<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

.bg-img {
  /* The image used */
  background-image: url('../assets/img/sto13.jpg');

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
  background-color: #6577B3;;
  color: black;
}
</style>
</head>
<body>
<div class="bg-img">


  <div class="container">
    <div class="topnav">
      
	


	<a href="index.php">Home</a><!--
	--><a href="../manufacturer/view_retailer.php">Retailers</a><!--
	--><a href="../manufacturer/view_distributor.php">Distributors</a><!--
	--><a href="../manufacturer/view_products.php">Products</a><!--
	--><a href="../manufacturer/view_orders.php">Orders</a><!--
	--><a href="../manufacturer/view_invoice.php">Invoice</a>



    </div>
  </div>
</div>

</body>
</html>
