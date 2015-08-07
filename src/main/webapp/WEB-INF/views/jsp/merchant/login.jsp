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
    	
    	//alert("test");
    	
    	var username=  $('#id_username').val();
    	var password = $('#id_password').val();
    	var merchantId = $('#id_merchantid').val();
    	
    	var hdnmerchantId = $('#id_dbMerchantId').val();
       	
       	var hdnautogenPwd = $('#id_dbAutogenPwd').val();
       	
       	var hdnmerchantChangedPwd = $('#id_dbMerchantChangedPwd').val();
       
    	
    	//alert("hdnmerchantChangedPwd===>:"+hdnmerchantChangedPwd);
    	
    	if(hdnmerchantChangedPwd=="null"){
    		
    		//alert("hrllo");
    	}
    	
    	
    	//alert("hdnmerchantId==>"+hdnmerchantId+"=====merchantId====>"+merchantId);
    	
    	
    	if(username=="" && password=="" && merchantId==""){
    		$('#dis').slideDown().html("<span>Please Enter Valid Credentials</span>");
    		return false;
    	}else{
    		$('#dis').slideDown().html("");
    	}
    	
    	
    	
    	if(username=="")
    	{
    		$('#dis').slideDown().html("<span>Please type Username</span>");
    		return false;
    	}else{
    		$('#dis').slideDown().html("");
    	}
    	
    	
    	if(merchantId=="")
    	{
    	$('#dis').slideDown().html("<span>Please type your  MerchantId</span>");
    	return false;
    	}else if(merchantId!="" && hdnmerchantId!=""){
    		  if(merchantId!=hdnmerchantId){
    			  
    			  $('#dis').slideDown().html("<span>Please Enter the Valid MerchantId</span>");
    			  return false;
    		  }else{
    			  $('#dis').slideDown().html("");
    		  }
    		
    		
    	}
    	
    	
    	if(password=="")
    	{
    	$('#dis').slideDown().html('<span>Please type Password</span>');
    	return false;
    	}
    	
    	
    	

    	if(username!="" && password!="" && merchantId!="")
    	{
    		
    		//alert("Everything given");
    		
     
    	
    	 if(hdnmerchantChangedPwd=="null"){
    		  
    		  
    		//alert("In hdnmerchantChangedPwd value is null");
      		
  	        $.ajax({
  			type: 'GET',
  			url: '<%=request.getContextPath()%>/authenticateCredentails',
  			data: {merchantid: merchantId,username: $('#id_username').val(),password: $('#id_password').val() },
  			success: function(response) 
  			{
  			    //alert("success:"+response);
  			    if(response.length>0)
  			    {
  			    	//alert('valid user');
  			    	<%-- window.location.replace("<%=request.getContextPath()%>/merchant/index"); --%>
  			    	window.location.replace("<%=request.getContextPath()%>/merchant/resetpassword?merchantId="+hdnmerchantId);
  			    }else
  			    {
  			    	//alert('Invalid user');
  			    	
  			    	if(hdnmerchantChangedPwd!=""){
  			    		//var content="<h4 id='statusDisplay'>Invalid Credentials.Please type your new Password</h4>";
  			    		var content="<h4 id='statusDisplay'>Invalid Credentials.</h4>";
  			    		document.getElementById("invalid_div").innerHTML=content;
      			    	//$('#invalid_div').append(content);
  			    		
  			    	}
  			    	
  			    	/* var content="<h4 id='statusDisplay'>Invalid Credentials</h4>";
  			    	$('#invalid_div').append(content); */
  			    	
  			    	
  			    	
  			    }
  			    
  			},
  			error: function(){
  				//alert("Error");
  			}
  			});
    	  
    	  
    	  
    	  
    	  }else{
    	    	
    	    	//alert("In hdnmerchantChangedPwd not null");
    	    	
    	    	if(hdnmerchantChangedPwd==$('#id_password').val()){
    	    		
    	    		//alert("changed password and given pwd are same");
    	    		
    	    		$.ajax({
            			type: 'GET',
            			url: '<%=request.getContextPath()%>/authenticateCredentails',
            			data: {merchantid: merchantId,username: $('#id_username').val(),password:hdnmerchantChangedPwd },
            			success: function(response) 
            			{
            			    //alert("success:"+response);
            			    if(response.length>0)
            			    {
            			    	//alert('valid user');
            			    	window.location.replace("<%=request.getContextPath()%>/merchant/index");
            			    }else
            			    {
            			    	//alert('Invalid user');
            			    	var content="<h4 id='statusDisplay'>Invalid Credentials</h4>";
            			    	document.getElementById("invalid_div").innerHTML=content;
            			    	//$('#invalid_div').append(content);
            			    }
            			    
            			},
            			error: function(){
            				//alert("Error");
            			}
            			});
    	    		
    	    		
    	    	}else if(hdnmerchantChangedPwd!=$('#id_password').val()){
    	    		
    	    		//alert("changed password and given pwd are not same");
    	    		
    	    		$.ajax({
            			type: 'GET',
            			url: '<%=request.getContextPath()%>/authenticateCredentails',
            			data: {merchantid: merchantId,username: $('#id_username').val(),password:$('#id_password').val() },
            			success: function(response) 
            			{
            			    //alert("success:"+response);
            			    if(response.length>0)
            			    {
            			    	//alert('valid user');
            			    	window.location.replace("<%=request.getContextPath()%>/merchant/index");
            			    }else
            			    {
            			    	//alert('Invalid user');
            			    	var content="<h4 id='statusDisplay'>Invalid Credentials</h4>";
            			    	document.getElementById("invalid_div").innerHTML=content;
            			    	//$('#invalid_div').append(content);
            			    }
            			    
            			},
            			error: function(){
            				//alert("Error");
            			}
            			});
    	    		
    	    		
    	    		
    	    		
    	    		
    	    		
    	    		
    	    	}
    	  }
    		
    	 
    	}
      
    });
});
function forget(){
	/* alert("forget"); */
    document.forgotform.submit();
     var mailid = document.getElementById("email").value;
    /* alert(mailid); */
    var hdnmerchantId = $('#id_dbMerchantId').val();
    /* alert(hdnmerchantId); */
    if(mailid == ""){
    	/* alert("check"); */
    	document.getElementById("erroruser").innerHTML = "Enter the MailId";
    }
    document.forgotform.submit();
    document.forgotform.action="<%=request.getContextPath()%>/forgetform?id="+hdnmerchantId;
}
</script>

