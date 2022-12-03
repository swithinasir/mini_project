<?php
session_start();
include("../../conn/config.php");
$sid=$_SESSION['sid'];
$deptid=$_SESSION['deptid'];
$aaa=$deptid."_fac_edu";
$sql1="SELECT * FROM `$aaa` WHERE sid = '$sid'";
	$result = $con->query($sql1);
	if ($result->num_rows > 0) {
	while($row = $result->fetch_assoc()) {
		
	if ($row["skey"] == 1) {
?>
<html>


<style>
.required:after { content:" *";color: #e32; }

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
	text-color: white;
}
</style>

<nav class="navbar navbar-inverse navbar-fixed-top">
<ul>
	<li><a href="ten_fac.php" target= "frame1" >10<sup>th</sup></a></li> 
	<li><a class="active"  href="twelve_fac.php" target= "frame1">12<sup>th</sup>or Diploma</a></li>		
	<li><a href="ug_fac.php" target= "frame1">UG</a></li> 
	<li><a href="pg_fac.php" target= "frame1">PG</a></li>	
	<li><a href="mphil_fac.php" target= "frame1">M.Phil</a></li> 
	<li><a href="phd_fac.php" target= "frame1">Ph.D</a></li>  
	<li><a href="edu_other.php" target= "frame1">Others</a></li>  
</ul>
</nav>
<br>
   <br><br> 
   
    <div class="row">
	<div class="col-25"></div>
   
   <div class="col-25"><ul style="background-color: white;"><li style=" padding: 0px 100px;"><a href="#" class="active" >12<sup>th</sup></a></li></ul></div>
    <div class="col-25"><ul style="background-color: white;"><li style="background-color: skyblue;"><a href="dip_fac.php" >Diploma</a></li></ul></div>
	
	<div class="col-25"></div>
	
	</div>

<br>

<?php
$sid=$_SESSION['sid'];
$deptid=$_SESSION['deptid'];
$aaa=$deptid."_fac_edu";
$sql1="SELECT * FROM `$aaa` WHERE sid = '$sid'";
	$result = $con->query($sql1);
	if ($result->num_rows > 0) {
	while($row = $result->fetch_assoc()) {
		
	if ($row["s2key"] == 1) {
		?>
		   <div class="container">
    <div class="row">
	<center>
	<h1>
	<label for="fname">12<sup>th</sup></label></h1>
	</center>
      <div class="col-25">
        <label for="fname">Name of the School</label>
      </div>
      <div class="col-75">
        <label for="fname"><?php echo $row["s2name"];?></label>
      </div>
    </div>
	<div class="row">
      <div class="col-25">
        <label for="fname">Board of Exam</label>
      </div>
      <div class="col-75">
	  
	        <label for="fname"><?php echo $row["s2board"];?></label>
</div>
	</div>
	 <div class="row">
      <div class="col-25">
        <label for="lname">Branch</label>
      </div>
      <div class="col-75">
        <label for="fname"><?php echo $row["s2branch"];?></label>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Year of passing</label>
      </div>
      <div class="col-75">
        <label for="fname"><?php echo $row["s2year"];?></label>
      </div>
    </div>
   <div class="row">
      <div class="col-25">
        <label for="lname">Percentage/CGPA</label>
      </div>
      <div class="col-75">
        <label for="fname"><?php echo $row["s2percentage"];?></label>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="subject">Upload Certificate</label>
      </div>
       
	   <div class="col-75">
       <a href="../../gallery/12thcer/<?php echo $aaa; ?>/<?php echo $row['s2certificate']; ?>" target="_blank">View</a>
      </div>
    </div>

</div>
		
		<?php
	}
	else
	{
	
		?>
			
    <div class="container">
  <form action="twelve_fac.php"  method="post" enctype="multipart/form-data" onsubmit="return(fileValidation());">
  
    <div class="row">
	<center>
	<h1>
	<label for="fname">12<sup>th</sup></label></h1>
	</center>
      <div class="col-25">
        <label class="required" for="fname">Name of the Institute</label>
      </div>
      <div class="col-75">
        <input type="text" id="s2name" name="s2name" required>
      </div>
    </div>
	<div class="row">
      <div class="col-25">
        <label class="required" for="fname">Board of Exam</label>
      </div>
      <div class="col-75">
	  
	<input type="radio" name="s2board" value="state"> State<br>
  <input type="radio" name="s2board" value="cbse"> CBSE<br>
  <input type="radio" name="s2board" value="icbsc"> ICBSC
	</div>
	 <div class="row">
      <div class="col-25">
        <label class="required" for="lname">Branch</label>
      </div>
      <div class="col-75">
        <input type="text" id="s2branch" name="s2branch" required>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label class="required" for="lname">Year of passing</label>
      </div>
      <div class="col-75">
        <input type="text" id="s2year" name="s2year" required>
      </div>
    </div>
   <div class="row">
      <div class="col-25">
        <label class="required" for="lname">Percentage/CGPA</label>
      </div>
      <div class="col-75">
        <input type="text" id="s2percentage" name="s2percentage" required>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label class="required" for="subject">Upload Certificate(only PDF Format and file size below 2MB)</label>
		 <span id="msg1" style="color: red;"></span>
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
 <script>
  function fileValidation()
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
            lblError.innerHTML = "Please upload files having extensions: <b>" + allowedFiles.join(', ') + "</b> only. File size should be below 2MB";
            return false;
        }
        lblError.innerHTML = "";
        return true;

}
</script>
<?php
}
	}
	}
	
	?>

</html>

<?php


if(isset($_POST["submit"])){
$s2name=$_POST["s2name"];
$s2board=$_POST["s2board"];
$s2branch =$_POST["s2branch"];
$s2year =$_POST["s2year"];
$s2percentage =$_POST["s2percentage"];
$sid=$_SESSION['sid'];
$deptid=$_SESSION['deptid'];
$aaa=$deptid."_fac_edu";

	$file = rand(1000,100000)."-".$_FILES['file']['name'];
    $file_loc = $_FILES['file']['tmp_name'];
	$file_size = $_FILES['file']['size'];
	$file_type = $_FILES['file']['type'];
	$folder="../../gallery/12thcer/".$aaa."/";
	
	// new file size in KB
	//$new_size = $file_size/1024;  
	// new file size in KB
	
	// make file name in lower case
	$new_file_name = strtolower($file);
	// make file name in lower case
	
	$final_file=str_replace(' ','-',$new_file_name);
	

	
	if(move_uploaded_file($file_loc,$folder.$final_file))
	{
		 $sql = "UPDATE `$aaa` SET `s2name`='$s2name',`s2board`='$s2board',`s2branch`='$s2branch',`s2year`='$s2year',`s2percentage`='$s2percentage',`s2certificate`='$final_file',`s2key`=1 WHERE sid= '$sid'";
      		if(mysqli_query($con,$sql))
	{
	echo '<script language="javascript">alert("+2 Data Inserted Successfully.!");</script>';
					echo '<script type="text/javascript">window.location.href = "ug_fac.php";</script>';

	}else {
    echo "Error: " . $sql . "<br>" . $con->error;
}
	}
       
}
}
	else{
		echo '<script language="javascript">alert("Check Whether You Have Entered Your Previous Education Details");</script>';
					echo '<script type="text/javascript">window.location.href = "ten_fac.php";</script>';
	}
	}}
	else{
		echo '<script language="javascript">alert("Check Whether You Have Entered Your Previous Education Details");</script>';
					echo '<script type="text/javascript">window.location.href = "ten_fac.php";</script>';
	}
?>
