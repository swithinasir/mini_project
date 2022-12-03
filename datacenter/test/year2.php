 <?php
session_start();
echo $_SESSION['deptid'];
?>
 <div class="container" id="form">
	<h2>Upload a photo to gallery</h2>
  <form role="form" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>"method="post" enctype="multipart/form-data">
     <div class="row">
      <div class="col-25">
        <label for="fname">Name:</label>
      </div>
      <div class="col-25">
        <input type="text" id="name" name="name" >
      </div>
   
      <div class="col-25">
        <label for="fname">&nbsp;&nbsp;Father Name:</label>
      </div>
      <div class="col-25">
        <input type="text" id="fname" name="fname" >
      </div>
    </div>
	
	
	 <div class="row">
      <div class="col-25">
        <label for="fname">DOB</label>
      </div>
      <div class="col-25">
        <input type="date" id="dob" name="dob" >
      </div>
   
    <div class="col-25">
        <label for="subject">&nbsp;&nbsp;Mother Name:</label>
      </div>
       
	   <div class="col-25">
       <input type="text" id="mname" name="mname">
      </div>
      
    </div>
	
	
	<div class="row">
	<div class="col-25">
        <label for="fname">Age:</label>
      </div>
      <div class="col-25">
        <input type="text" id="age" name="age" >
      </div>
	  
	  
	   <div class="col-25">
        <label for="fname">&nbsp;&nbsp;Marital Status:</label>
      </div>
      <div class="col-25">	  
	<input type="radio" name="mstatus" value="y">Married &nbsp;&nbsp;
  <input type="radio" name="mstatus" value="n"> Unmarried &nbsp;&nbsp;
  	</div>
	</div>
	<div class="row">
      <div class="col-25">
        <label for="fname">Gender:</label>
      </div>
      <div class="col-25">
	  
	<input type="radio" name="gender" value="m">Male &nbsp;&nbsp;
  <input type="radio" name="gender" value="f"> Female &nbsp;&nbsp;
  
	</div>
	 <div class="col-25">
        <label for="subject">&nbsp;&nbsp;Spouse Name:</label>
      </div>
       
	   <div class="col-25">
       <input type="text" id="sname" name="sname">
      </div>
     
    </div>
	
	
   <div class="row">
      <div class="col-25">
        <label for="lname">Email ID:</label>
      </div>
      <div class="col-25">
        <input type="email" id="email" name="email">
      </div>
    <div class="col-25">
        <label for="lname">&nbsp;&nbsp;Mobile No:</label>
      </div>
      <div class="col-25">
        <input type="text" id="mob1" name="mob1">
      </div>
     
	</div>
	
	
    <div class="row">
      <div class="col-25">
        <label for="subject">Relegion:</label>
      </div>
       
	   <div class="col-25">
       <input type="text" id="relegion" name="relegion">
      </div>
   
      <div class="col-25">
        <label for="subject">&nbsp;&nbsp;Community:</label>
      </div>
       
	   <div class="col-25">
       <input type="text" id="comunity" name="comunity">
      </div>
    </div>
	
	<script type= "text/javascript" src = "js1/countries.js"></script>
	
	<div class="row">
      
	  <div class="col-25">
        <label for="subject">Country:</label>
      </div>
       
	   <div class="col-25">
       <select id="country" name ="country"></select>
      </div>
    
	
      <div class="col-25">
        <label for="subject">&nbsp;&nbsp;State:</label>
      </div>
       
	   <div class="col-25">
       <select name ="state" id ="state"></select>
      </div>
    </div>

	<script language="javascript">
	populateCountries("country", "state"); // first parameter is id of country drop-down and second parameter is id of state drop-down
	populateCountries("country2");
	populateCountries("country2");
</script>
	
	<div class="row">
      <div class="col-25">
        <label for="subject">District:</label>
      </div>
       
	   <div class="col-25">
       <input type="text" id="district" name="district">
      </div>
  
      <div class="col-25">
        <label for="subject">&nbsp;&nbsp;City:</label>
      </div>
       
	   <div class="col-25">
       <input type="text" id="city" name="city">
      </div>
    </div>
	
	<div class="row">
      <div class="col-25">
        <label for="subject">Place:</label>
      </div>
       
	   <div class="col-25">
       <input type="text" id="place" name="place">
      </div>
    
      <div class="col-25">
        <label for="subject">&nbsp;&nbsp;PIN CODE:</label>
      </div>
       
	   <div class="col-25">
       <input type="text" id="pincode" name="pincode">
      </div>
    </div>
	
	<SCRIPT language="javascript">
		function addCombo() {
	var textb = document.getElementById("txtCombo");
	var combo = document.getElementById("combo");
	
	var option = document.createElement("option");
	option.text = textb.value;
	option.value = textb.value;
	try {
		combo.add(option, null); //Standard 
	}catch(error) {
		combo.add(option); // IE only
	}
	textb.value = "";
}
		</SCRIPT>
		
	<div class="row">
      <div class="col-25">
        <label for="subject">Address:</label>
      </div>
	  
	 <div class="col-25">
       <textarea rows="4" cols="25" name="address" id="address">
	   </textarea>
      </div>
    
	<SCRIPT language="javascript">
