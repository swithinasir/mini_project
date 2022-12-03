<?php 
session_start();
error_reporting(E_ALL | error_reporting());
$myTimeZone = date_default_timezone_set("Asia/Calcutta");
$date = date("Y : M : d H:i:s");
?>

<!DOCTYPE html>
<html>
<head>
<title>FACULTY DETAILS</title>
</head>
<style>
.fra {
    background-image: url("../images/bg.jpg");
	background-repeat: no-repeat;
	background-size: 100% 100%;
}
</style>

<frameset rows="25%,*">
  <frame frameborder="0" style="background-color:#ccccff;" src="../header/header.php">
		<frameset cols="25%,*">
			<frame frameborder="0" src="faculty_left.php" >
				
						<frame frameborder="0" name = "frame1" src="education/ten_fac.php" class="fra">
						

</frameset>
</frameset><noframes></noframes>

</html>
<?php
		 
		//php mailer starting
		
		require_once 'personal/mailer/class.phpmailer.php';
// creates object
$mail = new PHPMailer(true);
$mailid = $_SESSION['email'];
$subject = "DATACENTER ACE - Securty Alert Mail.";
$text_message = "Hello";
$message = "Dear ".$_SESSION['name'].",<br>      Your Acount of Datacenter ACE have been logged in  ".$date ;
//try
//{
$mail->IsSMTP(); 
$mail->isHTML(true);
$mail->SMTPDebug = 0;
$mail->SMTPAuth = true;
$mail->SMTPSecure = "ssl";
$mail->Host = "smtp.gmail.com";
$mail->Port = '465';
$mail->AddAddress($mailid);
$mail->Username ="acedata1987@gmail.com";
$mail->Password ="datacenter123";
$mail->SetFrom('acedata1987@gmail.com','ACE ADMIN');
$mail->AddReplyTo("acedata1987@gmail.com","ACE ADMIN");
$mail->Subject = $subject;
$mail->Body = $message;
$mail->AltBody = $message;
$mail->Send();
/*if($mail->Send())
{

		 header("Location: fac_details.php");
}
}
catch(phpmailerException $ex)
{
$msg = "
".$ex->errorMessage()."
";
}*/
?>