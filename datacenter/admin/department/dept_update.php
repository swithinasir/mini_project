<?php
session_start();
include("../../conn/config.php");
$id =$_GET['id'];
?>
<html>


<style>
* {
    box-sizing: border-box;
}

input[type=text],[type=password], select, textarea {
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
<style>
.callout {
  position: fixed;
  bottom: 35px;
  right: 20px;
  margin-left: 20px;
  max-width: 300px;
}

.callout-header {
  padding: 25px 15px;
  background: #555;
  font-size: 30px;
  color: white;
}

.callout-container {
  padding: 15px;
  background-color: #ccc;
  color: black
}

.closebtn {
  position: absolute;
  top: 5px;
  right: 15px;
  color: red;
  font-size: 30px;
  cursor: pointer;
}

.closebtn:hover {
  color: white;
}
</style>
<?php
$sql="SELECT * FROM dept WHERE id='" . $id. "'";
$result=mysqli_query($con,$sql);
    while($row = $result->fetch_assoc()) {
		?>
<div class="container">
  <form action="dept2.php" method="post" enctype="multipart/form-data">
   
	 <div class="row">
      <div class="col-25">
        <label for="fname">Depatment</label>
      </div>  
	<div class="col-75">
        <input type="text" value="<?php echo $row["dept"]; ?>" readonly>
      </div>
    </div>	  
    
	
	 <div class="row">
      <div class="col-25">
        <label for="fname">Department ID</label>
      </div>
      <div class="col-25">
	  
	 <input type="text" id="deptid" name="deptid"  value="<?php echo $row["deptid"]; ?>" readonly>
 
	</div>
	
	</div>
	   <div class="row">
      <div class="col-25">
        <label for="fname">Email ID</label>
      </div>
      <div class="col-25">	  
	 <input type="text" id="email" name="email" value="<?php echo $row["email"]; ?>"> 
	</div>
	</div>
	  
	  
	   <div class="row">
      <div class="col-25">
        <label for="fname">About the Department</label>
      </div>
      <div class="col-75">	  
	  <textarea rows="4" cols="25" name="about" id="about">	  
	<?php echo $row["about"]; ?>
	</textarea>
	</div>
	</div>
	
    <div class="row">
      <div class="col-25">
        <label for="fname">Department Image</label>
      </div>
      <div class="col-25">	  
	         <a href="../../gallery/dept/<?php echo $row['image']; ?>" target="_blank">View</a>
	  </div>
	 
	</div>
	
	 <div class="row">
      <br>
    </div>
	
    <div class="row">
      <input type="submit" value="update">
    </div>
  </form>
</div>
<?php

$deptid=$row["deptid"];
$fac=0;
$relive=0;
$exist=0;
$aaa=$deptid."_fac";
$sql1="SELECT * FROM `$aaa`";
$result1=mysqli_query($con,$sql1);
$fac=$result1->num_rows;
if ($result1->num_rows > 0) {
	 while($row1 = $result1->fetch_assoc()) {
		 if($row1['status']=="relive")
		{
			$relive=$relive+1;
		}
	 }
}
$exist=$fac-$relive;
?>
<div class="callout">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">x</span>
  <div class="callout-container">
  <?php
echo"<br><b>No. of Faculities Registered  : </b>".$fac."<br>";
echo"<b>No. of Existing Faculities    : </b>".$exist."<br>";
echo"<b>No. of Faculities Relivied    : </b>".$relive."<br>";
?>
 </div>
</div>
<?php
	}

?>
</html>