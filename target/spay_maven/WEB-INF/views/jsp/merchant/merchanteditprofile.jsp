<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- 
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.3.1
Version: 3.6.1
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
<title>Metronic | Data Tables - Basic Datatables</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description"/>
<meta content="" name="author"/>
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/resources/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/resources/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/resources/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/resources/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/resources/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css"/>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL PLUGIN STYLES -->
<link href="<%=request.getContextPath()%>/resources/global/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/resources/global/plugins/fullcalendar/fullcalendar.min.css" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/resources/global/plugins/jqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css"/>
<!-- END PAGE LEVEL PLUGIN STYLES -->
<!-- BEGIN PAGE STYLES -->
<link href="<%=request.getContextPath()%>/resources/admin/pages/css/tasks.css" rel="stylesheet" type="text/css"/>
<!-- END PAGE STYLES -->
<!-- BEGIN THEME STYLES -->
<!-- DOC: To use 'rounded corners' style just load 'components-rounded.css' stylesheet instead of 'components.css' in the below style tag -->
<link href="<%=request.getContextPath()%>/resources/global/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/resources/global/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/resources/admin/layout2/css/layout.css" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/resources/admin/layout2/css/themes/light.css" rel="stylesheet" type="text/css" id="style_color"/>
<link href="<%=request.getContextPath()%>/resources/admin/layout2/css/custom_merchant.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico"/>

<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/global/calender/jquery-ui.css">
  <script src="<%=request.getContextPath()%>/resources/global/calender/jquery-1.10.2.js"></script>
 
   <script src="<%=request.getContextPath()%>/resources/global/calender/jquery-ui.js"></script> 
        
      <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/global/calender/style.css"> 
<style type="text/css">
		#contact label{
			display: inline-block;
			width: 100px;
			text-align: right;
		}
		#contact_submit{
			padding-left: 100px;
		}
		#contact div{
			margin-top: 1em;
		}
		textarea{
			vertical-align: top;
			height: 5em;
		}
			
		.error{
			display: none;
			margin-left: 10px;
		}		
		
		.error_show{
			color: red;
			margin-left: 10px;
		}
		
		input.invalid, textarea.invalid{
			border: 2px solid red;
		}
		
		input.valid, textarea.valid{
			border: 2px solid green;
		}
	</style>

<script>

 $(function() {//merchant_merchantDOB
      $("#merchantDOB" ).datepicker({changeMonth: true,changeYear:true,yearRange: "1900:3000"});
  }); 

</script>
</head>

