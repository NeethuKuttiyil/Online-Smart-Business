<?php
$conn=mysqli_connect("localhost","root","","onlinesmart");
if(isset($_POST['save']))
{

                     $Username=$_POST['Username'];
	$firstname=$_POST['firstname'];

	$lastname=$_POST['lastname'];

                     $mailid=$_POST['mailid'];

	$country=$_POST['country'];

                    $feedback=$_POST['feedback'];

	$sql_query="INSERT INTO feedback(Username,firstname,lastname,mailid,country,feedback)VALUES
('$Username','$firstname','$lastname','$mailid','$country','$feedback')";
	if(mysqli_query($conn,$sql_query))
	{
		
		echo "<script>alert('Save feedback');window.location.href = 'http://localhost/Project%202%20Online%20Smart%20Bussiness/feedback.html';</script>";
	}
	else
	{
		echo "Error " .$sql . "" . mysqli_error($conn);
	}
	mysqli_close($conn);
}
?>	
