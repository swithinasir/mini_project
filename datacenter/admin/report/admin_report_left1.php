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
<a href="admin_report_left.php" target= "frame2" ><button class="btn" style="background-color:Skyblue">Back</button></a> 
  <a href="../logout.php" target= "_parent" ><button class="btn" style="background-color:red">Logout</button></a> 
  
</div>     

</nav>
<br>
	<br>
<div id="myDIV">	
<a href="faculty_info/faculty_info.php" target= "frame1" ><button class="btn active">Faculty Information</button><br><br></a>
<a href="faculty_qualification/faculty_qualification.php" target= "frame1" ><button class="btn">Qualification</button><br><br></a> 
<a href="faculty_exp/faculty_exp.php" target= "frame1" ><button class="btn">Experience</button><br><br></a> 
<a href="faculty_research/faculty_research.php" target= "frame1" ><button class="btn">Research Projects</button><br><br></a> 
<a href="faculty_journal/faculty_journal.php" target= "frame1" ><button class="btn">Journal Publication</button><br><br></a> 
<a href="faculty_book/faculty_book.php" target= "frame1" ><button class="btn">Book Publication</button><br><br></a> 
<a href="faculty_conf/faculty_conf.php" target= "frame1" ><button class="btn">Conference Presented</button><br><br></a> 
<!--<a href="faculty_spon_prgm/faculty_spon_prgm.php" target= "frame1" ><button class="btn">Sponsered Program</button><br><br></a> -->
<a href="faculty_atten/faculty_atten.php" target= "frame1" ><button class="btn">FDP /Workshop /Seminar Attended</button><br><br></a> 
<a href="faculty_guest_lecture/faculty_guest_lecture.php" target= "frame1" ><button class="btn">Guest Lecture</button><br><br></a> 
<a href="faculty_award/faculty_award.php" target= "frame1" ><button class="btn">Awards</button><br><br></a> 
<a href="faculty_pattent/faculty_pattent.php" target= "frame1" ><button class="btn">Patent</button><br><br></a> 
<a href="faculty_rese_guide/faculty_rese_guide.php" target= "frame1" ><button class="btn">Research Guiedence</button><br><br></a> 
<a href="faculty_resp/faculty_resp.php" target= "frame1" ><button class="btn">Responsibility</button><br><br></a>  
<a href="faculty_member/faculty_member.php" target= "frame1" ><button class="btn">Membership</button><br><br></a> 
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
