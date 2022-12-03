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
<?php
$n_bos=$_POST['n_bos'];

 $deptid=$_SESSION['deptid'];
 $aaa=$deptid."_bos";
 $abcd=$deptid."_bos_mem";
	$sql="SELECT * FROM `$aaa` WHERE n_bos='$n_bos'";
$result = $con->query($sql);
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
		
	</div>
	<div class="row">
		<div class="col-25">
			<label for="fname">Number of BOS</label>
		</div>
		<div class="col-25">
			<input type="text" id="date" name="date" value="<?php echo $row["n_bos"] ;?>" readonly>
		</div>
		
	</div>
	
	<div id="wrapper"></div>
	<div class="row">
		<div class="col-25">
			<label for="fname">Members</label>
		</div>
	</div>
	<?php  
	echo'<br><TABLE id="dataTable" border="0" cellpadding="0" cellspacing="0" width="100%" class="scrollTable">';  
	echo'<tr><thead class="fixedHeader">';
	?>
	
		<th>
			Name
		</th>
		<th>
			Designation
		</th>
		<th>
			Address
		</th>
		<th>
			Category
		</th>		
		
    </tr></thead><tbody class="scrollContent"> 
	
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