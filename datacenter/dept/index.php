<?php
session_start();
?>
<?php
$myTimeZone = date_default_timezone_set("Asia/Calcutta");

  //  $date = date("Y : M : D H:i:s");
    //display the current date according to your location.
  //  echo $date;
$success = "";
$error_message = "";
$conn = mysqli_connect("localhost","root","","datacenter");
if(!empty($_POST["submit_email"])) {
	$result = mysqli_query($conn,"SELECT * FROM dept WHERE email='" . $_POST["email"] . "'");
	$count  = mysqli_num_rows($result);
	if($count>0) {
		// generate OTP
		$otp = rand(100000,999999);
		// Send OTP
		require_once("../hod/mail_function.php");
		$mail_status = sendOTP($_POST["email"],$otp);
		
		if($mail_status == 1) {
			$myTimeZone = date_default_timezone_set("Asia/Calcutta");
			$indate=date("Y-m-d H:i:s", strtotime("+30 minutes"));
			$result2 = mysqli_query($conn,"SELECT * FROM dept WHERE email='" . $_POST["email"] . "'");
			$count2  = mysqli_num_rows($result2);
			if($count2>0) {
			
			$result1 = mysqli_query($conn,"UPDATE dept SET otp = '" . $otp . "', create_at=  '" . $indate . "', is_expired = 0 WHERE email = '" . $_POST["email"] . "'");
			$success=1;
			}else{
				$result3 = mysqli_query($conn,"INSERT INTO dept(otp,email,is_expired,create_at) VALUES ('" . $otp . "','" . $_POST["email"] . "', 0, '" . $indate . "')");		
				$success=1;
			}
		}
	} else {
		$error_message = "Email not exists!";
	}
}
if(!empty($_POST["submit_otp"])) {
	
$result4 = mysqli_query($conn,"SELECT * FROM dept WHERE otp = '" . $_POST["otp"] . "' AND is_expired = 0 ");
	$count4= mysqli_num_rows($result4);
	if($count4>0) {

		$row4 = $result4->fetch_assoc();
		$dbdate = $row4["create_at"];
		
		$dbdate1 = date("Y-m-d H:i:s",strtotime($dbdate));
	
		$myTimeZone = date_default_timezone_set("Asia/Calcutta");
		$date = date("Y-m-d H:i:s");
	
		if($date<=$dbdate1)
		{
		$result5 = mysqli_query($conn,"UPDATE dept SET is_expired = 1 WHERE otp = '" . $_POST["otp"] . "'");
		$success = 2;	
		}
	
	} else {
		
		$success =1;
		$error_message = "Invalid OTP!";
	}	
}
if(!empty($_POST["relive"])) {
 $sid=$_POST["sid"];
 $reason=$_POST["reason"];
 $dor=$_POST["dor"];
 $deptid=$_SESSION['deptid'];
 $aaa=$deptid."_fac";
 $result5 = "UPDATE `$aaa` SET status = 'relive' , dor = '" . $dor . "' , reason = '" . $reason . "' WHERE sid = '" . $sid . "'";
		if(mysqli_query($conn,$result5))
		{
			echo '<script language="javascript">alert("Staff Relived Successfully");</script>';
							//header("Location: mem_fac.php");
		}
}
?>
<html>
<head>
<title>User Login</title>
<style>
body{
	font-family: calibri;
}
.tblLogin {
	border: #95bee6 1px solid;
    background: #d1e8ff;
    border-radius: 4px;
    max-width: 300px;
	padding:20px 30px 30px;
	text-align:center;
}
.tableheader { font-size: 20px; }
.tablerow { padding:20px; }
.error_message {
	color: #b12d2d;
    background: #ffb5b5;
    border: #c76969 1px solid;
}
.message {
	width: 100%;
    max-width: 300px;
    padding: 10px 30px;
    border-radius: 4px;
    margin-bottom: 5px;    
}
.login-input {
	border: #CCC 1px solid;
    padding: 10px 20px;
	border-radius:4px;
}
.btnSubmit {
	padding: 10px 20px;
    background: #2c7ac5;
    border: #d1e8ff 1px solid;
    color: #FFF;
	border-radius:4px;
}
</style><style>
.active {
  background-color: #333;
  color: white;
}

