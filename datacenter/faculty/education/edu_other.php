<?php
session_start();
include("../../conn/config.php");
?>
<html>

<link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/style.min.css" rel="stylesheet">

<style>
.required:after { content:" *";color: #e32; }

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
</style>
<style>
* {
    box-sizing: border-box;
}

input[type=text], select, textarea {
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
.message{color:#FF0000;
font-size: small;
font-weight: bold; 
white-space: pre;
}
</style>


	 <nav class="navbar navbar-inverse navbar-fixed-top">
<ul>
	<li><a href="ten_fac.php" target= "frame1" >10<sup>th</sup></a></li> 
	<li><a href="twelve_fac.php" target= "frame1">12<sup>th</sup>or Diploma</a></li>		
	<li><a href="ug_fac.php" target= "frame1">UG</a></li> 
	<li><a href="pg_fac.php" target= "frame1">PG</a></li>	
	<li><a href="mphil_fac.php" target= "frame1">M.Phil</a></li> 
	<li><a href="phd_fac.php" target= "frame1">Ph.D</a></li>  
	<li><a  class="active" href="edu_other.php" target= "frame1">Others</a></li>  
</ul>
</nav>

<br>
<?php
$sid=$_SESSION['sid'];
$deptid=$_SESSION['deptid'];
$aaa=$deptid."_fac_ot_qual";
$sql1="SELECT * FROM `$aaa` WHERE sid = '$sid'";
	$result = $con->query($sql1);
	if ($result->num_rows > 0) {
		echo'<br>';
			
			echo'<TABLE id="dataTable" width="100%" border="1">';
			echo'<TR>';
			echo'<TH>Name of Qualification</TH>';
			echo'<TH>Year of Complition</TH>';
			echo'<TH>Certificate</TH>';			
			echo'</TR>';
		while($row = $result->fetch_assoc()) 
		{
			
		
				echo'<TR>';
				echo'<TD><center>';
				echo $row["name_qual"];
				echo '</center></TD>';
				echo'<TD><center>';
				echo $row["year_com"];
				echo'</center></TD>';
				echo'<TD><center>';?>
					<a href="../../gallery/qualother/<?php echo $aaa; ?>/<?php echo $row['cer']; ?>" target="_blank">View</a>
			<?php	echo'</center></TD>';
				echo'</TR>';
        
			
			
		}
	}
	

		?>
		<br><br><br>
<div class="container">
  <form action="edu_other.php" method="post" enctype="multipart/form-data" onsubmit="return(validate());">
    <div class="row">
	<center>
	<h1>
	</h1>
	</center>
      <div class="col-25">
        <label class="required" for="fname">Name of Qualification</label>
      </div>
      <div class="col-75">
        <input type="text" id="sname" name="name" required>
      </div>
    </div>
	
    <div class="row">
      <div class="col-25">
        <label class="required" for="lname">Year of Complition</label>
      </div>
      <div class="col-75">
        <input type="text" id="syear" name="year" required>
      </div>
    </div>
   
    <div class="row">
      <div class="col-25">
        <label class="required" for="subject">Upload Certificate (only PDF Format)</label>
		<label class="message" id="msg1" > </label>
      </div>
       
	   <div class="col-75">
       <input type="file" id="file" name="file" required>
      </div>
    </div>
	
    <div class="row">
      <input type="submit" value="Submit" name="submit">
    </div>
	
  </form>
</div>
<?php

	

	?>
</html>

<?php


if(isset($_POST["submit"])){
$name=$_POST["name"];
$year =$_POST["year"];
$sid=$_SESSION['sid'];
$deptid=$_SESSION['deptid'];
$aaa=$deptid."_fac_ot_qual";

    
	$file = rand(1000,100000)."-".$_FILES['file']['name'];
    $file_loc = $_FILES['file']['tmp_name'];
	$file_size = $_FILES['file']['size'];
	$file_type = $_FILES['file']['type'];
	$folder="../../gallery/qualother/".$aaa."/";
	// new file size in KB
	//$new_size = $file_size/1024;  
	// new file size in KB
	
	// make file name in lower case
	$new_file_name = strtolower($file);
	// make file name in lower case
	
	$final_file=str_replace(' ','-',$new_file_name);
	

	
	if(move_uploaded_file($file_loc,$folder.$final_file))
	{
		
        $sql = "INSERT into `$aaa` (sid,name_qual,year_com,cer) VALUES ('$sid','$name','$year','$final_file')";
		if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("Other Qualification Inserted Successfully.!");</script>';
					echo '<script type="text/javascript">window.location.href = "edu_other.php";</script>';

		
	}else {
    echo "Error: " . $sql . "<br>" . $con->error;
}
	}
       
}
?>
<script>
	function validate()
{
	
	var valid = true;
	valid = valid && ad();
	 return valid;
	
}
 $('form').submit(validate);
</script>
<script>
function ad(){
var allowedFiles = [".pdf"];
        var fileUpload = document.getElementById("file");
        var lblError = document.getElementById("msg1");
        var regex = new RegExp("([a-zA-Z0-9\s_\\.\-:])+(" + allowedFiles.join('|') + ")$");
        if (!regex.test(fileUpload.value.toLowerCase())) {
            lblError.innerHTML = "Please upload files having extensions: <b>" + allowedFiles.join(', ') + "</b> only.";
            return false;
        }
        lblError.innerHTML = "";
        return true;

}
</script>