<body class="page-boxed page-header-fixed page-container-bg-solid page-sidebar-closed-hide-logo ">
<!-- BEGIN HEADER -->
<div class="page-header navbar navbar-fixed-top">
	<!-- BEGIN HEADER INNER -->
	<div class="page-header-inner container-fluid">
		<!-- BEGIN LOGO -->
		<div class="page-logo">
        
			<a href="index.html">
			<img src="<%=request.getContextPath()%>/resources/admin/layout2/img/bcel-logo-rev.png" alt="logo" class=""/>
			</a>
			
		</div>
		<!-- END LOGO -->
		<!-- BEGIN RESPONSIVE MENU TOGGLER -->
		<a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse">
		</a>
		<!-- END RESPONSIVE MENU TOGGLER -->
		<!-- BEGIN PAGE ACTIONS -->
		<!-- DOC: Remove "hide" class to enable the page header actions -->
		<div class="page-actions hide">
        
       
			<div class="btn-group">
				<button type="button" class="btn btn-circle red-pink dropdown-toggle" data-toggle="dropdown">
				<i class="icon-bar-chart"></i>&nbsp;<span class="hidden-sm hidden-xs">New&nbsp;</span>&nbsp;<i class="fa fa-angle-down"></i>
				</button>
				<ul class="dropdown-menu" role="menu">
					<li>
						<a href="#">
						<i class="icon-user"></i> New User </a>
					</li>
					<li>
						<a href="#">
						<i class="icon-present"></i> New Event <span class="badge badge-success">4</span>
						</a>
					</li>
					<li>
						<a href="#">
						<i class="icon-basket"></i> New order </a>
					</li>
					<li class="divider">
					</li>
					<li>
						<a href="#">
						<i class="icon-flag"></i> Pending Orders <span class="badge badge-danger">4</span>
						</a>
					</li>
					<li>
						<a href="#">
						<i class="icon-users"></i> Pending Users <span class="badge badge-warning">12</span>
						</a>
					</li>
				</ul>
			</div>
			<div class="btn-group">
				<button type="button" class="btn btn-circle green-haze dropdown-toggle" data-toggle="dropdown">
				<i class="icon-bell"></i>&nbsp;<span class="hidden-sm hidden-xs">Post&nbsp;</span>&nbsp;<i class="fa fa-angle-down"></i>
				</button>
				<ul class="dropdown-menu" role="menu">
					<li>
						<a href="#">
						<i class="icon-docs"></i> New Post </a>
					</li>
					<li>
						<a href="#">
						<i class="icon-tag"></i> New Comment </a>
					</li>
					<li>
						<a href="#">
						<i class="icon-share"></i> Share </a>
					</li>
					<li class="divider">
					</li>
					<li>
						<a href="#">
						<i class="icon-flag"></i> Comments <span class="badge badge-success">4</span>
						</a>
					</li>
					<li>
						<a href="#">
						<i class="icon-users"></i> Feedbacks <span class="badge badge-danger">2</span>
						</a>
					</li>
				</ul>
			</div>
		</div>
		<!-- END PAGE ACTIONS -->
		<!-- BEGIN PAGE TOP -->
		<div class="page-top">
			<!-- BEGIN TOP NAVIGATION MENU -->
			<div class="top-menu">
				<ul class="nav navbar-nav pull-right">
					<!-- BEGIN USER LOGIN DROPDOWN -->
					<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
					<li class="dropdown dropdown-user">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
						<img alt="" class="img-circle" src="../assets/admin/layout2/img/avatar3_small.jpg"/>
						<span class="username username-hide-on-mobile">
						Nick </span>
						<i class="fa fa-angle-down"></i>
						</a>
						<ul class="dropdown-menu dropdown-menu-default">
							<li>
								<a href="<%=request.getContextPath()%>/merchantprofile">
								<i class="icon-user"></i> My Profile </a>
							</li>
							<li>
								<a href="extra_lock.html">
								<i class="icon-lock"></i> Change Password </a>
							</li>
							<li>
								<a href="login.html">
								<i class="icon-key"></i> Log Out </a>
							</li>
						</ul>
					</li>
					<!-- END USER LOGIN DROPDOWN -->
				</ul>
			</div>
			<!-- END TOP NAVIGATION MENU -->
		</div>
		<!-- END PAGE TOP -->
	</div>
	<!-- END HEADER INNER -->
</div>
<!-- END HEADER -->
<div class="clearfix">
</div>
<div class="container-fluid">
	<!-- BEGIN CONTAINER -->
	<div class="page-container">
		<!-- BEGIN SIDEBAR -->
		<div class="page-sidebar-wrapper">
			<!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
			<!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
			<div class="page-sidebar navbar-collapse collapse">
				<!-- BEGIN SIDEBAR MENU -->
				<!-- DOC: Apply "page-sidebar-menu-light" class right after "page-sidebar-menu" to enable light sidebar menu style(without borders) -->
				<!-- DOC: Apply "page-sidebar-menu-hover-submenu" class right after "page-sidebar-menu" to enable hoverable(hover vs accordion) sub menu mode -->
				<!-- DOC: Apply "page-sidebar-menu-closed" class right after "page-sidebar-menu" to collapse("page-sidebar-closed" class must be applied to the body element) the sidebar sub menu mode -->
				<!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
				<!-- DOC: Set data-keep-expand="true" to keep the submenues expanded -->
				<!-- DOC: Set data-auto-speed="200" to adjust the sub menu slide up/down speed -->
                <ul data-slide-speed="200" data-auto-scroll="true" data-keep-expanded="false" class="page-sidebar-menu ">
				<!-- DOC: To remove the sidebar toggler from the sidebar you just need to completely remove the below "sidebar-toggler-wrapper" LI element -->
				<li class="sidebar-toggler-wrapper">
					<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
					<div class="sidebar-toggler">
					</div>
					<!-- END SIDEBAR TOGGLER BUTTON -->
				</li>
				<!-- DOC: To remove the search box from the sidebar you just need to completely remove the below "sidebar-search-wrapper" LI element -->
				
				<li class="start active">
	<a href="javascript:;">
	<i class="icon-home"></i>
	<span class="title">Merchant</span>
	</a>
	
