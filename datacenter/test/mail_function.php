 <?php	
	
		require('mailer/class.phpmailer.php');
		require('mailer/class.smtp.php');
	
		$message_body = "One Time Password for PHP login authentication is:2345<br/><br/>" ;
		$mail = new PHPMailer();
		$mail->IsSMTP();
		$mail->SMTPDebug = 0;
		$mail->SMTPAuth = TRUE;
		$mail->SMTPSecure = 'tls'; // tls or ssl
		$mail->Port = '587';
		$mail->Username ="acedata1987@gmail.com";
		$mail->Password ="acedatacenter";
		$mail->Host = 'smtp.gmail.com';
		$mail->Mailer   = 'smtp';
		$mail->SetFrom("acedata1987@gmail.com", "ACE ADMIN");
		$mail->AddAddress("vijoad661@gmail.com");
		$mail->Subject = "OTP to Login";
		$mail->MsgHTML($message_body);
		$mail->IsHTML(true);		
		if($mail->Send())
		{
			echo"Mail Sent";
		}
		else
		{
			echo"Not Sent";
		}
		
?>