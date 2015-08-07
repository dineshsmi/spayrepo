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



<script src="<%=request.getContextPath()%>/resources/assets/global/plugins/carousel-owl-carousel/assets/js/jquery-1.9.1.min.js"></script>

<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/global/calender/jquery-ui.css">
  <script src="<%=request.getContextPath()%>/resources/global/calender/jquery-1.10.2.js"></script>
 
   <script src="<%=request.getContextPath()%>/resources/global/calender/jquery-ui.js"></script> 
        
      <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/global/calender/style.css">
<style type="text/css">

table, th, td {
   /*  border: 1px solid black; */
    border-collapse: collapse;
}
th, td {
    padding: 5px;
}

</style>
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
<form class="form-horizontal" role="form" name="paymentform" action="addpayment" method="post">

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
								<a href="#">
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
					<span class="title"></span>Admin
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
					<span class="title"></span>Payment Form
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
					<span class="title"></span>Product
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
					<span class="title"></span>Merchant
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
					<span class="title"></span>Transaction
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
					<span class="title"></span>Settlement
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
				Payment Screen Setup 
				</h3>
				<div>	
                             <!-- <p> <a href="#portlet-config" data-toggle="modal"><button class="btn green" type="button">Add Merchant</button></p></a> -->
                             
                           <%--   <a href="<%=request.getContextPath()%>/merchants"><button class="btn blue" type="button">Merchant</button></a>
                             
                              <a href="<%=request.getContextPath()%>/payment"><button class="btn blue" type="button">Payment Screen</button></a> --%>
                             
                              <!-- <a href=""><button class="btn blue" type="button">OTP</button></a> -->
                              
                             <%--  <a href="<%=request.getContextPath()%>/otpmessageform"><button class="btn blue" type="button">OTP</button></a>
                             
                             <a href="<%=request.getContextPath()%>/realtimetxn" ><button class="btn blue" type="button">Realtime Transaction Monitoring</button></a>
                             
                             <a href="<%=request.getContextPath()%>/showdailyreports"><button class="btn blue" type="button">Reports</button></a>
                             
                             <a href="<%=request.getContextPath()%>/txnstmt"><button class="btn blue" type="button">Transaction Statement</button></a>
                             
                              <a href=""><button class="btn blue" type="button">Audit Trail</button></a> --%>
                              
                              
                             </div>
                             
                             <br>
                             
                             <div>
                             
                             <%-- <a href="" ><button class="btn blue" type="button">Representment</button></a>
                             
                            <a href=""><button class="btn blue" type="button">Account Adjustment</button></a>
                             
                              <a href="<%=request.getContextPath()%>/userform"><button class="btn purple-soft" type="button">UAM</button></a>
                             
                              <a href=""><button class="btn blue" type="button">Recon File</button></a>
                             
                             <a href="" ><button class="btn blue" type="button">Merchant Integration</button></a>
                             
                             <a href=""><button class="btn blue" type="button">Void</button></a>
                             
                             <a href=""><button class="btn blue" type="button">Transaction Adjustment</button></a> --%>
                             
						</div>
			<!-- 	<div class="page-bar">
					<ul class="page-breadcrumb">
						<li>
							<i class="fa fa-home"></i>
							<a href="index.html">Home</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="#">Admin</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="#">Designation & Department Registration</a>
							
						</li>
					</ul>
					
				</div> -->
				<!-- END PAGE HEADER-->
				<!-- BEGIN PAGE CONTENT-->
				<div class="row">
					<div class="col-md-12">
						<%-- <div>	
                            <!--  <p> <a href="#portlet-config" data-toggle="modal"><button class="btn green" type="button">Add Merchant</button></p></a> -->
                             
                             <a href="<%=request.getContextPath()%>/userform"><button class="btn blue" type="button">User Registration</button></a>
                             
                             <a href="<%=request.getContextPath()%>/modifyuser"><button class="btn blue" type="button" id="modify">Modify User</button></a>
                             
                              <a href="<%=request.getContextPath()%>/userforget"><button class="btn blue" type="button" id="delete">Forget Password</button></a>
                             
                             <a href="<%=request.getContextPath()%>/userdepartment"><button class="btn purple-soft" type="button">Assign Rights</button></a>
                             
                              <a href="<%=request.getContextPath()%>/useraudit"><button class="btn blue" type="button">Audit Trail</button></a>
                              
						</div> --%>
						<br />
						<div class="portlet-body form">		
							<table style="width: 100%;border: 0" cellpadding="0" cellspacing="0">
								<tr>
									<td>
										<input type="checkbox" id="bill" name="inform" checked onclick="viewBill()">
										Billing Information 
									</td>
									<td>
										<input type="checkbox"  id="shipp" name="inform" onclick="viewShipp()">
										Shipping Information
									</td>
									<td>
										<input type="checkbox"  id="pay" name="inform"  onclick="viewPay()">
										Payment Information 
									</td>
								</tr>
							</table>				
						</div>
						<br />
						<!--------Bill Inoformation start------------>
                        <div id="billingmaindiv" class="portlet box red" style="display:block;">
							<div class="portlet-title">
								<div class="caption">
									Billing Information
									
								</div>
								
							</div>
							
							<div class="portlet-body form">
							
								<table width="100%" height="100%">
									<tr>
									<input type="hidden" id="hiddenbillingvalidate" name="hiddenbillingvalidate" value="0">
										<!--Billing information first table -->
										<td>
											<table class="form-horizontal" border="1" style="width: 100%">
												<tr>
													<th>Field</th>
													<th>Display</th>
													<th>Edit</th>
													<th>Require</th>
												</tr>
												
												<tr>
													<td>
														First Name
														<input type="hidden" name="hiddenbillname" value="First Name">
														<input type="hidden" name="hiddenbilling" value="Billing">
													</td>
													<td>
														<input type="checkbox" name="read" value="read" onclick="loadReadStatus(0)">
														<input type="hidden" id="hiddenread0" name="hiddenread0" value="no">
													</td>
													<td>
														<input type="checkbox" name="write" value="write" onclick="loadWriteStatus(0)">
														<input type="hidden" id="hiddenwrite0" name="hiddenwrite0" value="no">
													</td>
													<td>
														<input type="checkbox" name="delete" value="delete" onclick="loadDelStatus(0)">
														<input type="hidden" id="hiddendel0" name="hiddendel0" value="no">
													</td>
												</tr>
												<tr>
													<td>
														Last Name
														<input type="hidden" name="hiddenbillname" value="Last Name">
														
													</td>
													<td>
														<input type="checkbox" name="read" value="read" onclick="loadReadStatus(1)">
														<input type="hidden" id="hiddenread1" name="hiddenread1" value="no">
													</td>
													<td>
														<input type="checkbox" name="write" value="write" onclick="loadWriteStatus(1)">
														<input type="hidden" id="hiddenwrite1" name="hiddenwrite1" value="no">
													</td>
													<td>
														<input type="checkbox" name="delete" value="delete" onclick="loadDelStatus(1)">
														<input type="hidden" id="hiddendel1" name="hiddendel1" value="no">
													</td>
												</tr>
												<tr>
													<td>
														Company
														<input type="hidden" name="hiddenbillname" value="Company">
														
													</td>
													<td>
														<input type="checkbox" name="read" value="read" onclick="loadReadStatus(2)">
														<input type="hidden" id="hiddenread2" name="hiddenread2" value="no">
													</td>
													<td>
														<input type="checkbox" name="write" value="write" onclick="loadWriteStatus(2)">
														<input type="hidden" id="hiddenwrite2" name="hiddenwrite2" value="no">
													</td>
													<td>
														<input type="checkbox" name="delete" value="delete" onclick="loadDelStatus(2)">
														<input type="hidden" id="hiddendel2" name="hiddendel2" value="no">
													</td>
												</tr>
												<tr>
													<td>
														Street address 1
														<input type="hidden" name="hiddenbillname" value="Street address 1">
														
													</td>
													<td>
														<input type="checkbox" name="read" value="read" onclick="loadReadStatus(3)">
														<input type="hidden" id="hiddenread3" name="hiddenread3" value="no">
													</td>
													<td>
														<input type="checkbox" name="write" value="write" onclick="loadWriteStatus(3)">
														<input type="hidden" id="hiddenwrite3" name="hiddenwrite3" value="no">
													</td>
													<td>
														<input type="checkbox" name="delete" value="delete" onclick="loadDelStatus(3)">
														<input type="hidden" id="hiddendel3" name="hiddendel3" value="no">
													</td>
												</tr>
												<tr>
													<td>
														Street address 2
														<input type="hidden" name="hiddenbillname" value="Street address 2">
														
													</td>
													<td>
														<input type="checkbox" name="read" value="read" onclick="loadReadStatus(4)">
														<input type="hidden" id="hiddenread4" name="hiddenread4" value="no">
													</td>
													<td>
														<input type="checkbox" name="write" value="write" onclick="loadWriteStatus(4)">
														<input type="hidden" id="hiddenwrite4" name="hiddenwrite4" value="no">
													</td>
													<td>
														<input type="checkbox" name="delete" value="delete" onclick="loadDelStatus(4)">
														<input type="hidden" id="hiddendel4" name="hiddendel4" value="no">
													</td>
												</tr>
												<tr>
													<td>
														City
														<input type="hidden" name="hiddenbillname" value="City">
														
													</td>
													<td>
														<input type="checkbox" name="read" value="read" onclick="loadReadStatus(5)">
														<input type="hidden" id="hiddenread5" name="hiddenread5" value="no">
													</td>
													<td>
														<input type="checkbox" name="write" value="write" onclick="loadWriteStatus(5)">
														<input type="hidden" id="hiddenwrite5" name="hiddenwrite5" value="no">
													</td>
													<td>
														<input type="checkbox" name="delete" value="delete" onclick="loadDelStatus(5)">
														<input type="hidden" id="hiddendel5" name="hiddendel5" value="no">
													</td>
												</tr>

											</table>
										</td>
										<!--Billing information sec table -->
										<td>
											<table class="form-horizontal" border="1" style="width: 100%">
												<tr>
													<th>Field</th>
													<th>Display</th>
													<th>Edit</th>
													<th>Require</th>
												</tr>
												
												<tr>
													<td>
														State(US/Canada)
														<input type="hidden" name="hiddenbillname" value="State(US/Canada)">
														
													</td>
													<td>
														<input type="checkbox" name="read" value="read" onclick="loadReadStatus(6)">
														<input type="hidden" id="hiddenread6" name="hiddenread6" value="no">
													</td>
													<td>
														<input type="checkbox" name="write" value="write" onclick="loadWriteStatus(6)">
														<input type="hidden" id="hiddenwrite6" name="hiddenwrite6" value="no">
													</td>
													<td>
														<input type="checkbox" name="delete" value="delete" onclick="loadDelStatus(6)">
														<input type="hidden" id="hiddendel6" name="hiddendel6" value="no">
													</td>
												</tr>
												<tr>
													<td>
														State(Rest of World)
														<input type="hidden" name="hiddenbillname" value="State(Rest of World)">
														
													</td>
													<td>
														<input type="checkbox" name="read" value="read" onclick="loadReadStatus(7)">
														<input type="hidden" id="hiddenread7" name="hiddenread7" value="no">
													</td>
													<td>
														<input type="checkbox" name="write" value="write" onclick="loadWriteStatus(7)">
														<input type="hidden" id="hiddenwrite7" name="hiddenwrite7" value="no">
													</td>
													<td>
														<input type="checkbox" name="delete" value="delete" onclick="loadDelStatus(7)">
														<input type="hidden" id="hiddendel7" name="hiddendel7" value="no">
													</td>
												</tr>
												<tr>
													<td>
														Postal Code
														<input type="hidden" name="hiddenbillname" value="Company">
														
													</td>
													<td>
														<input type="checkbox" name="read" value="read" onclick="loadReadStatus(8)">
														<input type="hidden" id="hiddenread8" name="hiddenread8" value="no">
													</td>
													<td>
														<input type="checkbox" name="write" value="write" onclick="loadWriteStatus(8)">
														<input type="hidden" id="hiddenwrite8" name="hiddenwrite8" value="no">
													</td>
													<td>
														<input type="checkbox" name="delete" value="delete" onclick="loadDelStatus(8)">
														<input type="hidden" id="hiddendel8" name="hiddendel8" value="no">
													</td>
												</tr>
												<tr>
													<td>
														Country
														<input type="hidden" name="hiddenbillname" value="Street address 1">
														
													</td>
													<td>
														<input type="checkbox" name="read" value="read" onclick="loadReadStatus(9)">
														<input type="hidden" id="hiddenread9" name="hiddenread9" value="no">
													</td>
													<td>
														<input type="checkbox" name="write" value="write" onclick="loadWriteStatus(9)">
														<input type="hidden" id="hiddenwrite9" name="hiddenwrite9" value="no">
													</td>
													<td>
														<input type="checkbox" name="delete" value="delete" onclick="loadDelStatus(9)">
														<input type="hidden" id="hiddendel9" name="hiddendel9" value="no">
													</td>
												</tr>
												<tr>
													<td>
														Phone Number
														<input type="hidden" name="hiddenbillname" value="Street address 2">
														
													</td>
													<td>
														<input type="checkbox" name="read" value="read" onclick="loadReadStatus(10)">
														<input type="hidden" id="hiddenread10" name="hiddenread10" value="no">
													</td>
													<td>
														<input type="checkbox" name="write" value="write" onclick="loadWriteStatus(10)">
														<input type="hidden" id="hiddenwrite10" name="hiddenwrite10" value="no">
													</td>
													<td>
														<input type="checkbox" name="delete" value="delete" onclick="loadDelStatus(10)">
														<input type="hidden" id="hiddendel10" name="hiddendel10" value="no">
													</td>
												</tr>
												<tr>
													<td>
														Email Address
														<input type="hidden" name="hiddenbillname" value="City">
														
													</td>
													<td>
														<input type="checkbox" name="read" value="read" onclick="loadReadStatus(11)">
														<input type="hidden" id="hiddenread11" name="hiddenread11" value="no">
													</td>
													<td>
														<input type="checkbox" name="write" value="write" onclick="loadWriteStatus(11)">
														<input type="hidden" id="hiddenwrite11" name="hiddenwrite11" value="no">
													</td>
													<td>
														<input type="checkbox" name="delete" value="delete" onclick="loadDelStatus(11)">
														<input type="hidden" id="hiddendel11" name="hiddendel11" value="no">
													</td>
												</tr>

											</table>
										</td>
									</tr>
								</table>
											 
											
							</div>
							
						</div>
						<!--------Bill Inoformation end------------>
						<!--------Shipping Inoformation start------------>
                        <div id="shippingmaindiv" class="portlet box blue-chambray" style="display: none;">
							<div class="portlet-title">
								<div class="caption">
									Shipping Information
									
								</div>
								
							</div>
							
							<div class="portlet-body form">
							
								<table width="100%" height="100%">
									<tr>
									<input type="hidden" id="hiddenshippingvalidate" name="hiddenshippingvalidate" value="0">
										<!--Shipping information first table -->
										<td>
											<table class="form-horizontal" border="1" style="width: 100%">
												<tr>
													<th>Field</th>
													<th>Display</th>
													<th>Edit</th>
													<th>Require</th>
												</tr>
												
												<tr>
													<td>
														First Name
														<input type="hidden" name="hiddenshippingfun" value="First Name">
														<input type="hidden" name="hiddenshipping" value="Shipping">
													</td>
													<td>
														<input type="checkbox" name="read" value="read" onclick="loadReadShip(0)">
														<input type="hidden" id="hiddenreadship0" name="hiddenreadship0" value="no">
													</td>
													<td>
														<input type="checkbox" name="write" value="write" onclick="loadWriteShip(0)">
														<input type="hidden" id="hiddenwriteship0" name="hiddenwriteship0" value="no">
													</td>
													<td>
														<input type="checkbox" name="delete" value="delete" onclick="loadDelShip(0)">
														<input type="hidden" id="hiddendelship0" name="hiddendelship0" value="no">
													</td>
												</tr>
												<tr>
													<td>
														Last Name
														<input type="hidden" name="hiddenshippingfun" value="Last Name">
														
													</td>
													<td>
														<input type="checkbox" name="read" value="read" onclick="loadReadShip(1)">
														<input type="hidden" id="hiddenreadship1" name="hiddenreadship1" value="no">
													</td>
													<td>
														<input type="checkbox" name="write" value="write" onclick="loadWriteShip(1)">
														<input type="hidden" id="hiddenwriteship1" name="hiddenwriteship1" value="no">
													</td>
													<td>
														<input type="checkbox" name="delete" value="delete" onclick="loadDelShip(1)">
														<input type="hidden" id="hiddendelship1" name="hiddendelship1" value="no">
													</td>
												</tr>
												<tr>
													<td>
														Company
														<input type="hidden" name="hiddenshippingfun" value="Company">
														
													</td>
													<td>
														<input type="checkbox" name="read" value="read" onclick="loadReadShip(2)">
														<input type="hidden" id="hiddenreadship2" name="hiddenreadship2" value="no">
													</td>
													<td>
														<input type="checkbox" name="write" value="write" onclick="loadWriteShip(2)">
														<input type="hidden" id="hiddenwriteship2" name="hiddenwriteship2" value="no">
													</td>
													<td>
														<input type="checkbox" name="delete" value="delete" onclick="loadDelShip(2)">
														<input type="hidden" id="hiddendelship2" name="hiddendelship2" value="no">
													</td>
												</tr>
												<tr>
													<td>
														Street address 1
														<input type="hidden" name="hiddenshippingfun" value="Street address 1">
														
													</td>
													<td>
														<input type="checkbox" name="read" value="read" onclick="loadReadShip(3)">
														<input type="hidden" id="hiddenreadship3" name="hiddenreadship3" value="no">
													</td>
													<td>
														<input type="checkbox" name="write" value="write" onclick="loadWriteShip(3)">
														<input type="hidden" id="hiddenwriteship3" name="hiddenwriteship3" value="no">
													</td>
													<td>
														<input type="checkbox" name="delete" value="delete" onclick="loadDelShip(3)">
														<input type="hidden" id="hiddendelship3" name="hiddendelship3" value="no">
													</td>
												</tr>
												<tr>
													<td>
														Street address 2
														<input type="hidden" name="hiddenshippingfun" value="Street address 2">
														
													</td>
													<td>
														<input type="checkbox" name="read" value="read" onclick="loadReadShip(4)">
														<input type="hidden" id="hiddenreadship4" name="hiddenreadship4" value="no">
													</td>
													<td>
														<input type="checkbox" name="write" value="write" onclick="loadWriteShip(4)">
														<input type="hidden" id="hiddenwriteship4" name="hiddenwriteship4" value="no">
													</td>
													<td>
														<input type="checkbox" name="delete" value="delete" onclick="loadDelShip(4)">
														<input type="hidden" id="hiddendelship4" name="hiddendelship4" value="no">
													</td>
												</tr>
												<tr>
													<td>
														City
														<input type="hidden" name="hiddenshippingfun" value="City">
													
													</td>
													<td>
														<input type="checkbox" name="read" value="read" onclick="loadReadShip(5)">
														<input type="hidden" id="hiddenreadship5" name="hiddenreadship5" value="no">
													</td>
													<td>
														<input type="checkbox" name="write" value="write" onclick="loadWriteShip(5)">
														<input type="hidden" id="hiddenwriteship5" name="hiddenwriteship5" value="no">
													</td>
													<td>
														<input type="checkbox" name="delete" value="delete" onclick="loadDelShip(5)">
														<input type="hidden" id="hiddendelship5" name="hiddendelship5" value="no">
													</td>
												</tr>

											</table>
										</td>
										<!--Shipping information sec table -->
										<td>
											<table class="form-horizontal" border="1" style="width: 100%">
												<tr>
													<th>Field</th>
													<th>Display</th>
													<th>Edit</th>
													<th>Require</th>
												</tr>
												
												<tr>
													<td>
														State(US/Canada)
														<input type="hidden" name="hiddenshippingfun" value="State(US/Canada)">
														
													</td>
													<td>
														<input type="checkbox" name="read" value="read" onclick="loadReadShip(6)">
														<input type="hidden" id="hiddenreadship6" name="hiddenreadship6" value="no">
													</td>
													<td>
														<input type="checkbox" name="write" value="write" onclick="loadWriteShip(6)">
														<input type="hidden" id="hiddenwriteship6" name="hiddenwriteship6" value="no">
													</td>
													<td>
														<input type="checkbox" name="delete" value="delete" onclick="loadDelShip(6)">
														<input type="hidden" id="hiddendelship6" name="hiddendelship6" value="no">
													</td>
												</tr>
												<tr>
													<td>
														State(Rest of World)
														<input type="hidden" name="hiddenshippingfun" value="State(Rest of World)">
														
													</td>
													<td>
														<input type="checkbox" name="read" value="read" onclick="loadReadShip(7)">
														<input type="hidden" id="hiddenreadship7" name="hiddenreadship7" value="no">
													</td>
													<td>
														<input type="checkbox" name="write" value="write" onclick="loadWriteShip(7)">
														<input type="hidden" id="hiddenwriteship7" name="hiddenwriteship7" value="no">
													</td>
													<td>
														<input type="checkbox" name="delete" value="delete" onclick="loadDelShip(7)">
														<input type="hidden" id="hiddendelship7" name="hiddendelship7" value="no">
													</td>
												</tr>
												<tr>
													<td>
														Postal Code
														<input type="hidden" name="hiddenshippingfun" value="Company">
														
													</td>
													<td>
														<input type="checkbox" name="read" value="read" onclick="loadReadShip(8)">
														<input type="hidden" id="hiddenreadship8" name="hiddenreadship8" value="no">
													</td>
													<td>
														<input type="checkbox" name="write" value="write" onclick="loadWriteShip(8)">
														<input type="hidden" id="hiddenwriteship8" name="hiddenwriteship8" value="no">
													</td>
													<td>
														<input type="checkbox" name="delete" value="delete" onclick="loadDelShip(8)">
														<input type="hidden" id="hiddendelship8" name="hiddendelship8" value="no">
													</td>
												</tr>
												<tr>
													<td>
														Country
														<input type="hidden" name="hiddenshippingfun" value="Street address 1">
														
													</td>
													<td>
														<input type="checkbox" name="read" value="read" onclick="loadReadShip(9)">
														<input type="hidden" id="hiddenreadship9" name="hiddenreadship9" value="no">
													</td>
													<td>
														<input type="checkbox" name="write" value="write" onclick="loadWriteShip(9)">
														<input type="hidden" id="hiddenwriteship9" name="hiddenwriteship9" value="no">
													</td>
													<td>
														<input type="checkbox" name="delete" value="delete" onclick="loadDelShip(9)">
														<input type="hidden" id="hiddendelship9" name="hiddendelship9" value="no">
													</td>
												</tr>
												<tr>
													<td>
														Phone Number
														<input type="hidden" name="hiddenshippingfun" value="Street address 2">
														
													</td>
													<td>
														<input type="checkbox" name="read" value="read" onclick="loadReadShip(10)">
														<input type="hidden" id="hiddenreadship10" name="hiddenreadship10" value="no">
													</td>
													<td>
														<input type="checkbox" name="write" value="write" onclick="loadWriteShip(10)">
														<input type="hidden" id="hiddenwriteship10" name="hiddenwriteship10" value="no">
													</td>
													<td>
														<input type="checkbox" name="delete" value="delete" onclick="loadDelShip(10)">
														<input type="hidden" id="hiddendelship10" name="hiddendelship10" value="no">
													</td>
												</tr>
												<tr>
													<td>
														Email Address
														<input type="hidden" name="hiddenshippingfun" value="City">
														
													</td>
													<td>
														<input type="checkbox" name="read" value="read" onclick="loadReadShip(11)">
														<input type="hidden" id="hiddenreadship11" name="hiddenreadship11" value="no">
													</td>
													<td>
														<input type="checkbox" name="write" value="write" onclick="loadWriteShip(11)">
														<input type="hidden" id="hiddenwriteship11" name="hiddenwriteship11" value="no">
													</td>
													<td>
														<input type="checkbox" name="delete" value="delete" onclick="loadDelShip(11)">
														<input type="hidden" id="hiddendelship11" name="hiddendelship11" value="no">
													</td>
												</tr>

											</table>
										</td>
									</tr>
								</table>
											 
											
							</div>
							
						</div>
						<!--------Shipping Inoformation end------------>
						<!--------Payment Inoformation start------------>
                        <div id="paymentmaindiv" class="portlet box blue-chambray" style="display: none;">
							<div class="portlet-title">
								<div class="caption">
									Payment Information
									
								</div>
								
							</div>
							
							<div class="portlet-body form">
							
								<table width="100%" height="100%">
									<tr>
										<!--Shipping information first table -->
										<td>
										<input type="hidden" id="hiddenpaymentvalidate" name="hiddenpaymentvalidate" value="0">
											<table class="form-horizontal" border="1" style="width: 100%">
												<tr>
													<th>Field</th>
													<th>Display</th>
													<th>Edit</th>
													<th>Require</th>
												</tr>
												
												<tr>
													<td>
														Card Number	
														<input type="hidden" name="hiddenpayfun" value="Card Number">
														<input type="hidden" name="hiddenpayinformation" value="Payment">
													</td>
													<td>
														<input type="checkbox" name="read" value="read" onclick="loadReadpayStatus(0)">
														<input type="hidden" id="hiddenpayread0" name="hiddenpayread0" value="no">
													</td>
													<td>
														<input type="checkbox" name="write" value="write" onclick="loadWritepayStatus(0)">
														<input type="hidden" id="hiddenpaywrite0" name="hiddenpaywrite0" value="no">
													</td>
													<td>
														<input type="checkbox" name="delete" value="delete" onclick="loadDelpayStatus(0)">
														<input type="hidden" id="hiddenpaydel0" name="hiddenpaydel0" value="no">
													</td>
												</tr>
												<tr>
													<td>
														Customer Name	
														<input type="hidden" name="hiddenpayfun" value="Customer Name">
														
													</td>
													<td>
														<input type="checkbox" name="read" value="read" onclick="loadReadpayStatus(1)">
														<input type="hidden" id="hiddenpayread1" name="hiddenpayread1" value="no">
													</td>
													<td>
														<input type="checkbox" name="write" value="write" onclick="loadWritepayStatus(1)">
														<input type="hidden" id="hiddenpaywrite1" name="hiddenpaywrite1" value="no">
													</td>
													<td>
														<input type="checkbox" name="delete" value="delete" onclick="loadDelpayStatus(1)">
														<input type="hidden" id="hiddenpaydel1" name="hiddenpaydel1" value="no">
													</td>
												</tr>
												<tr>
													<td>
														CVV2	
														<input type="hidden" name="hiddenpayfun" value="CVV2">
														
													</td>
													<td>
														<input type="checkbox" name="read" value="read" onclick="loadReadpayStatus(2)">
														<input type="hidden" id="hiddenpayread2" name="hiddenpayread2" value="no">
													</td>
													<td>
														<input type="checkbox" name="write" value="write" onclick="loadWritepayStatus(2)">
														<input type="hidden" id="hiddenpaywrite2" name="hiddenpaywrite2" value="no">
													</td>
													<td>
														<input type="checkbox" name="delete" value="delete" onclick="loadDelpayStatus(2)">
														<input type="hidden" id="hiddenpaydel2" name="hiddenpaydel2" value="no">
													</td>
												</tr>
												<tr>
													<td>
														Date of Issue	
														<input type="hidden" name="hiddenpayfun" value="Date of Issue">
														
													</td>
													<td>
														<input type="checkbox" name="read" value="read" onclick="loadReadpayStatus(3)">
														<input type="hidden" id="hiddenpayread3" name="hiddenpayread3" value="no">
													</td>
													<td>
														<input type="checkbox" name="write" value="write" onclick="loadWritepayStatus(3)">
														<input type="hidden" id="hiddenpaywrite3" name="hiddenpaywrite3" value="no">
													</td>
													<td>
														<input type="checkbox" name="delete" value="delete" onclick="loadDelpayStatus(3)">
														<input type="hidden" id="hiddenpaydel3" name="hiddenpaydel3" value="no">
													</td>
												</tr>
												<tr>
													<td>
														Date of Expiry	
														<input type="hidden" name="hiddenpayfun" value="Date of Expiry">
														
													</td>
													<td>
														<input type="checkbox" name="read" value="read" onclick="loadReadpayStatus(4)">
														<input type="hidden" id="hiddenpayread4" name="hiddenpayread4" value="no">
													</td>
													<td>
														<input type="checkbox" name="write" value="write" onclick="loadWritepayStatus(4)">
														<input type="hidden" id="hiddenpaywrite4" name="hiddenpaywrite4" value="no">
													</td>
													<td>
														<input type="checkbox" name="delete" value="delete" onclick="loadDelpayStatus(4)">
														<input type="hidden" id="hiddenpaydel4" name="hiddenpaydel4" value="no">
													</td>
												</tr>
												<tr>
													<td>
														DOB	
														<input type="hidden" name="hiddenpayfun" value="DOB">
														
													</td>
													<td>
														<input type="checkbox" name="read" value="read" onclick="loadReadpayStatus(5)">
														<input type="hidden" id="hiddenpayread5" name="hiddenpayread5" value="no">
													</td>
													<td>
														<input type="checkbox" name="write" value="write" onclick="loadWritepayStatus(5)">
														<input type="hidden" id="hiddenpaywrite5" name="hiddenpaywrite5" value="no">
													</td>
													<td>
														<input type="checkbox" name="delete" value="delete" onclick="loadDelpayStatus(5)">
														<input type="hidden" id="hiddenpaydel5" name="hiddenpaydel5" value="no">
													</td>
												</tr>
												<tr>
													<td>
														Mobile Number		
														<input type="hidden" name="hiddenpayfun" value="Mobile Number">
													
													</td>
													<td>
														<input type="checkbox" name="read" value="read" onclick="loadReadpayStatus(6)">
														<input type="hidden" id="hiddenpayread6" name="hiddenpayread6" value="no">
													</td>
													<td>
														<input type="checkbox" name="write" value="write" onclick="loadWritepayStatus(6)">
														<input type="hidden" id="hiddenpaywrite6" name="hiddenpaywrite6" value="no">
													</td>
													<td>
														<input type="checkbox" name="delete" value="delete" onclick="loadDelpayStatus(6)">
														<input type="hidden" id="hiddenpaydel6" name="hiddenpaydel6" value="no">
													</td>
												</tr>

											</table>
										</td>
										<!--Shipping information sec table -->
										
									</tr>
								</table>
											 
											
							</div>
							
						</div>
						<!--------Payment Inoformation end------------>
						
							<div class="portlet-body form">
								<div class="form-group">
											<label class="col-md-2 control-label">Effective Date</label>
											<div class="col-md-2">
												<input type="text" class="form-control" placeholder="" id="datepicker" name="datepicker">
											</div>
									</div>
							</div>
						
						
                       <div class="form-actions right1">
                       <button type="submit" class="btn redclr" id="id_sbtbtn" onclick="return validFun()" style="border-radius: 25px !important;width:80px;">Submit</button>
								<!-- <button type="button" class="btn default" onclick="resetFun()">Reset</button> -->
								
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
	<!-- END FOOTER -->
