<?php
session_start();
include("../../conn/config.php");
?>
<html>
<style>

/* Full-width input fields */
input[type=number]{
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
	background-color: #f2f2f2;
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

.container1 {
    padding: 16px;
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
    width: 50%; /* Could be more or less, depending on screen size */
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


</style>


<style>
* {
    box-sizing: border-box;
}

input[type=text],input[type=date], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
	background-color: #f2f2f2;
}

label {
    padding: 12px 12px 12px 0;
    display: inline-block;
}

input[type=submit] {
    background-color: #4CAF50;
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



.col-25 {
    float: left;
    width: 25%;
    margin-top: 6px;
}

.col-75 {
    float: left;
    width: 75%;
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
    .col-25, .col-75, input[type=submit] {
        width: 100%;
        margin-top: 0;
    }
}
</style>
<link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/style.min.css" rel="stylesheet">

<style>
.active {
  background-color: #333;
  color: white;
}

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: Skyblue;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 16px 50px;
	border-right:2px solid #bbb;

    text-decoration: none;
}

li a:hover {
    background-color: #111;
}
.message{color:#FF0000;
font-size: small;
font-weight: bold; 
white-space: pre;
}
</style> 
<script>
function compare1()
{
 var startDt = document.getElementById("glfrom").value;
var text1 = document.getElementById("ayear").value;
var a = text1.substr(0, 4);
var text2 = "-06-01";
var a = a.concat("",text2);
var date1 = new Date(a);
var b = text1.substr(5, 4);
var text3 = "-05-31";
var b = b.concat("",text3);
var date2 = new Date(b);
var today = new Date();
var date3 = new Date(startDt);
if((date3 < today)) 
{	
if((date3 < date2)) 
{	
	if((date3 < date1)) 
	{
     document.getElementById('message1').style.display="block";
		document.getElementById('message1').innerHTML="Invalid Date,it should be between the academic year";
			return false;
	}
    else
{
	 document.getElementById('message1').style.display="none";
	return( true );
}
}
else
{
	 document.getElementById('message1').style.display="block";
		document.getElementById('message1').innerHTML="Invalid Date,it should be between the academic year";
		return false;
}
}
else
{
	 document.getElementById('message1').style.display="block";
		document.getElementById('message1').innerHTML="Invalid Date";
		return false;
}
   }
function compare0()
{
 var startDt = document.getElementById("gldate").value;
var text1 = document.getElementById("ayear").value;
var a = text1.substr(0, 4);
var text2 = "-06-01";
var a = a.concat("",text2);
var date1 = new Date(a);
var b = text1.substr(5, 4);
var text3 = "-05-31";
var b = b.concat("",text3);
var date2 = new Date(b);
var today = new Date();
var date3 = new Date(startDt);
if((date3 < today)) 
{	
if((date3 < date2)) 
{	
	if((date3 < date1)) 
	{
     document.getElementById('message0').style.display="block";
		document.getElementById('message0').innerHTML="Invalid Date,it should be between the academic year";
			return false;
	}
    else
{
	 document.getElementById('message0').style.display="none";
	return( true );
}
}
else
{
	 document.getElementById('message0').style.display="block";
		document.getElementById('message0').innerHTML="Invalid Date,it should be between the academic year";
		return false;
}
}
else
{
	 document.getElementById('message0').style.display="block";
		document.getElementById('message0').innerHTML="Invalid Date";
		return false;
}
   }

function compare()
{
    var startDt = document.getElementById("glfrom").value;
    var endDt = document.getElementById("glto").value;
	var text1 = document.getElementById("ayear").value;
var a = text1.substr(0, 4);
var text2 = "-06-01";
var a = a.concat("",text2);
var date1 = new Date(a);
var b = text1.substr(5, 4);
var text3 = "-05-31";
var b = b.concat("",text3);
var date2 = new Date(b);
var today = new Date();
var date3 = new Date(endDt);
if((date3 < today)) 
{	
  if((date3 < date2)) 
  {	
	if((date3 > date1)) 
	{
		if( (new Date(startDt).getTime() < new Date(endDt).getTime()))
		{
			document.getElementById('message').style.display="none";
	return( true );
		}
		else
		{
			document.getElementById('message').style.display="block";
			document.getElementById('message').innerHTML="Invalid Date,it should be after the FROM date";
			return false;
		}
	}
    else
    {
		document.getElementById('message').style.display="block";
		document.getElementById('message').innerHTML="Invalid Date,it should be between the academic year";
		return false;
	}
  }
  else
  {
		document.getElementById('message').style.display="block";
		document.getElementById('message').innerHTML="Invalid Date,it should be between the academic year";
		return false;
  }
}
else
{
	 document.getElementById('message').style.display="block";
		document.getElementById('message').innerHTML="Invalid Date";
	return false;
}
}
function image()
{
	var fileInput = document.getElementById('file');
    var filePath = fileInput.value;
    var allowedExtensions = /(\.JPEG|\.jpeg)$/i;
	// if {
	//	 document.getElementById('mes1').style.display="block";
	//	document.getElementById('mes1').innerHTML="Image too big (max 100kb)";
		// alert('Image too big (max 100kb)');
     //   return false;
   // }
    if(!allowedExtensions.exec(filePath)){
		if(file.files[0].size > 102400)
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
		if(file.files[0].size > 102400)
		{
       // alert('Please upload file having extensions .jpeg only.');
	    document.getElementById('msg').style.display="block";
		document.getElementById('msg').innerHTML="Image too big.";
        return false;
		}else{
		document.getElementById('msg').style.display="none";
		return true ;
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
function validate()
{
	var days = document.getElementById("gldays").value;
	if(days>1)
	{
	var valid = true;
	valid = valid && compare1();
	valid = valid && compare();
	valid = valid && image();
	 return valid;
	}
	else
	{
	var valid = true;
	valid = valid && compare0();
	valid = valid && image();
	 return valid;
	}
}
 $('form').submit(validate);
</script>

 <nav class="navbar navbar-inverse navbar-fixed-top">
<ul> 
  <li><a href="att_fac.php" target= "frame1" >PROGRAMME ATTENDED</a></li>  
  <li><a href="org_fac.php" target= "frame1">PROGRAMME ORGANIZED</a></li>
  <li><a class="active"  href="gl_fac.php" target= "frame1">GUEST LECTURE</a></li>

</ul>
</nav>
<br>
<br>
<br>
<br>
<div class="container">
<!-- view-->

<?php
$sid=$_SESSION['sid'];
$deptid=$_SESSION['deptid'];
$aaa=$deptid."_fac_glc";
$sql2="SELECT * FROM `$aaa` WHERE sid = '$sid' ";
	$result1 = $con->query($sql2);
	if ($result1->num_rows > 0) 
	{
	while($row1 = $result1->fetch_assoc()) 
		{
	$key = $row1["glkey"];
		}
	if ( $key != NULL ) 
	{	
if(!isset($_POST["add"]) && !isset($_POST["continue"])){
echo'<br>';
			echo'<div class="row">';
			
			echo'<TABLE id="dataTable" width="100%" border="1">';
			echo'<TR>';
			echo'<TH>Academic Year</TH>';
			echo'<TH>Title of the Programme</TH>';
			echo'<TH>No.Of.Days</TH>';
			echo'<TH>From </TH>';
			echo'<TH>To </TH>';
			echo'<TH>Date </TH>';
			echo'<TH>Topic</TH>';
			echo'<TH>Organised By</TH>';
			echo'<TH>Place</TH>';
			
			echo'</TR>';
			$sql1="SELECT * FROM `$aaa` WHERE sid = '$sid' ";
	$result = $con->query($sql1);
	if ($result->num_rows > 0) 
	{

		while($row = $result->fetch_assoc()) 
		{
			
			for( $i=1; $i<=$row["glkey"];$i++)
			{
				$gltitle0="gltitle".$i;
				$gldays0="gldays".$i;
				$glfrom0="glfrom".$i;
				$glto0="glto".$i;
				$gldate0="gldate".$i;
				$gltopic0="gltopic".$i;
				$glorg0="glorg".$i;
				$glplace0="glplace".$i;
				$days = $row["$gldays0"];

		
				echo'<TR>';
				echo'<TD><center>';
				echo $row["ayear"];
				echo '</center></TD>';
				echo'<TD><center>';
				echo $row["$gltitle0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$gldays0"];
				echo'</center></TD>';
				echo'<TD><center>';
				if($days==1)
				{
				echo "--";
				}
				else
				{
				echo $row["$glfrom0"];
				}
				echo'</center></TD>';
				echo'<TD><center>';
				if($days==1)
				{
				echo "--";
				}
				else
				{
				echo $row["$glto0"];
				}
				echo'</center></TD>';
				echo'<TD><center>';
				if($days==1)
				{
				echo $row["$gldate0"];
				}
				else
				{
				echo "--";
				}
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$gltopic0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$glorg0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$glplace0"];
				echo'</center></TD>';
				
				echo'</TR>';
        
			}
			
		}
	}
?>
 <form class="modal-content animate" action="gl_fac.php" method="post">
   

    <div class="container1">
	 
      
  
      <button type="submit" name="add">Add More</button>
      
    </div>
	
	
	
  </form>

<br>
<!-- close-->
<?php
	}
    }
	else
	{
			if(!isset($_POST["continue"])){
  ?>
  <form class="modal-content animate" action="gl_fac.php" method="post">
   

    <div class="container1">
      <label for="uname"><b>No.Of.Days Lecture Held</b></label>
      <input type="number" onFocus="this.value=''" placeholder="Enter No.Of.Days" name="days" min="1" required>

        
      <button type="submit" name="continue">Continue</button>
      
    </div>
	
	
	
  </form>
  <?php
			}
	}
	}
	else
	{
		if(!isset($_POST["continue"])){
  ?>
  <form class="modal-content animate" action="gl_fac.php" method="post">
   

    <div class="container1">
      <label for="uname"><b>No.Of.Days Lecture Held</b></label>
      <input type="number" onFocus="this.value=''" placeholder="Enter No.Of.Days" name="days" min="1" required>

        
      <button type="submit" name="continue">Continue</button>
      
    </div>
	
	
	
  </form>
  <?php
		}
	}
	if(isset($_POST["add"])){
  ?>
  <form class="modal-content animate" action="gl_fac.php" method="post">
   

    <div class="container1">
      <label for="uname"><b>No.Of.Days Lecture Held</b></label>
      <input type="number" onFocus="this.value=''" placeholder="Enter No.Of.Days" name="days" min="1" required>

        
      <button type="submit" name="continue">Continue</button>
      
    </div>
	
	
	
  </form>
  <?php
  }
if(isset($_POST["continue"])){
$days =$_POST['days'];
?>
  <form action="gl_fac.php" method="post" id = "form" onsubmit="return(validate());">
    <div class="row">
      <div class="col-25">
        <label for="fname">Academic Year</label>
      </div>
       <div class="col-25">
       <select name="ayear" id="ayear"  required>
		<?php
$end=date("Y");
if(date("m")<6)
{
	$end=$end-1;
}
for($i=1987;$i<=$end;$i++)
{
	$cu=$i+1;
	$j=$i."-".$cu;
	echo"<option value='". $j ."'> ",$j,"</option>";
}
?> 
</select>
      </div>
    </div>

	 <div class="row">
      <div class="col-25">
        <label for="fname">Title of the Programme</label>
      </div>
      <div class="col-75">
        <input type="text" id="gltitle" name="gltitle" >
      </div>
    </div>
	<input type="hidden" id="gldays" name="gldays" value="<?php echo"".$days; ?>">
	   <?php
	 if($days==1 || $days>1)
	 {
	 if($days>1)
	 {
	 ?>
	 <div class="row">
      <div class="col-25">
        <label for="fname">From</label>
      </div>
     <div class="col-25">
       <input type="date" id="glfrom" name="glfrom" onblur="return(compare1());"  required>
	    <label class="message" id="message1" >
      </div>
	  <div class="col-25">
        <label for="fname">&nbsp; &nbsp;To</label>
      </div>
	  <div class="col-25">
       <input type="date" id="glto" name="glto" onblur="return(compare());" required>
	   <label class="message" id="message" >
      </div>
	</div>
	<?php
	}
	else
	{
	?>
	 <div class="row">
      <div class="col-25">
        <label for="fname">Date</label>
      </div>
     <div class="col-25">
       <input type="date" id="gldate" name="gldate" onblur="return(compare0());"  required>
	   <label class="message" id="message0" >
      </div>
	</div>
	 <?php
	 }
	 }	
	 ?>
    <div class="row">
      <div class="col-25">
        <label for="lname">Topic</label>
      </div>
      <div class="col-75">
        <input type="text" id="gltopic" name="gltopic" required>
      </div>
    </div>
   <div class="row">
      <div class="col-25">
        <label for="lname">Organization</label>
      </div>
      <div class="col-75">
        <input type="text" id="glorg" name="glorg" required>
      </div>
    </div>
	<div class="row">
      <div class="col-25">
        <label for="lname">Place</label>
      </div>
      <div class="col-75">
        <input type="text" id="glplace" name="glplace" required>
      </div>
    </div>	
	<div class="row">
      <div class="col-25">
        <label for="lname">Sample Picture (only JPEG Format < 100KB)</label>
		 <label class="message" id="msg" ></label>
      </div>
      <div class="col-75">
        <input type="file" id="file" name="file">
      </div>
    </div>
	<br>
    <div class="row">
      <input type="submit" value="Submit" name="submit">
    </div>
  </form>
   <?php
  }
 
  ?>

</div>
</html>
<?php

if(isset($_POST["submit"])){
	
	$glfrom=0;
	$glto =0;
	$gldate =0;
	
 $ayear=$_POST["ayear"];
 $gltitle =$_POST["gltitle"];
 $gldays =$_POST["gldays"];
 $gltopic=$_POST["gltopic"];
 $glorg=$_POST["glorg"];
 $glplace =$_POST["glplace"];
 	 
	if($gldays>1)
	{
		$glfrom=$_POST["glfrom"];
		$glto =$_POST["glto"];
	}
	if($gldays==1)
	{
		$gldate =$_POST["gldate"];
	}	
 
 $sid=$_SESSION['sid'];
 $deptid=$_SESSION['deptid'];
 $aaa=$deptid."_fac_glc";
 
 
 $sql1="SELECT * FROM dept WHERE deptid = '$deptid'";
 $result = $con->query($sql1);
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			$tablekey=$row["gueskey"];
		
		}
	}
	if(empty($_FILES['file1']['name']))
	{
		$final_file1 =0;
	}
	else
	{
	$file1 = $_FILES['file1']['name'];
    $file_loc1 = $_FILES['file1']['tmp_name'];
	$file_size1 = $_FILES['file1']['size'];
	$file_type1 = $_FILES['file1']['type'];
	$folder1="../gallery/gl/".$aaa."/";
	// new file size in KB
	$new_size1 = $file_size1/1024;  
	// new file size in KB	
	// make file name in lower case
	$file1=rand(1000,100000)."-".$file1;
	$new_file_name1 = strtolower($file1);;
	// make file name in lower case	
	$final_file1=str_replace(' ','-',$new_file_name1);
	$move1=move_uploaded_file($file_loc1,$folder1.$final_file1);
	}
	$glpic =$final_file1;
 
	  
	 
		$sql6 = "INSERT into `$aaa` (sid,ayear,gltitle1,gldays1,glfrom1,glto1,gldate1,gltopic1,glorg1,glplace1,glpic1,glkey) VALUES ('$sid','$ayear','$gltitle','$gldays','$glfrom','$glto','$gldate','$gltopic','$glorg','$glplace','$glpic',1)";	
		if(mysqli_query($con,$sql6))
		{
			
			echo '<script language="javascript">alert("Guest Lecture Details Inserted Successfully");</script>';
			//header("Location: mem_fac.php");
		}else {
    echo "Error: " . $sql . "<br>" . $con->error;
}
	  	
	
}

?>