</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="login" bgcolor="lightblue">
<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
<div class="menu-toggler sidebar-toggler">
</div>
<!-- END SIDEBAR TOGGLER BUTTON -->
<!-- BEGIN LOGO -->



<input type="hidden"  value="<c:out value= "${merchantPKId}"/>"  id="id_dbMerPkId"/>


<input type="hidden"  value="<c:out value= "${merchantId}" />"  id="id_dbMerchantId" />


<input type="hidden"   value="<c:out value= "${merchantChangedPassword}" />"  id="id_dbMerchantChangedPwd">


<input type="hidden"   value="<c:out value= "${merchantAutogeneratedPassword}" />"  id="id_dbAutogenPwd">




<div class="logo">
	<a href="index.html">
	<img src="<%=request.getContextPath()%>/resources/admin/layout2/img/bcellogo.jpg" width="100" height="80" alt=""/>
    <h2 style="margin:0px; text-decoration:none;">Merchant Control Center</h2>
	</a>
</div>
<!-- END LOGO -->
<!-- BEGIN LOGIN -->
<div class="content">
	<!-- BEGIN LOGIN FORM -->
	<form class="login-form" action="" method="">
		<h3 class="form-title">Login to your account</h3>
		
		
		<label id="dis"></label><br>
		
		
		<div id="invalid_div" class="forget-password"> 
		   <%--  <h4 id="statusDisplay">${authenticationStatus}</h4> --%>
	    </div>
		<div class="alert alert-danger display-hide">
			<button class="close" data-close="alert"></button>
			<span>
			Enter your username and password. </span>
		</div>
        <div class="form-group">
			<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
			<label class="control-label visible-ie8 visible-ie9">Merchant Id</label>
			<div class="input-icon">
				<i class="fa fa-key"></i>
				<input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="Merchant Id" name="merchantid" id="id_merchantid"/>
			</div>
		</div>
		<div class="form-group">
			<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
			<label class="control-label visible-ie8 visible-ie9">Username</label>
			<div class="input-icon">
				<i class="fa fa-user"></i>
				<input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="Username" name="username" id="id_username"/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label visible-ie8 visible-ie9">Password</label>
			<div class="input-icon">
				<i class="fa fa-lock"></i>
				<input class="form-control placeholder-no-fix" type="password" autocomplete="off" placeholder="Password" name="password" id="id_password"/>
			</div>
		</div>
		<div class="form-actions">
			<label class="checkbox">
			<input type="checkbox" name="remember" value="1"/> Remember me </label>
			<button type="button" class="btn blue pull-right" id="id_sbt_btn">
			Login <i class="m-icon-swapright m-icon-white"></i>
			</button>
		</div>
		<div class="forget-password">
			<h4>Forgot your password ?</h4>
			<p>
				 no worries, click <a href="javascript:;" id="forget-password">
				here </a>
				to reset your password.
			</p>
		</div>
	</form>
	<!-- END LOGIN FORM -->
	<!-- BEGIN FORGOT PASSWORD FORM -->
	<form class="forget-form" action="" method="post" name="forgotform">
		<div class="form-title">
			<span class="form-title">Forget Password ?</span>
			<span class="form-subtitle">Enter your e-mail to reset it.</span>
		</div>
		<div class="form-group">
			<input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="Email" name="email" id="email"/>
			<span class="error" id="erroruser"></span>
			
		</div>
		<div class="form-actions">
			<button type="button" id="back-btn" class="btn btn-default">Back</button>
			<button type="submit" class="btn btn-primary uppercase pull-right" onclick="forget();" id="forgotpassword">Submit</button>
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