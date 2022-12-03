<?php
session_start();
error_reporting(0);
//error_reporting(E_ALL | error_reporting());
include("../conn/config.php");
$deptid=$_SESSION['deptid'];
$aaa=$deptid."_fac";
$myTimeZone = date_default_timezone_set("Asia/Calcutta");

   $date = date("Y : M : d H:i:s");
if(isset($_POST["login"])){

//check if form is submitted

    $username =$_POST['username'];
	$password =$_POST['password'];
	$stid =$_POST['stid'];
	$text = array();
	$stid = explode(" ", $stid);
	for($i=0; count($stid)>$i; $i++)
		$text[] = chr($stid[$i]);
		
	$stid=implode($text);
	$result = mysqli_query($con, "SELECT * FROM `$aaa` WHERE sid = '" . $username. "' and password = '" . $password . "'");

	if(mysqli_num_rows($result)) {
		
		// $_SESSION['name']=$name;here session is used and value of $username store in $_SESSION.
		 $row = $result->fetch_assoc();
		  $_SESSION['sid']= $row["sid"];
		  $email=$row["email"];
		  $name=$row["name"];
		  $_SESSION['email']= $email;
		  $_SESSION['name']= $name;
		  if($stid==$_SESSION['sid'])
		  {
		  
			 
		//php mailer starting
		
		require_once 'personal/mailer/class.phpmailer.php';
// creates object
$mail = new PHPMailer(true);
$mailid = $email;
$subject = "DATACENTER ACE - Securty Alert Mail.";
$text_message = "Hello";
$message = "Dear ".$name.",<br>      Your Acount of Datacenter ACE have been logged in  ".$date ;
try
{
$mail->IsSMTP(); 
$mail->isHTML(true);
$mail->SMTPDebug = 0;
$mail->SMTPAuth = true;
$mail->SMTPSecure = "tls";
$mail->Host = "smtp.gmail.com";
$mail->Port = '587';
$mail->AddAddress($mailid);
$mail->Username ="acedata1987@gmail.com";
$mail->Password ="acedatacenter";
$mail->SetFrom('acedata1987@gmail.com','ACE ADMIN');
$mail->AddReplyTo("acedata1987@gmail.com","ACE ADMIN");
$mail->Subject = $subject;
$mail->Body = $message;
$mail->AltBody = $message;
if($mail->Send())
{

		 header("Location: fac_details.php");
}
}
catch(phpmailerException $ex)
{
$msg = "
".$ex->errorMessage()."
";
}		 
		  }else {
		 header("Location: fac_info.php");
	}
	} else {
		 echo '<script language="javascript">alert(" Incorrect Username or Password...!!!");</script>';	
	echo '<script type="text/javascript">window.location.href = "fac_info.php";</script>';
	}

}
if(isset($_POST['fp']))
{
    $user_id = $_POST['username'];
    $result = mysqli_query($con,"SELECT * FROM `$aaa` where sid='$user_id'");
    $row = mysqli_fetch_assoc($result);
	$fetch_user_id=$row['sid'];
	$email=$row['email'];
	$password=$row['password'];
	if($user_id==$fetch_user_id) {
						//php mailer starting
		
		require_once 'personal/mailer/class.phpmailer.php';
// creates object
$mail = new PHPMailer(true);
$mailid = $email;
$subject = "Forget Password.........";
$text_message = "Hello";
$message = "Dear ".$user_id.",<br>  The password is <h1>".$password."</h1>" ;
try
{
$mail->IsSMTP(); 
$mail->isHTML(true);
$mail->SMTPDebug = 0;
$mail->SMTPAuth = true;
$mail->SMTPSecure = "tls";
$mail->Host = "smtp.gmail.com";
$mail->Port = '587';
$mail->AddAddress($mailid);
$mail->Username ="acedata1987@gmail.com";
$mail->Password ="acedatacenter";
$mail->SetFrom('acedata1987@gmail.com','ACE ADMIN');
$mail->AddReplyTo("acedata1987@gmail.com","ACE ADMIN");
$mail->Subject = $subject;
$mail->Body = $message;
$mail->AltBody = $message;
if($mail->Send())
{
	echo '<script language="javascript">alert(" You got a notification through the mail you provide");</script>';	
	echo '<script type="text/javascript">window.location.href = "fac_info.php";</script>';
}
}
catch(phpmailerException $ex)
{
$msg = "
".$ex->errorMessage()."
";
}
			}
				else{
					echo 'invalid userid';
				}
}
?>

<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}
.cancelbtn1 {
    width: auto;
    padding: 10px 18px;
    background-color: lightgreen;
}

/* Center the image and position the close button */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 20%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}

/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}
    
@keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    } 
	.cancelbtn1 {
       width: 100%;
    }
}
</style>

<style>
* {
    box-sizing: border-box;
}

/* Create three equal columns that floats next to each other */
.column {
    float: left;
    width: 33.33%;
    padding: 10px;
    height:475px; 
}
.column1 {
    float: left;
    width: 43.33%;
    padding: 10px;
    height:475px; 
}
.column2 {
    float: left;
    width: 23.33%;
    padding: 10px;
    height:475px; 
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

</style>

<style>
.mySlides {display:none;}
</style>


<title>Admin</title>
<link rel="stylesheet"  href="style.css" />
</head>

<body>


	
	<!--This is header-->
	<div  align="center"><h1><img width="100%" src="../images/header.jpg"></h1>
	</div>
	<!--End of header-->
	
	
	<!--Login -->
	
	

  
  <form class="modal-content animate" action="staff_login.php" method="post">
    <div class="imgcontainer">
    <a href="fac_info.php">  <span  class="close" title="Close Modal">&times;</span> </a>
     <!-- <img src="img_avatar2.png" alt="Avatar" class="avatar"> -->
    </div>

    <div class="container">
      <label for="uname"><b>STAFF ID</b></label>
      <input type="text" onFocus="this.value=''" placeholder="Enter Staff id" name="username" required>
		<input type="hidden" name="stid" value="<?php echo"".$_GET['stid'] ?>">
      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Your password" name="password">
        
      <button type="submit" name="login">Login</button>
      
    </div>
	
	<div class="container" style="background-color:#f1f1f1">
    <button type="reset" class="cancelbtn">Clear</button>
     <button type="submit" name="fp" class="cancelbtn1">Forget Password</button>
  </div>
	
  </form>


<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

  <!--End of the login-->
  
	<!-- center of the page-->
	

</div>
</body>

	
</html>





