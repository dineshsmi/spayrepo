<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>




<!DOCTYPE html>
<!-- 
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.3.1
Version: 3.3.0
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8"/>
<title>Metronic | Login Options - Login Form 4</title>




<style type="text/css">
#message
{
text-align:center;
height: 25px;
width: 250px;
color:#000;
}
</style>


<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<script type="text/javascript">
function reset(){
	/* alert("function"); */
	var id=document.getElementById("merchantid").value;
	/* alert(id); */
	window.location.href="<%=request.getContextPath()%>/resetpassword?id="+id;
}
</script>

</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body bgcolor="lightblue">

<!-- END LOGO -->
<!-- BEGIN LOGIN -->
<div Style="align:center;">
	<!-- BEGIN LOGIN FORM -->
	
	 <span id="message">
	    Dear ${mername}, Greetings ! Welcome to SPAY...Your Account Password has been sent to your mail Id.
	</span>
<span>
Please Check your mail box for Password. Please Click here to <a href="javascript:reset();">Login</a>
</span>

	<!-- END LOGIN FORM -->
	<!-- BEGIN FORGOT PASSWORD FORM -->
	<!-- END FORGOT PASSWORD FORM -->
<input type="hidden" name="fname" id="merchantid" value="${merchantId}">
</div>
</body>
<!-- END BODY -->
</html>