</li>
<li>
	<a href="javascript:;">
	<i class="fa fa-edit"></i>
	<span class="title"></span>Transaction
	<span class="arrow "></span>
	</a>
	<ul class="sub-menu">
		<li>
			<a href="<%=request.getContextPath()%>/merchantrealtimetxn">
			<i class="fa fa-chevron-right"></i>
			Monitoring</a>
		</li>
		<li>
			<a href="<%=request.getContextPath()%>/merchanttranactionstatement">
			<i class="fa fa-chevron-right"></i>
			Transaction</a>
		</li>
		<li>
			<a href="<%=request.getContextPath()%>/merchantchargeback">
			<i class="fa fa-chevron-right"></i>
			Disputes</a>
		</li>
	</ul>
</li>
<li>
	<a href="javascript:;">
	<i class="fa fa-credit-card"></i>
	<span class="title"></span>Settlement
	<span class="arrow "></span>
	</a>
	<ul class="sub-menu">
		<li>
			<a href="<%=request.getContextPath()%>/merchantdailyreports">
			<i class="fa fa-chevron-right"></i>
			Reports</a>
		</li>
		
		
	</ul>
</li>
<li>
	<a href="javascript:;">
	<i class="fa fa-credit-card"></i>
	<span class="title"></span>B-Invoice
	<span class="arrow "></span>
	</a>
	<ul class="sub-menu">
		<li>
			<a href="<%=request.getContextPath()%>/createinvoice">
			<i class="fa fa-chevron-right"></i>
			Create Invoice</a>
		</li>
		
		
	</ul>
