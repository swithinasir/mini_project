<?php
session_start();
include("../conn/config.php");
if(isset($_POST['Submit']))
{
$deptid=$_SESSION['deptid'];
$aaa=$deptid."_fac";
$adminid=$_SESSION['sid'];
$oldpassword=$_POST['oldpass'];
$sql="SELECT * FROM `$aaa` where sid='$adminid' AND password='$oldpassword'";
 $result = $con->query($sql);
	if ($result->num_rows > 0) {
$newpass=$_POST['newpass'];
 $ret="update `$aaa` set password='$newpass' where sid='$adminid'";
 if(mysqli_query($con,$ret))
				{
	echo '<script language="javascript">alert("Password Changed Successfully...!");</script>';	
	echo '<script type="text/javascript">window.location.href = "fac_desc.php";</script>';
				}else
{
	echo $adminid;
$_SESSION['msg']="Department ID not match !!";
}
//header('location:user.php');
}
else
{
$_SESSION['msg']="Old Password not match !!";
}
}
?>
<script language="javascript" type="text/javascript">
function valid()
{
if(document.form1.oldpass.value=="")
{
alert(" Old Password Field Empty !!");
document.form1.oldpass.focus();
return false;
}
else if(document.form1.newpass.value=="")
{
alert(" New Password Field Empty !!");
document.form1.newpass.focus();
return false;
}
else if(document.form1.confirmpassword.value=="")
{
alert(" Re-Type Password Field Empty !!");
document.form1.confirmpassword.focus();
return false;
}

else if(document.form1.newpass.value!= document.form1.confirmpassword.value)
{
alert("Password and Re-Type Password Field do not match  !!");
document.form1.newpass.focus();
return false;
}
return true;
}
</script>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>Admin | Change Password</title>
  
  </head>

  <body>

         
  
          	<h3><i class="fa fa-angle-right"></i> Change Password </h3>
				<div class="row">
				
                  
	                  
                  <div class="col-md-12">
                      <div class="content-panel">
                           <form class="form-horizontal style-form" name="form1" method="post" action="#" onSubmit="return valid();">
						    
							<!--<p style="color:#F00"><?php echo $_SESSION['msg'];?><?php echo $_SESSION['msg']="";?></p>-->
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label" style="padding-left:40px;">Old Password</label>
                              <div class="col-sm-10">
                                  <input type="password" class="form-control" name="oldpass" value="" >
                              </div>
                          </div>
                          
                              <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label" style="padding-left:40px;">New Password</label>
                              <div class="col-sm-10">
                                  <input type="password" class="form-control" name="newpass" value="" >
                              </div>
                          </div>
                          
                              <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label" style="padding-left:40px;">Confirm Password</label>
                              <div class="col-sm-10">
                                  <input type="password" class="form-control" name="confirmpassword" value="" >
                              </div>
                          </div>
                          <div style="margin-left:100px;">
                          <input type="submit" name="Submit" value="Change" class="btn btn-theme"></div>
                          </form>
                      </div>
                  </div>
              </div>
	
  <script>
      $(function(){
          $('select.styled').customSelect();
      });

  </script>

  </body>
</html>
