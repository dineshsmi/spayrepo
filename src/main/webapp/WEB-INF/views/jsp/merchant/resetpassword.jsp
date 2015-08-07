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
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description"/>
<meta content="" name="author"/>
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/resources/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/resources/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/resources/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/resources/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link href="<%=request.getContextPath()%>/resources/admin/pages/css/login-soft.css" rel="stylesheet" type="text/css"/>
<!-- END PAGE LEVEL SCRIPTS -->
<!-- BEGIN THEME STYLES -->
<link href="<%=request.getContextPath()%>/resources/global/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/resources/global/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/resources/admin/layout2/css/layout.css" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/resources/admin/layout2/css/themes/light.css" rel="stylesheet" type="text/css" id="style_color"/>
<link href="<%=request.getContextPath()%>/resources/admin/layout2/css/custom_merchant.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico"/>


<style type="text/css">
#dis
{
text-align:center;
height: 25px;
width: 250px;
text-bgcolor: lightblue;
color:#000;
}
</style>


<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>



<script type="text/javascript">
$(document).ready(function(){
    $("#id_sbt_btn").click(function(){
    	
    	
    	
    	var autopwd =  $('#id_autopwd').val();
    	var mispwd =  $('#hiddenpass').val();
    	var newpwd = $('#id_newpwd').val();
    	var confPwd = $('#id_confirmpwd').val();
    	
    	var merchId =  $('#id_merchantId').val();
    	
    	
  
    	if(autopwd=="" && newpwd=="" && confPwd==""){
    		$('#dis').slideDown().html("<span>Please enter all the details</span>");
    		return false;
    	}
    	
    	
    	
    	if(autopwd=="")
    	{
    	$('#dis').slideDown().html("<span>Please type auto Generated pwd</span>");
    	return false;
    	}else{
    		if(autopwd != mispwd){
    			$('#dis').slideDown().html("<span>Enter your correct auto generated password </span>");
        		return false;
    		}
    	}
    	
    	
    	if(newpwd=="")
    	{
    	$('#dis').slideDown().html("<span>Please type your new password</span>");
    	return false;
    	}
    	
    
    	
    	if(confPwd=="")
    	{
    	$('#dis').slideDown().html('<span>Please type confirm password</span>');
    	return false;
    	}
    	
    	
    	if(newpwd!=""){
    		   var pwd = $('#id_newpwd').val();
    			
    			var Regex = (/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z]{6,}$/);
    			
    			/*
    			  (/^
                  (?=.*\d)                //should contain at least one digit
                  (?=.*[a-z])             //should contain at least one lower case
                  (?=.*[A-Z])             //should contain at least one upper case
                  [a-zA-Z0-9]{8,}         //should contain at least 8 from the mentioned characters
                   $/)
    			
    			
    			
    			*/
    			
    			if(!Regex.test(pwd)){
    				
    				$('#dis').slideDown().html("<span>Your new password Should contain at least 6 characters,at least one ,digit and one lower case and one upper case </span>");
        			$('#id_newpwd').focus();
    				return false;
    			}else{
    				
    				//alert("sddfdf");
    			}
    	}
    	
    
    	if(autopwd!="" && newpwd!="" && confPwd!="")
    	{
    		
    		

        	if(newpwd!="" && confPwd!=""){
        		
        		if(newpwd==confPwd){
        			 //alert("Both pwds match===>"+merchId+"====confPwd===>"+confPwd);
        			 

         	    	$.ajax({
         	    			type: 'GET',
         	    			url: '<%=request.getContextPath()%>/updateChangedPwd',
         	    			data: {merchantId:merchId,confirmedPwd:confPwd},
         	    			success: function(response) 
         	    			{
         	    			    //alert("success:"+response);
         	    			  if(response.length>0)
         	    			    {
         	    			    	alert('valid user');
         	    			    	window.location.replace("<%=request.getContextPath()%>/merchant/resetpasswordverified?merchantId="+merchId);
         	    			    	
         	    			    	
         	    			    }else
         	    			    {
         	    			    	//alert('Invalid user');
         	    			    	var content="<h4 id='statusDisplay'>Invalid Credentials</h4>";
         	    			    	$('#invalid_div').append(content);
         	    			    } 
         	    			},
         	    			error: function(){
         	    				alert("Error");
         	    			}
         	    			});
        		}else{
        			//alert("Pwds do not match");
        			$('#dis').slideDown().html("<span>Passwords do not match</span>");
        			return false;
        		}
        		
        	}
    		
    		
    	
    	
    	}
      
    });
});
</script>


</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="login">
<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
<div class="menu-toggler sidebar-toggler">
</div>
<!-- END SIDEBAR TOGGLER BUTTON -->
<!-- BEGIN LOGO -->


<input type="hidden"   value="<c:out value= "${merchantId}" />"  id="id_merchantId">





<div class="logo">
	<a href="index.html">
	<!--<img src="../assets/admin/layout2/img/logo-big-white.png" style="height: 17px;" alt=""/>-->
    <h2 style="margin:0px; text-decoration:none;">Merchant Control Center</h2>
	</a>
</div>
<!-- END LOGO -->
<!-- BEGIN LOGIN -->
<div class="content">
	<!-- BEGIN LOGIN FORM -->
	
	<!-- END LOGIN FORM -->
	<!-- BEGIN FORGOT PASSWORD FORM -->
	<form class="login-form" action="index.html" method="post">
		
		<h3 class="form-title">Please change Password</h3>
		
		
		
		<label id="dis"></label><br>
		
		<div class="form-group">
			<input class="form-control placeholder-no-fix" type="password" autocomplete="off" placeholder="Enter your auto Generated Password" name="autopwd" id="id_autopwd"/>
		</div>
		
		<div class="form-group">
			<input class="form-control placeholder-no-fix" type="password" autocomplete="off" placeholder="Enter your new password" name="newpassword" id="id_newpwd"/>
		</div>
		
		<div class="form-group">
			<input class="form-control placeholder-no-fix" type="password" autocomplete="off" placeholder="Confirm password" name="confirmpassword" id="id_confirmpwd"/>
		</div>
		
		<div class="form-actions">
			<button type="button" id="back-btn" class="btn btn-default">Back</button>
			<button type="button" class="btn btn-primary uppercase pull-right" id="id_sbt_btn">Submit</button>
			<input type="hidden" name="hiddenpass" id="hiddenpass" value="${deval}">
		</div>
	</form>
	<!-- END FORGOT PASSWORD FORM -->
</div>
<div class="copyright hide">
	 2014 © Metronic. Admin Dashboard Template.
</div>
<!-- END LOGIN -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="../../assets/global/plugins/respond.min.js"></script>
<script src="../../assets/global/plugins/excanvas.min.js"></script> 
<![endif]-->
<script src="<%=request.getContextPath()%>/resources/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="<%=request.getContextPath()%>/resources/global/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="<%=request.getContextPath()%>/resources/global/scripts/metronic.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/admin/layout/scripts/layout.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/admin/layout/scripts/demo.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/admin/pages/scripts/login.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
jQuery(document).ready(function() {     
	Metronic.init(); // init metronic core components
	Layout.init(); // init current layout
	Login.init();
	Demo.init();
});

</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>