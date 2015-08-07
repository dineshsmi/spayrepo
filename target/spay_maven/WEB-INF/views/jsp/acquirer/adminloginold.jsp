<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	
	
     var uid = document.getElementById("username").value;
     var passid = document.getElementById("password").value;  
   
    if(uid == "" && passid == ""){
    	document.getElementById("error").innerHTML = "Enter the username and password";
    	document.getElementById("username").focus();
    	return false
    }else{
    	document.getElementById("error").innerHTML = "";
    	
    }
    if(uid == ""){
    	
    	document.getElementById("error").innerHTML = "Enter the username";
    	document.getElementById("username").focus();
    	return false
    }else{
    	document.getElementById("error").innerHTML = "";
    	
    }
    if(passid == ""){
    	
    	document.getElementById("error").innerHTML = "Enter the password";
    	document.getElementById("password").focus();
    	return false
    }else{
    	document.getElementById("error").innerHTML = "";
    	
    }
     
    document.login.action="<%=request.getContextPath()%>/loginform";
    document.login.submit();
}

function forget(){
	 /* alert("forget"); */
	 var selectques = document.getElementById("secques").value;
	 var answer = document.getElementById("secans").value;
	 var mailid = document.getElementById("email").value;
     var regex = /^([0-9a-zA-Z]([-_\\.]*[0-9a-zA-Z]+)*)@([0-9a-zA-Z]([-_\\.]*[0-9a-zA-Z]+)*)[\\.]([a-zA-Z]{2,9})$/;

if(selectques == 0 && answer == "" && mailid == "")
{
	/* alert("test") */
	 document.getElementById("forgeterror").innerHTML = "Fill all the fields";
	document.getElementById("errorselect").innerHTML = "";
	$('#password').hide();
	return false;
}
 else{
	 if(selectques == 0 && answer == ""){
	    	
	    	document.getElementById("forgeterror").innerHTML = "select the question";
	    	document.getElementById("errorselect").innerHTML = "Enter the answer";
	    	return false;
	   
	    }
	    else{
	    	 if(selectques == 0 && mailid == ""){
			    	
			    	document.getElementById("forgeterror").innerHTML = "select the question";
			    	document.getElementById("errorselect").innerHTML = "Enter the MailID";
			    	return false; 
		   
		    }
		    else{
		    	if(answer == "" && mailid == ""){
			    	
			    	document.getElementById("forgeterror").innerHTML = "Enter the answer";
			    	document.getElementById("errorselect").innerHTML = "Enter the MailID";
			    	return false;  
			    
			    }
			    else{
			    	if(selectques == 0){
				    	
				    	document.getElementById("forgeterror").innerHTML = "select the question";
				    	document.getElementById("errorselect").innerHTML = "";
				    	 return false;  
				    
				    }
				    else{
				    	 if(answer == ""){
						    	
						    	document.getElementById("forgeterror").innerHTML = "Enter the answer";
						    	document.getElementById("errorselect").innerHTML = "";
						    	return false;  
					   
					    }
					    else{
					    	 if(mailid == ""){
							    	
							    	document.getElementById("forgeterror").innerHTML = "Enter the MailID";
							    	document.getElementById("errorselect").innerHTML = "";
							    	 return false;  
						    
						    }
	    else
	    {
	    	if(regex.test(mailid)){
	    	document.getElementById("forgeterror").innerHTML = "";
	    	document.getElementById("errorselect").innerHTML = "";
			   document.adminforgotform.submit();
			   document.adminforgotform.action="<%=request.getContextPath()%>/adminforget";
	    	}
	    	else{
	    		document.getElementById("forgeterror").innerHTML = "Enter the valid MailID";
		    	document.getElementById("errorselect").innerHTML = "";
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

function backbtn(){
	
	$('#id_forgotpassword').hide();
	$('#id_loginpageform').show();
	
	
	
}


function forgotpwd(){
	
	$('#id_loginpageform').hide();
	$('#id_forgotpassword').show();
}

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
<div class="logo">
	
	<img src="<%=request.getContextPath()%>/resources/admin/layout2/img/bcellogo.jpg" width="100" height="80" alt=""/>
      <h2 style="color:blue;">Acquirer Control Center</h2>
	
</div>
<!-- END LOGO -->
<!-- BEGIN LOGIN -->
<c:if test="${not empty note}">
	<script>
	alert("function");
	document.getElementById('id_loginpageform').style.display = "block";
	document.getElementById("forget").style.display = "inline";
		</script>
</c:if>   
<div  class="content">
	<!-- BEGIN LOGIN FORM -->
	<div id="login">
	<form  name="login" id="id_loginpageform" class="login-form" action="" method="post">
	
		<div class="form-title">
			<span class="form-title">Sign in to your account</span>
			
		</div>
		<span class="error" style="color: red;" id="error">${error}</span>
		
		<div class="alert alert-danger display-hide">
			<button class="close" data-close="alert"></button>
			<span>
			Enter any username and password. </span>
		</div>
		<div class="form-group">
			<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
			<label class="control-label visible-ie8 visible-ie9">Username</label>
			<input class="form-control form-control-solid placeholder-no-fix" type="text" autocomplete="off" placeholder="Username" name="username" id="username"/>
			<span class="error" id="erroruser"></span>
			
		</div>
		<div class="form-group">
			<label class="control-label visible-ie8 visible-ie9">Password</label>
			<input class="form-control form-control-solid placeholder-no-fix" type="password" autocomplete="off" placeholder="Password" name="password" id="password"/>
			<span class="error" id="errorpassword"></span>
		</div>
		
		<div class="form-actions">
			<button type="button" class="btn btn-primary btn-block uppercase" onclick="update();">Login</button>
		</div>
		<div class="form-actions">
			<div class="pull-left">
				<!-- <label class="rememberme check" /> -->
				<!-- <input type="checkbox" name="remember" value="1"/>Remember me </label> -->
			</div>
			<div class="pull-right forget-password-block">
				<a href="javascript:;" id="forget-password" class="forget-password" onclick="forgotpwd();">Forgot Password?</a>
			</div>
		</div>
	</form>
	</div>
	<!-- END LOGIN FORM -->
	<!-- BEGIN FORGOT PASSWORD FORM -->
	<div id="forget">
	<form name="adminforgotform" id="id_forgotpassword" class="forget-form" action="" method="post"  style="height:700px;width:894px;">
		<div class="form-title">
			<span class="form-title">Forget Password ?</span>
			<br>
			<span class="form-subtitle" style="color:blue"></span>
		</div>
		<span class="error" id="forgeterror" style="color:red">${note}</span>
		<br>
		<span class="error" id="errorselect" style="color:red"></span>
		
		<div class="form-group">
			<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
			<label class="col-md-10 control-label">Security Question:</label>
			<div class="col-md-10">
			<select class="form-control" name="secquestion" id="secques" style="width:450px;">
						<option value="0">-Select-</option>
                            <c:forEach items="${securlist}" var="ss">
	                              <option value="${ss.securityid}">${ss.securityques}</option>
							</c:forEach>
                                                   
                       </select>
			</div>
		</div>
		<br>
		<div class="form-group">
			<label class="col-md-10 control-label">Answer:</label>
			<div class="col-md-10">
				<input class="form-control" type="text" placeholder="Answer" name="secanswer" id="secans" style="width:450px;"/>
            </div>
		</div>
		<br>
		<div class="form-actions">
		<label class="col-md-10 control-label">Email Id:</label>
			<div class="col-md-10">
			<input class="form-control" type="text" placeholder="Enter your e-mail to reset it." name="email" id="email" style="width:450px;"/>		
			</div>
		</div>
		<br>
				<div class="form-actions">
			<button type="button" id="back-btn" class="btn btn-primary" onclick="backbtn();"  style="margin-left:12px;">Back</button>
			<button type="submit" class="btn btn-primary uppercase pull-right" onclick="forget();" id="forgotpassword" style="margin-right:280px;">Submit</button>
		</div>
	</form>
	</div>
	<!-- END FORGOT PASSWORD FORM -->
</div>
<div class="page-footer">
		<div class="page-footer-inner">
			<p style="margin-left:1095px"> @Powered by Sysmatik</p>
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
<script src="../assets/global/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>
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