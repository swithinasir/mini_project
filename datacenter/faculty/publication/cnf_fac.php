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

input[type=text],input[type=date],td, select, textarea {
   
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
 var startDt = document.getElementById("confrom").value;
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
 var startDt = document.getElementById("condate").value;
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
    var startDt = document.getElementById("confrom").value;
    var endDt = document.getElementById("conto").value;
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
function pdf()
{
	var fileInput = document.getElementById('file');
    var filePath = fileInput.value;
    var allowedExtensions = /(\.PDF|\.pdf)$/i;
	
    if(!allowedExtensions.exec(filePath))
	{		
		document.getElementById('msg').style.display="block";
		document.getElementById('msg').innerHTML="Please upload file having extensions .pdf only.";
        return false;		
    }
	else
	{		
		document.getElementById('msg').style.display="none";
		return true ;       
    }
}
function validate()
{
	var days = document.getElementById("condays").value;
	if(days>1)
	{
	var valid = true;
	valid = valid && compare1();
	valid = valid && compare();
	valid = valid && pdf();
	 return valid;
	}
	else
	{
	var valid = true;
	valid = valid && compare0();
	valid = valid && pdf();
	 return valid;
	}
}
 $('form').submit(validate);
</script>

 <nav class="navbar navbar-inverse navbar-fixed-top">

<ul>
  <li><a href="bk_fac.php" target= "frame1" >BOOK</a></li> 
  <li><a href="jrnl_fac.php" target= "frame1">JOURNAL</a></li>
  <li><a class="active"  href="cnf_fac.php" target= "frame1">CONFERENCE</a></li>
  <li><a href="google_fac.php" target= "frame1">Google Scholar Link</a></li>
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
	$key = $row1["conkey"];
		}
	if ( $key != NULL ) 
	{	
if(!isset($_POST["add"]) && !isset($_POST["continue"])){
echo'<br>';
			echo'<div class="row">';
			
			echo'<TABLE id="dataTable" width="100%" border="1">';
			echo'<TR>';
			echo'<TH>Academic Year</TH>';
			echo'<TH>Name of the Program</TH>';
			echo'<TH>Title of the Program</TH>';
			echo'<TH>Organised By</TH>';
			echo'<TH>No.Of.Days</TH>';
			echo'<TH>From </TH>';
			echo'<TH>To </TH>';
			echo'<TH>Date </TH>';
			echo'<TH>Level Of The Program</TH>';
			echo'<TH>Certificate Upload</TH>';
			
			echo'</TR>';
			$sql1="SELECT * FROM `$aaa` WHERE sid = '$sid' ";
	$result = $con->query($sql1);
	if ($result->num_rows > 0) 
	{

		while($row = $result->fetch_assoc()) 
		{
			
			for( $i=1; $i<=$row["conkey"];$i++)
			{
				$conname0="conname".$i;
				$contitle0="contitle".$i;
				$conorg0="conorg".$i;
				$condays0="condays".$i;
				$confrom0="confrom".$i;
				$conto0="conto".$i;
				$condate0="condate".$i;
				$conlevel0="conlevel".$i;
				$concer0="concer".$i;
				$days = $row["$condays0"];

		
				echo'<TR>';
				echo'<TD><center>';
				echo $row["ayear"];
				echo '</center></TD>';
				echo'<TD><center>';
				echo $row["$conname0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$contitle0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$conorg0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$condays0"];
				echo'</center></TD>';
				echo'<TD><center>';
				if($days==1)
				{
				echo "--";
				}
				else
				{
				echo $row["$confrom0"];
				}
				echo'</center></TD>';
				echo'<TD><center>';
				if($days==1)
				{
				echo "--";
				}
				else
				{
				echo $row["$conto0"];
				}
				echo'</center></TD>';
				echo'<TD><center>';
				if($days==1)
				{
				echo $row["$condate0"];
				}
				else
				{
				echo "--";
				}
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$conlevel0"];
				echo'</center></TD>';
				echo'<TD><center>';
				$a=$row["$concer0"];
				?>
				
	<a href="../../gallery/conn/<?php echo $aaa; ?>/<?php echo $a; ?>" target="_blank">View</a>
<?php
				echo'</center></TD>';
				
				
				echo'</TR>';
        
			}
			
		}
	}
?>
 <form class="modal-content animate" action="cnf_fac.php" method="post">
   

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
  <form class="modal-content animate" action="cnf_fac.php" method="post">
   

    <div class="container1">
      <label for="uname"><b>No.Of.Days Conference Held</b></label>
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
  <form class="modal-content animate" action="cnf_fac.php" method="post">
   

    <div class="container1">
      <label for="uname"><b>No.Of.Days Conference Held</b></label>
      <input type="number" onFocus="this.value=''" placeholder="Enter No.Of.Days" name="days" min="1" required>

        
      <button type="submit" name="continue">Continue</button>
      
    </div>
	
	
	
  </form>
  <?php
		}
	}
	if(isset($_POST["add"])){
  ?>
  <form class="modal-content animate" action="cnf_fac.php" method="post">
   

    <div class="container1">
      <label for="uname"><b>No.Of.Days Conference Held</b></label>
      <input type="number" onFocus="this.value=''" placeholder="Enter No.Of.Days" name="days" min="1" required>

        
      <button type="submit" name="continue">Continue</button>
      
    </div>
	
	
	
  </form>
  <?php
  }
