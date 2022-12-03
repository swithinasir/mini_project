<?php
session_start();
include("../conn/config1.php");
$year=$_POST["year"];
$sem=$_POST["sem"];
if(($year=="I" && ($sem=="1" || $sem=="2") ) || ($year=="II" && ($sem=="3" || $sem=="4") ) || ($year=="III" && ($sem=="5" || $sem=="6") ) || ($year=="IV" && ($sem=="7" || $sem=="8") ) || ($year=="V" & ($sem=="9" || $sem=="10") ))
{
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
 $deptid=$_SESSION['deptid'];
  $aaa=$deptid."_stud";
$sql1="SELECT * FROM `$aaa` WHERE ayear = '$ayear' AND year='$year' AND sem='$sem' AND sec='$sec' AND batch='$batch'";
$result = $con->query($sql1);
if ($result->num_rows > 0) 
{
	echo '<script language="javascript">alert("Data Already Inserted for this Semester");</script>';
	echo '<script type="text/javascript">window.location.href = "stud_desc.php";</script>';
}
else
{
?>
<form role="form" action="stud1.php" method="post" enctype="multipart/form-data"  onsubmit="return(validate());">
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
		<div class="col-25">
			<label for="fname">Total No. Of. Students</label>
		</div>
		<div class="col-25">
		<?php
				 $deptid=$_SESSION['deptid'];
				 $aaa=$deptid."_stud";
				 $seme=$sem - 1;
				 $sql1="SELECT * FROM `$aaa` WHERE batch = '$batch' && sem = '$seme' && level = '$level' && sec = '$sec'";
				 $result = $con->query($sql1);
				 $row = $result->fetch_assoc();
				 $old_stud=$row["stud"];
				?>
			<input type="text" id="old_stud" name="old_stud" value="<?php echo $old_stud ?>" readonly>
		</div>
	</div>
	<?php
	if($sem >= 1)
	{
	?>
		<div class="row">
			<div class="col-25">
				<label for="fname">No.Of New Join</label>
				<label class="message" id="mesg" > </label>
			</div>
			<div class="col-25">
				<INPUT id="new_j" type="number" name="new_j"  required />
			</div>
			<div class="col-25">
				<label for="fname">&nbsp;&nbsp;No.Of Dropouts</label>
			</div>
			<div class="col-25">
				<INPUT id="drop" type="number" name="drop" required />
				<?php
				/* $deptid=$_SESSION['deptid'];
				 $aaa=$deptid."_stud";
				 $seme=$sem - 1;
				 $sql1="SELECT * FROM `$aaa` WHERE batch = '$batch' && sem = '$seme' && level = '$level' && sec = '$sec'";
				 $result = $con->query($sql1);
				 $row = $result->fetch_assoc();
				 $old_stud=$row["stud"];*/
				?>
				<INPUT id="old" type="hidden" name="old" value="<?php echo $old_stud; ?>" />
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
				<TD><INPUT id="c_oc" type="number" name="c_oc" Placeholder="No.Of OC"required /></TD>
				<TD><INPUT id="c_bc" type="number" name="c_bc" Placeholder="No.Of BC"required /></TD>
				<TD><INPUT id="c_bcm" type="number" name="c_bcm" Placeholder="No.Of BCM"required /></TD>
				<TD><INPUT id="c_mbc" type="number" name="c_mbc" Placeholder="No.Of MBC"required /></TD>
				<TD><INPUT id="c_sc" type="number" name="c_sc" Placeholder="No.Of SC"required /></TD>	
				<TD><INPUT id="c_sca" type="number" name="c_sca" Placeholder="No.Of SCA"required /></TD>				
				<TD><INPUT id="c_st" type="number" name="c_st" Placeholder="No.Of ST"required /></TD>
			</TR>
		</TABLE>	
	</div>	
	<!--
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
	-->
	<div class="row">
		<div class="col-25">
			<label for="fname">Total No.of Students</label>
		</div>	
		<div class="col-25">
			<INPUT id="stud" type="number" name="stud" required />
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
} 
if(isset($_POST["submit"]))
{	
 $ayear=$_POST["ayear"];
 $year=$_POST["year"];
 $sem=$_POST["sem"];
 $sec=$_POST["sec"];
 $level=$_POST["level"];
 $batch=$_POST["batch"];
 if($sem > 0)
{
	$new_j=$_POST["new_j"];
	$drop=$_POST["drop"];
	$d_discon=$_POST["d_discon"];
	$d_notreg=$_POST["d_notreg"];
	$d_passed=$_POST["d_passed"];
	$d_others=$_POST["d_others"];
 }
 else
 {
	$new_j=0;
	$drop=0;
	$d_discon=0;
	$d_notreg=0;
	$d_passed=0;
	$d_others=0;
 }
 $g_boys=$_POST["g_boys"];
 $g_girls=$_POST["g_girls"];
 $g_others=$_POST["g_others"];
 $c_oc=$_POST["c_oc"];
 $c_bc=$_POST["c_bc"];
 $c_bcm=$_POST["c_bcm"];
 $c_mbc=$_POST["c_mbc"];
 $c_sc=$_POST["c_sc"];
 $c_sca=$_POST["c_sca"];
 $c_st=$_POST["c_st"];
 /*$r_hindu=$_POST["r_hindu"];
 $r_muslim=$_POST["r_muslim"];
 $r_christian=$_POST["r_christian"];
 $r_others=$_POST["r_others"];*/
 $stud=$_POST["stud"];
 
 $deptid=$_SESSION['deptid'];
 $aaa=$deptid."_stud";

    
	//$file = rand(1000,100000)."-".$_FILES['file']['name'];
	$file = $deptid."-".$batch."-".$year."-".$sem."-".$sec."-NEW-".$_FILES['file']['name'];
    $file_loc = $_FILES['file']['tmp_name'];
	$file_size = $_FILES['file']['size'];
	$file_type = $_FILES['file']['type'];
	$folder="../gallery/stud/".$aaa."/";
	// new file size in KB
	$new_size = $file_size/1024;  
	// new file size in KB
	
	// make file name in lower case
//$new_file_name = strtolower($file);
	// make file name in lower case
	
	$final_file=$file;
	

	if(empty($_FILES['file1']['name']))
	{
		$final_file1 =0;
	}
	else
	{
	$file1 = $_FILES['file1']['name'];
    $file_loc1 = $_FILES['file1']['tmp_name'];
	$file_size1 = $_FILES['file1']['size'];
	$file_type1 = $_FILES['file1']['type'];
	$folder1="../gallery/drop/".$aaa."/";
	// new file size in KB
	$new_size1 = $file_size1/1024;  
	// new file size in KB	
	// make file name in lower case
	$file1=$deptid."-".$batch."-".$year."-".$sem."-".$sec."-DROP-".$file1;
	//$new_file_name1 = strtolower($file1);;
	// make file name in lower case	
	$final_file1=$file1;
	$move1=move_uploaded_file($file_loc1,$folder1.$final_file1);
	}
	
	if(move_uploaded_file($file_loc,$folder.$final_file))
	{
		
       // $sql = "INSERT into `$aaa` (`ayear`, `year`, `sem`, `sec`, `level`, `batch`, `new_j`, `drop`, `d_discon`, `d_notreg`, `d_passed`, `d_others`, `g_boys`, `g_girls`, `g_others`, `c_bc`, `c_oc`, `c_obc`, `c_sc`, `c_st`, `c_others`, `r_hindu`, `r_muslim`, `r_christian`, `r_others`, `stud`, `drop_file`, `stud_file`) 	VALUES 
		//							('$ayear','$year','$sem','$sec','$level','$batch','$new_j','$drop','$d_discon','$d_notreg','$d_passed','$d_others','$g_boys','$g_girls','$g_others','$c_bc','$c_oc','$c_obc','$c_sc','$c_st','$c_others','$r_hindu','$r_muslim','$r_christian','$r_others','$stud','$final_file1','$final_file')";
		  $sql = "INSERT into `$aaa` (`ayear`, `year`, `sem`, `sec`, `level`, `batch`, `new_j`, `drop`, `d_discon`, `d_notreg`, `d_passed`, `d_others`, `g_boys`, `g_girls`, `g_others`, `c_bc`, `c_oc`, `c_bcm`,`c_mbc`, `c_sc`,`c_sca` `c_st`, `stud`, `drop_file`, `stud_file`) 	VALUES 
									('$ayear','$year','$sem','$sec','$level','$batch','$new_j','$drop','$d_discon','$d_notreg','$d_passed','$d_others','$g_boys','$g_girls','$g_others','$c_bc','$c_oc','$c_bcm','$c_mbc','$c_sc','$c_sca','$c_st','$stud','$final_file1','$final_file')";
	
		if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("Student Data Inserted Successfully.!");</script>';
					echo '<script type="text/javascript">window.location.href = "stud_desc.php";</script>';

		
	}else {
    echo "Error: " . $sql . "<br>" . $con->error;
}
	}
       
}

?>
<script language="Javascript">
function old()
{
		var old = parseInt(document.getElementById("old").value);
		var stud = parseInt(document.getElementById("stud").value);
		var new_j = parseInt(document.getElementById("new_j").value);
		var drop = parseInt(document.getElementById("drop").value);
		var t_d = old + new_j;
		t_d = t_d - drop;
		if( t_d == stud)
		{ 
			document.getElementById('mesg').style.display="none";
			return( true );
		}
		else
		{
			document.getElementById('mesg').style.display="block";
			document.getElementById('mesg').innerHTML= "Check the Value inserted !!! ";
			return false;
		}
		if( drop > 0 )
		{
			var drop_file = document.getElementById("drop_file").value;
		}
}
function drop()
{
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
			document.getElementById('message').style.display="block";
			document.getElementById('message').innerHTML= "Check the Value inserted !!! ";
			return false;
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
    var c_oc = parseInt(document.getElementById("c_oc").value);
	var c_bc = parseInt(document.getElementById("c_bc").value);
    var c_bcm = parseInt(document.getElementById("c_bcm").value);
    var c_mbc = parseInt(document.getElementById("c_mbc").value);
    var c_sc = parseInt(document.getElementById("c_sc").value);
    var c_sca = parseInt(document.getElementById("c_sca").value);
    var c_st = parseInt(document.getElementById("c_st").value);
	var t_c = c_bc + c_oc + c_bcm + c_mbc + c_sc + c_sca + c_st;
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
}/*
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
*/
function validate()
{  
	var valid = true;
    var sem = parseInt(document.getElementById("sem").value);
	if(sem > 1 )
	{		
		valid = valid && old();
		valid = valid && drop();		
	}
    valid = valid && gender();
	valid = valid && caste();
    //valid = valid && religion();
    return valid;
}
$('form').submit(validate);
</script>
<?php
}
else
{
	echo '<script language="javascript">alert("Incorrect Data. Try Again!!!");</script>';
	echo '<script type="text/javascript">window.location.href = "stud_desc.php";</script>';
}
?>