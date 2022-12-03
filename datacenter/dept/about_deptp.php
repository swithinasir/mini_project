<?php
session_start();
include("../conn/config1.php");
?>
<style>
 .required:after { content:" *";color: #e32; }

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
    padding: 5px 20px;
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
    padding: 5px 20px;
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
  <h1 align="center">Information About Department</h1>
</ul>
</nav>
<br>
<br>

<?php
$deptid=$_SESSION['deptid'];
$sql1="SELECT * FROM dept_info WHERE dept = '$deptid' && year2 IS NOT NULL";
$result = $con->query($sql1);
if ($result->num_rows > 0) 
{
	$row = $result->fetch_assoc();
	?>
	
	<div class="row">
		<div class="col-25">
			<label  for="fname">Year of Establishment</label>
		</div>
		<div class="col-25">
			<input type="text" id="name" name="name" value="<?php echo $row["year2"] ?>" readonly>
		</div>
	</div>	
	<div class="row">
		<div class="col-25">
			<label for="fname">Name of Course</label>
		</div>
		<div class="col-25">
			<input type="text" id="name" name="name" value="<?php echo $row["name2"] ?>" readonly>
		</div>
		<div class="col-25">
			<label for="fname">&nbsp;&nbsp;Branch</label>
		</div>
		<div class="col-25">
			<input type="text" id="branch" name="branch" value="<?php echo $row["branch2"] ?>" readonly>
		</div>
	</div>
	<div id="wrapper"></div>	 
	<div class="row">
		<br>
	</div>
	<?php  
	echo'<br><TABLE id="dataTable" border="0" cellpadding="0" cellspacing="0" width="100%" class="scrollTable">';  
	echo'<tr><thead class="fixedHeader">';
	?>
	<form role="form" action="about_deptp.php" method="post" enctype="multipart/form-data">
		<th>
			Academic Year<br>
			<select name="ayear" style="display:none" required>
			<?php
			$end=date("Y");
			$year1=$row["year2"];
			$year1=substr($year1, 0, 4);
			for($i=$year1;$i<=$end;$i++)
			{
				$cu=$i+1;
				$j=$i."-".$cu;
				echo"<option value='".$j."'> ",$j,"</option>";
			}
			?>
			</select>
		</th>
		<th>
			Sanctioned Intake<br>
			<INPUT type="text" style="display:none" name="intake" Placeholder="Sanctioned Intake"/>
		</th>
		<th>
			Affiliated with<br>
			<INPUT type="text" style="display:none" name="aff" Placeholder="Affiliated with"/>
		</th>
		<th>
			Affiliated certificate <br>
			<input type="file"style="display:none" name="file">
		</th>
		<th>
			NBA Certificate<br> 
			<input type="file"style="display:none" name="file1">
		</th>
		<th>
			Action<br>
			<INPUT type="submit" name="add"style="display:none" value="Add"/>
		</th>
	</form>
    </tr></thead><tbody class="scrollContent"> 
	<tr>		
		<form role="form" action="about_deptp.php" method="post" enctype="multipart/form-data">
			<td>
				<select name="ayear"  required>
					<?php
					$end=date("Y");
					$year1=$row["year2"];
					$year1=substr($year1, 0, 4);
					for($i=$year1;$i<=$end;$i++)
					{
						$cu=$i+1;
						$j=$i."-".$cu;
						echo"<option value='".$j."'> ",$j,"</option>";
					}
					?>
				</select>
			</td>
			<td>
				<INPUT type="text"  name="intake" Placeholder="Sanctioned Intake"/>
			</td>
			<td>
				<INPUT type="text"  name="aff" Placeholder="Affiliated with"/>
			</td>
			<td>
				<input type="file" name="file">
				<p align="center" style="color:red"><b>File Size below 2MB</b></p>
			</td>
			<td>
				<input type="file" name="file1">
				<p align="center" style="color:red"><b>File Size below 2MB</b></p>
			</td>
			<td>
				<INPUT type="submit" name="add" value="Add"/>
			</td>
		</form>
    </tr>
	<?php
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_dept";
	$sql3="SELECT * FROM `$aaa` WHERE intake2 IS NOT NULL";
	$result3 = $con->query($sql3);
	if ($result3->num_rows > 0) 
	{		
		while($row3 = $result3->fetch_assoc()) 
		{
			?>
			<TR>
				<TD>
					<INPUT type="text" name="" value="<?php echo $row3["ayear"] ?>" readonly />
				</TD>
				<TD>
					<INPUT type="text" name="" value="<?php echo $row3["intake2"] ?>" readonly />
				</TD>
				<TD>
					<INPUT type="text" name="" value="<?php echo $row3["aff2"] ?>" readonly />
				</TD>
				<TD>
					<?php
					if(empty($row3['aff_cer2']))
					{
						$f=1;
						?>
						<center>
							<form action="about_deptp1.php" method="post">
								<INPUT type="hidden" name="id" value="<?php echo $row3["id"] ?>" />								
								<INPUT type="hidden" name="f" value="<?php echo $f; ?>" />
								<label>
									No File Found
									<button type="submit" name="upload"/><img title="To Upload File" src="../images/upload.png" height="25px" width="25px"></button>
								</label>
							</form>
						</center>
					<?php
					}
					else
					{
					?>
						<center>
							<a href="../gallery/aff/<?php echo $aaa; ?>/<?php echo $row3['aff_cer2']; ?>" class="button" target="_blank">View</a>
						</center>
					<?php
					}
					?>
				</TD>
				<TD>
					<?php
					if(empty($row3['nba_cer2']))
					{
						$f=2;
					?>
						<center>
							<form action="about_deptp1.php" method="post">
								<INPUT type="hidden" name="id" value="<?php echo $row3["id"] ?>" />
								<INPUT type="hidden" name="f" value="<?php echo $f; ?>" />
								<label>
									No File Found
									<button type="submit" name="upload1"/><img title="To Upload File" src="../images/upload.png" height="25px" width="25px"></button>
								</label>
							</form>
						</center>
					<?php
					}
					else
					{
					?>
						<center>
							<a href="../gallery/nba/<?php echo $aaa; ?>/<?php echo $row3['nba_cer2']; ?>" class="button" target="_blank">View</a>
						</center>
					<?php
					}
					?>
				</TD>				
				<TD>
					<form action="about_deptp1.php" method="post">
						<INPUT type="hidden" name="id" value="<?php echo $row3["id"] ?>" />
						<INPUT type="submit" name="update" value="Update"/>
					</form>
					<form action="about_deptp.php" method="post">
						<INPUT type="hidden" name="id" value="<?php echo $row3["id"] ?>" />
						<INPUT style="background-color:red" type="submit" name="delete" value="Delete"/>
					</form>
				</TD>
			</TR>  
			<?php
		}
	}
	else
	{
		echo'<TR>';
		?>
			<TD>
				<center><label><h1>No Data Found</h1></label><center>
			</TD>
		<?php
		echo'</TR>'; 
	}
	echo'</tbody></table>';  
	?>	
	<div id="wrapper"></div>	 
	<?php
}
else
{
?>
	<form action="about_deptp.php" method="post">
		<div class="row">
			<div class="col-25">
				<label  for="fname">Year of Establishment</label>
			</div>
			<div class="col-25">
				<select name="year" required>
					<?php
					$end=date("Y");
					for($i=1987;$i<=$end;$i++)
					{
						$cu=$i+1;
						$j=$i."-".$cu;
						echo"<option value='".$j."'> ",$j,"</option>";
					}
					?> 
				</select>
			</div>
		</div>	
		<div class="row">
			<div class="col-25">
				<label for="fname">Name of Course</label>
			</div>
			<div class="col-25">
				<input type="text" id="name" name="name" >
			</div>
		</div>
		<div class="row">
			<div class="col-25">
				<label for="fname">Branch</label>
			</div>
			<div class="col-25">
				<input type="text" id="branch" name="branch" >
			</div>
		</div>
		<div class="row">	
			<div class="col-25"></div>
			<div class="col-25">
				<button type="submit" name="submit">Submit</button>
			</div>
		</div>
		<div id="wrapper"></div>	 
		<div class="row">
		<br>
		</div>   
	</form>
	<?php
}

if(isset($_POST["submit"])){
	
 $year=$_POST["year"];
 $name=$_POST["name"];
 $branch=$_POST["branch"];
 $deptid=$_SESSION['deptid'];
 $sql3="SELECT * FROM dept_info WHERE dept = '$deptid'";
 $result3 = $con->query($sql3);
 if ($result3->num_rows > 0) 
 {
	$row3 = $result3->fetch_assoc();
	$id = $row3["id"];
	$sql2 = "UPDATE dept_info SET `year2`= '$year' , `name2`= '$name' , `branch2`= '$branch' WHERE id = '$id'";		

 }
 else
 {
	$sql2 = "INSERT into dept_info (dept,year2,name2,branch2) VALUES ('$deptid','$year','$name','$branch')";	
 }
	if(mysqli_query($con,$sql2))
	{
		echo '<script language="javascript">alert("Inserted Successfully");</script>';
		echo '<script type="text/javascript">window.location.href = "about_deptp.php";</script>';
	}
	else 
	{
		echo "Error1: " . $sql . "<br>" . $conn->error;
	}
}

if(isset($_POST["add"])){
	
 $ayear=$_POST["ayear"];
 $intake=$_POST["intake"]; 
 $aff=$_POST["aff"];
 $deptid=$_SESSION['deptid'];
 $aaa=$deptid."_dept";

	$file = $_FILES['file']['name'];
	if(empty($file))
	{
		$final_file = NULL ;
	}
	else
	{
    $file_loc = $_FILES['file']['tmp_name'];
	$file_size = $_FILES['file']['size'];
	$file_type = $_FILES['file']['type'];
	$folder="../gallery/aff/".$aaa."/";
	// new file size in KB
	$new_size = $file_size/1024;  
	// new file size in KB	
	// make file name in lower case
	$file=rand(1000,100000)."-".$file;
	$new_file_name = strtolower($file);;
	// make file name in lower case	
	$final_file=str_replace(' ','-',$new_file_name);
	$move=move_uploaded_file($file_loc,$folder.$final_file);
	}
	$file1 =$_FILES['file1']['name'];
	if(empty($file1))
	{
		$final_file1 = NULL ;
	}
	else
	{
    $file_loc1 = $_FILES['file1']['tmp_name'];
	$file_size1 = $_FILES['file1']['size'];
	$file_type1 = $_FILES['file1']['type'];
	$folder1="../gallery/nba/".$aaa."/";
	// new file size in KB
	$new_size1 = $file_size1/1024;  
	// new file size in KB	
	// make file name in lower case	
	$file1=rand(1000,100000)."-".$file1;
	$new_file_name1 = strtolower($file1);
	// make file name in lower case
	$final_file1=str_replace(' ','-',$new_file_name1);
	$move1=move_uploaded_file($file_loc1,$folder1.$final_file1);
	}
	$sql3="SELECT * FROM `$aaa` WHERE ayear = '$ayear'";
 $result3 = $con->query($sql3);
 if ($result3->num_rows > 0) 
 {	
	$row3 = $result3->fetch_assoc();
	$intake1 = $row3["intake2"];
	if($intake1 == NULL)
	{
		$id = $row3["id"];
		$sql4 = "UPDATE `$aaa` SET `intake2`= '$intake' , `aff2`= '$aff' , `aff_cer2`= '$final_file' , `nba_cer2`= '$final_file1'  WHERE id = '$id'";		
		if(mysqli_query($con,$sql4))
	{
		echo '<script language="javascript">alert("Inserted Successfully");</script>';
		echo '<script type="text/javascript">window.location.href = "about_deptp.php";</script>';
	}
	else 
	{
		echo "Error1: " . $sql4 . "<br>" . $con->error;
	}
	}
	else
	{
		echo '<script language="javascript">alert("Data Already Exist !!! ");</script>';
		echo '<script type="text/javascript">window.location.href = "about_deptp.php";</script>';	
	}
 }	
 else
 {
	$sql4 = "INSERT into `$aaa` (ayear,intake2,aff2,aff_cer2,nba_cer2) VALUES ('$ayear','$intake','$aff','$final_file','$final_file1')";
	if(mysqli_query($con,$sql4))
	{
		echo '<script language="javascript">alert("Inserted Successfully");</script>';
		echo '<script type="text/javascript">window.location.href = "about_deptp.php";</script>';
	}
	else 
	{
		echo "Error1: " . $sql4 . "<br>" . $con->error;
	}
 }
	
	
}
if(isset($_POST["delete"])){
	$id=$_POST["id"];
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_dept";
	$sql5 = "UPDATE `$aaa` SET `intake2`= NULL , `aff2`= NULL , `aff_cer2`= NULL , `nba_cer2`= NULL  WHERE id = '$id'";
						if(mysqli_query($con,$sql5))
						{
							echo '<script language="javascript">alert("Deleted Successfully");</script>';
							echo '<script type="text/javascript">window.location.href = "about_deptp.php";</script>';
						}
}
?>