</li>
			</ul>
                
				
				<!-- END SIDEBAR MENU -->
			</div>
		</div>
		<!-- END SIDEBAR -->
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
				<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
				
				<!-- /.modal -->
				<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
				<!-- BEGIN PAGE HEADER-->
				<h3 class="page-title">
				Merchant
				</h3>
				<div class="page-bar">
					<ul class="page-breadcrumb">
						<li>
							<i class="fa fa-home"></i>
							<a href="index.html">Home</a>
							<i class="fa fa-angle-right"></i>
						</li>
						
						<li>
							<a href="#">Merchant </a>
						</li>
					</ul>
					<div class="page-toolbar">
						
					</div>
				</div>
				<!-- END PAGE HEADER-->
				<!-- BEGIN PAGE CONTENT-->
				<div class="row">
					
					<div class="col-md-12">
						
						<div class="portlet box blue-chambray">
							<div class="portlet-title">
								<div class="caption">
									Merchant Registration Update
								</div>
								
							</div>
							<div class="portlet-body form">
								<form class="form-horizontal" role="form" name="merchantRegistrationform" action="updatemerchant" method="get" >
								<c:forEach items="${merlist}" var="mlist">
									<div class="form-body" id="Container">
										<div class="form-group">
										      <label class="col-md-2 control-label" for="merchant_merchantId">Merchant ID:*</label>
											
											  <div class="col-md-10" id="test">
												  <input type="text" class="form-control" id="merchantId" value="${mlist.merchantId}" name="merchantId">
												  <input type="hidden" name="hiddenid" value="${mlist.id}"> 
												  <div id="middiv" style="color:red"> </div>
											</div>
										</div>
                                        
                                        <div class="form-group">
											<label class="col-md-2 control-label">Merchant Name:*</label>
											<div class="col-md-10">
												<input type="text" class="form-control" id="merchantName" value="${mlist.merchantName}" name="merchantName">
												<div id="mnamediv" style="color:red"></div>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-md-2 control-label">DOB:*</label>
											<div class="col-md-10">
												<input type="text" class="form-control" id="merchantDOB" value="<fmt:formatDate value="${mlist.DOB}" pattern="dd-MM-yyyy" />">
												<input type="hidden" name="merchantDOB" value="<fmt:formatDate value="${mlist.DOB}" pattern="MM/dd/yyyy" />">
												<div id="dobdiv" style="color:red"></div>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-md-2 control-label">Email Id:*</label>
											<div class="col-md-10">
												<input type="text" class="form-control" id="merchantEmailId" value="${mlist.emailId}" name="merchantEmailId" >
												<div id="emaildiv" style="color:red"></div>		
											</div>
										</div>
                                        
                                        <div class="form-group">
											<label class="col-md-2 control-label">Mobile:*</label>
											<div class="col-md-10">
												<input type="text" class="form-control" id="merchantMobile" value="${mlist.mobile}" name="merchantMobile" maxlength="14">
												<div id="mobdiv" style="color:red"></div>	
												
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-md-2 control-label">Tel:*</label>
											<div class="col-md-10">
												<input type="text" class="form-control" id="merchantTel" value="${mlist.telephone}" name="merchantTel" maxlength="14">
												<div id="teldiv" style="color:red"></div>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-md-2 control-label">Business:</label>
											<div class="col-md-10">
												<input type="text" class="form-control" id="merchantBusiness" value="${mlist.business}" name="merchantBusiness">
											</div>
										</div>
										
                                        <div class="form-group">
											<label class="col-md-2 control-label">Region:</label>
											<div class="col-md-10">
												<input type="text" class="form-control" id="merchantregion" value="${mlist.region}" name="merchantregion">
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-md-2 control-label">Address:</label>
											<div class="col-md-10">
												<input type="text" class="form-control" id="merchantAddress" value="${mlist.address}" name="merchantAddress">
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-md-2 control-label">Country:</label>
											<div class="col-md-10">
												<input type="text" class="form-control" id="merchantCountry" value="${mlist.country}" name="merchantCountry">
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-md-2 control-label">Product:</label>
											<div class="col-md-10">
												<select class="form-control" name="procode" id="procode" onchange="loadFeesSetting()"> 
													<option value="">-Select-</option>
                                                   <c:forEach items="${provalue}" var="pro">
                                                   	<c:choose>
														<c:when test="${pro.productcode == mlist.productform}">
															 <option value="${pro.productcode}" selected="selected">${pro.procategory}</option>
														</c:when>
														<c:otherwise>
															 <option value="${pro.productcode}">${pro.procategory}</option>
														</c:otherwise>
													</c:choose>
											        
											        </c:forEach>
                                                   
                                                 </select>
                                                 <div id="prodiv" style="color:red"></div>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Fee Setting:</label>
											<div id="feesdiv" class="col-md-10">
												 <select class="form-control" name="feessetting" id="feessetting">
													 <option value="">-Select-</option> 
													 <c:forEach items="${feevalue}" var="fee">
                                                   	<c:choose>
														<c:when test="${fee.feecode == mlist.feessetting}">
															 <option value="${fee.feecode}" selected="selected">${fee.feecode}</option>
														</c:when>
														<c:otherwise>
															 <option value="${fee.feecode}">${fee.feecode}</option>
														</c:otherwise>
													</c:choose>
											        
											        </c:forEach>
                                                  
                                                 </select> 
                                                 <div id="feediv" style="color:red"></div>
											</div>
											
										</div>
										
										<div class="form-group">
											<label class="col-md-2 control-label">Transaction Fee:</label>
											<div class="col-md-10">
											    <span id="errmsgTxn" class="error"></span>
												<input type="text" class="form-control" id="transactionfee" value="${mlist.transactionfee}" name="transactionfee">
											</div>
										</div>
										
										</div>
										<br/>
										
										
										
										<div class="form-actions" style="text-align: left;padding-left:180px;">
										<button type="submit" class="btn green" id="btn1" align="center" onclick="return validate()">Update</button>
										<button type="button" class="btn default" id="back_btn" align="center" onclick="backFun()">Back</button>
										<!-- <button id="btn1">Show Text</button> -->
									   </div>
                                        
										
										</c:forEach>
										</form>
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
			 2014 &copy;
		</div>
	</div>
	<!-- END FOOTER -->
