<?php
session_start();

include('gallery_crud.php');  
?> 

<?php
include_once 'connection.php';
if(isset($_GET['remove_id']))
{
	$res=mysqli_query($con,"SELECT file FROM gallery WHERE id=".$_GET['remove_id']);
	$row=mysqli_fetch_array($res);
	mysqli_query($con,"DELETE FROM gallery WHERE id=".$_GET['remove_id']);
	unlink("../gallery/".$row['file']);
	header("Location: gallery_admin.php");
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
<title>ADD</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-responsive.css" rel="stylesheet">
<!--[if lt IE 9]><script src="js/html5.js"></script><![endif]-->
<link href='http://fonts.googleapis.com/css?family=Lato:300' rel='stylesheet' type='text/css'>
<script type="text/javascript">
function remove(id)
{
	if(confirm(' Are you sure to remove file ? '))
	{
		window.location='gallery_admin.php?remove_id='+id;
	}
}
</script>
</head>
<body>

<hr>
  
     
     
    
  <div class="container" id="form">
	<h2>Upload a photo to gallery</h2>
  <form role="form" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>"method="post" enctype="multipart/form-data">
     <div class="form-group">
      <label for="caption">Photo Caption:</label>
      <input type="text" name="caption" value="<?php if(isset($_GET['edit'])) echo $getRow['caption'];  ?>"/>
    </div>
    <div class="form-group">
      <label for="file">Photo:</label>
      <input type="file" name="file"/>
    </div>
        <button type="submit" name="btn-upload"  style="text-align:center">upload</button>
	   
	   
	    
	   
  </form>
  </div>
<hr/>
<?php
$sql="SELECT * FROM gallery";
$result_set=mysqli_query($con,$sql);
?>
<div class="container">
<table class="table table-responsive">
   <tr>
		<th>Photo Caption</th>
		<th style="text-align:center;">Photo Type</th>
        
	</tr>
    <?php
	
	while($row=mysqli_fetch_array($result_set))
	{
		?>
        <tr>
        <td><?php echo $row['caption']; ?></td>
        
        <td style="text-align:center;"><a class="btn btn-success" href="../gallery/<?php echo $row['file']; ?>" target="_blank">View</a></td>
        
        <td style="text-align:center;"><a href="javascript:remove(<?php echo $row['id']; ?>)" class="btn btn-danger">Delete</a></td>
        </tr>
        <?php
	}
	?>
    
    </table>
    </div>
<!-- /Content Section -->

        </div>
    </div>
     
     
 
<script src="js/jquery-1.7.1.min.js"></script>
<script src="js/bootstrap-transition.js"></script>
<script src="js/bootstrap-carousel.js"></script>
<script src="js/bootstrap-alert.js"></script>
<script src="js/bootstrap-modal.js"></script>
<script src="js/bootstrap-dropdown.js"></script>
<script src="js/bootstrap-scrollspy.js"></script>
<script src="js/bootstrap-tab.js"></script>
<script src="js/bootstrap-tooltip.js"></script>
<script src="js/bootstrap-popover.js"></script>
<script src="js/bootstrap-button.js"></script>
<script src="js/bootstrap-collapse.js"></script>
<script src="js/bootstrap-typeahead.js"></script>
<script src="js/jquery-ui-1.8.18.custom.min.js"></script>
<script src="js/jquery.smooth-scroll.min.js"></script>
<script src="js/lightbox.js"></script>
<script>
$('.carousel').carousel({
  interval: 5000
})
</script>
</body>

</html>

<?php
include_once 'connection.php';
if(isset($_POST['btn-upload']))
{    
    $caption = $_POST['caption']; 
	$file = rand(1000,100000)."-".$_FILES['file']['name'];
    $file_loc = $_FILES['file']['tmp_name'];
	$file_size = $_FILES['file']['size'];
	$file_type = $_FILES['file']['type'];
	$folder="../gallery/";
	
	// new file size in KB
	$new_size = $file_size/1024;  
	// new file size in KB
	
	// make file name in lower case
	$new_file_name = strtolower($file);
	// make file name in lower case
	
	$final_file=str_replace(' ','-',$new_file_name);
	
	if(move_uploaded_file($file_loc,$folder.$final_file))
	{
		$sql="INSERT INTO gallery(caption,file) VALUES('$caption','$final_file')";
		mysqli_query($con,$sql);
		?>
		<script>
		alert('successfully uploaded');
        window.location.href='gallery_admin.php?success';
        </script>
		<?php
	}
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