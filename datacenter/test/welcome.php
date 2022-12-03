<html>
<body>
 <form role="form" action="welcome.php" method="post" enctype="multipart/form-data" onsubmit="return(fileValidate());" >
<div class="row">
      <div class="col-25">
        <label class="required" for="subject">Upload Photo(only JPEG Format and flie size max. 100KB)</label>
      </div>
       
	  <div class="col-25">
       <input type="file"  title="only JPEG Format" id="file2" name="file2" >
	   <span id="msg" style="color: red;"></span>
      </div>
	  <div class="col-25">
	  <br>
        <label class="required" for="subject">Upload AADHAR (only PDF format)</label>
      </div>
       
	   <div class="col-25">
	   <br>
       <input type="file"  title="only PDF Format"id="file1" name="file1" >
	    <span id="msg1" style="color: red;"></span>
      </div> 
    </div>
	
	
	<br><br>
	
    <div class="row">
      <input type="submit" name="submit" value="Submit">
    </div>
  </form>
</body>
<script>
function fileValidate()
{
    image();
	ad();
	 
}
function image()
{
 var fileInput = document.getElementById('file2');
    var filePath = fileInput.value;
    var allowedExtensions = /(\.JPEG|\.jpeg)$/i;
	 if(file2.files[0].size > 102400) {
       // document.getElementById("msg").innerHTML = "Image too big (max 100kb)";
		 alert('Image too big (max 100kb)');
        return false;
    }
    if(!allowedExtensions.exec(filePath)){
        alert('Please upload file having extensions .jpeg only.');
        fileInput.value = '';
        return false;
    }else{
        //Image preview
        if (fileInput.files && fileInput.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                document.getElementById('imagePreview').innerHTML = '<img src="'+e.target.result+'"/>';
            };
            reader.readAsDataURL(fileInput.files[0]);
        }
    }
}
function ad(){
   
	//PDF
  var allowedFiles = [".pdf"];
        var fileUpload = document.getElementById("file1");
        //var lblError = document.getElementById("msg1");
        var regex = new RegExp("([a-zA-Z0-9\s_\\.\-:])+(" + allowedFiles.join('|') + ")$");
        if (!regex.test(fileUpload.value.toLowerCase())) 
		{
			 alert('Please upload files having extensions pdf');
           // lblError.innerHTML = "Please upload files having extensions: <b>" + allowedFiles.join(', ') + "</b> only.";
            return false;
        }
        //lblError.innerHTML = "";
        return true;

}
</script>
</html>








var fileInput = document.getElementById('file2');
    var filePath = fileInput.value;
    var allowedExtensions = /(\.JPEG|\.jpeg)$/i;
	// if {
	//	 document.getElementById('mes1').style.display="block";
	//	document.getElementById('mes1').innerHTML="Image too big (max 100kb)";
		// alert('Image too big (max 100kb)');
     //   return false;
   // }
    if(!allowedExtensions.exec(filePath)){
		if(file2.files[0].size > 102400)
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
		if(file2.files[0].size > 102400)
		{
       // alert('Please upload file having extensions .jpeg only.');
	    document.getElementById('msg').style.display="block";
		document.getElementById('msg').innerHTML="Please upload .jpeg file only and Image too big.";
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