</div>
</div>
</div>
</form>
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

$( "#datepicker" ).datepicker({changeMonth: true,changeYear:true,yearRange: "1900:3000"});
});

function validFun(){
	
	
	
	if(document.getElementById("bill").checked == true){
		
	 	if(document.getElementById("hiddenbillingvalidate").value == "0"){
	 		
			alert("Select any one of the billing information");
			return false
		}
	}
	if(document.getElementById("shipp").checked == true){
		if(document.getElementById("hiddenshippingvalidate").value == "0"){
			alert("Select any one of the shipping information");
			return false
		}
	}
	if(document.getElementById("pay").checked == true){
		if(document.getElementById("hiddenpaymentvalidate").value == "0"){
			alert("Select any one of the payment information");
			return false
		}
	}
}

/* function resetFun(){
	document.getElementById("departmentId").value = "";
	document.getElementById("departmentName").value = "";
	document.getElementById("designationId").value = "";
	document.getElementById("designation").value = "";
} */

function loadReadStatus(pos){
		
	document.getElementById("hiddenbillingvalidate").value = "1";
	document.getElementById("hiddenread"+pos).value = "yes";
}
function loadWriteStatus(pos){
	document.getElementById("hiddenbillingvalidate").value = "1";
	document.getElementById("hiddenwrite"+pos).value = "yes";
}
function loadDelStatus(pos){
	document.getElementById("hiddenbillingvalidate").value = "1";
	document.getElementById("hiddendel"+pos).value = "yes";
}

