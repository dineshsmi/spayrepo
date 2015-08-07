<!DOCTYPE html>

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
<link href="<%=request.getContextPath()%>/resources/admin/pages/css/login2.css" rel="stylesheet" type="text/css"/>
<!-- END PAGE LEVEL SCRIPTS -->
<!-- BEGIN THEME STYLES -->
<link href="<%=request.getContextPath()%>/resources/global/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/resources/global/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/resources/admin/layout/css/layout.css" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/resources/admin/layout/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color"/>
<link href="<%=request.getContextPath()%>/resources/admin/layout/css/custom_acquirer.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico"/>

<script type="text/javascript">
function update(){
	
	/* alert("function"); */
	var auto = document.getElementById("autopwd").value;
	var newpass = document.getElementById("newpwd").value;
	var conpass = document.getElementById("confirmpwd").value;
	var id = document.getElementById("adminId").value;
	alert(id);
	if(auto == "" && newpass == "" && conpass == "")
    {
    	/* alert("test") */
    	 document.getElementById("erroruser").innerHTML = "Fill all the fields";
    	document.getElementById("errorpassword").innerHTML = "";
    	$('#password').hide();
    	return false;
    }
	 else{
		 if(conpass == "" && auto == ""){
		    	
		    	document.getElementById("errorpassword").innerHTML = "Enter the auto generated password";
		    	document.getElementById("erroruser").innerHTML = "Enter the confirm password";
		    	 $('#password').hide();
		    	 return false;
		   
		    }
		    else{
		    	 if(newpass == "" && auto == ""){
				    	
				    	document.getElementById("errorpassword").innerHTML = "Enter the auto generated password";
				    	document.getElementById("erroruser").innerHTML = "Enter the New password";
				    	 $('#password').hide();
				    	 return false; 
			   
			    }
			    else{
			    	if(newpass == "" && conpass == ""){
				    	
				    	document.getElementById("errorpassword").innerHTML = "Enter the New password";
				    	document.getElementById("erroruser").innerHTML = "Enter the confirm password";
				    	 $('#password').hide();
				    	 return false;  
				    
				    }
				    else{
				    	if(newpass == ""){
					    	
					    	document.getElementById("errorpassword").innerHTML = "Enter the New password";
					    	document.getElementById("erroruser").innerHTML = "";
					    	 $('#password').hide();
					    	 return false;  
					    
					    }
					    else{
					    	 if(conpass == ""){
							    	
							    	document.getElementById("errorpassword").innerHTML = "Enter the confirm password";
							    	document.getElementById("erroruser").innerHTML = "";
							    	 $('#password').hide();
							    	 return false;  
						   
						    }
						    else{
						    	 if(auto == ""){
								    	
								    	document.getElementById("erroruser").innerHTML = "Enter the auto generated password";
								    	document.getElementById("errorpassword").innerHTML = "";
								    	 $('#password').hide();
								    	 return false;  
							    
							    }
		    else
		    {
		    	if(newpass == conpass){
		    		document.getElementById("errorpassword").innerHTML = "";
			   		document.getElementById("erroruser").innerHTML = "";
		        	$('#password').hide();
		    		document.resetform.action="<%=request.getContextPath()%>/adminreset?id="+id;
			   	   	document.resetform.submit();  
		        	
		        }
		   	else{
		   		document.getElementById("errorpassword").innerHTML = "Enter the same password";
		   		document.getElementById("erroruser").innerHTML = "";
	        	$('#password').hide();
	        	return false;
		   	}
   
 } 
	 }
}
}
}
}
}
}
function goBack() {
    window.history.back();
}
</script>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="login" bgcolor="white">
<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
<div class="menu-toggler sidebar-toggler">
</div>
<!-- END SIDEBAR TOGGLER BUTTON -->
<!-- BEGIN LOGO -->
<div class="logo">
	<img src="<%=request.getContextPath()%>/resources/assets/admin/layout2/img/SpayLogo.png" style="height: 17px;" alt=""/>
   <h2 style="color:blue;">Acquirer Control Center</h2>

</div>
<!-- END LOGO -->
<!-- BEGIN LOGIN -->
<div class="content">
	<!-- BEGIN RESET FORM -->
	<form class="login-form" action="" method="post" name="resetform">
		
		<h3 class="form-title">Please change Password</h3>
		<span class="error" id="erroruser" style="color:red"></span>
		<br>
		<span class="error" id="errorpassword" style="color:red"></span>
		<span class="error" id="password" style="color:red">${error}</span>
		<label id="dis"></label><br>
		
		<div class="form-group">
			<input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="Enter your auto Generated Password" name="autopwd" id="autopwd"/>
			<span class="error" id="erroruser"></span>
		</div>
		
		<div class="form-group">
			<input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="Enter your new password" name="newpassword" id="newpwd"/>
			<span class="error" id="errorpassword"></span>
		</div>
		
		<div class="form-group">
			<input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="Confirm password" name="confirmpassword" id="confirmpwd"/>
			<span class="error" id="errornewpassword"></span>
		</div>
		<div class="form-actions">
			<button type="button" id="back-btn" class="btn btn-primary" onclick="goBack()">Back</button>
			<button type="button" class="btn btn-primary uppercase pull-right" id="id_sbt_btn" onclick="update();">Submit</button>
		</div>
		<input type="hidden" name="adminid" id="adminId" value="${adminId}">
	</form>
	
	<!-- END RESET FORM -->

</div>
<div class="page-footer">
		<div class="page-footer-inner">
			<p style="margin-left:1158px"> @Powered by Sysmatik</p>
		</div>
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