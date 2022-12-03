<?php
session_start();
include("../conn/config1.php");
?>
<style>
.file-upload__label {
  display: block;
  padding: 1em 2em;
  color: #fff;
  background: #222;
  border-radius: .4em;
  transition: background .3s;
  text-align:center

}
    
.file-upload__label:hover {
     cursor: pointer;
     background: #000;
  }  
.file-upload__input {
    position: absolute;
    left: 0;
    top: 0;
    right: 0;
    bottom: 0;
    font-size: 1;
    width:0;
    height: 100%;
    opacity: 0;
}
body {
	background: #FFF;
	color: #000;
	font: normal normal 12px Verdana, Geneva, Arial, Helvetica, sans-serif;
	margin: 10px;
	padding: 0
}

table, td, a {
	color: #000;
	font: normal normal 12px Verdana, Geneva, Arial, Helvetica, sans-serif
}

h1 {
	font: normal normal 18px Verdana, Geneva, Arial, Helvetica, sans-serif;
	margin: 0 0 5px 0
}

h2 {
	font: normal normal 16px Verdana, Geneva, Arial, Helvetica, sans-serif;
	margin: 0 0 5px 0
}

h3 {
	font: normal normal 13px Verdana, Geneva, Arial, Helvetica, sans-serif;
	color: #008000;
	margin: 0 0 15px 0
}
/* end basic styling                                 */

/* define height and width of scrollable area. Add 16px to width for scrollbar          */
div.tableContainer {
	clear: both;
	border: 1px solid #963;
	height: 285px;
	overflow: auto;
	width: 900px
}

/* Reset overflow value to hidden for all non-IE browsers. */
html>body div.tableContainer {
	overflow: hidden;
	width: 900px
}

/* define width of table. IE browsers only                 */
div.tableContainer table {
	float: left;
	/* width: 740px */
}

/* define width of table. Add 16px to width for scrollbar.           */
/* All other non-IE browsers.                                        */
html>body div.tableContainer table {
	/* width: 756px */
}

/* set table header to a fixed position. WinIE 6.x only                                       */
/* In WinIE 6.x, any element with a position property set to relative and is a child of       */
/* an element that has an overflow property set, the relative value translates into fixed.    */
/* Ex: parent element DIV with a class of tableContainer has an overflow property set to auto */

thead.fixedHeader tr {
	position: relative;
}

/* set THEAD element to have block level attributes. All other non-IE browsers            */
/* this enables overflow to work on TBODY element. All other non-IE, non-Mozilla browsers */

/* make the TH elements pretty */
thead.fixedHeader th {
	background: #C96;;
	border-top: 1px solid #EB8;
	font-weight: normal;
	padding: 4px 3px;
	text-align: center;
	width: 18%
}

html>body tbody.scrollContent {
	display: block;
	height: 262px;
	overflow: auto;
	width: 100%
}

html>body thead.fixedHeader {
	display: table;
	overflow: auto;
	width: 100%
}

/* make TD elements pretty. Provide alternating classes for striping the table */
/* http://www.alistapart.com/articles/zebratables/                             */
tbody.scrollContent td, tbody.scrollContent tr.normalRow td {	
	padding: 4px 3px;
	width: 18%
}



tbody.scrollContent tr.alternateRow td {
	background: #EEE;
	border-bottom: none;
	border-left: none;
	border-right: 1px solid #CCC;
	border-top: 1px solid #DDD;
	padding: 2px 3px 3px 4px
}

</style>
<style>
* {
    box-sizing: border-box;
}

