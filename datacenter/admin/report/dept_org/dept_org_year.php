<?php
session_start();
include("../../../conn/config.php");
?>

<html>
<head>
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
<meta charset="utf-8">

<script>
function compare1()
{
 var startDt = document.getElementById("from").value;
var a = startDt;
var text2 = "-06-01";
var a = a.concat("",text2);
var date1 = new Date(a);
var today = new Date();
if((date1 < today)) 
{	
	 document.getElementById('message1').style.display="none";
	return( true );
}
else
{
	 document.getElementById('message1').style.display="block";
		document.getElementById('message1').innerHTML="Invalid Year";
		return false;
}
   }
function compare()
{
    var startDt = document.getElementById("from").value;
    var endDt = document.getElementById("to").value;
var a = startDt;
var text2 = "-06-01";
var a = a.concat("",text2);
var startDt = new Date(a);
var b = endDt ;
var text3 = "-05-31";
var b = b.concat("",text3);
var endDt = new Date(b);
		if( startDt < endDt)
		{
			document.getElementById('message').style.display="none";
	return( true );
		}
		else
		{
			document.getElementById('message').style.display="block";
			document.getElementById('message').innerHTML="Invalid Year";
			return false;
		}
}
function validate()
{
	var valid = true;
	valid = valid && compare1();
	valid = valid && compare();
	 return valid;
}
 $('form').submit(validate);
</script>
<script language="Javascript">
function hideAB()
{  
    document.getElementById("A").style.display="none"; 
	document.getElementById("B").style.display="none"; 
 document.getElementById("AB").style.display="none"; 	
}
function hideA()
{  
document.getElementById("AB").style.display="block"; 
    document.getElementById("A").style.display="block"; 
	document.getElementById("B").style.display="none"; 	
}

function hideB()
{
	document.getElementById("AB").style.display="block"; 
	document.getElementById("A").style.display="none"; 
    document.getElementById("B").style.display="block";
}

function year()
{   
	document.getElementById("year").style.display="block"; 
 document.getElementById("event").style.display="none"; 	
}

function event()
{
	document.getElementById("year").style.display="none"; 
 document.getElementById("event").style.display="block"; 
}
</script>
<link rel="stylesheet"  href="../style/style.css" />
<script type= "text/javascript" src = "style/report.js"></script>
</head>

<body>
   <nav class="navbar navbar-inverse navbar-fixed-top">

<ul>
 
  <li><a href="dept_org_aca.php" target= "frame1">Academic Year</a></li>
   <li><a class="active"  href="#" target= "frame1">Year</a></li>   
   <li><a href="dept_org_event.php" target= "frame1">Event</a></li>    
</ul>
</nav>
<br>
  <form class="modal-content animate" action="dept_org1.php" method="post">

    <div class="container">
	
	
      <label for="uname"><b>From</b></label>
      <input type="text" id="from" onFocus="this.value=''" placeholder="From Year(YYYY)" name="from" onblur="return(compare1());" required> 
	  <label class="message" id="message1" > </label>
      <label for="uname"><b>To</b></label>
      <input type="text" id="to" onFocus="this.value=''" placeholder="To Year(YYYY)" name="to" onblur="return(compare());" required>
	  <label class="message" id="message" ></label>
	
	<INPUT type="hidden" name="type" value="year" />
     
	<input type="radio" name="cat" value="all" onClick="hideAB()"> All <br>
	<input type="radio" name="cat" value="dept"  onClick="hideA()"> Department <br>
	<div style="display:none" id="AB">
	<div style="display:none" id="A">
 
	   <select name='dept'>
      <?php
$sql="SELECT * FROM dept";
$result=mysqli_query($con,$sql);
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
		echo '<option value="'.$row['deptid'].'">'.$row['dept'].'</option>';
    }	
}
?>
</select>
</div>
</div>
<br>
 <label for="uname"><b>Type of Event</b></label>
<select name='qual'>
		<option value="fdp">FDP</option>
		<option value="seminar">Seminar</option>
		<option value="workshop">Workshop</option>
		<option value="others">Others</option>
		<option value="all">ALL</option>
</select>
	  <button type="submit" name="faculty_report">Generate Report</button>
      
    </div>
	
  </form>

</body>

	
</html>