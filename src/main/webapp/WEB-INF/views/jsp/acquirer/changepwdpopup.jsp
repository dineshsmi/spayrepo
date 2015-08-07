<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->

<head>
<meta charset="utf-8" />
<title>Metronic | Data Tables - Responsive Datatables</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description" />
<meta content="" name="author" />
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="http:/fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" media="all" href="<c:url value="${request.getContextPath()}/resources/global/plugins/font-awesome/css/font-awesome.min.css" />"/>
<link rel="stylesheet" type="text/css" media="all" href="<c:url value="${request.getContextPath()}/resources/global/plugins/simple-line-icons/simple-line-icons.min.css"  />"/>
<link rel="stylesheet" type="text/css" media="all" href="<c:url value="${request.getContextPath()}/resources/global/plugins/bootstrap/css/bootstrap.min.css"  />"/>
<link rel="stylesheet" type="text/css" media="all" href="<c:url value="${request.getContextPath()}/resources/global/plugins/uniform/css/uniform.default.css"  />"/>
<link rel="stylesheet" type="text/css" media="all" href="<c:url value="${request.getContextPath()}/resources/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" />"/>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN THEME STYLES -->
<link rel="stylesheet" type="text/css" media="all" href="<c:url value="${request.getContextPath()}/resources/global/css/components.css" />"/>
<link rel="stylesheet" type="text/css" media="all" href="<c:url value="${request.getContextPath()}/resources/global/css/plugins.css" />"/>
<link rel="stylesheet" type="text/css" media="all" href="<c:url value="${request.getContextPath()}/resources/admin/layout2/css/layout.css" />"/>
<link rel="stylesheet" type="text/css" media="all" href="<c:url value="${request.getContextPath()}/resources/admin/layout2/css/themes/light.css" />"/>
<link rel="stylesheet" type="text/css" media="all" href="<c:url value="${request.getContextPath()}/resources/admin/layout2/css/custom_merchant.css" />"/>

<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico"/>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-1.10.2.js" type="text/javascript"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js" type="text/javascript"></script>

<script type="text/javascript">
function change(){
	/* alert("change"); */
	var newpass = document.getElementById("newpwd").value;
	/* alert(newpass); */
	var conpass = document.getElementById("conpwd").value;
	var mnlen = 6;  
    var mxlen = 25;  
    var lenpass =  newpass.length;
    var decimal =  /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{6,25}$/;
	 if(newpass == "" && conpass == ""){
	    	document.getElementById("erroruser").innerHTML = "Enter the New Password and Confirm Password";
	    	return false
	    }else{
	    	document.getElementById("erroruser").innerHTML = "";
	    	
	    }
	    if(newpass == ""){
	    	
	    	document.getElementById("erroruser").innerHTML = "Enter the New Password";
	    	return false
	    }else{
	    	document.getElementById("erroruser").innerHTML = "";
	    	
	    }
	    if(lenpass < mnlen || lenpass > mxlen)  
	       {   
	       document.getElementById("erroruser").innerHTML = "Enter the Password should be between 6 to 25 characters";
	       return false  
	       }else{
	    	   document.getElementById("erroruser").innerHTML = ""; 
	       }
	    
	    if(!decimal.test(newpass))  
	       {  
	    	   /* alert("try another...");  */
	       document.getElementById("erroruser").innerHTML = "Enter the Password should be at least one lowercase letter, one uppercase letter, one numeric digit, and one special character";
	       return false  
	       }else{
	    	   document.getElementById("erroruser").innerHTML = ""; 
	       }
	    
	    if(conpass == ""){
	    	
	    	document.getElementById("erroruser").innerHTML = "Enter the Confirm Password";
	    	return false
	    }else{
	    	document.getElementById("erroruser").innerHTML = "";
	    	
	    }
       if(newpass != conpass){
	    	
	    	document.getElementById("erroruser").innerHTML = "Enter the Same Password ";
	    	return false
	    }else{
	    	document.getElementById("erroruser").innerHTML = "";
	    	
	    }
	    document.changepwdform.action="<%=request.getContextPath()%>/adminchange";
   	   	document.changepwdform.submit(); 
   	   
	}
function pagefound(){
	var pagename="${pagename}";
	/* alert(pagename); */
	if(pagename == "resetsuccess"){
		/* alert("enter if"); */
		window.opener.location.href ="<%=request.getContextPath()%>/loginpage";
	    window.close();
	}
}
</script>

