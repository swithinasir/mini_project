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
   
   <div class="col-25"><ul style="background-color:white;"><li style=" background-color: skyblue;"><a href="twelve_fac.php"  >12<sup>th</sup></a></li></ul></div>
    <div class="col-25"><ul style="background-color: white;"><li style=""><a href="#" class="active" >Diploma</a></li></ul></div>
	
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
		
	if ($row["dkey"] == 1 && !isset($_POST["add"])) {
		?>
	
			<div class="container">
  <center>
	<h1>
	<label for="fname">Diploma</label>
	</h1>
	</center>
     <div class="row">
      <div class="col-25">
        <label  for="lname">Name of the Institute</label>
      </div>
      <div class="col-25">
        <label for="fname"><?php echo $row["dname"];?></label>
      </div>
	<?php  if ($row["d1key"] == 1) { ?>
	  <div class="col-25">
        <label  for="fname"><?php echo $row["d1name"];?></label>
      </div>
	<?php } if ($row["d2key"] == 1) { ?>
	   <div class="col-25">
        <label  for="fname"><?php echo $row["d2name"];?></label>
      </div>
	  <?php }  ?>
    </div>
	<div class="row">
      <div class="col-25">
        <label for="fname">Board of University</label>
      </div>
      <div class="col-25">
        <label for="fname"><?php echo $row["dboard"];?></label>
      </div>
	  <?php  if ($row["d1key"] == 1) { ?>
	  <div class="col-25">
        <label for="fname"><?php echo $row["d1board"];?></label>
      </div>
	  <?php } if ($row["d2key"] == 1) { ?>
	  <div class="col-25">
        <label for="fname"><?php echo $row["d2board"];?></label>
      </div>
	   <?php }  ?>
    </div>
	<div class="row">
      <div class="col-25">
        <label for="fname">Name of the Degree</label>
      </div>
      <div class="col-25">
        <label for="fname"><?php echo $row["ddegree"];?></label>
      </div>
	   <?php  if ($row["d1key"] == 1) { ?>
	    <div class="col-25">
        <label for="fname"><?php echo $row["d1degree"];?></label>
      </div>
	   <?php } if ($row["d2key"] == 1) { ?>
	   <div class="col-25">
        <label for="fname"><?php echo $row["d2degree"];?></label>
      </div>
	  <?php }  ?>
    </div>
	<div class="row">
      <div class="col-25">
        <label for="fname">Mode of Study</label>
      </div>
      <div class="col-25">
        <label for="fname"><?php echo $row["dmode"];?></label>
      </div>
	   <?php  if ($row["d1key"] == 1) { ?>
	  <div class="col-25">
        <label for="fname"><?php echo $row["d1mode"];?></label>
      </div>
	   <?php } if ($row["d2key"] == 1) { ?>
	  <div class="col-25">
        <label for="fname"><?php echo $row["d2mode"];?></label>
      </div>
	   <?php }  ?>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Year of passing</label>
      </div>
      <div class="col-25">
        <label for="fname"><?php echo $row["dyear"];?></label>
      </div>
	   <?php  if ($row["d1key"] == 1) { ?>
	   <div class="col-25">
        <label for="fname"><?php echo $row["d1year"];?></label>
      </div>
	   <?php } if ($row["d2key"] == 1) { ?>
	    <div class="col-25">
        <label for="fname"><?php echo $row["d2year"];?></label>
      </div>
	    <?php }  ?>
    </div>
   <div class="row">
      <div class="col-25">
        <label for="lname">Percentage</label>
      </div>
      <div class="col-25">
        <label for="fname"><?php echo $row["dpercentage"];?></label>
      </div>
	  <?php  if ($row["d1key"] == 1) { ?>
	    <div class="col-25">
        <label for="fname"><?php echo $row["d1percentage"];?></label>
      </div>
	  <?php } if ($row["d2key"] == 1) { ?>
	  <div class="col-25">
        <label for="fname"><?php echo $row["d2percentage"];?></label>
      </div>
	    <?php }  ?>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="subject">Upload Certificate</label>
      </div>
       
	   <div class="col-25">
       <a href="../../gallery/dipcer/<?php echo $aaa; ?>/<?php echo $row['dcertificate']; ?>" target="_blank">View</a>
      </div>
	    <?php  if ($row["d1key"] == 1) { ?>
	   <div class="col-25">
       <a href="../../gallery/dipcer/<?php echo $aaa; ?>/<?php echo $row['d1certificate']; ?>" target="_blank">View</a>
      </div>
		<?php } if ($row["d2key"] == 1) { ?>
	   <div class="col-25">
       <a href="../../gallery/dipcer/<?php echo $aaa; ?>/<?php echo $row['d2certificate']; ?>" target="_blank">View</a>
      </div>
	  <?php }  ?>
    </div>

</div>
	<?php
	
	
		if ($row["dkey"] == 1 &&( $row["d1key"] != 1 || $row["d2key"] != 1))
		{
		?>
			 <form action="dip_fac.php"  method="post" >
			<div class="row">			
				<input type="submit" value="Add More" name="add">
			</div>
			</form>
		<?php
		}
	}
		if ($row["dkey"] != 1 || isset($_POST["add"]))
	{
		?>	
	<div class="container">
  <form action="dip_fac.php"  method="post" enctype="multipart/form-data"  onsubmit="return(fileValidation());">
  <center>
	<h1>
	<label  for="fname">Diploma</label>
	</h1>
	</center>
     <div class="row">
      <div class="col-25">
        <label class="required"  for="lname">Name of the Institute</label>
      </div>
      <div class="col-75">
        <input type="text" id="dname" name="dname" required>
      </div>
    </div>
	<div class="row">
      <div class="col-25">
        <label class="required" for="fname">Board of University</label>
      </div>
      <div class="col-75">
        <input type="text" id="dboard" name="dboard" required>
      </div>
    </div>
	<div class="row">
      <div class="col-25">
        <label class="required" for="fname">Name of the Degree</label>
      </div>
      <div class="col-75">
        <input type="text" id="ddegree" name="ddegree" required>
      </div>
    </div>
	<div class="row">
      <div class="col-25">
        <label class="required" for="fname">Mode of Study</label>
      </div>
      <div class="col-75">
        <input type="radio" name="dmode" value="regular"> Regular &nbsp;&nbsp;
  <input type="radio" name="dmode" value="parttime"> Part Time &nbsp;&nbsp;
  <input type="radio" name="dmode" value="distance"> Distance &nbsp;&nbsp;
  <input type="radio" name="dmode" value="weekend"> Week End
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label class="required"for="lname">Year of passing</label>
      </div>
      <div class="col-75">
        <input type="text" id="dyear" name="dyear" required>
      </div>
    </div>
   <div class="row">
      <div class="col-25">
        <label class="required" for="lname">Percentage</label>
      </div>
      <div class="col-75">
        <input type="text" id="dpercentage" name="dpercentage" required>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label class="required" for="subject">Upload Certificate (only PDF Format)</label>
		 <span id="msg1" style="color: red;"></span>
      </div>
       
	   <div class="col-75">
       <input type="file" id="file" name="file" required>
      </div>
    </div>
	
    <div class="row">
      <input type="submit" value="Submit" name="submit1">
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
            lblError.innerHTML = "Please upload files having extensions: <b>" + allowedFiles.join(', ') + "</b> only.";
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


if(isset($_POST["submit1"])){
$dname=$_POST["dname"];
$dboard=$_POST["dboard"];
$ddegree =$_POST["ddegree"];
$dmode =$_POST["dmode"];
$dyear =$_POST["dyear"];
$dpercentage =$_POST["dpercentage"];
$sid=$_SESSION['sid'];
$deptid=$_SESSION['deptid'];
$aaa=$deptid."_fac_edu";

	$file = rand(1000,100000)."-".$_FILES['file']['name'];
    $file_loc = $_FILES['file']['tmp_name'];
	$file_size = $_FILES['file']['size'];
	$file_type = $_FILES['file']['type'];
	$folder="../../gallery/dipcer/".$aaa."/";
	
	// new file size in KB
	$new_size = $file_size/1024;  
	// new file size in KB
	
	// make file name in lower case
	$new_file_name = strtolower($file);
	// make file name in lower case
	
	$final_file=str_replace(' ','-',$new_file_name);
	

	
	if(move_uploaded_file($file_loc,$folder.$final_file))
	{
	
	$sql1="SELECT * FROM `$aaa`";
	$result = $con->query($sql1);
	if ($result->num_rows > 0) {
	while($row = $result->fetch_assoc()) {
		$id=$row["sid"];
	if ($id == $sid) {
	if ($row["dkey"] == 1) {
		if ($row["d1key"] == 1) {
		 $sql = "UPDATE `$aaa` SET `d2name`='$dname',`d2board`='$dboard',`d2degree`='$ddegree',`d2mode`='$dmode',`d2year`='$dyear',`d2percentage`='$dpercentage',`d2certificate`='$final_file',`d2key`=1 WHERE sid= '$sid'";
		}
		else
		{
		 $sql = "UPDATE `$aaa` SET `d1name`='$dname',`d1board`='$dboard',`d1degree`='$ddegree',`d1mode`='$dmode',`d1year`='$dyear',`d1percentage`='$dpercentage',`d1certificate`='$final_file',`d1key`=1 WHERE sid= '$sid'";
		}
	}
	else
	{
	 $sql = "UPDATE `$aaa` SET `dname`='$dname',`dboard`='$dboard',`ddegree`='$ddegree',`dmode`='$dmode',`dyear`='$dyear',`dpercentage`='$dpercentage',`dcertificate`='$final_file',`dkey`=1 WHERE sid= '$sid'";
	}
	if(mysqli_query($con,$sql))
	{
					echo '<script language="javascript">alert("Diploma Data Inserted Successfully.!");</script>';
					echo '<script type="text/javascript">window.location.href = "ug_fac.php";</script>';
	}else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
	}
       
}
}
	}}
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