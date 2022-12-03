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
</style>
 <nav class="navbar navbar-inverse navbar-fixed-top">

<ul>
  <h1 align="center">Student Information</h1>
</ul>
</nav>
<br>
<br>
<?php
$deptid=$_SESSION['deptid'];
$sql1="SELECT * FROM dept_info WHERE dept = '$deptid'";
$result = $con->query($sql1);
$row = $result->fetch_assoc();
?>
<form action="stud.php" method="post">
	<div class="row">
		<div class="col-25">
			<label for="fname">Academic</label>
		</div>
		<div class="col-25">
			<select name="ayear"  required>
				<?php
				$end=date("Y");
				$year1=$row["year1"];
				$year1=substr($year1, 0, 4);
				if(date("m")<6)
				{
					$end=$end-1;
				}
				for($i=$year1;$i<=$end;$i++)
				{
					$cu=$i+1;
					$j=$i."-".$cu;
					echo"<option value='".$j."'> ",$j,"</option>";
				}
				?>
			</select>
		</div>
		<div class="col-25">
			<label for="fname">&nbsp;&nbsp;Year</label>
		</div>
			<div class="col-25">
				<select name="year"  required>
					<option value='I'>I</option>
					<option value='II'>II</option>
					<option value='III'>III</option>
					<option value='IV'>IV</option>
					<option value='V'>v</option>
				</select>
			</div>
		</div>
		<div class="row">
			<div class="col-25">
				<label for="fname">Semester</label>
			</div>
			<div class="col-25">
				<select name="sem"  required>
					<option value='1'>1</option>
					<option value='2'>2</option>
					<option value='3'>3</option>
					<option value='4'>4</option>
					<option value='5'>5</option>
					<option value='6'>6</option>
					<option value='7'>7</option>
					<option value='8'>8</option>
					<option value='9'>9</option>
					<option value='10'>10</option>
				</select>
			</div>
			<div class="col-25">
				<label for="fname">&nbsp;&nbsp;Section</label>
			</div>
			<div class="col-25">
				<select name="sec"  required>
					<option value='A'>A</option>
					<option value='B'>B</option>
					<option value='C'>C</option>
					<option value='D'>D</option>
					<option value='E'>E</option>
				</select>
			</div>
		</div>
		<div class="row">	
			<div class="col-25">
				<label for="fname">Batch</label>
			</div>
			<div class="col-25">
				<INPUT type="text" name="from" Placeholder="FROM ( YYYY )"/>
			</div>
			<div class="col-25">
				<center>-</center>
			</div>
			<div class="col-25">
				<INPUT type="text" name="to" Placeholder="TO ( YYYY )"/>
			</div>
		</div>
		<div class="row">	
			<div class="col-25">
				<INPUT type="hidden" name="level" value="pg" />
			</div>
			<div class="col-25">
				<INPUT type="submit" name="continue" value="Continue"/>
			</div>
		</div>
	<div id="wrapper"></div>	 
	<div class="row">
		<br>
	</div>  

</form>

<?php
$abc=$deptid."_stud";
	
		$sql2="SELECT * FROM `$abc` WHERE level='pg'  ORDER BY ayear DESC";
		$result2 = $con->query($sql2);		
?>		
		<TABLE id="dataTable" width="100%" border="1">
			<TR>
			<TH>Academic Year</TH>
			<TH>Year</TH>
			<TH>Semester</TH>
			<TH>Section</TH>
			<TH>Batch</TH>
			<TH>New Join</TH>
			<TH>Drop Out</TH>
			<TH>Total Students</TH>
			<TH>Action</TH>
			</TR>
			<?php
	if ($result2->num_rows > 0) 
	{
		while($row1 = $result2->fetch_assoc()) 
		{
					
						
							?>
							<TR>
			<TD><input type="text" name="ayear" value="<?php echo $row1["ayear"];?>" readonly></TD>
			<TD><input type="text" name="year" value="<?php echo $row1["year"];?>" readonly></TD>
			<TD><input type="text" name="sem" value="<?php echo $row1["sem"];?>" readonly></TD>
			<TD><input type="text" name="sec" value="<?php echo $row1["sec"];?>" readonly></TD>
			<TD><input type="text" name="batch" value="<?php echo $row1["batch"];?>" readonly></TD>
			<TD><input type="text" name="new_j" value="<?php echo $row1["new_j"];?>" readonly></TD>
			<TD><input type="text" name="drop" value="<?php echo $row1["drop"];?>" readonly></TD>
			<TD><input type="text" name="stud" value="<?php echo $row1["stud"];?>" readonly></TD>			
			<form action="stud_pg.php" method="post" >
			<input type="hidden" name="id" value="<?php echo $row1["id"];?>">
			<TD><input style="background-color:red" type="submit" name="delete" value="Delete"></TD>
			</form>
			</TR>
						<?php
					}
	}
	else
	{
		echo"NO Data Found";
	}
	if(isset($_POST["delete"])){
	$id=$_POST["id"];
	$deptid=$_SESSION['deptid'];
	$abc=$deptid."_stud";
	$sql5 = "DELETE FROM `$abc` WHERE id = '$id'";
						if(mysqli_query($con,$sql5))
						{
							echo '<script language="javascript">alert("Deleted Successfully");</script>';
							echo '<script type="text/javascript">window.location.href = "stud_pg.php";</script>';
						}
}
	?>