.topnav a:hover {
  background-color: #333;
  color: black;
}

.topnav {
  overflow: hidden;
  background-color: #ddd;
}

.topnav .icon {
  display: none;
}

@media screen and (max-width: 600px) {
  .topnav a:not(:first-child) {display: none;}
  .topnav a.icon {
    float: right;
    display: block;
  }
}

@media screen and (max-width: 600px) {
  .topnav.responsive {position: relative;}
  .topnav.responsive .icon {
    position: absolute;
    right: 0;
    top: 0;
  }
  .topnav.responsive a {
    float: none;
    display: block;
    text-align: left;
  }
}
</style>
    <meta charset="utf-8" />
    <meta name="author" content="Script Tutorials" />
    <meta name="description" content="Responsive Websites Using BootStrap - demo page">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>Datacenter For ACE</title>

    <!-- css stylesheets -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">
</head>
 <body style="background-color: #66c2ff">

   

   

    

   

	  <!--This is header-->
	<div class="header" align="center"><h1><img width="100%" src="../images/header.jpg"></h1>
	</div>
	<!--End of header-->
	
      <!-- second menu bar -->
   
       

        <!-- submenu elements for #b-menu-2 -->
       
          <div class="topnav" id="myTopnav">
		  <ul class="nav navbar-nav">		  
            <li class="active"><a href="#"><span class="glyphicon glyphicon-home"></span> Dept Of <?php echo $_SESSION['deptid'];?></a></li>
			<li><a href="../faculty/fac_info.php">FACULTY INFO</a></li>  
			<li><a href="../hod/">VIEW</a></li>  			
			<li><a href="#">DEPARTMENT INFO</a></li> 
			<li><a href="../stud/">STUDENT INFO</a></li> 
			<li><a href="../change-password.php">CHANGE PASSWORD</a></li> 	
			<li><a href="../logout.php">LOGOUT</a></li> 			
          </ul>		  
</div>
    <div class="container">
      <!-- 2-column layout -->
	  <br>
	<?php
		if(!empty($error_message)) {
	?>
	<div class="message error_message"><?php echo $error_message; ?></div>
	<?php
		}
	?>

<form name="frmUser" method="post" action="">
	<div class="tblLogin">
		<?php 
			if($success == 1) { 
		?>
		<div class="tableheader">Enter OTP</div>
		<p style="color:#31ab00;">Check your email for the OTP</p>
			
		<div class="tablerow">
			<input type="text" name="otp" placeholder="One Time Password" class="login-input" required>
		</div>
		<div class="tableheader"><input type="submit" name="submit_otp" value="Submit" class="btnSubmit"></div>
		<?php 
			} else if ($success == 2) {
				 $_SESSION['hod']= "HOD";
       header("Location: dept_frame.php");
//	<div class="tableheader">Enter Your Login Email</div>
//	<table>	
//		<div class="tablerow"><tr><td><label>Staff ID</label></td><td><input type="text" name="sid" placeholder="Staff Id" class="login-input" required></td></tr></div>
//		<div class="tablerow"><tr><td><label>Date of Releave</label></td><td><input type="date" name="dor"class="login-input" required></td></tr></div>
//		<div class="tablerow"><tr><td><label>Reason for Releave</label></td><td><input type="text" name="reason" placeholder="Reason For Releave" class="login-input" required></td></tr></div>
//</table>
//		<div class="tableheader"><input type="submit" name="relive" value="Releave" class="btnSubmit"></div>
		
			}
			else {
		?>
		
		<div class="tableheader">Enter Your Login Email</div>
		<div class="tablerow"><input type="text" name="email" placeholder="Email" class="login-input" required></div>
		<div class="tableheader"><input type="submit" name="submit_email" value="Submit" class="btnSubmit"></div>
		<?php 
			}
		?>
	</div>
</form>
</div>
</body></html>