input[type=text],input[type=number], select, textarea {
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
input[type=file] {
   width: 100%;
    padding: 12px;
    border-radius: 4px;
    resize: vertical;
}
input[type=button] {
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
input[type=button]:hover {
    background-color: #45a049;
}

/* Set a style for all buttons */

.button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    width: 100%;
}
button:hover {
    opacity: 0.8;
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
}.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: black;
  font-family: inherit;
  margin: 0;
}
 .dropdown:hover .dropbtn {
  background-color: red;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
.message{color:red;
font-size: small;
font-weight: bold; 
white-space: pre;
}
</style>
 <nav class="navbar navbar-inverse navbar-fixed-top">

<ul>
  <h1 align="center">Student Information</h1>
</ul>
</nav>
<br>
<br>
<?php
if(isset($_POST["continue"]))
{	
 $ayear=$_POST["ayear"];
 $year=$_POST["year"];
 $sem=$_POST["sem"];
 $sec=$_POST["sec"];
 $from=$_POST["from"];
 $to=$_POST["to"];
 $batch=$from."-".$to;
 $level=$_POST["level"];
?>
<form role="form" action="stud.php" method="post" enctype="multipart/form-data"  onsubmit="return(validate());">
<div class="row">
		<div class="col-25">
			<label for="fname">Academic Year</label>
		</div>
		<div class="col-25">
			<input type="text" id="ayear" name="ayear" value="<?php echo $ayear ?>" readonly>
		</div>
		<div class="col-25">
			<label for="fname">&nbsp;&nbsp;Year</label>
		</div>
		<div class="col-25">
			<input type="text" id="year" name="year" value="<?php echo $year ?>" readonly>
		</div>
	</div>	
	<div class="row">
		<div class="col-25">
			<label for="fname">Semester</label>
		</div>
		<div class="col-25">
			<input type="text" id="sem" name="sem" value="<?php echo $sem ?>" readonly>
		</div>
		<div class="col-25">
			<label for="fname">&nbsp;&nbsp;Section</label>
		</div>
		<div class="col-25">
			<input type="text" id="sec" name="sec" value="<?php echo $sec ?>" readonly>
			<INPUT type="hidden" id="level" name="level" value="<?php echo $level ?>" />
		</div>
	</div>
	<div class="row">
		<div class="col-25">
			<label for="fname">Batch</label>
		</div>
		<div class="col-25">
			<input type="text" id="batch" name="batch" value="<?php echo $batch ?>" readonly>
		</div>
	</div>
	<?php
	if($sem > 1)
	{
	?>
		<div class="row">
			<div class="col-25">
				<label for="fname">No.Of New Join</label>
			</div>
			<div class="col-25">
				<INPUT id="new_j" type="number" name="new_j"  required />
			</div>
			<div class="col-25">
				<label for="fname">&nbsp;&nbsp;No.Of Dropouts</label>
			</div>
			<div class="col-25">
				<INPUT id="drop" type="number" name="drop" required />
			</div>
		</div> 
		<div class="row">
			<div class="col-25">
				<label for="fname">Dropouts</label>(Count Regarding Dropouts)
			</div>
		<div class="col-25">
		   <p id="demo"></p>
			<label class="message" id="message" > </label>
		</div>	
		</div> 
		<div class="row">
			<TABLE id="dataTable" width="100%" border="1">
				<TR>
					<TD><INPUT id="d_discon" type="number" name="d_discon" Placeholder="No.Of Discontinued"required /></TD>
					<TD><INPUT id="d_notreg" type="number" name="d_notreg" Placeholder="No.Of Not Registered"required /></TD>
					<TD><INPUT id="d_passed" type="number" name="d_passed" Placeholder="No.Of Passed away"required /></TD>
					<TD><INPUT id="d_others" type="number" name="d_others" Placeholder="No.Of Others"required /></TD>
				</TR>
			</TABLE>	
		</div>	
		<div class="row">
			<div class="col-25">
				<label for="fname">Name List of Dropuot Students</label>
			</div>
			<div class="col-25">
				<INPUT id="drop_file" type="file" name="drop_file" />
			</div>
		</div> 
	<?php	
	}
	?>	
	<div class="row">
		<div class="col-25">
			<label for="fname">Gender</label>(Count Regarding Gender)
		</div>
		<div class="col-25">
			<label class="message" id="message1" > </label>
		</div>	
	</div> 
	<div class="row">
		<TABLE id="dataTable" width="100%" border="1">
			<TR>
				<TD><INPUT id="g_boys" type="number" name="g_boys" Placeholder="No.Of Boys"required /></TD>
				<TD><INPUT id="g_girls" type="number" name="g_girls" Placeholder="No.Of Girls"required /></TD>
				<TD><INPUT id="g_others" type="number" name="g_others" Placeholder="No.Of Others"required /></TD>
			</TR>
		</TABLE>	
	</div>	
	<div class="row">
		<div class="col-25">
			<label for="fname">Caste</label>(Count Regarding Caste)
		</div>
		<div class="col-25">
			<label class="message" id="message2" > </label>
		</div>	
	</div> 
	<div class="row">
		<TABLE id="dataTable" width="100%" border="1">
			<TR>
				<TD><INPUT id="c_bc" type="number" name="c_bc" Placeholder="No.Of BC"required /></TD>
				<TD><INPUT id="c_oc" type="number" name="c_oc" Placeholder="No.Of OC"required /></TD>
				<TD><INPUT id="c_obc" type="number" name="c_obc" Placeholder="No.Of OBC"required /></TD>
				<TD><INPUT id="c_sc" type="number" name="c_sc" Placeholder="No.Of SC"required /></TD>				
				<TD><INPUT id="c_st" type="number" name="c_st" Placeholder="No.Of ST"required /></TD>
				<TD><INPUT id="c_others" type="number" name="c_others" Placeholder="No.Of Others"required /></TD>
			</TR>
		</TABLE>	
	</div>	
	<div class="row">
		<div class="col-25">
			<label for="fname">Religion</label>(Count Regarding Religion)
		</div>
		<div class="col-25">
			<label class="message" id="message3" > </label>
		</div>		
	</div> 
	<div class="row">
		<TABLE id="dataTable" width="100%" border="1">
			<TR>
				<TD><INPUT id="r_hindu" type="number" name="r_hindu" Placeholder="No.Of Hindu's"required /></TD>
				<TD><INPUT  id="r_muslim"type="number" name="r_muslim" Placeholder="No.Of Muslim's"required /></TD>
				<TD><INPUT  id="r_christian"type="number" name="r_christian" Placeholder="No.Of Christian's"required /></TD>
				<TD><INPUT id="r_others" type="number" name="r_others" Placeholder="No.Of Others"required /></TD>
			</TR>
		</TABLE>	
	</div>
	<div class="row">
		<div class="col-25">
			<label for="fname">Total No.of Students</label>
		</div>	
		<div class="col-25">
			<INPUT id="stud" type="number" name="stud" required />
		</div>	
		<div class="col-25">
			<label for="fname">&nbsp;&nbsp;Name List fo Students</label>
		</div>	
		<div class="col-25">
			<INPUT type="file" name="stud_file" required />
		</div>
	</div>
	<div class="row">
		<br>
	</div>
	<div class="row">
		<div class="col-25"></div>	
		<div class="col-25"></div>	
		<div class="col-25"></div>	
		<div class="col-25">
			<INPUT type="submit" name="submit" value="Submit"/>
		</div>
	</div>
	<div id="wrapper"></div>	
</form>
<?php
} 
?>
<script language="Javascript">

function error()
{
	if{}
	else
	{
			document.getElementById('message').style.display="block";
			document.getElementById('message').innerHTML= "Check the Value inserted !!! ";
	}
}
function drop()
{
		var new_j = parseInt(document.getElementById("new_j").value);
		var drop = parseInt(document.getElementById("drop").value);
		var d_discon = parseInt(document.getElementById("d_discon").value);
		var d_notreg = parseInt(document.getElementById("d_notreg").value);
		var d_passed = parseInt(document.getElementById("d_passed").value);
		var d_others = parseInt(document.getElementById("d_others").value);
		var t_d = d_discon + d_notreg + d_passed + d_others;
		if( t_d == drop)
		{ 
			document.getElementById('message').style.display="none";
			return( true );
		}
		else
		{	
			error();
			return false;
		}
		if( drop > 0 )
		{
			var drop_file = document.getElementById("drop_file").value;
		}
}
function gender()
{
    var stud = parseInt(document.getElementById("stud").value);
	var g_boys = parseInt(document.getElementById("g_boys").value);
    var g_girls = parseInt(document.getElementById("g_girls").value);
    var g_others = parseInt(document.getElementById("g_others").value);
	var t_g = g_boys + g_girls + g_others;
	if( t_g == stud)
	{
		document.getElementById('message1').style.display="none";
		return( true );
	}
	else
	{
		document.getElementById('message1').style.display="block";
		document.getElementById('message1').innerHTML="Check the Value inserted !!! ";
		return false;
	}
}
function caste()
{
    var stud = parseInt(document.getElementById("stud").value);
	var c_bc = parseInt(document.getElementById("c_bc").value);
    var c_oc = parseInt(document.getElementById("c_oc").value);
    var c_obc = parseInt(document.getElementById("c_obc").value);
    var c_sc = parseInt(document.getElementById("c_sc").value);
    var c_st = parseInt(document.getElementById("c_st").value);
    var c_others = parseInt(document.getElementById("c_others").value);
	var t_c = c_bc + c_oc + c_obc + c_sc + c_st + c_others;
	if( t_c == stud)
	{
		document.getElementById('message2').style.display="none";
		return( true );
	}
	else
	{
		document.getElementById('message2').style.display="block";
		document.getElementById('message2').innerHTML="Check the Value inserted !!! ";
		return false;
	}
}
function religion()
{
    var stud = parseInt(document.getElementById("stud").value);
	var r_hindu = parseInt(document.getElementById("r_hindu").value);
    var r_muslim = parseInt(document.getElementById("r_muslim").value);
    var r_christian = parseInt(document.getElementById("r_christian").value);
    var r_others = parseInt(document.getElementById("r_others").value);
	var t_r = r_hindu + r_muslim + r_christian + r_others;
	if( t_r == stud)
	{
		document.getElementById('message3').style.display="none";
		return( true );
	}
	else
	{
		document.getElementById('message3').style.display="block";
		document.getElementById('message3').innerHTML="Check the Value inserted !!! ";
		return false;
	}
}
function validate()
{  
	var valid = true;
    var sem = parseInt(document.getElementById("sem").value);
	if(sem > 1 )
	{		
		valid = valid && drop();		
	}
    valid = valid && gender();
	valid = valid && caste();
    valid = valid && religion();
    return valid;
}
$('form').submit(validate);
</script>