if(isset($_POST["continue"])){
$days =$_POST['days'];
?>

  <form action="cnf_fac.php" method="post" enctype="multipart/form-data" id = "form" onsubmit="return(validate());">
    <div class="row">
      <div class="col-25">
        <label for="fname">Academic Year</label>
      </div>
       <div class="col-25">
       <select name="ayear" id="ayear" required>
		<?php

$end=date("Y");
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
        <label for="fname">Name of the Conference</label>
      </div>
	  <div class="col-75">
       <input type="text" id="conname" name="conname" required>
      </div>
	  </div>
	  
  
	 <div class="row">
      <div class="col-25">
        <label for="fname">Title of the Paper</label>
      </div>
      <div class="col-75">
        <input type="text" id="contitle" name="contitle" required>
      </div>
    </div>
	
	<div class="row">
      <div class="col-25">
        <label for="fname">organised By</label>
      </div>
	  <div class="col-75">
        <input type="text" id="conorg" name="conorg" required>
      </div>
    </div>
	   <input type="hidden" id="condays" name="condays" value="<?php echo"".$days; ?>">
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
 <input type="date" id="confrom" name="confrom" onblur="return(compare1());"  required>
	    <label class="message" id="message1" >      </div>
	  <div class="col-25">
        <label for="fname">&nbsp; &nbsp;To</label>
      </div>
	  <div class="col-25">
<input type="date" id="conto" name="conto" onblur="return(compare());" required>
	   <label class="message" id="message" >      </div>
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
  <input type="date" id="condate" name="condate" onblur="return(compare0());"  required>
	   <label class="message" id="message0" >      </div>
	</div>
	 <?php
	 }
	 }	
	 ?>
   
	
	<div class="row">
      <div class="col-25">
        <label for="lname">Confrence Level</label>
      </div>
      
        <div class="col-75">
        <select name="conlevel" >
		<option value="0">--</option>
  <option value="district">District</option>
  <option value="state">State</option>
  <option value="national">National</option>
   <option value="international">International</option>
</select>
      </div>
    
    </div>
    <div class="row">
      <div class="col-25">
        <label for="subject">Certificate Upload  (Only PDF Upload)</label>
		 <label class="message" id="msg" >
      </div>
       
	   <div class="col-75">
       <input type="file" id="file" name="file" required>
      </div>
    </div>
	
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
	
	$confrom=0;
	$conto =0;
	$condate =0;
	
 $ayear=$_POST["ayear"];
 $conname=$_POST["conname"];
 $contitle =$_POST["contitle"];
 $conorg =$_POST["conorg"];
 $condays =$_POST["condays"];
 $conlevel =$_POST["conlevel"];
 
	if($condays>1)
	{
		$confrom=$_POST["confrom"];
		$conto =$_POST["conto"];
	}
	if($condays==1)
	{
		$condate =$_POST["condate"];
	}	
 
 
 $sid=$_SESSION['sid'];
 $deptid=$_SESSION['deptid'];
 $aaa=$deptid."_fac_glc";
 
 $file = rand(1000,100000)."-".$_FILES['file']['name'];
    $file_loc = $_FILES['file']['tmp_name'];
	$file_size = $_FILES['file']['size'];
	$file_type = $_FILES['file']['type'];
	$folder="../../gallery/conn/".$aaa."/";
	// new file size in KB
	$new_size = $file_size/1024;  
	// new file size in KB
	
	// make file name in lower case
	$new_file_name = strtolower($file);
	// make file name in lower case
	
	$final_file=str_replace(' ','-',$new_file_name);
 
	  
	  if(move_uploaded_file($file_loc,$folder.$final_file))
	  {
		$sql6 = "INSERT into `$aaa` (sid,ayear,conname1,contitle1,conorg1,condays1,confrom1,conto1,condate1,conlevel1,concer1,conkey) VALUES ('$sid','$ayear','$conname','$contitle','$conorg','$condays','$confrom','$conto','$condate','$conlevel','$final_file',1)";	
		if(mysqli_query($con,$sql6))
		{
			
			echo '<script language="javascript">alert("Connference Details Inserted Successfully");</script>';
			echo '<script type="text/javascript">window.location.href = "cnf_fac.php";</script>';
		}
		else {
    echo "Error: " . $sql . "<br>" . $con->error;
}
	  }	
	
}

?>