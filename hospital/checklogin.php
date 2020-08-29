<?php
ob_start();
?>

<?php

session_start();

$host="localhost"; // Host name

$username="id13677849_appointments"; // Mysql username

$password="Scs110607@wenkey123"; // Mysql password

$db_name="id13677849_loser"; // Database name

$tbl_name="login"; // Table name

// Connect to server and select databse.

$con=mysqli_connect("$host","$username","$password")or die("cannot connect");

mysqli_select_db($con,"$db_name")or die("cannot select DB");

// Define $myusername and $mypassword

$myusername=$_POST['myusername'];

$mypassword=$_POST['mypassword'];

// To protect MySQL injection (more detail about MySQL injection)

$myusername = stripslashes($myusername);

$mypassword = stripslashes($mypassword);

$myusername = mysqli_real_escape_string($con,$myusername);


$mypassword = mysqli_real_escape_string($con,$mypassword);

$sql="SELECT	*	FROM	$tbl_name	WHERE	myusername='$myusername'	and mypassword='$mypassword'";

$result=mysqli_query($con,$sql);

// Mysql_num_row is counting table row

$count=mysqli_num_rows($result);

// If result matched $myusername and $mypassword, table row must be 1 row

if($count==1)
{

// Register $myusername, $mypassword and redirect to file "login_success.php"

$_SESSION['myusername']="$myusername";

//session_register("myusername");

$_SESSION['mypassword']="$mypassword";

//session_register("mypassword");

header("refresh:0; url=manager.html");

}
else
{

echo "Wrong Username or Password";

header("refresh:2; url=main_login.html");

}
?>