</div>
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="../../assets/global/plugins/respond.min.js"></script>
<script src="../../assets/global/plugins/excanvas.min.js"></script> 
<![endif]--><script src="<%=request.getContextPath()%>/resources/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="<%=request.getContextPath()%>/resources/global/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="<%=request.getContextPath()%>/resources/global/plugins/jqvmap/jqvmap/jquery.vmap.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.russia.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.world.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.europe.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.germany.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.usa.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/jqvmap/jqvmap/data/jquery.vmap.sampledata.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/flot/jquery.flot.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/flot/jquery.flot.resize.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/flot/jquery.flot.categories.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/jquery.pulsate.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/bootstrap-daterangepicker/moment.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/bootstrap-daterangepicker/daterangepicker.js" type="text/javascript"></script>
<!-- IMPORTANT! fullcalendar depends on jquery-ui-1.10.3.custom.min.js for drag & drop support -->
<script src="<%=request.getContextPath()%>/resources/global/plugins/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/jquery-easypiechart/jquery.easypiechart.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/jquery.sparkline.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<script src="<%=request.getContextPath()%>/resources/global/plugins/flot/jquery.flot.pie.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/admin/pages/scripts/charts-flotcharts.js"></script>
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="<%=request.getContextPath()%>/resources/global/scripts/metronic.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/admin/layout2/scripts/layout.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/admin/layout2/scripts/demo.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/admin/pages/scripts/index.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/admin/pages/scripts/tasks.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
jQuery(document).ready(function() {       
   // initiate layout and plugins
   Metronic.init(); // init metronic core components
Layout.init(); // init current layout
Demo.init(); // init demo features
});
function loadFeesSetting(){
	
	var pcode = document.getElementById("procode").value
	$.ajax({
		  url: '<%=request.getContextPath()%>/loadFeesSetting?procode='+pcode,
		  type: 'GET',
		  dataType: "json",
		  success: function(data) {
			  var feeval=data.provalue; 
			  
			  var divcont='<select class="form-control" name="feessetting" id="feessetting">';
			  divcont=divcont+'<option value=)">-select-</option>';
			  if(feeval!=null && feeval.length>=1){
  				for(var i=0; i<feeval.length; i++){
  					 //var fid=feeval[i].id;
     			    var fname=feeval[i].feecode;
     			    
     			   divcont=divcont+'<option value='+fname+'>'+fname+'</option>';
  				}
			  }
			  divcont=divcont+'</select>';
			  $('#feesdiv').html(divcont);
			
		  },
		  error: function(e) {
			
			  alert("error")
		  }
		});
}
function validate(){
	var mid = document.getElementById("merchantId").value;
	var mname = document.getElementById("merchantName").value;
	var dob = document.getElementById("merchantDOB").value;
	var email = document.getElementById("merchantEmailId").value;
	var mobile = document.getElementById("merchantMobile").value;
	
	var tel = document.getElementById("merchantTel").value;
	var procode = document.getElementById("procode").value;
	var fsetting = document.getElementById("feessetting").value;
		
	if(mid == ""){
		document.getElementById("middiv").innerHTML="Merchant ID is required"
		document.getElementById("merchantId").focus();
		return false;
	}else{
		document.getElementById("middiv").innerHTML=""
	}
	if(mname == ""){
		document.getElementById("mnamediv").innerHTML="Merchant Name is required"
		document.getElementById("merchantName").focus();
		return false;
	}else{
		document.getElementById("mnamediv").innerHTML=""
	}
	if(dob == ""){
		document.getElementById("dobdiv").innerHTML="DOB is required"
		document.getElementById("merchantDOB").focus();
		return false;
	}else{
		document.getElementById("dobdiv").innerHTML=""
	}
	if(email == ""){
		document.getElementById("emaildiv").innerHTML="Email is required"
		document.getElementById("merchantEmailId").focus();
		return false;
	}else{
		document.getElementById("emaildiv").innerHTML=""
	}
	if(mobile == ""){
		document.getElementById("mobdiv").innerHTML="Mobile Number is required"
		document.getElementById("merchantMobile").focus();
		return false;
	}else{
		document.getElementById("mobdiv").innerHTML=""
	}
	if(tel == ""){
		document.getElementById("teldiv").innerHTML="Telephone number is required"
		document.getElementById("merchantTel").focus();
		return false;
	}else{
		document.getElementById("teldiv").innerHTML=""
	}
	if(procode == "0"){
		document.getElementById("prodiv").innerHTML="Product Form is required"
		document.getElementById("procode").focus();
		return false;
	}else{
		document.getElementById("prodiv").innerHTML=""
	}
	if(fsetting == "0"){
		document.getElementById("feediv").innerHTML="Fees Form Setting is required"
		document.getElementById("feessetting").focus();
		return false;
	}else{
		document.getElementById("feediv").innerHTML=""
	}
}

function backFun(){
	document.merchantRegistrationform.action = "<%=request.getContextPath()%>/merchantprofile"
	document.merchantRegistrationform.submit();
	
}
</script>
</body>
<!-- END BODY -->
</html>