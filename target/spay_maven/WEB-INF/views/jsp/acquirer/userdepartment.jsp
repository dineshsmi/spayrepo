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

<script type="text/javascript">
function callChangePassword(){
	
	window.open("<%=request.getContextPath()%>/changepwd","_blank","toolbar=no, scrollbars=yes, resizable=yes, top=200, left=500, width=600, height=400");
}

</script>
<style type="text/css">

table, th, td {
    border: 1px solid black;
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
<form class="form-horizontal" role="form" action="savepermission" method="post">

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
							<a href="<%=request.getContextPath()%>/desdepbranch">
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
				UAM
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
						<div class="row">
					<div class="col-md-12">
						<div>	
							<a href="<%=request.getContextPath()%>/desdepbranch"><button class="btn grayclr" type="button" style="border-radius: 25px !important;width:136px;padding-left:3px;">Branch Registration</button></a>
						
                             <a href="<%=request.getContextPath()%>/userform"><button class="btn grayclr" type="button" style="border-radius: 25px !important;width:120px;padding-left:3px;">User Registration</button></a>
                             
                             <a href="<%=request.getContextPath()%>/modifyuser"><button class="btn grayclr" type="button" id="modify" style="border-radius: 25px !important;width:120px;">Modify User</button></a>
                             
                              <a href="<%=request.getContextPath()%>/userforget"><button class="btn grayclr" type="button" id="delete" style="border-radius: 25px !important;width:120px;padding-left:5px;">Forget Password</button></a>

                             <a href="<%=request.getContextPath()%>/userdepartment"><button class="btn redclr" type="button" style="border-radius: 25px !important;width:120px;">Assign Rights</button></a>
                             
                             <a href="<%=request.getContextPath()%>/useraudit"><button class="btn grayclr" type="button" style="border-radius: 25px !important;width:120px;">Audit Trail</button></a>
						</div>
						<br />
				<div class="row">
					<div class="col-md-12">
						
						
						<!--------detail start------------>
                        <div class="portlet box red">
							<div class="portlet-title">
								<div class="caption">
									Designation & Department Registration
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
								
									<div class="form-body" style="text-align: left;padding-left:160px;">
										
										<!-- <div class="form-group">
											<label class="col-md-2 control-label">Department ID:</label>
											<div class="col-md-10">
												<input type="text" class="form-control" placeholder="" id="departmentId" name="departmentId" style="width:400px;">
											</div>
											<div id="depdiv" style="color: red;margin-left:184px"></div>
										</div> -->
                                        
                                        <!-- <div class="form-group">
											<label class="col-md-2 control-label">Department Name:</label>
											<div class="col-md-10">
												<input type="text" class="form-control" placeholder="" id="departmentName" name="departmentName" style="width:400px;">
											</div>
											<div id="depnamediv" style="color: red;margin-left:184px"></div>
										</div> -->
										
										<!-- <div class="form-group">
											<label class="col-md-2 control-label">Designation Id:</label>
											<div class="col-md-10">
												<input type="text" class="form-control" placeholder="" id="designationId" name="designationId" style="width:400px;">
											</div>
											<div id="depdesiddiv" style="color: red;margin-left:184px"></div>
										</div> -->
										
										<!-- <div class="form-group">
											<label class="col-md-2 control-label">Designation:</label>
											<div class="col-md-10">
												<input type="text" class="form-control" placeholder="" id="designation" name="designation" style="width:400px;">
											</div>
											<div id="depdesdiv" style="color: red;margin-left:184px"></div>
										</div> -->
										
										<div class="form-group">
											<label class="col-md-2 control-label">Employee ID:</label>
											<div class="col-md-10">
												<input type="text" class="form-control" onblur="loadUsername()" id="employeeId" name="employeeId" maxlength="10" style="width:400px;">
											</div>
											<div id="empdiv" style="color: red;margin-left:184px"></div>
										</div>
                                        
                                        <div class="form-group">
											<label class="col-md-2 control-label">User Name:</label>
											<div class="col-md-10">
												<input type="text" class="form-control"  name="userName" id="userName" maxlength="30" style="width:400px;">
											</div>
											<div id="namediv" style="color: red;margin-left:184px"></div>
										</div>
										
										<div class="form-group">
											<label class="col-md-2 control-label">Branch Code:</label>
											<div class="col-md-10">
											
											
											<select class="form-control" name="branchcode" id="branchcode" style="width:400px;">
													<option value="0">-Select-</option>
                                                   <c:forEach items="${branchcode}" var="cc">
											         <option value="${cc.code}">${cc.branchname}</option>
											        </c:forEach>
                                                   
                                                 </select>
											
											</div>
											<div id="bcdiv" style="color: red;margin-left:184px"></div>
										</div>
                                        
                                        <div class="form-group">
											<label class="col-md-2 control-label">Designation:</label>
											<div class="col-md-10">
												
                                                 <select class="form-control" name="designation" id="designation" style="width:400px;">
													<option value="0">-Select-</option>
                                                   <c:forEach items="${descode}" var="des">
											         <option value="${des.designationname}">${des.designationname}</option>
											        </c:forEach>
                                                   
                                                 </select>

											</div>
											<div id="desdiv" style="color: red;margin-left:184px"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Department:</label>
											<div class="col-md-10">
												                                                 
                                                 <select class="form-control" name="department" id="department" style="width:400px;">
													<option value="0">-Select-</option>
                                                   <c:forEach items="${departcode}" var="des">
											         <option value="${des.departmentname}">${des.departmentname}</option>
											        </c:forEach>
                                                   
                                                 </select>
                                                 
											</div>
											<div id="depdiv" style="color: red;margin-left:184px"></div>
										</div>
                                       
									</div>
								
							</div>
						</div>
                       
					</div>
				</div>
									
						
						<!--------detail start------------>
                        <div class="portlet box red">
							<div class="portlet-title">
								<div class="caption">
									Assign Rights
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
											<table class="form-horizontal" border="1" style="width: 100%">
												<tr>
													<th>Functions</th>
													<th>Function Description</th>
													<th>Access Rights</th>
												</tr>
												<tr>
													<th></th>
													<th></th>
													<th>Read</th>
													<th>Write</th>
													<th>Delete</th>

												</tr>
												<tr>
													<td>
														Merchant
														<input type="hidden" name="hiddenfun" value="Merchant">
													</td>
													<td>
														Merchant Functions Covered
														<input type="hidden" name="hiddendes" value="Merchant Functions Covered">
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
														Payment Screen
														<input type="hidden" name="hiddenfun" value="Payment Screen">
													</td>
													<td>
														Payment Screen Functions
														<input type="hidden" name="hiddendes" value="Payment Screen Functions">
													</td>
													<td>
													<input type="checkbox" name="read" value="read" onclick="loadReadStatus(1)">
													<input type="hidden" id="hiddenread1" name="hiddenread1" value="no">
													</td>
													<td>
													<input type="checkbox" name="write" value="write" onclick="loadWriteStatus(1)">
													<input type="hidden" id="hiddenwrite1" name="hiddenwrite1" value="no">
													</td>
													<td><input type="checkbox" name="delete" value="delete" onclick="loadDelStatus(1)">
													<input type="hidden" id="hiddendel1" name="hiddendel1" value="no">
													</td>
												</tr>
												<tr>
													<td>
														OTP
														<input type="hidden" name="hiddenfun" value="OTP">
													</td>
													<td>
														OTP design
														<input type="hidden" name="hiddendes" value="OTP design">
													</td>
													<td><input type="checkbox" name="read" value="read" onclick="loadReadStatus(2)">
													<input type="hidden" id="hiddenread2" name="hiddenread2" value="no">
													</td>
													<td>
													<input type="checkbox" name="write" value="write" onclick="loadWriteStatus(2)">
													<input type="hidden" id="hiddenwrite2" name="hiddenwrite2" value="no">
													</td>
													<td><input type="checkbox" name="delete" value="delete" onclick="loadDelStatus(2)">
													<input type="hidden" id="hiddendel2" name="hiddendel2" value="no">
													</td>
												</tr>
												<tr>
													<td>
														Reports
														<input type="hidden" name="hiddenfun" value="Reports">
													</td>
													<td>
														Daily and Monthly reports
														<input type="hidden" name="hiddendes" value="Daily and Monthly reports">
													</td>
													<td>
													<input type="checkbox" name="read" value="read" onclick="loadStatus(3)">
													<input type="hidden" id="hiddenread3" name="hiddenread3" value="no">
													</td>
													<td>
													<input type="checkbox" name="write" value="write" onclick="loadWriteStatus(3)">
												<input type="hidden" id="hiddenwrite3" name="hiddenwrite3" value="no">
													</td>
													<td><input type="checkbox" name="delete" value="delete" onclick="loadDelStatus(3)">
													<input type="hidden" id="hiddendel3" name="hiddendel3" value="no">
													
													</td>
												</tr>

											</table>
											
							</div>
							
						</div>
                       <div class="form-actions right1" style="text-align: left;padding-left:315px;">
                       <button type="submit" class="btn redclr" id="id_sbtbtn" onclick="return validFun()" style="border-radius: 25px !important;width:80px;">Submit</button>
								<button type="button" class="btn grayclr" onclick="resetFun()" style="border-radius: 25px !important;width:80px;">Reset</button>
								
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
</div>
</div>
	<!-- END CONTAINER -->
	<!-- BEGIN FOOTER -->
		<div class="page-footer">
		<div class="page-footer-inner">
			<p style="margin-left:1095px"> @Powered by Sysmatik</p>
		</div>
		<div class="scroll-to-top">
			<i class="icon-arrow-up"></i>
		</div>
	</div>
	<!-- END FOOTER -->


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

function validFun(){
	var empid = document.getElementById("employeeId").value;
	var uname = document.getElementById("userName").value;
	var bcode = document.getElementById("branchcode").value;
	var depname = document.getElementById("department").value;
	
	var des = document.getElementById("designation").value;
	if(empid == ""){
		document.getElementById("empdiv").innerHTML="Employee id is not empty"
		document.getElementById("employeeId").focus();
		return false;
	}else{
		document.getElementById("empdiv").innerHTML=""
	}
	if(uname == ""){
		//alert("Merchant id is not empty");
		document.getElementById("namediv").innerHTML="User name is not empty"
		document.getElementById("userName").focus();
		return false;
	}else{
		document.getElementById("namediv").innerHTML=""
	}
	if(bcode == ""){
		//alert("Merchant id is not empty");
		document.getElementById("bcdiv").innerHTML="Branch code is not empty"
		document.getElementById("branchcode").focus();
		return false;
	}else{
		document.getElementById("namediv").innerHTML=""
	}
	if(depname == ""){
		document.getElementById("depnamediv").innerHTML="Department name is not empty"
		document.getElementById("department").focus();
		return false;
	}else{
		document.getElementById("depnamediv").innerHTML=""
	}
	
	if(des == ""){
		document.getElementById("depdesdiv").innerHTML="Designation id is not empty"
		document.getElementById("designation").focus();
		return false;
	}else{
		document.getElementById("depdesdiv").innerHTML=""
	}
	
}

function resetFun(){
	document.getElementById("departmentId").value = "";
	document.getElementById("departmentName").value = "";
	document.getElementById("designationId").value = "";
	document.getElementById("designation").value = "";
}

function loadReadStatus(pos){
		
	document.getElementById("hiddenread"+pos).value = "yes";
}
function loadWriteStatus(pos){
	document.getElementById("hiddenwrite"+pos).value = "yes";
}
function loadDelStatus(pos){
	document.getElementById("hiddendel"+pos).value = "yes";
}

function loadUsername(){
	var empid = document.getElementById("employeeId").value;
	$.ajax({
			type: 'GET',
			url: '<%=request.getContextPath()%>/loadUsername?empid='+empid,
			//data: {merchantid: $('#merchant_merchantId').val()},
			success: function(data) 
			{
				var parsedJson = $.parseJSON(data);
			    var name = parsedJson[0].name
			    document.getElementById("userName").value = name;
			},
			error: function(){
				//alert("Error");
			}
		});
}

</script>
</body>
<!-- END BODY -->
</html>