<?php
session_start();
include("../../../conn/config.php");
?>

<html>
<head>

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
function hide12()
{  
    document.getElementById("A").style.display="none"; 
	document.getElementById("B").style.display="none"; 
 document.getElementById("AB").style.display="none"; 	
}
function hide1()
{  
document.getElementById("AB").style.display="block"; 
    document.getElementById("A").style.display="block"; 
	document.getElementById("B").style.display="none"; 	
}

function hide2()
{
	document.getElementById("AB").style.display="block"; 
	document.getElementById("A").style.display="none"; 
    document.getElementById("B").style.display="block";
}
function hideyear()
{  
    document.getElementById("aca").style.display="block"; 
	document.getElementById("year").style.display="none"; 	
}

function hideaca()
{
	document.getElementById("aca").style.display="none"; 
    document.getElementById("year").style.display="block";
}
</script>
<link rel="stylesheet"  href="../style/style.css" />
<script type= "text/javascript" src = "style/report.js"></script>
</head>

<body>
   
	<label for="uname"><b>Regarding</b></label>
	<input type="radio" name="type" value="year"  onClick="hideaca()"> No.Of Year 
	<input type="radio" name="type" value="academic"  onClick="hideyear()"> Academic Year <br>
  
  
    <div class="modal-content animate" class="container" style="display:none" id="aca" >
	  <form action="faculty_exp1.php" method="post" id = "form" onsubmit="return(validate());">
	  <div class="container">
	<input type="hidden" value="academic" name="type">
      <label for="uname"><b>From</b></label>
      <input type="text" id="from" onFocus="this.value=''" placeholder="From Year" name="from" onblur="return(compare1());" required> 
	  <label class="message" id="message1" > </label>
      <label for="uname"><b>To</b></label>
      <input type="text" id="to" onFocus="this.value=''" placeholder="To Year" name="to" onblur="return(compare());" required>
	  <label class="message" id="message" ></label>
	
	<input type="radio" name="cat" value="all" onClick="hide12()"> All <br>
	<input type="radio" name="cat" value="dept"  onClick="hide1()"> Department <br>
	<input type="radio" name="cat" value="in"  onClick="hide2()"> Indvidual <br><br>
	<div style="display:none" id="12">
	<div style="display:none" id="1">
 
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
<div style="display:none" id="2">

      <input type="text" id="to" onFocus="this.value=''" placeholder="Staff ID" name="sid">
</div>
</div>
	  <button type="submit" name="faculty_report">Generate Report</button>
	  </div>
      </form>
    </div>
	
	
	<div class="container" style="display:none" id="year" >
	 <form class="modal-content animate" action="faculty_exp1.php" method="post" id = "form" >	 
	 <div class="container">
	<input type="hidden" value="year" name="type">
      <label for="uname"><b>Year of Experience  > </b></label>
      <select name='year'>
	  <?php
	  for($count=1;$count<=25;$count++)
	  {
		  echo '<option value="'.$count.'">'.$count.'</option>';
	  }
	  ?>
	   </select>
	<input type="radio" name="cat" value="all" onClick="hideAB()"> All <br>
	<input type="radio" name="cat" value="dept"  onClick="hideA()"> Department <br>
	<input type="radio" name="cat" value="in"  onClick="hideB()"> Indvidual <br><br>
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
<div style="display:none" id="B">

      <input type="text" id="to" onFocus="this.value=''" placeholder="Staff ID" name="sid">
</div>
</div>
	  <button type="submit" name="faculty_report">Generate Report</button>
	  </div>
      </form>
    </div>
	
 

</body>

	
</html>