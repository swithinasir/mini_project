<?php
session_start();
include("../conn/config1.php");
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
 var startDt = document.getElementById("orgfrom").value;
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
 var startDt = document.getElementById("orgdate").value;
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
    var startDt = document.getElementById("orgfrom").value;
    var endDt = document.getElementById("orgto").value;
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

function validate()
{
	var days = document.getElementById("orgdays").value;
	if(days>1)
	{
	var valid = true;
	valid = valid && compare1();
	valid = valid && compare();
	 return valid;
	}
	else
	{
	var valid = true;
	valid = valid && compare0();
	 return valid;
	}
}
 $('form').submit(validate);
</script>

 <nav class="navbar navbar-inverse navbar-fixed-top">
<ul> 
  <h1 align="center">EVENT ORGANIZED</h1>
</ul>
</nav>
<br>
<br>
<br>
<br>
<div class="container">
<!-- view-->

<?php
$deptid=$_SESSION['deptid'];
$aaa=$deptid."_org";
$sql2="SELECT * FROM `$aaa`";
	$result1 = $con->query($sql2);
	if ($result1->num_rows > 0) 
	{
	while($row1 = $result1->fetch_assoc()) 
		{
	$key = $row1["orgkey"];
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
			echo'<TH>Funded By</TH>';
			echo'<TH>No.Of.Days</TH>';
			echo'<TH>From </TH>';
			echo'<TH>To </TH>';
			echo'<TH>Date </TH>';
			echo'<TH>Resource Person</TH>';
			echo'<TH>No. of Participants</TH>';
			echo'<TH>Level Of The Program</TH>';
			echo'<TH>Sample Picture</TH>';
			echo'<TH>Action</TH>';
			
			echo'</TR>';
			$sql1="SELECT * FROM `$aaa` ";
	$result = $con->query($sql1);
	if ($result->num_rows > 0) 
	{

		while($row = $result->fetch_assoc()) 
		{
			?>
			<TR>
			<form action="org_update.php" method="post" >
			<TD><input type="text" name="ayear" value="<?php echo $row["ayear"];?>"></TD>
			<TD><input type="text" name="orgcategory1" value="<?php echo $row["orgcategory1"];?>"></TD>
			<TD><input type="text" name="orgtitle1" value="<?php echo $row["orgtitle1"];?>"></TD>
			<TD><input type="text" name="orgfun1" value="<?php echo $row["orgfun1"];?>"></TD>
			<TD><input type="text" name="orgdays1" value="<?php echo $row["orgdays1"];?>"></TD>
			
			<TD>
			<?php
				$days=$row["orgdays1"];
				if($days==1)
				{
				echo "--";
				?>
				<input type="hidden" name="orgfrom1" value="<?php echo NULL;?>">
				<?php
				}
				else
				{
					?>
					<input type="text" name="orgfrom1" value="<?php echo $row["orgfrom1"];?>">
					<?php
				}
				?>
				</TD>
				<TD>
				<?php
				if($days==1)
				{
				echo "--";
				?>
				<input type="hidden" name="orgto1" value="<?php echo NULL;?>">
				<?php
				}
				else
				{
					?>
					<input type="text" name="orgto1" value="<?php echo $row["orgto1"];?>">
					<?php
				}
				?>
				</TD>
				<TD>
				<?php
				if($days==1)
				{
					?>
					<input type="text" name="orgdate1" value="<?php echo $row["orgdate1"];?>">
					<?php
					}
				else
				{
				echo "--";
				?>
				<input type="hidden" name="orgdate1" value="<?php echo NULL;?>">
				<?php
				}
				?>
				</TD>		
			<TD><input type="text" name="orgres1" value="<?php echo $row["orgres1"];?>"></TD>
			<TD><input type="text" name="orgpar1" value="<?php echo $row["orgpar1"];?>"></TD>
			<TD><input type="text" name="orglevel1" value="<?php echo $row["orglevel1"];?>"></TD>
			<TD>
<?php $a=$row["orgcer1"]; ?>			
	<a href="../gallery/dept_org/<?php echo $aaa; ?>/<?php echo $a; ?>" target="_blank">View</a>
</TD>			
			<input type="hidden" name="id" value="<?php echo $row["id"];?>">
			<TD><input type="submit" name="update_orga" value="UPDATE"></TD>
			</form>
			</TR>
			<?php
			
			
		}
	}
?>
 <form class="modal-content animate" action="dept_org.php" method="post">
   

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
  <form class="modal-content animate" action="dept_org.php" method="post">
   

    <div class="container1">
      <label for="uname"><b>No.Of.Days Organised</b></label>
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
  <form class="modal-content animate" action="dept_org.php" method="post">
   

    <div class="container1">
      <label for="uname"><b>No.Of.Days Organised</b></label>
      <input type="number" onFocus="this.value=''" placeholder="Enter No.Of.Days" name="days" min="1" required>

        
      <button type="submit" name="continue">Continue</button>
      
    </div>
	
	
	
  </form>
  <?php
		}
	}
	if(isset($_POST["add"])){
  ?>
  <form class="modal-content animate" action="dept_org.php" method="post">
   

    <div class="container1">
      <label for="uname"><b>No.Of.Days Organised</b></label>
      <input type="number" onFocus="this.value=''" placeholder="Enter No.Of.Days" name="days" min="1" required>

        
      <button type="submit" name="continue">Continue</button>
      
    </div>
	
	
	
  </form>
  <?php
  }
