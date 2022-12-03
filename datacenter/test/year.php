
<HTML>

	
	<SCRIPT language="javascript">
		function addRow() {
var textb = parseInt(document.getElementById("txtCombo"),10);

			for(var j=0; j<textb; j++) {
			var table = document.getElementById('dataTable');

			var rowCount = table.rows.length;
			var row = table.insertRow(rowCount);
			
			var colCount = table.rows[0].cells.length;

			for(var i=0; i<colCount; i++) {

				var newcell	= row.insertCell(i);

				newcell.innerHTML = table.rows[0].cells[i].innerHTML;
				//alert(newcell.childNodes);
				
			}
			}
		}

		

	</SCRIPT>

<BODY>
<br>

     
<lable> No.of.Scholars</lable><lable><lable>
<input type="text" name="txtCombo" id="txtCombo"/>
	<INPUT type="button" value="Add Row" onClick="addRow()" />

	

	<TABLE id="dataTable" width="350px" border="1">
	
		<TR>
			
			<TD><INPUT type="text" name="reg[]" Placeholder="Register NO."/></TD>
			<TD><INPUT type="text" name="name[]" Placeholder="Name"/></TD>
			<TD><INPUT type="text" name="year[]" Placeholder="Year of Complition"/></TD>
			<TD><INPUT type="text" name="spec[]" Placeholder="Specialization"/></TD>
			<TD><INPUT type="text" name="tit[]" Placeholder="Title of THESIS"/></TD>
		</TR>
	</TABLE>
<script type="text/javascript">
function createTable()
{
    var num_rows = document.getElementById('rows').value;
   
    var theader = '<TABLE id="dataTable" width="350px" border="1">\n';
    var tbody = '';
    for( var i=0; i<num_rows;i++)
    {
        tbody += '<TR>';
 tbody += '<TD><INPUT type="text" name="reg[]" Placeholder="Register NO."/></TD>';
 tbody += '<TD><INPUT type="text" name="name[]" Placeholder="Name"/></TD>';
 tbody += '<TD><INPUT type="text" name="year[]" Placeholder="Year of Complition"/></TD>';
 tbody += '<TD><INPUT type="text" name="spec[]" Placeholder="Specialization"/></TD>';
 tbody += '<TD><INPUT type="text" name="tit[]" Placeholder="Title of THESIS"/></TD>';
 tbody += '</TR>';
        tbody += '\n';
    }
    var tfooter = '</table>';
    document.getElementById('wrapper').innerHTML = theader + tbody + tfooter;
}
</script>


<script language="'JavaScript'">
function getwords(){
myOutput=document.getElementById('output');
textbox = document.getElementById('c_id');
if (textbox.value != "")
document.getElementById('output').value = textbox.value;
else
alert('<?php echo "No word has been entered!";?>')
}
</script>



</head>

<body>
<form action="samp.php">
<label>Rows: <input type="text" name="rows" id="rows"/></label><br />
<input name="generate" type="button" value="Create Table!" onclick='createTable();'/>
<div id="wrapper"></div>

 

<input type="submit" name="submit" value="Submit">
</form>		
<input name="c_id" type="text" id="words"  önChange="getwords()">
<div id="output"></div>
<input name="fname" type="text" id="noi" >
</BODY>
</HTML>
