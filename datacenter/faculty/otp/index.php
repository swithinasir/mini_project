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
		require_once("mail_function.php");
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
		//To enter the path for the next page
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
</style>
</head>
<body>
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
        ?>
	<div class="tableheader">Enter Your Login Email</div>
	<table>	
		<div class="tablerow"><tr><td><label>Staff ID</label></td><td><input type="text" name="sid" placeholder="Staff Id" class="login-input" required></td></tr></div>
		<div class="tablerow"><tr><td><label>Date of Releave</label></td><td><input type="date" name="dor"class="login-input" required></td></tr></div>
		<div class="tablerow"><tr><td><label>Reason for Releave</label></td><td><input type="text" name="reason" placeholder="Reason For Releave" class="login-input" required></td></tr></div>
	</table>
		<div class="tableheader"><input type="submit" name="relive" value="Releave" class="btnSubmit"></div>
		<?php
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
</body></html>