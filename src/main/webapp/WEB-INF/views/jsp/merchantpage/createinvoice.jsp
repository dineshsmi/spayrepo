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



<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-1.10.2.js" type="text/javascript"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js" type="text/javascript"></script>


<style type="text/css">
	
	</style>

<script>

$(function() {
    $("#startdate" ).datepicker();

    $("#enddate" ).datepicker();
}); 
	
</script>
</head>


<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-fixed-mobile" and "page-footer-fixed-mobile" class to body element to force fixed header or footer in mobile devices -->
<!-- DOC: Apply "page-sidebar-closed" class to the body and "page-sidebar-menu-closed" class to the sidebar menu element to hide the sidebar by default -->
<!-- DOC: Apply "page-sidebar-hide" class to the body to make the sidebar completely hidden on toggle -->
<!-- DOC: Apply "page-sidebar-closed-hide-logo" class to the body element to make the logo hidden on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-hide" class to body element to completely hide the sidebar on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-fixed" class to have fixed sidebar -->
<!-- DOC: Apply "page-footer-fixed" class to the body element to have fixed footer -->
<!-- DOC: Apply "page-sidebar-reversed" class to put the sidebar on the right side -->
<!-- DOC: Apply "page-full-width" class to the body element to have full width page without the sidebar menu -->
<body class="page-boxed page-header-fixed page-container-bg-solid page-sidebar-closed-hide-logo ">
<!-- BEGIN HEADER -->



<%
   String contextPath = request.getContextPath();
   
%>


