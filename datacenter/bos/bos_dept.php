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

button {
    background-color: green;
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
.message{color:#FF0000;
font-size: small;
font-weight: bold; 
white-space: pre;
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


	<form action="bos_dept1.php" method="post" enctype="multipart/form-data" id = "form" onsubmit="return(validate());">
		
		<div class="row">
			<div class="col-25">
				<label for="fname">Academic Year</label>
			</div>
			<div class="col-25">
				<select id="ayear" name="ayear"  required>
				<?php
				$end=date("Y");
				if(date("m")<6)
				{
					$end=$end-1;
				}
				for($i=2007;$i<=$end;$i++)
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
				<label for="fname">Number of BOS</label>
			</div>
			<div class="col-25">
				<input type="number" id="n_bos" name="n_bos" required >
			</div>
		</div>
		<div class="row">
			<div class="col-25">
				<label for="fname">DATE</label>
				<label class="message" id="message0" ></label>
			</div>
			<div class="col-25">
				<input type="date" id="date" name="date" onblur="return(compare());"  required >
			</div>
		</div>
		<div class="row">
			<div class="col-25">
				<label for="fname">SAMPLE PICTURE (only JPEG / JPG Format and flie size max. 100KB) </label>
				<label class="message" id="msg" > </label>
			</div>
			<div class="col-25">
				<input type="file" title="only JPEG Format" id="file" name="file" onblur="return(image());" required >
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
<script>
function compare()
{
 var date = document.getElementById("date").value;
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
var date3 = new Date(date);
if((date3 < today)) 
{	
if((date3 < date2)) 
{	
	if((date3 < date1)) 
	{
     document.getElementById('message0').style.display="block";
		document.getElementById('message0').innerHTML="Invalid Date,it should be between the academic year";
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
		document.getElementById('message0').innerHTML="Invalid Date,it should be between the academic year";
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
function image()
{
	var fileInput = document.getElementById('file');
    var filePath = fileInput.value;
    var allowedExtensions = /(\.JPEG|\.jpeg|\.JPG|\.jpg)$/i;
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
		document.getElementById('msg').innerHTML="Please upload .jpeg or .jpg file only and Image too big.";
        return false;
		}
		else{
			 document.getElementById('msg').style.display="block";
		document.getElementById('msg').innerHTML="Please upload file having extensions .jpeg or .jpg only.";
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
		return true ;
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
function validate()
{
	var valid = true;
	valid = valid && compare();
	valid = valid && image();
	 return valid;
}
 $('form').submit(validate);
</script>