<?php
session_start();
include("../conn/config.php");
?>
<html>
<style>
* {
  box-sizing: border-box;
}

/* Create two equal columns that floats next to each other */
.column {
  float: left;
  width: 50%;
  padding: 10px;
  height: 100%; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
</style>
<body style="background-color: #66c2ff">
<div class="row">
  <div class="column" style="background-color:#66c2ff;">
    <h2>About The Department of <?php echo $_SESSION['deptid'];?> </h2>
	<?php
//onclick=change2('faculty/education/edu_nav.php')
$deptid=$_SESSION['deptid'];
$sql="SELECT * FROM dept WHERE deptid='$deptid'" ;
$result=mysqli_query($con,$sql);
if ($result->num_rows > 0) {
   $row = $result->fetch_assoc()
		?>
    <p><?php echo $row['about']; ?></p>
<?php
	}
	?>
  </div>
  <div class="column" style="background-color:#66c2ff;">
   <img src="../gallery/dept/<?php echo $row['image']; ?>">
  </div>
</div>
</body>
</html>