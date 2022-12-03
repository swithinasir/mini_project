<?php
//folder name
$myTimeZone = date_default_timezone_set("Asia/Calcutta");
$folder = date("y_m_d");
$folder_name ="../database/".$folder;
//create a new foler
mkdir ( $folder_name );


//databse connection
$connection = mysqli_connect('localhost','root','','datacenter');
$tables = array();
$result = mysqli_query($connection,"SHOW TABLES");
while($row = mysqli_fetch_row($result)){
  $tables[] = $row[0];
}
$return = '';
foreach($tables as $table){
  $result = mysqli_query($connection,"SELECT * FROM ".$table);
  $num_fields = mysqli_num_fields($result); 
  //$return .= 'DROP TABLE '.$table.';';
  $row2 = mysqli_fetch_row(mysqli_query($connection,"SHOW CREATE TABLE ".$table));
  $return .= "\n\n".$row2[1].";\n\n"; 
  for($i=0;$i<$num_fields;$i++){
    while($row = mysqli_fetch_row($result)){
      $return .= "INSERT INTO ".$table." VALUES(";
      for($j=0;$j<$num_fields;$j++){
        $row[$j] = addslashes($row[$j]);
        if(isset($row[$j])){ $return .= '"'.$row[$j].'"';}
        else{ $return .= '""';}
        if($j<$num_fields-1){ $return .= ',';}
      }
      $return .= ");\n";
    }
  }
  $return .= "\n\n\n";
}

//create a sql file and write data in the file and save that file
$file_name=$folder_name."/datacenter.sql";
$file = fopen($file_name ,"w+");
fwrite($file,$return);
fclose($file);
mysqli_close($connection);



//second database
$connection = mysqli_connect('localhost','root','','datacenter2');
$tables = array();
$result = mysqli_query($connection,"SHOW TABLES");
while($row = mysqli_fetch_row($result)){
  $tables[] = $row[0];
}
$return = '';
foreach($tables as $table){
  $result = mysqli_query($connection,"SELECT * FROM ".$table);
  $num_fields = mysqli_num_fields($result);
 //$return .= 'DROP TABLE '.$table.';';
  $row2 = mysqli_fetch_row(mysqli_query($connection,"SHOW CREATE TABLE ".$table));
  $return .= "\n\n".$row2[1].";\n\n";
  for($i=0;$i<$num_fields;$i++){
    while($row = mysqli_fetch_row($result)){
      $return .= "INSERT INTO ".$table." VALUES(";
      for($j=0;$j<$num_fields;$j++){
        $row[$j] = addslashes($row[$j]);
        if(isset($row[$j])){ $return .= '"'.$row[$j].'"';}
        else{ $return .= '""';}
        if($j<$num_fields-1){ $return .= ',';}
      }
      $return .= ");\n";
    }
  }
  $return .= "\n\n\n";
}

//create a sql file and write data in the file and save that file
$file_name1=$folder_name."/datacenter2.sql";
$file = fopen($file_name1 ,"w+");
fwrite($file,$return);
fclose($file);
mysqli_close($connection);



//sent the cerated file in the mail for backup
		require('mailer/class.phpmailer.php');
		require('mailer/class.smtp.php');
	
		$message_body = "The Database backup" ;
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
		$mail->AddAddress("acedata1987@gmail.com");
		$mail->Subject = "Backup of Database";
		$mail->MsgHTML($message_body);
		//$mail->addAttachment("uploads/".$file_name);
		$mail->addAttachment($file_name);
		$mail->addAttachment($file_name1);
		$mail->IsHTML(true);		
		if($mail->Send())
		{			
			echo '<script language="javascript">alert("Exported file sent to your mailid");</script>';	
	echo '<script type="text/javascript">window.location.href = "index1.php";</script>';
		}
		else
		{
			echo '<script language="javascript">alert(" Mail Not sent");</script>';	
	echo '<script type="text/javascript">window.location.href = "index1.php";</script>';
		}
?>