<?php
session_start();
include("../../conn/config.php");
?>
<style>
/* Style the buttons */
.dropbtn {
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
.dropbtn:hover {
    background-color: #ddd;
    color: black;
}
</style>
<style>


.dropdown-content {
  display: none;
  position: absolute; 
  border-radius: 16px;
  background-color: grey;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: white;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #ddd; color: black;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #ddd;
    color: black; 
  border-radius: 16px;}
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
<a href="../index1.php" target= "_parent" ><button class="btn" style="background-color:Skyblue">Back</button></a> 
  <a href="../logout.php" target= "_parent" ><button class="btn" style="background-color:red">Logout</button></a> 
  
</div>     

</nav>
<br>
	<br>
<div id="myDIV">	
<a href="ins_info/ins_info.php" target="frame1"><button class="dropbtn">INSTITUTE INFO</button><br><br></a>
<div class="dropdown">
	<button class="dropbtn">DEPARTMENT INFO</button>
<div class="dropdown-content">
      <a href="dept_org/dept_org_aca.php" target="frame1">Event</a>
      <a href="dept_faci/dept_faci_aca.php" target="frame1">Facilities</a>
      <a href="dept_bos/dept_bos.php" target="frame1">BOS</a>
    </div>
</div><br>
<a href="admin_report_left1.php"><button class="dropbtn">FACULTY INFO</button><br><br></a> 
<div class="dropdown">
	<button class="dropbtn">STUDENT INFO</button>
<div class="dropdown-content">
      <a href="stud_info/stud_batch.php" target="frame1">Batch</a>
      <a href="stud_info/stud_gender.php" target="frame1">Gender</a>
      <a href="stud_info/stud_comm.php" target="frame1">Community</a>
    </div>
</div><br>
<a href="dinamic_report/dinamic.php"  target="frame1" ><button class="dropbtn">DYNAMIC REPORT</button><br><br></a> 
<div class="dropdown">
	<button class="dropbtn">PROFESSIONAL SOCIETY</button>
<div class="dropdown-content">
      <a href="soci_report/soci.php" target="frame1">Event</a>
      <a href="soci_report/soci_name.php" target="frame1">About Society</a>
    </div>
</div><br>
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