</head>

<body
	class="page-boxed page-header-fixed page-container-bg-solid page-sidebar-closed-hide-logo " onload="pagefound()">
	<!-- BEGIN HEADER -->



	<div class="container">
		<!-- BEGIN CONTAINER -->
		<div class="page-container">

			<!-- BEGIN CONTENT -->
			<!-- <div class="page-content-wrapper"> -->
			<div>
				<div class="page-content">

					<!-- <h3 class="page-title">Change Password</h3> -->
					<!-- <div class="page-bar">
					<ul class="page-breadcrumb">
						<li>
							<i class="fa fa-home"></i>
							<a href="index.html">Home</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="#">admin</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="#">Realtime transaction monitoring</a>
						</li>
					</ul>
					
				</div> -->
					<!-- END PAGE HEADER-->
					<!-- BEGIN PAGE CONTENT-->
					<div class="row">
						<div class="col-md-12">


							<!--------detail start------------>
							<div class="portlet box red" style="width:800px;">
								<div class="portlet-title">
									<div class="caption">Change Password</div>

								</div>
 
								<div class="portlet-body form">
								<div class="form-body" id="Container">
								
									<form id="changepwd" class="login-form" action="" method="post"
										name="changepwdform">
                                   <span class="error" id="erroruser" style="color:red"></span>
		                           
		                           <span class="error" id="password" style="color:red">${error}</span>

										<div class="form-group">
											<label class="col-md-2 control-label">New Password:</label>
											<div >
												<input type="text" class="form-control"
													id="newpwd" placeholder=""
													name="newpassword" style="width:400px;" maxlength="25">
											</div>
										</div>

										<div class="form-group">
											<label class="col-md-2 control-label">Confirm Password:</label>
											<div>
												<input type="text" class="form-control"
													id="conpwd" placeholder="" name="confirmpwd" style="width:400px;" maxlength="25"> 
													
											</div>
										</div>
								
									<div class="form-actions" style="text-align: left;padding-left:130px;">
										
			                            <button type="button" class="btn redclr" onclick="change();" style="border-radius: 25px !important;width:135px;">Submit</button>
			                            <button type="button" class="btn grayclr" onclick="window.close()" style="border-radius: 25px !important;width:135px;">Close</button>
									</div>
									</form>
								</div>
							</div>

						</div>
					</div>
					<!-- END PAGE CONTENT-->
				</div>
			</div>
			<!-- END CONTENT -->
			<!-- BEGIN QUICK SIDEBAR -->
			<!--Cooming Soon...-->
			<!-- END QUICK SIDEBAR -->
		</div>
		</div>
		<!-- END CONTAINER -->
		<!-- BEGIN FOOTER -->
		<div class="page-footer">
			<div class="page-footer-inner">
				<p style="margin-left: 1095px">@Powered by Sysmatik</p>
			</div>
			<div class="scroll-to-top">
				<i class="icon-arrow-up"></i>
			</div>
		</div>
		<!-- END FOOTER -->
	</div>
	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- BEGIN CORE PLUGINS -->
	<!--[if lt IE 9]>
<script src="../../assets/global/plugins/respond.min.js"></script>
<script src="../../assets/global/plugins/excanvas.min.js"></script> 
<![endif]-->
	<script type="text/javascript" src="<c:url value="/resources/global/plugins/jquery.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/global/plugins/jquery-migrate.min.js" />"></script>

<!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script type="text/javascript" src="<c:url value="/resources/global/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/global/plugins/bootstrap/js/bootstrap.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/global/plugins/jquery.blockui.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/global/plugins/jquery.cokie.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/global/plugins/uniform/jquery.uniform.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" />"></script>
<!-- END CORE PLUGINS -->
<script type="text/javascript" src="<c:url value="/resources/global/scripts/metronic.js"  />"></script>
<script type="text/javascript" src="<c:url value="/resources/admin/layout2/scripts/layout.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/admin/layout2/scripts/demo.js"  />"></script>

	<script>
		jQuery(document).ready(function() {
			//alert('In jquery')
			// initiate layout and plugins
			Metronic.init(); // init metronic core components
			Layout.init(); // init current layout
			Demo.init(); // init demo features
		});
	</script>
</body>
<!-- END BODY -->
</html>