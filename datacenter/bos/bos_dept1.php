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
if(isset($_POST["submit"])){
	
 $ayear=$_POST["ayear"];
  $n_bos=$_POST["n_bos"];
 $date=$_POST["date"];
 $deptid=$_SESSION['deptid'];
 $aaa=$deptid."_bos";
 $abcd=$deptid."_bos_mem";
 
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
	$folder="../gallery/bos/".$aaa."/";
	$file=rand(1000,100000)."-".$file;
	$new_file_name = strtolower($file);
	$final_file=str_replace(' ','-',$new_file_name);
	$move=move_uploaded_file($file_loc,$folder.$final_file);
	}
	
 

	$sql = "INSERT into `$aaa` (n_bos,ayear,date,pic) VALUES ('$n_bos','$ayear','$date','$final_file')";
	if(mysqli_query($con,$sql))
	{
		$sql1="SELECT * FROM `$aaa` WHERE ayear='$ayear' AND date='$date' ";
		$result = $con->query($sql1);
		$row = $result->fetch_assoc();
		$_SESSION['id']= $row["id"];
		echo '<script language="javascript">alert("Inserted Successfully");</script>';
		echo '<script type="text/javascript">window.location.href = "bos_dept1.php";</script>';
	}
	else 
	{
		echo "Error1: " . $sql. "<br>" . $con->error;
	}
}
if(!isset($_POST["submit"]) && !isset($_POST["add"]) && !isset($_POST["delete"]) || isset($_POST["update"])){
	if(isset($_POST["update"]))
	{
		$deptid=$_SESSION['deptid'];
		$aaa=$deptid."_bos";
		$ayear=$_POST["ayear"];
		$date=$_POST["date"];
		$sql1="SELECT * FROM `$aaa` WHERE ayear='$ayear' AND date='$date' ";
		$result = $con->query($sql1);
		if ($result->num_rows > 0) 
		{
			$row = $result->fetch_assoc();
			$_SESSION['id']= $row["id"];
		}
		else
		{
			echo '<script language="javascript">alert("No Data Found");</script>';
			echo '<script type="text/javascript">window.location.href = "bos_dept2.php";</script>';
		}			
	}
	$id=$_SESSION['id'];
	 $deptid=$_SESSION['deptid'];
 $aaa=$deptid."_bos";
		$sql1="SELECT * FROM `$aaa` WHERE id='$id'";
		$result = $con->query($sql1);
		$row = $result->fetch_assoc();
		?>
		<div class="row">
		<div class="col-25">
			<label for="fname">Academic Year</label>
		</div>
		<div class="col-25">
			<input type="text" id="ayear" name="ayear" value="<?php echo $row["ayear"]; ?>" readonly>
		</div>
	</div>	
	<div class="row">
		<div class="col-25">
			<label for="fname">Date</label>
		</div>
		<div class="col-25">
			<input type="text" id="date" name="date" value="<?php echo $row["date"] ;?>" readonly>
		</div>
		
	</div><div class="row">
		<div class="col-25">
			<label for="fname">Number of BOS</label>
		</div>
		<div class="col-25">
			<input type="text" id="date" name="date" value="<?php echo $row["n_bos"] ;?>" readonly>
		</div>
		
	</div>
	
	<div id="wrapper"></div>
	
	<div style="display:block" id="A" >
	<div class="row">
		<div class="col-25">
			<label for="fname">Members</label>
		</div>
	</div>
	<?php  
	echo'<br><TABLE id="dataTable" border="0" cellpadding="0" cellspacing="0" width="100%" class="scrollTable">';  
	echo'<tr><thead class="fixedHeader">';
	?>
	<form role="form" action="bos_dept1.php" method="post" enctype="multipart/form-data">
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
			Name<br>
			<INPUT type="text" style="display:none" name="name" Placeholder="Name"/>
			<INPUT type="hidden" style="display:none" name="bid" value="<?php echo $row["id"]  ;?>"/>
		</th>
		<th>
			Designation<br>
			<INPUT  type="text" style="display:none" name="desig" Placeholder="Designation" />
		</th>
		<th>
			Address<br>
			<textarea  style="display:none" name="adde" ></textarea>
		</th>
		<th>
			Category<br>
			<INPUT type="text" style="display:none" name="cate" Placeholder="Category"/>
		</th>
		
		<th>
			Action<br>
			<INPUT type="submit" name="add"style="display:none" value="Add"/>
		</th>
	</form>
    </tr></thead><tbody class="scrollContent"> 
	<tr>		
		<form role="form" action="bos_dept1.php" method="post" enctype="multipart/form-data">
			<td>
				<INPUT type="text"  name="name" Placeholder="Name" required  />
			<INPUT type="hidden" style="display:none" name="bid" value="<?php echo $row["id"]  ;?>"/>
			</td>
			<td>
				<INPUT type="text"  name="desig" Placeholder="Designation" required  />
			</td>
			<td>
				<textarea  name="adde" required ></textarea>
			</td>
			<td>
				<INPUT type="text"  name="cate" Placeholder="Category"  required />
			</td>
			
			<td>
				<INPUT type="submit" name="add" value="Add"/>
			</td>
		</form>
    </tr>
	<?php
	$deptid=$_SESSION['deptid'];
	$bid=$row["id"];
	$abcd=$deptid."_bos_mem";
	$sql3="SELECT * FROM `$abcd` WHERE bid='$bid'";
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
					<INPUT type="text" name="" value="<?php echo $row3["desig"] ?>" readonly />
				</TD>
				<TD>
					<textarea readonly> <?php echo $row3["adde"] ?>  </textarea>
				</TD>
				<TD>
					<INPUT type="text" name="" value="<?php echo $row3["cate"] ?>" readonly />
				</TD>
				
				<TD>
					<form action="bos_dept1.php" method="post">
						<INPUT type="hidden" name="id" value="<?php echo $row3["id"] ?>" />
						<button type="submit" name="delete"/><img title="Delete" src="../images/delete.png" height="25px" width="25px"></button>
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
	<?php
 	

	
	
}
if(isset($_POST["add"])){
	
 $bid=$_POST["bid"];
 $name=$_POST["name"];
 $desig=$_POST["desig"];
 $adde=$_POST["adde"];
 $cate=$_POST["cate"];
 
 $deptid=$_SESSION['deptid'];
 $abcd=$deptid."_bos_mem";
	$sql2 = "INSERT into `$abcd` (bid,name,desig,adde,cate) VALUES ('$bid','$name','$desig','$adde','$cate')";	
 	if(mysqli_query($con,$sql2))
	{
		echo '<script language="javascript">alert("Inserted Successfully");</script>';
		echo '<script type="text/javascript">window.location.href = "bos_dept1.php";</script>';
	}
	else 
	{
		echo "Error1: " . $sql2 . "<br>" . $conn->error;
	}
}
if(isset($_POST["delete"])){
	$id=$_POST["id"];
	$deptid=$_SESSION['deptid'];
	$abcd=$deptid."_bos_mem";
	$sql5 = "DELETE FROM `$abcd` WHERE id='$id'";
						if(mysqli_query($con,$sql5))
						{
							echo '<script language="javascript">alert("Deleted Successfully");</script>';
							echo '<script type="text/javascript">window.location.href = "bos_dept1.php";</script>';
						}else 
	{
		echo "Error1: " . $sql5 . "<br>" . $con->error;
	}
}
?>
<script>
function image()
{
var fileInput = document.getElementById('file');
    var filePath = fileInput.value;
    var allowedExtensions = /(\.JPEG|\.jpeg)$/i;
	// if {
	//	 document.getElementById('mes1').style.display="block";
	//	document.getElementById('mes1').innerHTML="Image too big (max 100kb)";
		// alert('Image too big (max 100kb)');
     //   return false;
   // }
    if(!allowedExtensions.exec(filePath)){
		if(file.files[0].size > 102400)
		{
       // alert('Please upload file having extensions .jpeg only.');
	    document.getElementById('msg').style.display="block";
		document.getElementById('msg').innerHTML="Please upload .jpeg file only and Image too big.";
        return false;
		}
		else{
			 document.getElementById('msg').style.display="block";
		document.getElementById('msg').innerHTML="Please upload file having extensions .jpeg only.";
        return false;
		}
    }else{
		if(file.files[0].size > 102400)
		{
       // alert('Please upload file having extensions .jpeg only.');
	    document.getElementById('msg').style.display="block";
		document.getElementById('msg').innerHTML="Image too big.";
        return false;
		}else{
		document.getElementById('msg').style.display="none";
		return( true );
		}
        //Image preview
       // if (fileInput.files && fileInput.files[0]) {
        //    var reader = new FileReader();
        //    reader.onload = function(e) {
        //        document.getElementById('imagePreview').innerHTML = '<img src="'+e.target.result+'"/>';
        //    };
        //    reader.readAsDataURL(fileInput.files[0]);
        }
    }
</script>