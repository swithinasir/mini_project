<html>

<style>
* {
    box-sizing: border-box;
}

input[type=text],input[type=date], select, textarea {
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
.message{color:#FF0000;
font-size: small;
font-weight: bold; 
white-space: pre;
}
</style> 
<script>
function compare1()
{
 var startDt = document.getElementById("attfrom").value;
var text1 = document.getElementById("ayear").value;
var a = text1.substr(0, 4);
var text2 = "-06-01";
var a = a.concat("",text2);
var date1 = new Date(a);
var b = text1.substr(5, 4);
var text3 = "-05-31";
var b = b.concat("",text3);
var date2 = new Date(b);
var today = new Date();
var date3 = new Date(startDt);
if((date3 < today)) 
{	
if((date3 < date2)) 
{	
	if((date3 < date1)) 
	{
     document.getElementById('message1').style.display="block";
		document.getElementById('message1').innerHTML="Invalid Date";
			return false;
	}
    else
{
	 document.getElementById('message1').style.display="none";
	return( true );
}
}
else
{
	 document.getElementById('message1').style.display="block";
		document.getElementById('message1').innerHTML="Invalid Date";
		return false;
}
}
else
{
	 document.getElementById('message1').style.display="block";
		document.getElementById('message1').innerHTML="Invalid Date";
		return false;
}
   }
function compare0()
{
 var startDt = document.getElementById("attdate").value;
var text1 = document.getElementById("ayear").value;
var a = text1.substr(0, 4);
var text2 = "-06-01";
var a = a.concat("",text2);
var date1 = new Date(a);
var b = text1.substr(5, 4);
var text3 = "-05-31";
var b = b.concat("",text3);
var date2 = new Date(b);
var today = new Date();
var date3 = new Date(startDt);
if((date3 < today)) 
{	
if((date3 < date2)) 
{	
	if((date3 < date1)) 
	{
     document.getElementById('message0').style.display="block";
		document.getElementById('message0').innerHTML="Invalid Date";
			return false;
	}
    else
{
	 document.getElementById('message0').style.display="none";
	return( true );
}
}
else
{
	 document.getElementById('message0').style.display="block";
		document.getElementById('message0').innerHTML="Invalid Date";
		return false;
}
}
else
{
	 document.getElementById('message0').style.display="block";
		document.getElementById('message0').innerHTML="Invalid Date";
		return false;
}
   }

function compare()
{
    var startDt = document.getElementById("attfrom").value;
    var endDt = document.getElementById("attto").value;
	var text1 = document.getElementById("ayear").value;
var a = text1.substr(0, 4);
var text2 = "-06-01";
var a = a.concat("",text2);
var date1 = new Date(a);
var b = text1.substr(5, 4);
var text3 = "-05-31";
var b = b.concat("",text3);
var date2 = new Date(b);
var today = new Date();
var date3 = new Date(endDt);
if((date3 < today)) 
{	
  if((date3 < date2)) 
  {	
	if((date3 > date1)) 
	{
		if( (new Date(startDt).getTime() < new Date(endDt).getTime()))
		{
			document.getElementById('message').style.display="block";
			document.getElementById('message').innerHTML="Valid Date";
			return( true );
		}
		else
		{
			document.getElementById('message').style.display="block";
			document.getElementById('message').innerHTML="Invalid Date,Your date should be after the from date";
			return false;
		}
	}
    else
    {
		document.getElementById('message').style.display="block";
		document.getElementById('message').innerHTML="Invalid Date,Your date should be after the first academic year";
		return false;
	}
  }
  else
  {
		document.getElementById('message').style.display="block";
		document.getElementById('message').innerHTML="Invalid Date,Your date should be before the second academic year";
		return false;
  }
}
else
{
	 document.getElementById('message').style.display="block";
		document.getElementById('message').innerHTML="Invalid Date,Your date should be before today";
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
 <form class="modal-content animate" action="date.php" method="post">
   

    <div class="container1">
      <label for="uname"><b>No.Of.Days Program Attended</b></label>
      <input type="number" onFocus="this.value=''" placeholder="Enter No.Of.Days" name="days" min="1" required>

        
      <button type="submit" name="continue">Continue</button>
      
    </div>
	
	
	
  </form>
  <?php
  if(isset($_POST["continue"])){
$days =$_POST['days'];
?>
 <form  action="date.php" method="post" id = "form" onsubmit="return(validate());">
  <div class="row">
      <div class="col-25">
        <label for="fname">Name of the Program</label>
      </div>
      <div class="col-75">
        <select name="attcategory" required>
		<option value="0">--</option>
		<option value="sdp">SDP</option>
  <option value="fdp">FDP</option>
  <option value="seminar">Seminar</option>
  <option value="workshop">Workshop</option>
  <option value="training">Training</option>
  <option value="summerorwinter">Summer/Winter School</option>
</select>
      </div>
    </div>
 <div class="row">
      <div class="col-25">
        <label for="fname">Academic Year</label>
      </div>
      <div class="col-25">
       <select name="ayear" id="ayear" required>
		<?php

$end=date("Y");
for($i=1975;$i<=$end;$i++)
{
	$cu=$i+1;
	$j=$i."-".$cu;
	echo"<option value='". $j ."'> ",$j,"</option>";
}
?> 


</select>
      </div>
    </div>
	<input type="hidden" id="attdays" name="attdays" value="<?php echo"".$days; ?>">
	 <?php
	 if($days==1 || $days>1)
	 {
	 if($days>1)
	 {
		 ?>
	 <div class="row">
      <div class="col-25">
        <label for="fname">From</label>
      </div>
     <div class="col-25">
       <input type="date" id="attfrom" name="attfrom" onblur="return(compare1());"  required>
	    <label class="message" id="message1" >
      </div>
	  <div class="col-25">
        <label for="fname">&nbsp; &nbsp;To</label>
      </div>
	  <div class="col-25">
       <input type="date" id="attto" name="attto" onblur="return(compare());" required>
	   <label class="message" id="message" >
      </div>
	</div>
<?php
	}
	else
	{
	?>
	 <div class="row">
      <div class="col-25">
        <label for="fname">Date</label>
      </div>
     <div class="col-25">
       <input type="date" id="attdate" name="attdate" onblur="return(compare0());"  required>
	   <label class="message" id="message0" >
      </div>
	</div>
	 <?php
	 }
	 }
	
	 ?>
	 <div class="row">
      <input type="submit" value="Submit" name="submit">
    </div>
</form>
  <?php
  }
  ?>
</html>
