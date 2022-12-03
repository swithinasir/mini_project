<?php
session_start();
include("../../../conn/config1.php");
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
    .col-25, .col-75, input[type=submit], input[type=button] {
        width: 100%;
        margin-top: 0;
    }
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
   
  <form class="modal-content animate" action="soci1.php" method="post">

    <div class="container">
	<label for="fname">Academic Year</label>
	  <select name="ayear" required>
	  <option value="all">ALL</option>
		<?php
$end=date("Y");
if(date("m")<6)
{
	$end=$end-1;
}
for($i=1987;$i<=$end;$i++)
{
	$cu=$i+1;
	$j=$i."-".$cu;
	echo"<option value='". $j ."'> ",$j,"</option>";
}
?> 
</select>
	  <label for="fname">Professional Society</label>
	  <?php
			$sql="SELECT name_sci FROM prof_soci";
			$result = $con->query($sql);
			?>
			<select name="soci"> 
			<?php
			if ($result->num_rows > 0) 
			{		
				while($row = $result->fetch_assoc()) 
				{
				echo '<option value="'.$row['name_sci'].'">'.$row['name_sci'].'</option>';
				} 
			}?>
				
				<option value="all">ALL</option>
			</select>
	
      
    </div>
	 <button type="submit" name="faculty_report">Generate Report</button>
  </form>

</body>

	
</html>