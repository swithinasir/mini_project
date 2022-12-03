
<?php
session_start();
include("conn/config.php");
//check if form is submitted

    $username =$_POST['username'];
	$password =$_POST['password'];
	
	
	$result = mysqli_query($con, "SELECT * FROM dept WHERE username = '" . $username. "' and password = '" . $password . "'");

	if(mysqli_num_rows($result)) {
		
		// $_SESSION['name']=$name;here session is used and value of $username store in $_SESSION.
		 $row = $result->fetch_assoc();
		  $_SESSION['deptid']= $row["deptid"];
		  $_SESSION['hod']= "0";
		 header("Location: index1.php");
	} else {
		 $result1 = mysqli_query($con, "SELECT * FROM user WHERE username = '" . $username. "' and password = '" . $password . "'");

	if(mysqli_num_rows($result1)) {
		
		// $_SESSION['name']=$name;here session is used and value of $username store in $_SESSION.
		 $row = $result1->fetch_assoc();
		  $_SESSION['uname']= $row["username"];
		// header("Location: admin/database.php");
		 header("Location: admin/index1.php");
	} else {
		echo '<script language="javascript">alert(" Incorrect Username or Password...!!!");</script>';	
	echo '<script type="text/javascript">window.location.href = "index.php";</script>';
	}
	}
if(isset($_POST['fp']))
{
    $user_id = $_POST['username'];
    $result = mysqli_query($con,"SELECT * FROM dept where username='$user_id'");
    $row = mysqli_fetch_assoc($result);
	$fetch_user_id=$row['username'];
	$email=$row['email'];
	$password=$row['password'];
	if($user_id==$fetch_user_id) {
						//php mailer starting
		
		require_once 'mailer/class.phpmailer.php';
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
$mail->SMTPSecure = "ssl";
$mail->Host = "smtp.gmail.com";
$mail->Port = '465';
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
	echo '<script type="text/javascript">window.location.href = "index.php";</script>';
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