if(isset($_POST["continue"])){
$days =$_POST['days'];
?>

  <form action="dept_org.php" method="post" enctype="multipart/form-data" id = "form" onsubmit="return(validate());">
    <div class="row">
      <div class="col-25">
        <label for="fname">Academic Year</label>
      </div>
       <div class="col-25">
       <select name="ayear"  id="ayear" required>
		<?php

$end=date("Y");
for($i=1975;$i<=$end;$i++)
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
        <label for="fname">Name of the Program</label>
      </div>
      <div class="col-75">
        <select name="orgcategory" required>
		<option value="0">--</option>
 <option value="sdp">SDP</option>
  <option value="fdp">FDP</option>
  <option value="seminar">Seminar</option>
  <option value="workshop">Workshop</option>
  <option value="training">Training</option>
  <option value="guest_l">Guest Lecture</option>
  <option value="conference">Conference</option>
  <option value="symposium">Symposium</option>
</select>
      </div>
    </div>
	 <div class="row">
      <div class="col-25">
        <label for="fname">Title of the Program</label>
      </div>
      <div class="col-75">
        <input type="text" id="orgtitle" name="orgtitle" required>
      </div>
    </div>
	
	<div class="row">
      <div class="col-25">
        <label for="fname">Funded By</label>
      </div>
	  <div class="col-75">
        <input type="text" id="orgfun" name="orgfun" required >
      </div>
    </div>
	  <input type="hidden" id="orgdays" name="orgdays" value="<?php echo ''.$days; ?>">
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
       <input type="date" id="orgfrom" name="orgfrom" onblur="return(compare1());" required>
	    <label class="message" id="message1" >
      </div>
	  <div class="col-25">
        <label for="fname">&nbsp; &nbsp;To</label>
      </div>
	  <div class="col-25">
       <input type="date" id="orgto" name="orgto" onblur="return(compare());" required>
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
       <input type="date" id="orgdate" name="orgdate" onblur="return(compare0());" required>
		 <label class="message" id="message0" >
	 </div>
	</div>
	 <?php
	 }
	 }	
	 ?>
    <div class="row">
      <div class="col-25">
        <label for="lname">Resource Person</label>
      </div>
      <div class="col-75">
        <input type="text" id="orgres" name="orgres" required>
      </div>
    </div>
   
	<div class="row">
      <div class="col-25">
        <label for="lname">No. of Participants</label>
      </div>
      <div class="col-75">
        <input type="text" id="orgpar" name="orgpar" required>
      </div>
    </div>
	<div class="row">
      <div class="col-25">
        <label for="lname">Level of Program</label>
      </div>
      
        <div class="col-75">
        <select name="orglevel" required>
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
        <label for="subject">Sample Pictures</label>
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
	
	$orgfrom=0;
	$orgto =0;
	$orgdate =0;
	
 $ayear=$_POST["ayear"];
 $orgcategory=$_POST["orgcategory"];
 $orgtitle =$_POST["orgtitle"];
 $orgfun =$_POST["orgfun"];
 $orgdays =$_POST["orgdays"];
 $orgres=$_POST["orgres"];
 $orgpar =$_POST["orgpar"];
 $orglevel =$_POST["orglevel"];
 

	if($orgdays>1)
	{
		$orgfrom=$_POST["orgfrom"];
		$orgto =$_POST["orgto"];
	}
	if($orgdays==1)
	{
		$orgdate =$_POST["orgdate"];
	}	

 $deptid=$_SESSION['deptid'];
 $aaa=$deptid."_org";
 
 $file = rand(1000,100000)."-".$_FILES['file']['name'];
    $file_loc = $_FILES['file']['tmp_name'];
	$file_size = $_FILES['file']['size'];
	$file_type = $_FILES['file']['type'];
	$folder="../gallery/dept_org/".$aaa."/";
	// new file size in KB
	$new_size = $file_size/1024;  
	// new file size in KB
	
	// make file name in lower case
	$new_file_name = strtolower($file);
	// make file name in lower case
	
	$final_file=str_replace(' ','-',$new_file_name);
 
 
	  
	  if(move_uploaded_file($file_loc,$folder.$final_file))
	  {
		$sql6 = "INSERT into `$aaa` (ayear,orgcategory1,orgtitle1,orgfun1,orgdays1,orgfrom1,orgto1,orgdate1,orgres1,orgpar1,orglevel1,orgcer1,orgkey) VALUES ('$ayear','$orgcategory','$orgtitle','$orgfun','$orgdays','$orgfrom','$orgto','$orgdate','$orgres','$orgpar','$orglevel','$final_file',1)";	
		if(mysqli_query($con,$sql6))
		{
			
			echo '<script language="javascript">alert("Program Organized Details Inserted Successfully");</script>';
			//header("Location: mem_fac.php");
		}
	  }	
	
}

?>