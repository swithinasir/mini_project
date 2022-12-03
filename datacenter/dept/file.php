<?php
session_start();
include("../conn/config.php");
?>
			<form role="form" action="file.php" method="post" enctype="multipart/form-data">
				<input type="text" name="ayear" >
				<th>Sanctioned Intake<br><INPUT type="text" name="intake" Placeholder="Sanctioned Intake"/></th>
					<th>Afflicated with<br><INPUT type="text" name="aff" Placeholder="Afflicated with"/></th>
					<th>Afflicated certificate <br><input type="file" name="file"></th>
				<?php /*
				echo'<th>Afflicated certificate <br><label for="upload" class="file-upload__label">Upload File</label>
						<input id="upload" class="file-upload__input" type="file" name="file"></th>';
					echo'<th>NBA Certificate<br> <label for="upload" class="file-upload__label">Upload File</label>
						<input id="upload" class="file-upload__input" type="file" name="file1"></th>';
						*/?>
				<button type="submit" name="submit">Submit</button>
			</form>
						<?php
						if(isset($_POST["add"])){
	$intake=$_POST["intake"];
	$aff=$_POST["aff"];
	$ayear=$_POST["ayear"];
	$file = rand(1000,100000)."-".$_FILES['file']['name'];
    $file_loc = $_FILES['file']['tmp_name'];
	$file_size = $_FILES['file']['size'];
	$file_type = $_FILES['file']['type'];
	$folder="../gallery/aff/mec_dept/";
	// new file size in KB
	$new_size = $file_size/1024;  
	// new file size in KB
	
	// make file name in lower case
	$new_file_name = strtolower($file);
	// make file name in lower case
	
	$final_file=str_replace(' ','-',$new_file_name);
	

	
	if(move_uploaded_file($file_loc,$folder.$final_file))
	{
		$sql = "INSERT into mec_dept (ayear,intake1,aff1,aff_cer1) VALUES ('$ayear','$intake','$aff','$final_file')";
		if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("Inserted Successfully");</script>';
		echo '<script type="text/javascript">window.location.href = "file.php";</script>';
	}
	else 
	{
		echo "Error1: " . $sql . "<br>" . $con->error;
	}
	}
	}
		?>