function loadReadShip(pos){
	document.getElementById("hiddenshippingvalidate").value = "1";
	document.getElementById("hiddenreadship"+pos).value = "yes";
}
function loadWriteShip(pos){
	document.getElementById("hiddenshippingvalidate").value = "1";
	document.getElementById("hiddenwriteship"+pos).value = "yes";
} 
function loadDelShip(pos){
	document.getElementById("hiddenshippingvalidate").value = "1";
	document.getElementById("hiddendelship"+pos).value = "yes";
}


function loadReadpayStatus(pos){
	document.getElementById("hiddenpaymentvalidate").value = "1";
	document.getElementById("hiddenpayread"+pos).value = "yes";
}
function loadWritepayStatus(pos){
	document.getElementById("hiddenpaymentvalidate").value = "1";
	document.getElementById("hiddenpaywrite"+pos).value = "yes";
}
function loadDelpayStatus(pos){
	document.getElementById("hiddenpaymentvalidate").value = "1";
	document.getElementById("hiddenpaydel"+pos).value = "yes";
}

function viewBill(){
	
	
	
	
	if(document.getElementById("bill").checked == true){
		
		document.getElementById("billingmaindiv").style.display ='block'
		/* document.getElementById("shippingmaindiv").style.display ='none'
		document.getElementById("paymentmaindiv").style.display ='none' */
		
		
		//document.getElementByName("shipp").checked = false;
		//document.getElementByName("pay").checked = false;
		
		//document.getElementById("shipp").checked = false;
	   // document.getElementById("pay").checked = false;
		
	}else{
		document.getElementById("billingmaindiv").style.display ='block'
	}
}
function viewShipp(){
	
	
	 if(document.getElementById("shipp").checked == true){
		
		 document.getElementById("shippingmaindiv").style.display ='block'
		 
		/* document.getElementById("billingmaindiv").style.display ='none'
		document.getElementById("shippingmaindiv").style.display ='block'
		document.getElementById("paymentmaindiv").style.display ='none' */
		
		//document.getElementByName("bill").checked = false;
		//document.getElementByName("pay").checked = false;
		
		/* 	alert("cc1==>"+document.getElementById("bill").checked)
		document.getElementById("bill").checked = false;
			alert("cc2==>"+document.getElementById("bill").checked)
		document.getElementById("pay").checked = false; */
	}else{
		document.getElementById("shippingmaindiv").style.display ='none'
	}
}
function viewPay(){
	
	if(document.getElementById("pay").checked == true){
		
		document.getElementById("paymentmaindiv").style.display ='block'
		/* document.getElementById("billingmaindiv").style.display ='none'
		document.getElementById("shippingmaindiv").style.display ='none'
		document.getElementById("paymentmaindiv").style.display ='block' */
		
	//	document.getElementById("bill").checked = false;
	//	document.getElementById("shipp").checked = false;
	}else{
		document.getElementById("paymentmaindiv").style.display ='none'
	}
}
</script>
</body>
<!-- END BODY -->
</html>