<?php
session_start();
include("../../conn/config.php");
?>

<style>

.button1 {
	border-radius: 16px;
    background-color: red;
    border: none;
    color: white;
    padding: 15px 50px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
	width: 67%;
    margin: 0 auto;
    cursor: pointer;
}
</style>

<style>
/* Style the buttons */
.btn {
   text-align: center;
	border-radius: 16px;
    background-color: skyblue;
    color: black;
  padding: 10px 10px;
    border: none;
    cursor: pointer;
    width: 100%;
}

/* Style the active class, and buttons on mouse-over */
.btn:hover {
    background-color: #ddd;
    color: black;
}
</style>
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: white;
}

.active {
  background-color: #ddd;
  color: black;
}

.topnav .icon {
  display: none;
}


</style>
<link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/style.min.css" rel="stylesheet">


<body style="background-color:black">
<br>
<br>
<div style="background-color:black">
 <nav class="navbar navbar-inverse navbar-fixed-top">
<div class="topnav" id="myTopnav">
<a href="../index1.php" target= "_parent"  ><img title="HOME" src="../../images/home.png" height="25px" width="35px"></a> 
  <a href="dept_add.php" target= "frame1" ><img title="ADD DEPARTMENT" src="../../images/Add.png" height="25px" width="35px"></a> 
 
 </div>     

</nav>
<br>
	<br>
<div id="myDIV">	

<?php
//onclick=change2('faculty/education/edu_nav.php')

$sql="SELECT * FROM dept";
$result=mysqli_query($con,$sql);
if ($result->num_rows > 0) {
    // output data of each row
	//echo '<div class="topnav" id="myTopnav">';
  
   
    while($row = $result->fetch_assoc()) {
		$id1=$row['id'];
		?>
		
<a href="dept_update.php?id=<?=$id1;?>" target= "frame1" ><button class="btn"><?php echo $row['dept']; ?></button> </a>


<!--
<a href="staff_login.php?stid=<?=$row['id'];?>" class ="btn" target="frame1"><button class="btn"><?php echo $row['deptid']; ?></a>
--><br><br>
    <?php   
    }
	//echo '</div>'; 
}
?>

</div>
<script>
// Add active class to the current button (highlight it)
var header = document.getElementById("myDIV");
var btns = header.getElementsByClassName("btn");
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function() {
    var current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
    this.className += " active";
  });
}
</script>


</div>
</body>
