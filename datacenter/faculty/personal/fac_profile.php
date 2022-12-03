<?php
session_start();
$deptid=$_SESSION['deptid'];
include("../../conn/config.php");
?>
<html>


<style>
 .required:after { content:" *";color: #e32; }
* {
    box-sizing: border-box;
}

input[type=text],[type=date],[type=email], select, textarea {
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
<script>
function compare()
{
var startDt = document.getElementById("doj").value;
var today = new Date();
var date3 = new Date(startDt);
		if((date3 < today)) 
		{
			document.getElementById('message').style.display="none";
			document.getElementById('message').innerHTML="Valid Date";
			return( true );
		}
		else
		{
			document.getElementById('message').style.display="block";
			document.getElementById('message').innerHTML="Invalid Date,it should be before today's date";
			return false;
		}
}
function adhaar()
{
	var ad = document.getElementById("aadharno").value;
	var len=ad.toString().length;
	 var regex = /^[0-9]+$/;
	if(len!=12 || !regex.test(ad))
	{
		document.getElementById('mes').style.display="block";
		document.getElementById('mes').innerHTML="Invalid AADHAR Number";
		return false;
	}
	else
	{
		document.getElementById('mes').style.display="none";
			return( true );
	}
}
function pan()
{
	var pan = document.getElementById("panno").value;
	var len=pan.toString().length;
	 var res = pan.substring(0, 5);
	  var res1 = pan.substring(5, 9);
	   var res2 = pan.substring(9, 10);
	 var regex = /^[0-9]+$/;
	 var chart = /^[A-Za-z]+$/;
	if(len!=10 || !chart.test(res)|| !regex.test(res1)|| !chart.test(res2))
	{
		document.getElementById('mes1').style.display="block";
		document.getElementById('mes1').innerHTML="Invalid PAN Number";
		return false;
	}
	else
	{
		document.getElementById('mes1').style.display="none";
			return( true );
	}
}
 $('form').submit(validate);
</script>
<!--<img width="100%" src="../../images/header.jpg">-->
<div class="container">
 <form role="form" action="fac_profile.php" method="post" enctype="multipart/form-data" onsubmit="return(fileValidate());" >
    <div class="row">
      <div class="col-25">
        <label class="required" for="fname">Name:</label>
      </div>
      <div class="col-25">
        <input type="text" id="name" name="name" required>
      </div>
   
      <div class="col-25">
        <label class="required" for="fname">&nbsp;&nbsp;Father Name:</label>
      </div>
      <div class="col-25">
        <input type="text" id="fname" name="fname" required>
      </div>
    </div>
	
	
	 <div class="row">
      <div class="col-25">
        <label class="required" for="fname">DOB</label>
      </div>
      <div class="col-25">
        <input type="date" id="dob" name="dob" onblur="ageCount()" required>
      </div>
   
    <div class="col-25">
        <label class="required" for="subject">&nbsp;&nbsp;Mother Name:</label>
      </div>
       
	   <div class="col-25">
       <input type="text" id="mname" name="mname" required>
      </div>
      
    </div>
	<script type="text/javascript">
function ageCount() {
    var date1 = new Date();
    var dob = document.getElementById("dob").value;
    var date2 = new Date(dob);
    var pattern = /^\d{4}\-\d{1,2}\-\d{1,2}$/;
    //Regex to validate date format (dd/mm/yyyy)       
    if (pattern.test(dob)) {
        var y1 = date1.getFullYear();
        //getting current year            
        var y2 = date2.getFullYear();
        //getting dob year            
        var age = y1 - y2;
        //calculating age                       
        document.getElementById("ageId").value = age;
        doucment.getElementById("ageId").focus ();
        return true;
    } else {
        alert("Invalid date format. Please Input in (dd/mm/yyyy) format!");
        return false;
    }

}
function hideA()
{  
    document.getElementById("A").style.display="none"; 
	document.getElementById("B").style.display="block"; 	
}
function hideB()
{  
    document.getElementById("A").style.display="block"; 
	document.getElementById("B").style.display="none"; 	
}
	</script>
	<div class="row">
	<div class="col-25">
        <label for="fname">Age:</label>
      </div>
      <div class="col-25">
        <input type="text" id="ageId" name="age" required>
      </div>
	  
	  
	   <div class="col-25">
        <label class="required" for="fname">&nbsp;&nbsp;Marital Status:</label>
      </div>
      <div class="col-25">	  
	<input type="radio" name="mstatus" value="y" onClick="hideB()">Married &nbsp;&nbsp;
  <input type="radio" name="mstatus" value="n" onClick="hideA()" > Unmarried &nbsp;&nbsp;
  	</div>
	</div>
	<div class="row">
      <div class="col-25">
        <label class="required" for="fname">Gender:</label>
      </div>
      <div class="col-25">
	  
	<input type="radio" name="gender" value="male">Male &nbsp;&nbsp;
  <input type="radio" name="gender" value="female"> Female &nbsp;&nbsp;
  
	</div>
	 <div class="col-25">
        <label for="subject">&nbsp;&nbsp;Spouse Name:</label>
      </div>
       
	   <div class="col-25">
		<div style="display:block" id="A">
			<input type="text" id="sname" name="sname">
		</div>
		<div style="display:none" id="B">
			<input type="text" id="sname" name="sname" readonly>
		</div>
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
        <label class="required" for="lname">&nbsp;&nbsp;Mobile No 1:</label>
      </div>
      <div class="col-25">
        <input type="text" id="mob1" name="mob1" required>
      </div>
     
	</div>
	
	<div class="row">
      <div class="col-25">
        <label class="required" for="subject">Blood group:</label>
      </div>
       
	   <div class="col-25">
       <input type="text" id="blood" name="blood" required>
      </div>
   <div class="col-25">
        <label for="subject">&nbsp;&nbsp;Mobile No 2:</label>
      </div>
       
	   <div class="col-25">
       <input type="text" id="mob2" name="mob2">
      </div>
     
    </div>
	
	
	
    <div class="row">
      <div class="col-25">
        <label class="required" for="subject">Relegion:</label>
      </div>
       
	   <div class="col-25">
       <input type="text" id="relegion" name="relegion" required>
      </div>
   
      <div class="col-25">
        <label class="required" for="subject">&nbsp;&nbsp;Community:</label>
      </div>
       
	   <div class="col-25">
       <input type="text" id="comunity" name="comunity" required>
      </div>
    </div>
	
	<script type= "text/javascript" src = "js1/countries.js"></script>
	
	<div class="row">
      
	  <div class="col-25">
        <label class="required" for="subject">Country:</label>
      </div>
       
	   <div class="col-25">
       <select id="country" name ="country" required></select>
      </div>
    
	
      <div class="col-25">
        <label class="required" for="subject">&nbsp;&nbsp;State:</label>
      </div>
       
	   <div class="col-25">
       <select name ="state" id ="state"></select>
      </div>
    </div>

	<script language="javascript">
	populateCountries("country", "state"); // first parameter is id of country drop-down and second parameter is id of state drop-down
	populateCountries("country2");
	populateCountries("country2");
</script>
	
	<div class="row">
      <div class="col-25">
        <label class="required" for="subject">District:</label>
      </div>
       
	   <div class="col-25">
       <input type="text" id="district" name="district" required>
      </div>
  
      <div class="col-25">
        <label class="required" for="subject">&nbsp;&nbsp;City:</label>
      </div>
       
	   <div class="col-25">
       <input type="text" id="city" name="city" required>
      </div>
    </div>
	
	<div class="row">
      <div class="col-25">
        <label class="required" for="subject">Place:</label>
      </div>
       
	   <div class="col-25">
       <input type="text" id="place" name="place" required>
      </div>
    
      <div class="col-25">
        <label class="required" for="subject">&nbsp;&nbsp;PIN CODE:</label>
      </div>
       
	   <div class="col-25">
       <input type="text" id="pincode" name="pincode" required>
      </div>
    </div>
	
	<SCRIPT language="javascript">
		function addCombo() {
	var textb = document.getElementById("txtCombo");
	var combo = document.getElementById("combo");
	
	var option = document.createElement("option");
	option.text = textb.value;
	option.value = textb.value;
	try {
		combo.add(option, null); //Standard 
	}catch(error) {
		combo.add(option); // IE only
	}
	textb.value = "";
}
		</SCRIPT>
		
	<div class="row">
      <div class="col-25">
        <label class="required" for="subject">Address:</label>
      </div>
	  
	 <div class="col-25">
       <textarea rows="4" cols="25" name="address" id="address" required>
	   </textarea>
      </div>
    
	<SCRIPT language="javascript">
function FillBilling(f) {
  if(f.billingtoo.checked == true) {
    f.paddress.value = f.address.value;
  }
}
</SCRIPT>
&nbsp;&nbsp;	<input type="checkbox" name="billingtoo" onClick="FillBilling(this.form)">
<em>&nbsp;&nbsp;Check this box if Address and Permanent Address are the same.</em>

      <div class="col-25">
        <label for="subject">&nbsp;&nbsp;Permanent Address:</label>
      </div>
	  
	 <div class="col-25">
       <textarea rows="4" cols="25" name="paddress" id="paddress" required>
	   </textarea>
      </div>
    </div>
	
	<div class="row">
     
      <div class="col-25">
        <label class="required" for="subject">PAN NO:</label>
      </div>
       
	   <div class="col-25">
       <input onFocus="this.value=''" onblur="return(pan());"  type="text" id="panno" name="panno" required>
		 <label class="message" id="mes1" > </label>
	 </div>
	   <div class="col-25">
        <label class="required" for="subject">&nbsp;&nbsp;AADHAR ID:</label>
		  
      </div>
       
	   <div class="col-25">
       <input onFocus="this.value=''" onblur="return(adhaar());"  type="text" id="aadharno" name="aadharno" required>
	   <label class="message" id="mes" > </label>
      </div>
    </div>
	
	<div class="row">
      <div class="col-25">
        <label for="subject">Passport NO:</label>
      </div>
       
	   <div class="col-25">
       <input type="text" id="passport" name="passport">
      </div>
   
      <div class="col-25">
        <label class="required" for="subject">&nbsp;&nbsp;Designation:</label>
      </div>
       
	   <div class="col-25">
       <input type="text" id="designation" name="designation" required>
      </div>
    </div>
	
	
	<div class="row">
      <div class="col-25">
        <label class="required" for="subject">Date of Joining:</label>
      </div>
       
	   <div class="col-25">
	   <input type="date" id="doj" name="doj" onblur="return(compare());"  required>
	    <label style="display:none" class="message" id="message" >
     
      </div>
   
    <div class="col-25">
        <label for="subject">&nbsp;&nbsp;Department:</label>
      </div>
       
	   <div class="col-25">
      
	   <?php

$sql="SELECT * FROM dept where deptid = '$deptid'";
$result=mysqli_query($con,$sql);
if ($result->num_rows > 0) {
    // output data of each row
	echo "<select name='dept'>";
    while($row = $result->fetch_assoc()) {
		echo '<option value="'.$row['deptid'].'">'.$row['dept'].'</option>';
    }
	echo "</select>";
}
?>

      </div>
     
    </div>
	
	<div class="row">
      <div class="col-25">
        <label class="required" for="subject">Upload Photo(only JPEG Format and flie size max. 100KB)</label>
      </div>
       
	  <div class="col-25">
       <input type="file"  title="only JPEG Format" id="file2" name="file2" required>
	    <label class="message" id="msg" > </label>
      </div>
	  <div class="col-25">
	  <br>
        <label class="required" for="subject">Upload AADHAR (only PDF format)</label>
      </div>
       
	   <div class="col-25">
	   <br>
       <input type="file"  onFocus="this.value=''" onblur="return(image());" title="only PDF Format"id="file1" name="file1" required>
	     <label class="message" id="msg1" > </label>
      </div> 
    </div>
	
	
	<br><br>
	
    <div class="row">
      <input type="submit" name="submit" value="Submit">
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
function image()
{
var fileInput = document.getElementById('file2');
    var filePath = fileInput.value;
    var allowedExtensions = /(\.JPEG|\.jpeg)$/i;
	// if {
	//	 document.getElementById('mes1').style.display="block";
	//	document.getElementById('mes1').innerHTML="Image too big (max 100kb)";
		// alert('Image too big (max 100kb)');
     //   return false;
   // }
    if(!allowedExtensions.exec(filePath)){
		if(file2.files[0].size > 102400)
		{
       // alert('Please upload file having extensions .jpeg only.');
	    document.getElementById('msg').style.display="block";
		document.getElementById('msg').innerHTML="Please upload .jpeg file only and Image too big.";
        return false;
		}
		else{
			 document.getElementById('msg').style.display="block";
		document.getElementById('msg').innerHTML="Please upload file having extensions .jpeg only.";
        return false;
		}
    }else{
		if(file2.files[0].size > 102400)
		{
       // alert('Please upload file having extensions .jpeg only.');
	    document.getElementById('msg').style.display="block";
		document.getElementById('msg').innerHTML="Image too big.";
        return false;
		}else{
		document.getElementById('msg').style.display="none";
		return( true );
		}
        //Image preview
       // if (fileInput.files && fileInput.files[0]) {
        //    var reader = new FileReader();
        //    reader.onload = function(e) {
        //        document.getElementById('imagePreview').innerHTML = '<img src="'+e.target.result+'"/>';
        //    };
        //    reader.readAsDataURL(fileInput.files[0]);
        }
    }

</script>
</html>
<?php


if(isset($_POST["submit"])){
	
$name=$_POST["name"];
$dob=$_POST["dob"];
$age =$_POST["age"];
$gender =$_POST["gender"];
$email =$_POST["email"];
$mob1 =$_POST["mob1"];
$fname =$_POST["fname"];
$mname =$_POST["mname"];
$mstatus =$_POST["mstatus"];
$sname =$_POST["sname"];
$relegion=$_POST["relegion"];
$comunity =$_POST["comunity"];
$place =$_POST["place"];
$city =$_POST["city"];
$district =$_POST["district"];
$state =$_POST["state"];
$country =$_POST["country"];
$pincode =$_POST["pincode"];
$address =$_POST["address"];
$paddress =$_POST["paddress"];
$aadharno =$_POST["aadharno"];

$password=substr($aadharno, 8, 11);
$panno =$_POST["panno"];
$passport =$_POST["passport"];
$blood =$_POST["blood"];
$doj=$_POST["doj"];
$designation =$_POST["designation"];
$mob2 =$_POST["mob2"];
$dept =$_POST["dept"];

$deptid=$_SESSION['deptid'];
$aaa=$deptid."_fac";
$sql1="SELECT * FROM `$aaa` WHERE aadharno = '$aadharno'";
$result1=$con->query($sql1);
if($result1->num_rows == 0)
{
$count=1001;
// variables for input data
$a=strtotime($_POST['doj']);
$b=date("y", $a);
$de=$_POST['dept'];
$sql="SELECT * FROM `$aaa`";
$result = $con->query($sql);
if ($result->num_rows > 0) {
    // output data of each row
   $count1  = $result->num_rows;
	$count=$count+$count1+1;   
}
else
{
	$count=1001;
}
$coun=substr($count, 1, 3);
$sid="S".$b.$de.$coun;



     
		$file2 = rand(1000,100000)."-".$_FILES['file2']['name'];
    $file_loc = $_FILES['file2']['tmp_name'];
	$file_size = $_FILES['file2']['size'];
	$file_type = $_FILES['file2']['type'];
	$folder="../../gallery/photo/".$aaa."/";
	
	// new file size in KB
	$new_size = $file_size/150;  
	// new file size in KB
	
	// make file name in lower case
	$new_file_name = strtolower($file2);
	// make file name in lower case
	
	$final_file=str_replace(' ','-',$new_file_name);
	
	$file1 = rand(1000,100000)."-".$_FILES['file1']['name'];
    $file_loc1 = $_FILES['file1']['tmp_name'];
	$file_size1 = $_FILES['file1']['size'];
	$file_type1 = $_FILES['file1']['type'];
	$folder1="../../gallery/aadhar/".$aaa."/";
	
	// new file size in KB
	//$new_size1 = $file_size1/1024;  
	// new file size in KB
	
	// make file name in lower case
	$new_file_name1 = strtolower($file1);
	// make file name in lower case
	
	$final_file1=str_replace(' ','-',$new_file_name1);
	
	if(move_uploaded_file($file_loc,$folder.$final_file) && move_uploaded_file($file_loc1,$folder1.$final_file1))
	{
		
        $sql = "INSERT into `$aaa` (sid,name,dob,age,gender,email,mob1,fname,mname,mstatus,sname,relegion,comunity,place,city,district,state,country,pincode,address,paddress,aadharno,panno,passport,blood,doj,designation,mob2,dept,uploadpic,aadharpic,password) VALUES ('$sid','$name','$dob','$age','$gender','$email','$mob1','$fname','$mname','$mstatus','$sname','$relegion','$comunity','$place','$city','$district','$state','$country','$pincode','$address','$paddress','$aadharno','$panno','$passport','$blood','$doj','$designation','$mob2','$dept','$final_file','$final_file1','$password')";
	if(mysqli_query($con,$sql))
	{
		//php mailer starting
		
		require_once 'mailer/class.phpmailer.php';
// creates object
$mail = new PHPMailer(true);
$mailid = $email;
$subject = "Thank you for registering.........";
$text_message = "Hello";
$message = "Dear ".$name.",<br>     Your Staff ID is <h1>".$sid."</h1> and the password is <h1>".$password."</h1>" ;
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
	echo '<script language="javascript">alert("REFRESH YOUR BROWSER(Press F5).Thank you for registration, Login information will be sent to your Registred mail id");</script>';
	echo '<script type="text/javascript">window.location.href = "../fac_desc.php";</script>';
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
	else {
    echo "File Not Uploaded Properly  <br>" . $con->error;
}
       
}
else
{
	echo '<script language="javascript">alert("Staff Already Exits !!!");</script>';
	echo '<script type="text/javascript">window.location.href = "fac_profile.php";</script>';
}
}

?>