<div class="page-header navbar navbar-fixed-top">
	<!-- BEGIN HEADER INNER -->
	<div class="page-header-inner container">
		<!-- BEGIN LOGO -->
		<div class="page-logo">
			<a href="index.html">
			<%-- <img src="<%=request.getContextPath()%>/resources/admin/layout2/img/logo01.png" alt="logo" class="logo-default"/> --%>
			<p style="color:#ffffff; width:140px;font-size:15px;text-align:center;padding:5px;">ADMINISTRATOR BUSINESS CENTER</p>
			</a>
			<div class="menu-toggler sidebar-toggler">
				<!-- DOC: Remove the above "hide" to enable the sidebar toggler button on header -->
			</div>
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
			<img src="<%=request.getContextPath()%>/resources/admin/layout2/img/bcel-logo-rev.png" alt="logo" class=""/>
			<div class="top-menu">
				<ul class="nav navbar-nav pull-right">
					<!-- BEGIN USER LOGIN DROPDOWN -->
					<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
					<li class="dropdown dropdown-user">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
						<img alt="" class="img-circle" src="<c:url value="/resources/admin/layout2/img/avatar3_small.jpg" />"/>
						<span class="username username-hide-on-mobile">
						admin </span>
						<i class="fa fa-angle-down"></i>
						</a>
						<ul class="dropdown-menu dropdown-menu-default">
							<li>
								<a href="#">
								<i class="icon-user"></i> My Profile </a>
							</li>
							<li>
								<a href="#" onclick="callChangePassword()">
								<i class="icon-lock"></i> Change Password </a>
							</li>
							<li>
								<a href="loginpage">
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
<div class="container">
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
					<a href="index">
					<i class="icon-home"></i>
					<span class="title">Admin</span>
					</a>
					<ul class="sub-menu">
						<li>
							<a href="<%=request.getContextPath()%>/userform">
							<i class="fa fa-chevron-right"></i>
							UAM</a>
						</li>
						
					</ul>
				</li>
				<li>
					<a href="otpmessageform">
					<i class="fa fa-file-o"></i>
					<span class="title">Payment Form</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li>
							<a href="<%=request.getContextPath()%>/otpmessageform">
							<i class="fa fa-chevron-right"></i>
							OTP</a>
						</li>
						<li>
							<a href="<%=request.getContextPath()%>/payment">
							<i class="fa fa-chevron-right"></i>
							Payment Screen Setup</a>
						</li>
						
					</ul>
				</li>
				<li>
					<a href="productfrom">
					<i class="icon-basket"></i>
					<span class="title">Product</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li>
							<a href="<%=request.getContextPath()%>/productfrom">
							<i class="fa fa-chevron-right"></i>
							 Prouduct & Fee Settings</a>
						</li>
					</ul>
				</li>
                <li>
					<a href="merchants">
					<i class="fa fa-edit"></i>
					<span class="title">Merchant</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li>
							<a href="merchants">
							<i class="fa fa-chevron-right"></i>
							Merchant User</a>
						</li>
						<li>
							<a href="<%=request.getContextPath()%>/merchantsetup">
							<i class="fa fa-chevron-right"></i>
							Merchant Setup</a>
						</li>
						
					</ul>
				</li>
                <li>
					<a href="realtimetxn">
					<i class="fa fa-credit-card"></i>
					<span class="title">Transaction</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li>
							<a href="realtimetxn">
							<i class="fa fa-chevron-right"></i>
							 Monitoring</a>
						</li>
						<li>
							<a href="<%=request.getContextPath()%>/txnstmt">
						<i class="fa fa-chevron-right"></i>
							Transaction</a>
						</li>
						<li>
							<a href="<%=request.getContextPath()%>/acctadjust">
							<i class="fa fa-chevron-right"></i>
							 Account</a>
						</li>
						<li>
							<a href="<%=request.getContextPath()%>/chargeback">
						<i class="fa fa-chevron-right"></i>
							Disputes</a>
						</li>
					</ul>
				</li>
				<li class="last ">
					<a href="showdailyreports">
					<i class="fa fa-suitcase"></i>
					<span class="title">Settlement</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li>
							<a href="showdailyreports"><i class="fa fa-chevron-right"></i>
							Reports</a>
						</li>
						<li>
							<a href="<%=request.getContextPath()%>/reconfile"><i class="fa fa-chevron-right"></i>
							Recon File</a>
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
				<div class="modal fade" id="portlet-config" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
								<h4 class="modal-title">
                                  <div class="portlet-title">
								<div class="caption">
									<i class="fa fa-gift font-green-sharp"></i>
									<span class="caption-subject font-green-sharp bold uppercase">Record Listing</span>
									<span class="caption-helper">manage records...</span>
								</div>
							</div>
                                </h4>
							</div>
							<div class="modal-body">
								 
                                 
                                 <!-- Begin: life time stats  class-./light/.-->
						<div class="portlet">
							<div class="portlet-body">
								<div class="table-container">
									<div class="table-actions-wrapper">
										<span>
										</span>
										<select class="table-group-action-input form-control input-inline input-small input-sm">
											<option value="">Select...</option>
											<option value="Cancel">Cancel</option>
											<option value="Cancel">Hold</option>
											<option value="Cancel">On Hold</option>
											<option value="Close">Close</option>
										</select>
										<button class="btn btn-sm yellow table-group-action-submit"><i class="fa fa-check"></i> Submit</button>
									</div>
									<table class="table table-striped table-bordered table-hover" id="datatable_ajax">
									<thead>
									<tr role="row" class="heading">
										<th width="2%">
											<input type="checkbox" class="group-checkable">
										</th>
										<th width="5%">
											 Record&nbsp;#
										</th>
										<th width="15%">
											 Date
										</th>
										<th width="15%">
											 Customer
										</th>
										
										<th width="10%">
											 Price
										</th>
										<th width="10%">
											 Amount
										</th>
										<th width="20%">
											 Status
										</th>
										
									</tr>
									<tr role="row" class="filter">
										<td>
										</td>
										<td>
											<input type="text" class="form-control form-filter input-sm" name="order_id">
										</td>
										<td>
											<div class="input-group date date-picker margin-bottom-5" data-date-format="dd/mm/yyyy">
												<input type="text" class="form-control form-filter input-sm" readonly name="order_date_from" placeholder="From">
												<span class="input-group-btn">
												<button class="btn btn-sm default" type="button"><i class="fa fa-calendar"></i></button>
												</span>
											</div>
											<div class="input-group date date-picker" data-date-format="dd/mm/yyyy">
												<input type="text" class="form-control form-filter input-sm" readonly name="order_date_to" placeholder="To">
												<span class="input-group-btn">
												<button class="btn btn-sm default" type="button"><i class="fa fa-calendar"></i></button>
												</span>
											</div>
										</td>
										<td>
											<input type="text" class="form-control form-filter input-sm" name="order_customer_name">
										</td>
										
										<td>
											<div class="margin-bottom-5">
												<input type="text" class="form-control form-filter input-sm" name="order_price_from" placeholder="From"/>
											</div>
											<input type="text" class="form-control form-filter input-sm" name="order_price_to" placeholder="To"/>
										</td>
										<td>
											<div class="margin-bottom-5">
												<input type="text" class="form-control form-filter input-sm margin-bottom-5 clearfix" name="order_quantity_from" placeholder="From"/>
											</div>
											<input type="text" class="form-control form-filter input-sm" name="order_quantity_to" placeholder="To"/>
										</td>
										<td>
											<select name="order_status" class="form-control form-filter input-sm">
												<option value="">Select...</option>
												<option value="pending">Pending</option>
												<option value="closed">Closed</option>
												<option value="hold">On Hold</option>
												<option value="fraud">Fraud</option>
											</select>
										</td>
										
									</tr>
									</thead>
									<tbody>
									</tbody>
									</table>
								</div>
							</div>
						</div>
						<!-- End: life time stats -->
                                 
                                 
							</div>
							<div class="modal-footer">
								<button type="button" class="btn blue">Save changes</button>
								<button type="button" class="btn default" data-dismiss="modal">Close</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.modal -->
				<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
				<!-- BEGIN PAGE HEADER-->
				<h3 class="page-title">
				Merchant
				</h3>
				<div>	
                             <!-- <p> <a href="#portlet-config" data-toggle="modal"><button class="btn green" type="button">Add Merchant</button></p></a> -->
                             
                            <%--  <a href="<%=request.getContextPath()%>/merchants"><button class="btn purple-soft" type="button">Merchant</button></a> --%>
                             
                           <%--   <a href="<%=request.getContextPath()%>/payment"><button class="btn blue" type="button">Payment Screen</button></a>
                             
                              <!-- <a href=""><button class="btn blue" type="button">OTP</button></a> -->
                              
                              <a href="<%=request.getContextPath()%>/otpmessageform"><button class="btn blue" type="button">OTP</button></a>
                             
                             <a href="<%=request.getContextPath()%>/realtimetxn" ><button class="btn blue" type="button">Realtime Transaction Monitoring</button></a>
                             
                             <a href="<%=request.getContextPath()%>/showdailyreports"><button class="btn blue" type="button">Reports</button></a>
                             
                             <a href="<%=request.getContextPath()%>/txnstmt"><button class="btn blue" type="button">Transaction Statement</button></a>
                             
                              <a href=""><button class="btn blue" type="button">Audit Trail</button></a> --%>
                             </div>
                             <br>
                             <div>
                             
                            <%--  <a href="" ><button class="btn blue" type="button">Representment</button></a>
                             
                             <a href=""><button class="btn blue" type="button">Account Adjustment</button></a>
                             
                              <a href="<%=request.getContextPath()%>/userform"><button class="btn blue" type="button">UAM</button></a>
                             
                              <a href=""><button class="btn blue" type="button">Recon File</button></a>
                             
                             <a href="" ><button class="btn blue" type="button">Merchant Integration</button></a>
                             
                             <a href=""><button class="btn blue" type="button">Void</button></a>
                             
                             <a href=""><button class="btn blue" type="button">Transaction Adjustment</button></a> --%>
						</div>
				<!-- <div class="page-bar">
					<ul class="page-breadcrumb">
						<li>
							<i class="fa fa-home"></i>
							<a href="#">Home</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="#">Admin</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="#">Merchants</a>
							
						</li>
						
					</ul>
					
				</div> -->
				
				<!-- END PAGE HEADER-->
				<!-- BEGIN PAGE CONTENT-->
				<div class="row">
					<div class="col-md-12">
						<div>	
                            <!--  <p> <a href="#portlet-config" data-toggle="modal"><button class="btn green" type="button">Add Merchant</button></p></a> -->
                             
                             <!-- <a href=""><button class="btn blue" type="button">Register</button></a> -->
                             
                             <a href="<%=request.getContextPath()%>/createinvoice"><button class="btn redclr" type="button" id="reg" style="border-radius: 25px !important;width:120px;">Create Invoice</button></a>
                             
                              <a href=""><button class="btn grayclr" type="button" id="modify" style="border-radius: 25px !important;width:120px;">View Invoice</button></a>
                              
                              <a href=""><button class="btn grayclr" type="button" id="modify" style="border-radius: 25px !important;width:120px;">Setting</button></a>
                              
                             <%--  <a href="<%=request.getContextPath()%>/searchmerchant"><button class="btn blue" type="button" id="delete">Delete</button></a>
                             
                             <a href="" ><button class="btn blue" type="button">Block</button></a>
                             
                             <a href=""><button class="btn blue" type="button">Unblock</button></a> --%>
						</div>
						<br />
						<!-- BEGIN SAMPLE TABLE PORTLET--> 
						<!-- <div class="portlet box blue-chambray">
							<div class="portlet-title">
								<div class="caption">
									Merchants 
								</div>
								<div class="tools">
									<a href="javascript:;" class="collapse">
									</a>
									<a href="javascript:;" class="config">
									</a>
									<a href="javascript:;" class="reload">
									</a>
									<a href="javascript:;" class="remove">
									</a>
								</div>
							</div>
                            
                            
                            
							<div class="portlet-body flip-scroll">
								<table class="table table-bordered table-striped table-condensed flip-content">
								<thead class="flip-content">
								<tr>
									<th width="20%">
										 Merchant name
									</th>
									<th>
										 Merchant category
									</th>
									<th >
										 Region
									</th>
									
								</tr>
								</thead>
								<tbody>
								<tr>
									<td>
										 text
									</td>
									<td>
										 AUSTRALIAN AGRICULTURAL COMPANY LIMITED.
									</td>
									<td >
									   text	 
									</td>
									
								</tr>
                                <tr>
									<td>
										 text
									</td>
									<td>
										 AUSTRALIAN AGRICULTURAL COMPANY LIMITED.
									</td>
									<td >
									   text	 
									</td>
									
								</tr>
                                <tr>
									<td>
										 text
									</td>
									<td>
										 AUSTRALIAN AGRICULTURAL COMPANY LIMITED.
									</td>
									<td >
									   text	 
									</td>
									
								</tr>
                                <tr>
									<td>
										 text
									</td>
									<td>
										 AUSTRALIAN AGRICULTURAL COMPANY LIMITED.
									</td>
									<td >
									   text	 
									</td>
									
								</tr>
                                <tr>
									<td>
										 text
									</td>
									<td>
										 AUSTRALIAN AGRICULTURAL COMPANY LIMITED.
									</td>
									<td >
									   text	 
									</td>
									
								</tr>
								
								</tbody>
								</table>
							</div>
						</div> -->
						<!-- END SAMPLE TABLE PORTLET-->
						
                        <!--------detail start------------>
                        <div class="portlet box red">
							<div class="portlet-title">
								<div class="caption">
									Item Information
								</div>
								<div class="tools">
									<!-- <a href="" class="collapse">
									</a>
									<a href="#portlet-config" data-toggle="modal" class="config">
									</a>
									<a href="" class="reload">
									</a>
									<a href="" class="remove">
									</a> -->
								</div>
							</div>
							<div class="portlet-body form">
								<form name="createinvoiceform" class="form-horizontal" role="form" action="" method="post">
									<div class="form-body" id="Container" style="text-align: left;padding-left:160px;">
										<div class="form-group">
										      <label class="col-md-2 control-label" for="merchant_merchantId">Item Name/Id:</label>
											
											  <div class="col-md-10" id="test">
												  <input type="text" class="form-control" id="itemid"  placeholder="" name="itemId" style="width:400px;">
												  <div id="errorstatus"> 
												    
												  </div>
											</div>
										</div>
                                        
                                        <div class="form-group">
											<label class="col-md-2 control-label">Quantity:</label>
											<div class="col-md-10">
												<input type="text" class="form-control" id="quantity" placeholder="" name="Quantity" style="width:400px;">
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-md-2 control-label">Unit Price:</label>
											<div class="col-md-10">
												<input type="text" class="form-control" id="unitprice" placeholder="" name="Unitprice" style="width:400px;">
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-md-2 control-label">Tax:</label>
											<div class="col-md-10">
												<input type="text" class="form-control" id="tax" placeholder="" name="Tax" style="width:400px;">
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-md-2 control-label">VAT:</label>
											<div class="col-md-10">
												<input type="text" class="form-control" id="VAT" placeholder="" name="VAT" style="width:400px;">
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-md-2 control-label">Business:</label>
											<div class="col-md-10">
												<input type="text" class="form-control" id="business" placeholder="" name="Business" style="width:400px;">
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Sub Total:</label>
											<div class="col-md-10">
										<input type="text" class="form-control" id="subtotal" placeholder="" name="Subtotal" style="width:400px;"style="width:400px;">
                                                 </div>
                                        </div>
                                        
										<div class="form-group">
											<label class="col-md-2 control-label">Comments:</label>
											<div class="col-md-10">
												<input type="text" class="form-control" id="comments" placeholder="" name="Comments" style="width:400px;">
											</div>
										</div>
									</div>
									


								</form>
							</div>
						</div>
						
						
                        <!--------detail end---------->
						<div class="portlet box red">
							<div class="portlet-title">
								<div class="caption">
									Amount Summary
								</div>
								<div class="tools">
									<!-- <a href="" class="collapse">
									</a>
									<a href="#portlet-config" data-toggle="modal" class="config">
									</a>
									<a href="" class="reload">
									</a>
									<a href="" class="remove">
									</a> -->
								</div>
							</div>
							<div class="portlet-body form">
								<form name="usagesettingform" class="form-horizontal" role="form" action="" method="post">
									<div class="form-body" id="Container" style="text-align: left;padding-left:160px;">
										<div class="form-group">
										      <label class="col-md-2 control-label" for="merchant_merchantId">Sub total:</label>
											
											  <div class="col-md-10" id="test">
												  <input type="text" class="form-control" id="Sub_total"  placeholder="" name="Sub_total" style="width:400px;">
												  <div id="errorstatus"> 
												    
												  </div>
											</div>
										</div>
                                        
                                        <div class="form-group">
											<label class="col-md-2 control-label">Discount:</label>
											<div class="col-md-10">
												<input type="text" class="form-control" id="Discount" placeholder="" name="discount" style="width:400px;">
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-md-2 control-label">Total:</label>
											<div class="col-md-10">
												<input type="text" class="form-control" id="total" placeholder="" name="Total" style="width:400px;">
											</div>
										</div>
										
										
										
										
									</div>
									


								</form>
							</div>
						</div>
						<!-- end  -->
						<div class="portlet box red">
							<div class="portlet-title">
								<div class="caption">
									Billing Information
								</div>
								<div class="tools">
									<!-- <a href="" class="collapse">
									</a>
									<a href="#portlet-config" data-toggle="modal" class="config">
									</a>
									<a href="" class="reload">
									</a>
									<a href="" class="remove">
									</a> -->
								</div>
							</div>
							<div class="portlet-body form">
								<form name="usagesettingform" class="form-horizontal" role="form" action="" method="post">
									<div class="form-body" id="Container" style="text-align: left;padding-left:160px;">
										<div class="form-group">
										      <label class="col-md-2 control-label" for="merchant_merchantId">Name:</label>
											
											  <div class="col-md-10" id="test">
												  <input type="text" class="form-control" id="name"  placeholder="" name="Name" style="width:400px;">
												  <div id="errorstatus"> 
												    
												  </div>
											</div>
										</div>
                                        
                                        <div class="form-group">
											<label class="col-md-2 control-label">Email ID:</label>
											<div class="col-md-10">
												<input type="text" class="form-control" id="Mailid" placeholder="" name="mailid" style="width:400px;">
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-md-2 control-label">Tel:</label>
											<div class="col-md-10">
												<input type="text" class="form-control" id="Tel" placeholder="" name="tel" style="width:400px;">
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-md-2 control-label">Mobile:</label>
											<div class="col-md-10">
												<input type="text" class="form-control" id="Mobile" placeholder="" name="mobile" style="width:400px;">
											</div>
										</div>
										
										
										
										
                                        
										
										
									</div>
									


								</form>
							</div>
						</div>
					
					<div class="form-actions" style="text-align: left;padding-left:315px;">
										<button type="submit" class="btn redclr" id="btn1" align="center" style="border-radius: 25px !important;width:120px;">Create Invoice</button>
										<button type="submit" class="btn grayclr" id="btn2" style="border-radius: 25px !important;width:120px;">Reset</button>
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
			<p style="margin-left:1068px"> @Powered by Sysmatik</p>
		</div>
		<div class="scroll-to-top">
			<i class="icon-arrow-up"></i>
		</div>
	</div>
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