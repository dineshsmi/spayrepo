<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico"/>

<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/global/calender/jquery-ui.css">
  <script src="<%=request.getContextPath()%>/resources/global/calender/jquery-1.10.2.js"></script>
 
   <script src="<%=request.getContextPath()%>/resources/global/calender/jquery-ui.js"></script> 
        
      <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/global/calender/style.css"> 


</head>

<body class="page-boxed page-header-fixed page-container-bg-solid page-sidebar-closed-hide-logo ">
<!-- BEGIN HEADER -->



<div class="container">
	<!-- BEGIN CONTAINER -->
	<div class="page-container">
		
		<!-- BEGIN CONTENT -->
		<!-- <div class="page-content-wrapper"> -->
		<div>
			<div class="page-content">
				
				<h3 class="page-title">
				Realtime transaction monitoring 
				</h3>
				<div class="page-bar">
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
					
				</div>
				<!-- END PAGE HEADER-->
				<!-- BEGIN PAGE CONTENT-->
				<div class="row">
					<div class="col-md-12">
						
						
						<!--------detail start------------>
                        <div class="portlet box red">
							<div class="portlet-title">
								<div class="caption">
									Realtime Transaction Monitoring
								</div>
								
							</div>
							
							<div class="portlet-body flip-scroll">
								<table class="table table-bordered table-striped table-condensed flip-content">
								
								<tbody>
								  <c:forEach items="${tmlist}" var="mer">
								  <tr>
									<td>
										Transaction Code:
									</td>
									<td>
										${mer.txncode}
									</td>
								</tr>
								<tr>
									<td>
										Transaction Date:
									</td>
									<td>
										<fmt:formatDate value="${mer.txndate}" pattern="dd-MM-yyyy" />
									</td>
								</tr>
								<tr>
									<td>
										Merchant ID:
									</td>
									<td>
									
									<%-- <c:forEach items="${merlist}" var="name">
										 ${name.merchantName}
									</c:forEach> --%>
									
										 ${mer.merchantid}
									
									
									</td>
								</tr>
								<tr>
									<td>
										Card Type:
									</td>
									<td >
									  ${mer.cardtype}
									</td>
								</tr>
								<tr>
									<td>
										Card Number:
									</td>
									<td>
										${mer.cardnumber}
									</td>
								</tr>
								<tr>
									<td>
										Transaction Ref No:
									</td>
									<td>
										${mer.txnrefno}
									</td>
								</tr>
								<tr>
									<td>
										Trace Number:
									</td>
									<td>
										${mer.trackno}
									</td>
								</tr>
								
								<tr>
									<td>
										Resp Code:
									</td>
									<td>
										${mer.respcode}
									</td>
								</tr>
								
								
								
								
								<tr>
									<td>
										Transaction Currency:
									</td>
									<td>
										<c:forEach items="${txnlist}" var="name">
										 	${name.currencyname}
										</c:forEach>
									</td>
								</tr>
								<tr>
									<td>
										Transaction Amount:
									</td>
									<td>
										${mer.txnamount}
									</td>
								</tr>
								<tr>
									<td>
										Transaction Fee:
									</td>
									<td>
										${mer.txnfees}
									</td>
								</tr>
								<tr>
									<td>
										Settle Amount:
									</td>
									<td>
										${mer.settleamount}
									</td>
								</tr>
								<tr>
									<td>
										Settle Currency:
									</td>
									<td>
										<c:forEach items="${setlist}" var="name">
										 ${name.currencyname}
									</c:forEach>
									
									
									</td>
								</tr>
								
                               </c:forEach>
                               
								
								</tbody>
								</table>
								 <div class="form-actions right1">
								 	<button type="button" class="btn redclr" onclick="window.print()" style="border-radius: 25px !important;">Print</button>
									<button type="button" class="btn grayclr" onclick="window.close()" style="border-radius: 25px !important;">Close</button>
										
								</div>
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
	<!-- END CONTAINER -->
	<!-- BEGIN FOOTER -->
	<div class="page-footer">
		<div class="page-footer-inner">
			<p style="margin-left:1158px"> @Powered by Sysmatik</p>
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
$( "#tdate" ).datepicker();
});

function resetFun(){
	 document.getElementById("mername").value = 0;
	 document.getElementById("cardtype").value = 0;
	 document.getElementById("tdate").value = "";
	 document.getElementById("trefno").value = "";
	 document.getElementById("cardnumber").value = "";
	 document.getElementById("tcode").value = "";
	 document.getElementById("tnumber").value = "";
	 document.getElementById("tcurrency").value = 0;
	 document.getElementById("tamount").value = "";
	 document.getElementById("tfees").value = "";
	 document.getElementById("settleamount").value = "";
	 document.getElementById("settlecurrency").value = 0;
}

function validFun(){
	
	
	
	/*  var merid = document.getElementById("merchantId").value;
	 var mername = document.getElementById("merchantName").value;
	 var mail = document.getElementById("merchantEmailId").value;
	 if(merid == "" && mername == "" && mail==""){
		 alert("Please enter the value in 'Merchant ID' or 'Merchant Name' or 'Email Id'");
		 return false;
	 } */
}
</script>
</body>
<!-- END BODY -->
</html>