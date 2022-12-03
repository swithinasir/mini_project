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
	background: #C96;
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
}

</style>
<style>
* {
    box-sizing: border-box;
}

input[type=number],input[type=text],input[type=date], select, textarea {
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
    padding: 2px 2px;
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
<script>
function hideA()
{  
    document.getElementById("A").style.display="none"; 
	document.getElementById("B").style.display="block"; 	
}
function hideB()
{  
    document.getElementById("A").style.display="block"; 
	document.getElementById("B").style.display="none"; 	
}
</script>
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
$sql1="SELECT * FROM dept_info WHERE dept = '$deptid' && class IS NOT NULL";
$result = $con->query($sql1);
if ($result->num_rows > 0) 
{
	$row = $result->fetch_assoc();
	?>
	
	<div class="row">
		<div class="col-25">
			<label for="fname">No.Of Classroom</label>
		</div>
		<div class="col-25">
			<input type="text" id="class" name="class" value="<?php echo $row["class"] ?>" readonly>
		</div>
	</div>	
	<div class="row">
		<div class="col-25">
			<label for="fname">No.Of Lab</label>
		</div>
		<div class="col-25">
			<input type="text" id="lab" name="lab" value="<?php echo $row["lab"] ?>" readonly>
		</div>
		
	</div>
	<div class="row">
		<div class="col-25"></div>
		<div class="col-25">
			<form action="facility_dept1.php" method="post">
				<INPUT type="hidden" name="id" value="<?php echo $row["id"] ?>" />
				<INPUT type="hidden" name="class" value="<?php echo $row["class"] ?>" />
				<INPUT type="hidden" name="lab" value="<?php echo $row["lab"] ?>" />
				<button type="submit" name="update"/>UPDATE</button>
			</form>
		</div>
	</div>	
	<div id="wrapper"></div>
	<div class="row">
		<div class="col-25">
			<button onClick="hideB()" >General Equipment</button>
		</div>
		
				<div class="col-25">
					<button onClick="hideA()" >LAB</button>
				</div>
	
	</div>
	<div style="display:block" id="A" >
	<div class="row">
		<div class="col-25">
			<label for="fname">General Equipment</label>
		</div>
	</div>
	<?php  
	echo'<br><TABLE id="dataTable" border="0" cellpadding="0" cellspacing="0" width="100%" class="scrollTable">';  
	echo'<tr><thead class="fixedHeader">';
	?>
	<form role="form" action="facility_dept.php" method="post" enctype="multipart/form-data">
		<!--<th>
			Academic Year<br>
			<select name="ayear" style="display:none" required>
			<?php
			//$end=date("Y");
			//$year1=$row["year1"];
			//$year1=substr($year1, 0, 4);
			//for($i=$year1;$i<=$end;$i++)
			//{
			//	$cu=$i+1;
			//	$j=$i."-".$cu;
			//	echo"<option value='".$j."'> ",$j,"</option>";
			//}
			?>
			</select>
		</th>-->
		<th>
			Name of the Equipment<br>
			<INPUT type="text" style="display:none" name="name" Placeholder="Sanctioned Intake"/>
			<INPUT type="hidden" style="display:none" name="type" value="<?php echo "gen" ;?>"/>
		</th>
		<th>
			Model<br>
			<INPUT  type="text" style="display:none" name="model" Placeholder="Afflicated with" />
		</th>
		<th>
			Quantity<br>
			<INPUT type="text" style="display:none" name="quantity" Placeholder="Afflicated with"/>
		</th><th>
			Year Of Purchase<br>
			<INPUT type="text" style="display:none" name="year" Placeholder="Afflicated with"/>
		</th><th>
			Price<br>
			<INPUT type="text" style="display:none" name="price" Placeholder="Afflicated with"/>
		</th>
		<th>
			Invoice <br>
			<input type="file"style="display:none" name="file1" required>
		</th>
		
		<th>
			Action<br>
			<INPUT type="submit" name="add"style="display:none" value="Add"/>
		</th>
	</form>
    </tr></thead><tbody class="scrollContent"> 
	<tr>		
		<form role="form" action="facility_dept.php" method="post" enctype="multipart/form-data">
			<td>
				<INPUT type="text"  name="name" Placeholder="Name of the Equipment" required  />
			<INPUT type="hidden" style="display:none" name="type" value="<?php echo "gen" ;?>"/>
			</td>
			<td>
				<INPUT type="text"  name="model" Placeholder="Model" required  />
			</td>
			<td>
				<INPUT type="text"  name="quantity" Placeholder="Quantity" required  />
			</td>
			<td>
				<INPUT type="text"  name="year" Placeholder="Year of Purchase"  required />
			</td>
			<td>
				<INPUT type="text"  name="price" Placeholder="Price" required / >
			</td>
			<td>
				<input type="file" name="file1">
			</td>
			<td>
				<INPUT type="submit" name="add" value="Add"/>
			</td>
		</form>
    </tr>
	<?php
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_faci";
	$sql3="SELECT * FROM `$aaa` WHERE type='gen' ";
	$result3 = $con->query($sql3);
	if ($result3->num_rows > 0) 
	{		
		while($row3 = $result3->fetch_assoc()) 
		{
			?>
			<TR>
				<TD>
					<INPUT type="text" name="" value="<?php echo $row3["name"] ?>" readonly />
				</TD>
				<TD>
					<INPUT type="text" name="" value="<?php echo $row3["model"] ?>" readonly />
				</TD>
				<TD>
					<INPUT type="text" name="" value="<?php echo $row3["quantity"] ?>" readonly />
				</TD>
				<TD>
					<INPUT type="text" name="" value="<?php echo $row3["year"] ?>" readonly />
				</TD>
				<TD>
					<INPUT type="text" name="" value="<?php echo $row3["price"] ?>" readonly />
				</TD>
				<TD>
					<?php
					if(empty($row3['invoice']))
					{
						$f=2;
					?>
						<center>
							<form action="facility_dept1.php" method="post">
								<INPUT type="hidden" name="id" value="<?php echo $row3["id"] ?>" />
								<!--<INPUT type="hidden" name="f" value="<?php// echo $f; ?>" />-->
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
							<a href="../gallery/facility/<?php echo $aaa; ?>/<?php echo $row3['invoice']; ?>" class="button" target="_blank">View</a>
						</center>
					<?php
					}
					?>
				</TD>				
				<TD>
					<form action="facility_dept1.php" method="post">
						<INPUT type="hidden" name="id" value="<?php echo $row3["id"] ?>" />
						<input type="submit" name="update2" value="Update"/>
					</form>
					<form action="facility_dept.php" method="post">
						<INPUT type="hidden" name="id" value="<?php echo $row3["id"] ?>" />
						<input style="background-color:red" type="submit" name="delete" value="Delete"/>
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
	</div>
	<div style="display:none" id="B">
	<div id="wrapper"></div>	
	<?php
	if($row['lab'] > 0)
	{
		for($lab_count=1;$lab_count<=$row['lab'];$lab_count++)
		{
	?>
<div class="row">
		<div class="col-25">
			<label for="fname">LAB <?php echo $lab_count; ?></label>
		</div>
	</div>
	<?php  
	echo'<br><TABLE id="dataTable" border="0" cellpadding="0" cellspacing="0" width="100%" class="scrollTable">';  
	echo'<tr bgcolor="#C96">';
	?>
	<form role="form" action="facility_dept.php" method="post" enctype="multipart/form-data">
		<!--<th>
			Academic Year<br>
			<select name="ayear" style="display:none" required>
			<?php
			//$end=date("Y");
			//$year1=$row["year1"];
			//$year1=substr($year1, 0, 4);
			//for($i=$year1;$i<=$end;$i++)
			//{
			//	$cu=$i+1;
			//	$j=$i."-".$cu;
			//	echo"<option value='".$j."'> ",$j,"</option>";
			//}
			?>
			</select>
		</th>-->
		<th>
			Name of the Lab<br>
			<INPUT type="text" style="display:none" name="l_name" Placeholder="Sanctioned Intake" required />
		</th>
		<th>
			Name of the Equipment<br>
			<INPUT type="text" style="display:none" name="name" Placeholder="Sanctioned Intake" required />
			<INPUT type="hidden" style="display:none" name="type" value="<?php echo "lab",$lab_count ;?>"/>
		</th>
		<th>
			Model<br>
			<INPUT type="text" style="display:none" name="model" Placeholder="Afflicated with" required />
		</th>
		<th>
			Quantity<br>
			<INPUT type="text" style="display:none" name="quantity" Placeholder="Afflicated with" required />
		</th><th>
			Year Of Purchase<br>
			<INPUT type="text" style="display:none" name="year" Placeholder="Afflicated with" required />
		</th><th>
			Price<br>
			<INPUT type="text" style="display:none" name="price" Placeholder="Afflicated with" required />
		</th>
		<th>
			Invoice <br>
			<input type="file"style="display:none" name="file1">
		</th>
		
		<th>
			Action<br>
			<INPUT type="submit" name="add"style="display:none" value="Add"/>
		</th>
	</form>
    </tr>
	<tr>		
		<form role="form" action="facility_dept.php" method="post" enctype="multipart/form-data">
		<td>
				<INPUT type="text"  name="l_name" Placeholder="Name of the Lab" required />
			</td>
			<td>
				<INPUT type="text"  name="name" Placeholder="Name of the Equipment" required />
			<INPUT type="hidden" style="display:none" name="type" value="<?php echo "lab",$lab_count ;?>"/>
			</td>
			<td>
				<INPUT type="text"  name="model" Placeholder="Model" required />
			</td>
			<td>
				<INPUT type="text"  name="quantity" Placeholder="Quantity" required />
			</td>
			<td>
				<INPUT type="text"  name="year" Placeholder="Year of Purchase" required />
			</td>
			<td>
				<INPUT type="text"  name="price" Placeholder="Price" required />
			</td>
			<td>
				<input type="file" name="file1">
			</td>
			<td>
				<INPUT type="submit" name="add" value="Add"/>
			</td>
		</form>
    </tr>
	<?php
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_faci";
	$type="lab".$lab_count;
	$sql3="SELECT * FROM `$aaa` WHERE type='$type'";
	$result3 = $con->query($sql3);
	if ($result3->num_rows > 0) 
	{		
		while($row3 = $result3->fetch_assoc()) 
		{
			?>
			<TR>
			<TD>
					<INPUT type="text" name="" value="<?php echo $row3["l_name"] ?>" readonly />
				</TD>
				<TD>
					<INPUT type="text" name="" value="<?php echo $row3["name"] ?>" readonly />
				</TD>
				<TD>
					<INPUT type="text" name="" value="<?php echo $row3["model"] ?>" readonly />
				</TD>
				<TD>
					<INPUT type="text" name="" value="<?php echo $row3["quantity"] ?>" readonly />
				</TD>
				<TD>
					<INPUT type="text" name="" value="<?php echo $row3["year"] ?>" readonly />
				</TD>
				<TD>
					<INPUT type="text" name="" value="<?php echo $row3["price"] ?>" readonly />
				</TD>
				<TD>
					<?php
					if(empty($row3['invoice']))
					{
						$f=2;
					?>
						<center>
							<form action="facility_dept1.php" method="post">
								<INPUT type="hidden" name="id" value="<?php echo $row3["id"] ?>" />
								<!--<INPUT type="hidden" name="f" value="<?php// echo $f; ?>" />-->
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
							<a href="../gallery/facility/<?php echo $aaa; ?>/<?php echo $row3['invoice']; ?>" class="button" target="_blank">View</a>
						</center>
					<?php
					}
					?>
				</TD>				
				<TD>
					<form action="facility_dept1.php" method="post">
						<INPUT type="hidden" name="id" value="<?php echo $row3["id"] ?>" />
						<input type="submit" name="update2" value="Update"/>
					</form>
					<form action="facility_dept.php" method="post">
						<INPUT type="hidden" name="id" value="<?php echo $row3["id"] ?>" />
						<input style="background-color:red" type="submit" name="delete" value="Delete"/>
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
	echo'</table>';  
	?>		
	<?php
		}
	}
	?>
	</div>
	<?php
}
else
{
?>
	<form action="facility_dept.php" method="post">
		
		<div class="row">
			<div class="col-25">
				<label for="fname">No.of.Classroom</label>
			</div>
			<div class="col-25">
				<input type="number" id="class" name="class" >
			</div>
		</div>
		<div class="row">
			<div class="col-25">
				<label for="fname">No.of.Lab</label>
			</div>
			<div class="col-25">
				<input type="number" id="lab" name="lab" >
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
	
 $class=$_POST["class"];
 $lab=$_POST["lab"];
 $deptid=$_SESSION['deptid'];
 $sql3="SELECT * FROM dept_info WHERE dept = '$deptid'";
 $result3 = $con->query($sql3);
 if ($result3->num_rows > 0) 
 {
	$row3 = $result3->fetch_assoc();
	$id = $row3["id"];
	$sql2 = "UPDATE dept_info SET `class`= '$class' , `lab`= '$lab' WHERE id = '$id'";		

 }
 else
 {
	$sql2 = "INSERT into dept_info (dept,class,lab) VALUES ('$deptid','$class','$lab')";	
 }	if(mysqli_query($con,$sql2))
	{
		echo '<script language="javascript">alert("Inserted Successfully");</script>';
		echo '<script type="text/javascript">window.location.href = "facility_dept.php";</script>';
	}
	else 
	{
		echo "Error1: " . $sql . "<br>" . $conn->error;
	}
}

if(isset($_POST["add"])){
	if($type!="gen")
	{
		$l_name=$_POST["l_name"];
	}
else
{
	$l_name=NULL;
}
 $name=$_POST["name"];
 $type=$_POST["type"];
 $model=$_POST["model"]; 
 $quantity=$_POST["quantity"];
 $year=$_POST['year'];
 $price=$_POST['price'];
 $aaa=$deptid."_faci";
 
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
	$folder="../gallery/facility/".$aaa."/";
	// new file size in KB
	//$new_size = $file_size/1024;  
	// new file size in KB	
	// make file name in lower case
	$file=rand(1000,100000)."-".$file;
	$new_file_name = strtolower($file);;
	// make file name in lower case	
	$final_file=str_replace(' ','-',$new_file_name);
	$move=move_uploaded_file($file_loc,$folder.$final_file);
	}
	
 

	$sql4 = "INSERT into `$aaa` (type,l_name,name,model,quantity,year,price,invoice) VALUES ('$type','$l_name','$name','$model','$quantity','$year','$price','$final_file')";
	if(mysqli_query($con,$sql4))
	{
		echo '<script language="javascript">alert("Inserted Successfully");</script>';
		echo '<script type="text/javascript">window.location.href = "facility_dept.php";</script>';
	}
	else 
	{
		echo "Error1: " . $sql4 . "<br>" . $con->error;
	}
 	

	
	
}
if(isset($_POST["delete"])){
	$id=$_POST["id"];
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_faci";
	$sql5 = "UPDATE `$aaa` SET `type`= NULL , `l_name`= NULL ,  `name`= NULL , `model`= NULL , `quantity`= NULL , `year`= NULL , `price`= NULL , `invoice`= NULL WHERE id = '$id'";
						if(mysqli_query($con,$sql5))
						{
							echo '<script language="javascript">alert("Deleted Successfully");</script>';
							echo '<script type="text/javascript">window.location.href = "facility_dept.php";</script>';
						}
}
?>