function FillBilling(f) {
  if(f.billingtoo.checked == true) {
    f.paddress.value = f.address.value;
  }
}
</SCRIPT>
&nbsp;&nbsp;	<input type="checkbox" name="billingtoo" onclick="FillBilling(this.form)">
<em>&nbsp;&nbsp;Check this box if Address and Permanent Address are the same.</em>

      <div class="col-25">
        <label for="subject">&nbsp;&nbsp;Permanent Address:</label>
      </div>
	  
	 <div class="col-25">
       <textarea rows="4" cols="25" name="paddress" id="paddress">
	   </textarea>
      </div>
    </div>
	
	<div class="row">
      <div class="col-25">
        <label for="subject">AADHAR ID:</label>
      </div>
       
	   <div class="col-25">
       <input type="text" id="aadharno" name="aadharno">
      </div>
   
      <div class="col-25">
        <label for="subject">&nbsp;&nbsp;PAN NO:</label>
      </div>
       
	   <div class="col-25">
       <input type="text" id="panno" name="panno">
      </div>
    </div>
	
	<div class="row">
      <div class="col-25">
        <label for="subject">Passport NO:</label>
      </div>
       
	   <div class="col-25">
       <input type="text" id="passport" name="passport">
      </div>
   
      <div class="col-25">
        <label for="subject">&nbsp;&nbsp;Designation:</label>
      </div>
       
	   <div class="col-25">
       <input type="text" id="designation" name="designation">
      </div>
    </div>
	
	<div class="row">
      <div class="col-25">
        <label for="subject">Blood group:</label>
      </div>
       
	   <div class="col-25">
       <input type="text" id="blood" name="blood">
      </div>
   <div class="col-25">
        <label for="subject">&nbsp;&nbsp;Alternate Mobile Number:</label>
      </div>
       
	   <div class="col-25">
       <input type="text" id="mob2" name="mob2">
      </div>
     
    </div>
	
	
	
	<div class="row">
      <div class="col-25">
        <label for="subject">Date of Joining:</label>
      </div>
       
	   <div class="col-25">
       <input type="date" id="doj" name="doj">
      </div>
   
    <div class="col-25">
        <label for="subject">&nbsp;&nbsp;Department:</label>
      </div>
       
	   <div class="col-25">
       <select name="dept" required>
		<option value="mca">MCA</option>
 <option value="aero">AERO</option>

</select>
      </div>
     
    </div>
    <div class="form-group">
      <label for="file">Photo:</label>
      <input type="file" name="file"/>
    </div>
        <button type="submit" name="btn-upload"  style="text-align:center">upload</button>
	   
	   
	    
	   
  </form>
  </div>
  <?php
include_once 'config.php';
if(isset($_POST['btn-upload']))
{    
    
	$name=$_POST["name"];
$dob=$_POST["dob"];
$age =$_POST["age"];
$gender =$_POST["gender"];
$email =$_POST["email"];
$mob1 =$_POST["mob1"];
$fname =$_POST["fname"];
$mname =$_POST["mname"];
$mstatus =$_POST["mstatus"];
$sname =$_POST["sname"];
$relegion=$_POST["relegion"];
$comunity =$_POST["comunity"];
$place =$_POST["place"];
$city =$_POST["city"];
$district =$_POST["district"];
$state =$_POST["state"];
$country =$_POST["country"];
$pincode =$_POST["pincode"];
$address =$_POST["address"];
$paddress =$_POST["paddress"];
$aadharno =$_POST["aadharno"];
$panno =$_POST["panno"];
$passport =$_POST["passport"];
$blood =$_POST["blood"];
$doj=$_POST["doj"];
$designation =$_POST["designation"];
$mob2 =$_POST["mob2"];
$dept =$_POST["dept"];

$deptid=$_SESSION['deptid'];
$aaa=$deptid."_fac";

$count=1001;
// variables for input data
$a=strtotime($_POST['doj']);
$b=date("y", $a);
$de=$_POST['dept'];
$sql="SELECT * FROM `$aaa`";
$result = $con->query($sql);
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
		
		$aa=strtotime($row['doj']);
		$bb=date("y", $aa);
		if($b==$bb)
		{
			$count=$count+1;
		}
       
    }
}
else
{
	$count=1001;
}
$coun=substr($count, 1, 3);
$sid="S".$b.$de.$coun;
	
	
	$file = rand(1000,100000)."-".$_FILES['file']['name'];
    $file_loc = $_FILES['file']['tmp_name'];
	$file_size = $_FILES['file']['size'];
	$file_type = $_FILES['file']['type'];
	$folder="../sam/gallery/";
	
	// new file size in KB
	$new_size = $file_size/1024;  
	// new file size in KB
	
	// make file name in lower case
	$new_file_name = strtolower($file);
	// make file name in lower case
	
	$final_file=str_replace(' ','-',$new_file_name);
	
	if(move_uploaded_file($file_loc,$folder.$final_file))
	{
        $sql = "INSERT into `$aaa` (sid,name,dob,age,gender,email,mob1,fname,mname,mstatus,sname,relegion,comunity,place,city,district,state,country,pincode,address,paddress,aadharno,panno,passport,blood,doj,designation,mob2,dept) VALUES ('$sid','$name','$dob','$age','$gender','$email','$mob1','$fname','$mname','$mstatus','$sname','$relegion','$comunity','$place','$city','$district','$state','$country','$pincode','$address','$paddress','$aadharno','$panno','$passport','$blood','$doj','$designation','$mob2','$dept','$final_file')";
		if(mysqli_query($con,$sql))
		{
		?>
		<script>
		alert('successfully uploaded');
        window.location.href='gallery_admin.php?success';
        </script>
		<?php
	}}
	else
	{
		?>
		<script>
		alert('error while uploading file');
        window.location.href='gallery_admin.php?fail';
        </script>
		<?php
	}
}

?>