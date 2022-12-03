<?php
session_start();
include("../conn/config1.php");
?>
<html>


<style> 
 .required:after { content:" *";color: #e32; }
* {
    box-sizing: border-box;
}

input[type=text],[type=date],[type=email],[type=password], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
}

label {
    padding: 12px 12px 12px 0;
    display: inline-block;
}

input[type=submit] {
    background-color: #4CAF25;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    float: right;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}

.col-25 {
    float: left;
    width: 25%;
    margin-top: 6px;
}

.col-25 {
    float: left;
    width: 25%;
    margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
    .col-25, .col-25, input[type=submit] {
        width: 100%;
        margin-top: 0;
    }
}
.message{color:#FF0000;
font-size: small;
font-weight: bold; 
white-space: pre;
}
</style>
<style>
    .feedback {
  background-color : #31B0D5;
  color: white;
  padding: 10px 20px;
  border-radius: 4px;
  border-color: #46b8da;
}

#mybutton {
  position: fixed;
  top: 150px;
  left: 10px;
}
</style>
<link rel="stylesheet"  href="style.css" />
</head>

<body>


	
	<!--This is header-->
	<div  align="center"><h1><img width="100%" src="../images/header.jpg"></h1>
	</div>
	<!--End of header-->
	<div id="mybutton">
<a href="../index.php">
<button class="feedback">Home</button>
</a>
</div>
	
	<br><br>
<div class="container">

 <form role="form" action="reg.php" method="post" enctype="multipart/form-data"  >
    
	<div class="row">
      <div class="col-25">
        <label class="required" for="fname">Name of the Society :</label>
      </div>
      <div class="col-25">
        <input type="text" id="name_sci" name="name_sci" required>
      </div>
   
      <div class="col-25">
        <label class="required" for="fname">&nbsp;&nbsp;Register Id:</label>
      </div>
      <div class="col-25">
        <input type="text" id="reg" name="reg" required>
      </div>
    </div>
	
	<div class="row">
      <div class="col-25">
        <label class="required" for="fname">Validity</label>
      </div>
      <div class="col-25">
        <input type="text" id="val" name="val" required>
      </div>
   
      <div class="col-25">
        <label class="required" for="fname">&nbsp;&nbsp;Name of the Incharge :</label>
      </div>
      <div class="col-25">
        <input type="text" id="name_in" name="name_in" required>
      </div>
    </div>

	
   <div class="row">
      <div class="col-25">
        <label class="required" for="lname">Email ID:</label>
      </div>
      <div class="col-25">
        <input type="email" id="email" name="email" required>
      </div>
    <div class="col-25">
        <label class="required" for="lname">&nbsp;&nbsp;Mobile No :</label>
      </div>
      <div class="col-25">
        <input type="text" id="mob" name="mob" required>
      </div>
     
	</div>
	
	<div class="row">
      <div class="col-25">
        <label class="required" for="subject">User Name:</label>
      </div>
       
	   <div class="col-25">
       <input type="text" id="u_name" name="u_name" required>
      </div>
   <div class="col-25">
        <label class="required" for="subject">&nbsp;&nbsp;Password:</label>
      </div>
       
	   <div class="col-25">
       <input type="password" id="pass" name="pass" required>
      </div>
     
    </div>
	
	
	
	<div class="row">
      
	  <div class="col-25">
	  <br>
        <label  for="subject">Certificate (only PDF format)</label>
      </div>
       
	   <div class="col-25">
	   <br>
       <input type="file"  title="only PDF Format"id="file1" name="file1" >
	     <label class="message" id="msg1" > </label>
      </div> 
    </div>
	
	
	<br><br>
	
    <div class="row">
	<div class="col-25"></div>
	<div class="col-25">
      <input type="submit" name="submit" value="Submit">
	</div>
    </div>
  </form>
</div>
<script>
function fileValidate()
{
	var allowedFiles = [".pdf"];
        var fileUpload = document.getElementById("file1");
        var regex = new RegExp("([a-zA-Z0-9\s_\\.\-:])+(" + allowedFiles.join('|') + ")$");
        if (!regex.test(fileUpload.value.toLowerCase())) 
		{
			 document.getElementById('msg1').style.display="block";
		document.getElementById('msg1').innerHTML="Please upload file having extensions .pdf only.";
			// alert('Please upload files having extensions pdf');
            return false;
        }
		else
		{	
	document.getElementById('msg1').style.display="none";
        return true;
		}
}
$('form').submit(fileValidate);
</script>
</html>
<?php


if(isset($_POST["submit"])){
	
$name_sci=$_POST["name_sci"];
$reg=$_POST["reg"];
$val =$_POST["val"];
$name_in =$_POST["name_in"];
$email =$_POST["email"];
$mob =$_POST["mob"];
$u_name =$_POST["u_name"];
$pass =$_POST["pass"];

	if(empty($_FILES['file1']['name']))
	{
		$final_file1 =0;
	}
	else
	{
	$file1 = rand(1000,100000)."-".$_FILES['file1']['name'];
    $file_loc1 = $_FILES['file1']['tmp_name'];
	$file_size1 = $_FILES['file1']['size'];
	$file_type1 = $_FILES['file1']['type'];
	$folder1="../gallery/prof_soci/";
	
	// new file size in KB
	//$new_size1 = $file_size1/1024;  
	// new file size in KB
	
	// make file name in lower case
	$new_file_name1 = strtolower($file1);
	// make file name in lower case
	
	$final_file1=str_replace(' ','-',$new_file_name1);
	
	$move1=move_uploaded_file($file_loc1,$folder1.$final_file1);
	}
        $sql = "INSERT into prof_soci (name_sci,reg,val,name_in,email,mob,u_name,pass,cer) VALUES ('$name_sci','$reg','$val','$name_in','$email','$mob','$u_name','$pass','$final_file1')";
	if(mysqli_query($con,$sql))
	{
		//php mailer starting
		
		require_once 'mailer/class.phpmailer.php';
// creates object
$mail = new PHPMailer(true);
$mailid = $email;
$subject = "Thank you for registering.........";
$text_message = "Hello";
$message = "Dear ".$name_in.",<br>    ".$name_sci." is registered in DataCenter of ACE. Your Username is <h1>".$u_name."</h1> and the password is <h1>".$pass."</h1>" ;
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
	echo '<script language="javascript">alert("Login information will be sent to your Registred mail id");</script>';
	echo '<script type="text/javascript">window.location.href = "login.php";</script>';
}
}
catch(phpmailerException $ex)
{
$msg = "
".$ex->errorMessage()."
";
}
		
	
	}
	else {
    echo "Error1: " . $sql . "<br>" . $con->error;
}
	
       
}


?>