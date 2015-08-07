<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->

<head>
<meta charset="utf-8"/>
<title>Metronic | Data Tables - Responsive Datatables</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description"/>
<meta content="" name="author"/>
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
<link rel="stylesheet" href="/resources/demos/style.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico"/>


<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/global/calender/jquery-ui.css">
  <script src="<%=request.getContextPath()%>/resources/global/calender/jquery-1.10.2.js"></script>
 
   <script src="<%=request.getContextPath()%>/resources/global/calender/jquery-ui.js"></script> 
        
      <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/global/calender/style.css">  


</head>



<body class="page-boxed page-header-fixed page-container-bg-solid page-sidebar-closed-hide-logo ">

<div class="container">
	<!-- BEGIN CONTAINER -->
	<div class="page-container">
		
		<!-- BEGIN CONTENT -->
		
			<div class="page-content">
				
				<h3 class="page-title">
				Inactive Merchant
				</h3>
				<div class="page-bar">
					<ul class="page-breadcrumb">
						<li>
							<i class="fa fa-home"></i>
							<a href="index.html">Home</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="#">Active & Inactive Merchant</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li><a href="#">Inactive Merchant</a></li>
					</ul>
					
				</div>
				<!-- END PAGE HEADER-->
				<!-- BEGIN PAGE CONTENT-->
				<div class="row">
					<div class="col-md-12">
						
						
						
                        <!--------detail start------------>
                       
							
							<div class="portlet-body form">
								<div class="row">
									<div class="col-md-12">
										
										
										<!--------detail start------------>
				                        <div class="portlet box red">
											<div class="portlet-title">
												<div class="caption">
													Inactive Merchant
												</div>
												<!-- <div class="tools">
													<a href="" class="collapse">
													</a>
													<a href="#portlet-config" data-toggle="modal" class="config">
													</a>
													<a href="" class="reload">
													</a>
													<a href="" class="remove">
													</a>
												</div> -->
											</div>
											<div class="portlet-body form">
												<form class="form-horizontal" role="form"  method="get">
													<div class="form-body" style="text-align: left;padding-left:160px;">
														
														<div class="form-group">
															<label class="col-md-2 control-label">Start Date:</label>
															<div class="col-md-10">
																<input type="text" class="form-control" style="cursor:pointer" readonly="readonly"  name="sdate" id="sdate" style="width:400px;">
															</div>
														</div>
				                                        
				                                        <div class="form-group">
															<label class="col-md-2 control-label">End Date:</label>
															<div class="col-md-10">
																<input type="text" class="form-control" style="cursor:pointer" readonly="readonly" name="edate" id="edate" style="width:400px;">
																
																
																
																<input type="hidden" id="merid" name="merid" value="${merid}">
																<input type="hidden" id="secdetails" name="secdetails" value="${secdetails}">
																<input type="hidden" id="screendetails" name="screendetails" value="${details}">
																
																<input type="hidden" id="merchantId" name="merchantId" value="${merchantId}">
																<input type="hidden" id="merchantName" name="merchantName" value="${merchantName}">
																<input type="hidden" id="merchantEmailId" name="merchantEmailId" value="${merchantEmailId}">
																
																<!-- modelmap.addAttribute("merchantId",id);
			modelmap.addAttribute("merchantName",name);
			modelmap.addAttribute("merchantEmailId",email); -->
																
																
															</div>
														</div>
														
														
				                                        
													</div>
													<div class="form-actions right1" style="text-align: left;padding-left:350px;">
														 <button type="button" class="btn redclr" id="id_sbtbtn" onclick="submitFun()" style="border-radius: 25px !important;width:80px;">Submit</button>
														<button type="button" class="btn grayclr" onclick="resetFun()" style="border-radius: 25px !important;width:80px;">Reset</button>
														
														<%-- <button type="submit" class="btn green" id="id_sbtbtn" onclick="return validFun(${merchantId},${merchantName}${merchantEmailId})">Submit</button> --%>
													</div>
												</form>
											</div>
										</div>
				                       
									</div>
								</div>
							</div>
						
                        <!--------detail end---------->
						
					</div>
				</div>
				<!-- END PAGE CONTENT-->
			</div>
		
		<!-- END CONTENT -->
		<!-- BEGIN QUICK SIDEBAR -->
		<!--Cooming Soon...-->
		<!-- END QUICK SIDEBAR -->
	</div>
	<!-- END CONTAINER -->
	<!-- BEGIN FOOTER -->
	<div class="page-footer">
		<div class="page-footer-inner">
			<p style="margin-left:1068px"> @Powered by Sysmatik</p>
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
<script src="<%=request.getContextPath()%>/resources/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="<%=request.getContextPath()%>/resources/global/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src=".<%=request.getContextPath()%>/resources/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<script src="<%=request.getContextPath()%>/resources/global/scripts/metronic.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/admin/layout2/scripts/layout.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/admin/layout2/scripts/demo.js" type="text/javascript"></script>

<script src="<%=request.getContextPath()%>/resources/global/plugins/multiselect.js"></script>
<script>
jQuery(document).ready(function() {  
	//alert('In jquery')
   // initiate layout and plugins
   Metronic.init(); // init metronic core components
Layout.init(); // init current layout
Demo.init(); // init demo features


$( "#sdate" ).datepicker();
$( "#edate" ).datepicker();

});



function submitFun(){
	
	
	
	var sdate = document.getElementById("sdate").value;
	var edate = document.getElementById("edate").value;
	var merid = document.getElementById("merid").value;
	 var mid = document.getElementById("merchantId").value;
	var mname = document.getElementById("merchantName").value;
	var email = document.getElementById("merchantEmailId").value;
	 
	var fromdate = sdate;
    var todate = edate;
    var mon1 = parseInt(fromdate.substring(0, 2), 10);
    var dt1 = parseInt(fromdate.substring(3, 5), 10);
   var yr1 = parseInt(fromdate.substring(6, 10), 10);
   var mon2 = parseInt(todate.substring(0, 2), 10);
   var dt2 = parseInt(todate.substring(3, 5), 10);
   var yr2 = parseInt(todate.substring(6, 10), 10);
       
    date1 = new Date(yr1, mon1, dt1);
    date2 = new Date(yr2, mon2, dt2);

    if (date2 <= date1) {
        alert("End date Should be greater than Start date");
        document.getElementById(edate).value = '';
        document.getElementById(edate).focus();
        return false;
    }
	
	 
	if(sdate == ""){
		alert("Start date not empty")
		return false
	}
	if(edate == ""){
		alert("End date not empty")
		return false
	}
	
	$.ajax({
		  url: '<%=request.getContextPath()%>/deactiveMerchant?merid='+merid+'&sdate='+sdate+'&edate='+edate,
		  type: 'GET',
		  dataType: "json",
		  success: function(data) {
			  
			  if(data.succid == 1){
				  window.opener.location.href ="<%=request.getContextPath()%>/loadserchmerchant?merchantId="+mid+"&merchantName="+mname+"&merchantEmailId="+email;
				  window.close();
			  }
			 
		  },
		  error: function(e) {
			
			  alert("error")
		  }
		});
	
	
	
}
function resetFun(){
	document.getElementById("sdate").value = "";
	document.getElementById("edate").value = "";
}



</script>
</body>
<!-- END BODY -->
</html>