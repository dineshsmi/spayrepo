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
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/resources/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/resources/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/resources/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/resources/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/resources/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css"/>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN THEME STYLES -->
<link href="<%=request.getContextPath()%>/resources/global/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/resources/global/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/resources/admin/layout2/css/layout.css" rel="stylesheet" type="text/css"/>
<link id="style_color" href="<%=request.getContextPath()%>/resources/admin/layout2/css/themes/grey.css" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/resources/admin/layout2/css/custom_acquirer.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico"/>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-1.10.2.js" type="text/javascript"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js" type="text/javascript"></script>


<script type="text/javascript">

$(function() {//merchant_merchantDOB
    $("#dob" ).datepicker();

  
}); 
function callChangePassword(){
	
	window.open("<%=request.getContextPath()%>/changepwd","_blank","toolbar=no, scrollbars=yes, resizable=yes, top=200, left=500, width=600, height=400");
}
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
			<img src="<%=request.getContextPath()%>/resources/admin/layout2/img/logo01.png" alt="logo" class="logo-default"/>
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
						<img alt="" class="img-circle" src="../assets/admin/layout2/img/avatar3_small.jpg"/>
						<span class="username username-hide-on-mobile">
						Nick </span>
						<i class="fa fa-angle-down"></i>
						</a>
						<ul class="dropdown-menu dropdown-menu-default">
							<li>
								<a href="extra_profile.html">
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
					<ul class="page-sidebar-menu page-sidebar-menu-hover-submenu " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
					<li class="start active">
						<a href="index">
						<i class="icon-home"></i>
						<span class="title">Admin</span>
						<span class="selected"></span>
				         <span class="arrow "></span>
                        </a>
                    <ul class="sub-menu">
                        <li>
                             <a href="<%=request.getContextPath()%>/desdepbranch">
                               UAM</a>
                           </li>
                           
           </ul>
					</li>
					
					<li >
						<a href="otpmessageform">
						<i class="icon-basket"></i>
						<span class="title">Payment Form</span>
						<span class="arrow "></span>
						</a>
						<ul class="sub-menu">
                        <li>
                             <a href="<%=request.getContextPath()%>/otpmessageform">
                              OTP</a>
                           </li>
                           
                           <li>
                             <a href="<%=request.getContextPath()%>/payment">
                              Payment Screen Setup</a>
                           </li>
                           
                           </ul>
					</li>
					
					<li >
						<a href="productfrom">
						<i class="icon-diamond"></i>
						<span class="title">Prouduct</span>
						<span class="arrow "></span>
						</a>
						<ul class="sub-menu">
                        <li>
                             <a href="<%=request.getContextPath()%>/productfrom">
                             Prouduct & Fee Settings</a>
                           </li>
                          
                           </ul>
					</li>
					
					<li >
						<a href="merchants">
						<i class="icon-user"></i>
						<span class="title">Merchant</span>
						<span class="arrow "></span>
						</a>
						<ul class="sub-menu">
                        <li>
                             <a href="merchants">
                              Merchant User</a>
                           </li>
                          
                           <li>
                             <a href="<%=request.getContextPath()%>/merchantsetup">
                              Merchant Setup</a>
                           </li>
                           
                           </ul>
					</li>
			
				    <li>
						<a href="realtimetxn">
						<i class="icon-rocket"></i>
						<span class="title">Transaction</span>
						<span class="arrow "></span>
						</a>
						<ul class="sub-menu">
						
                       <li>
						<a href="realtimetxn">
				         Monitoring
						</a>
					</li>
                           <li>
                             <a href="<%=request.getContextPath()%>/txnstmt">
                             Transaction</a>
                           </li>
                           
                           <li>
						<a href="<%=request.getContextPath()%>/acctadjust">
						Account
						</a>
					</li>
                           <li>
                             <a href="<%=request.getContextPath()%>/chargeback">
                           Disputes</a>
                           </li>
                           </ul>
					</li>
				
                    
					<li class="last">
						<a href="showdailyreports">
						<i class="icon-puzzle"></i>
						<span class="title">Settlement</span>
						<span class="arrow "></span>
						</a>
						
						<ul class="sub-menu">
						
                       <li>
						<a href="showdailyreports">
						Reports
						</a>
					</li>
                           <li>
                             <a href="<%=request.getContextPath()%>/reconfile">
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
                             
                             <a href="<%=request.getContextPath()%>/merchants"><button class="btn blue" type="button">Merchant</button></a>
                             
                              <a href="<%=request.getContextPath()%>/payment"><button class="btn blue" type="button">Payment Screen</button></a>
                             
                              <!-- <a href=""><button class="btn blue" type="button">OTP</button></a> -->
                              
                              <a href="<%=request.getContextPath()%>/otpmessageform"><button class="btn blue" type="button">OTP</button></a>
                             
                             <a href="<%=request.getContextPath()%>/realtimetxn" ><button class="btn blue" type="button">Realtime Transaction Monitoring</button></a>
                             
                             <a href="<%=request.getContextPath()%>/showdailyreports"><button class="btn blue" type="button">Reports</button></a>
                             
                             <a href="<%=request.getContextPath()%>/txnstmt"><button class="btn blue" type="button">Transaction Statement</button></a>
                             
                              <a href=""><button class="btn blue" type="button">Audit Trail</button></a>
                              
                               <a href="<%=request.getContextPath()%>/feessetting"><button class="btn blue" type="button">Fees Setting</button></a>
                             </div><br>
                             <div>
                             
                             <a href="" ><button class="btn blue" type="button">Representment</button></a>
                             
                          <a href=""><button class="btn blue" type="button">Account Adjustment</button></a>
                             
                              <a href="<%=request.getContextPath()%>/userform"><button class="btn purple-soft" type="button">UAM</button></a>
                             
                              <a href=""><button class="btn blue" type="button">Recon File</button></a>
                             
                             <a href="" ><button class="btn blue" type="button">Merchant Integration</button></a>
                             
                             <a href=""><button class="btn blue" type="button">Void</button></a>
                             
                             <a href=""><button class="btn blue" type="button">Transaction Adjustment</button></a>
                             
                              <a href="<%=request.getContextPath()%>/productfrom"><button class="btn blue" type="button">Product Form</button></a>
						</div>
				<div class="page-bar">
					<ul class="page-breadcrumb">
						<li>
							<i class="fa fa-home"></i>
							<a href="index.html">Home</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="#">Merchants</a>
							<i class="fa fa-angle-right"></i>
						</li>
						
					</ul>
					
				</div>
				<!-- END PAGE HEADER-->
				<!-- BEGIN PAGE CONTENT-->
				<div class="row">
					<div class="col-md-12">
						<div>	
                            <!--  <p> <a href="#portlet-config" data-toggle="modal"><button class="btn green" type="button">Add Merchant</button></p></a> -->
                             <a href="<%=request.getContextPath()%>/desdepbranch"><button class="btn grayclr" type="button" style="border-radius: 25px !important;width:136px;padding-left:3px;">Branch Registration</button></a>
                             <a href="<%=request.getContextPath()%>/userform"><button class="btn purple-soft" type="button">User Registration</button></a>
                             
                             <a href="<%=request.getContextPath()%>/modifyuser"><button class="btn blue" type="button" id="modify">Modify User</button></a>
                             
                              <a href="<%=request.getContextPath()%>/userforget"><button class="btn blue" type="button" id="delete">Forget Password</button></a>

                             <a href="<%=request.getContextPath()%>/userdepartment"><button class="btn blue" type="button">Assign Rights</button></a>
                           
                            <a href="<%=request.getContextPath()%>/useraudit"><button class="btn blue" type="button">Audit Trail</button></a>
                            
						</div>
						<br />
				<div class="row">
					<div class="col-md-12">
						
						
						<!--------detail start------------>
                        <div class="portlet box blue-chambray">
							<div class="portlet-title">
								<div class="caption">
									Search User
								</div>
								<div class="tools">
									<a href="" class="collapse">
									</a>
									<a href="#portlet-config" data-toggle="modal" class="config">
									</a>
									<a href="" class="reload">
									</a>
									<a href="" class="remove">
									</a>
								</div>
							</div>
							<div class="portlet-body form">
								<form class="form-horizontal" role="form" method="post" action="saveregistration">
									<div class="form-body">
										
										<div class="form-group">
											<label class="col-md-2 control-label">Employee ID:</label>
											<div class="col-md-10">
												<input type="text" class="form-control" placeholder="" id="employeeId" name="employeeId" >
											</div>
											<div id="empdiv" style="color: red;margin-left:184px"></div>
										</div>
                                        
                                        <div class="form-group">
											<label class="col-md-2 control-label">User Name:</label>
											<div class="col-md-10">
												<input type="text" class="form-control" placeholder="" name="userName" id="userName">
											</div>
											<div id="namediv" style="color: red;margin-left:184px"></div>
										</div>
										
										<div class="form-group">
											<label class="col-md-2 control-label">Branch Code:</label>
											<div class="col-md-10">
												<textarea class="form-control" name="branchcode" id="branchcode"></textarea>
											</div>
											<div id="bcdiv" style="color: red;margin-left:184px"></div>
										</div>
                                        
                                        <div class="form-group">
											<label class="col-md-2 control-label">Designation:</label>
											<div class="col-md-10">
												<select class="form-control" id="designation" name="designation">
													<option value="0">-Select-</option>
                                                    <option value="Manager">Manager</option>
                                                    <option value="Assistant Manager">Assistant Manager</option>
                                                    <option value="Relationship Manager">Relationship Manager</option>
                                                    <option value="Executive">Executive</option>
                                                 </select>

											</div>
											<div id="desdiv" style="color: red;margin-left:184px"></div>
										</div>
										
										<div class="form-group">
											<label class="col-md-2 control-label">Department:</label>
											<div class="col-md-10">
												<select class="form-control" id="department" name="department">
													<option value="0">-Select-</option>
                                                    <option value="IT">IT</option>
                                                    <option value="Call Center">Call Center</option>
                                                    <option value="Chargeback Team">Chargeback Team</option>
                                                    <option value="Accounts Team">Accounts Team</option>
                                                    <option value="Business Team">Business Team</option>
                                                    <option value="Admin">Admin</option>
                                                 </select>
											</div>
											<div id="depdiv" style="color: red;margin-left:184px"></div>
										</div>
                                        
                                        <div class="form-group">
											<label class="col-md-2 control-label">DOB:</label>
											<div class="col-md-10">
												<input type="text" class="form-control" placeholder="" name="dob" id="dob">
											</div>
											<div id="dobdiv" style="color: red;margin-left:184px"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Email Id:</label>
											<div class="col-md-10">
												<input type="text" class="form-control" placeholder="" id="emailId" name="emailId">
											</div>
											<div id="emaildiv" style="color: red;margin-left:184px"></div>
										</div>
                                        
                                        <div class="form-group">
											<label class="col-md-2 control-label">Mobile:</label>
											<div class="col-md-10">
												<input type="text" class="form-control" placeholder="" id="mobile" name="mobile" maxlength="14">
											</div>
											<div id="mobdiv" style="color: red;margin-left:184px"></div>
										</div>
                                        
                                        <div class="form-group">
											<label class="col-md-2 control-label">Tel:</label>
											<div class="col-md-10">
												<input type="text" class="form-control" placeholder="" id="tel" name="tel" maxlength="14">
											</div>
											<div id="teldiv" style="color: red;margin-left:184px"></div>
										</div>
										
										<div class="form-group">
											<label class="col-md-2 control-label">Address:</label>
											<div class="col-md-10">
												<input type="text" class="form-control" placeholder="" id="address" name="address">
											</div>
											<div id="adddiv" style="color: red;margin-left:184px"></div>
										</div>
                                        
                                        <div class="form-group">
											<label class="col-md-2 control-label">Country:</label>
											<div class="col-md-10">
												<input type="text" class="form-control" placeholder="" id="country" name="country">
											</div>
											<div id="condiv" style="color: red;margin-left:184px"></div>
										</div>
										
									</div>
									 <div class="form-actions right1">
                       					<button type="submit" class="btn green" id="id_sbtbtn" onclick="return validFun()">Submit</button>
										<button type="button" class="btn default" onclick="resetFun()">Reset</button>
								
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

function resetFun(){
	
	
	document.getElementById("employeeId").value = "";
	document.getElementById("userName").value = "";
	document.getElementById("branchcode").value = "";
	document.getElementById("designation").value = "0";
	document.getElementById("department").value = "0";
	
	document.getElementById("dob").value = "";
	document.getElementById("emailId").value = "";
	document.getElementById("mobile").value = "";
	document.getElementById("tel").value = "";
	document.getElementById("address").value = "";
	document.getElementById("country").value = "";
}

function validFun(){
	 
	
	var empid = document.getElementById("employeeId").value;
	var uname = document.getElementById("userName").value;
	var bcode = document.getElementById("branchcode").value;
	var des = document.getElementById("designation").value;
	var depart = document.getElementById("department").value;
	
	var dob = document.getElementById("dob").value;
	var email = document.getElementById("emailId").value;
	var mob = document.getElementById("mobile").value;
	var tel = document.getElementById("tel").value;
	var add = document.getElementById("address").value;
	var con = document.getElementById("country").value;
	
	
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
		document.getElementById("bcdiv").innerHTML="Branch code is not empty"
		document.getElementById("branchcode").focus();
		return false;
	}else{
		document.getElementById("bcdiv").innerHTML=""
	}
	if(des == "0"){
		document.getElementById("desdiv").innerHTML="Select the designation"
		document.getElementById("designation").focus();
		return false;
	}else{
		document.getElementById("desdiv").innerHTML=""
	}
	if(depart == "0"){
		document.getElementById("depdiv").innerHTML="Select the department"
		document.getElementById("department").focus();
		return false;
	}else{
		document.getElementById("depdiv").innerHTML=""
	}
	if(dob == ""){
		document.getElementById("dobdiv").innerHTML="Date of birth is not empty"
		document.getElementById("dob").focus();
		return false;
	}else{
		document.getElementById("dobdiv").innerHTML=""
	}
	
	if(email == ""){
		document.getElementById("emaildiv").innerHTML="Email is not empty"
		document.getElementById("emailId").focus();
		return false;
	}else{
		document.getElementById("emaildiv").innerHTML=""
	}
	if(mob == ""){
		document.getElementById("mobdiv").innerHTML="Mobile is not empty"
		document.getElementById("mobile").focus();
		return false;
	}else{
		document.getElementById("mobdiv").innerHTML=""
	}
	if(tel == ""){
		document.getElementById("teldiv").innerHTML="Tel is not empty"
		document.getElementById("tel").focus();
		return false;
	}else{
		document.getElementById("teldiv").innerHTML=""
	}
	if(add == ""){
		document.getElementById("adddiv").innerHTML="Address is not empty"
		document.getElementById("address").focus();
		return false;
	}else{
		document.getElementById("adddiv").innerHTML=""
	}
	if(con == ""){
		document.getElementById("condiv").innerHTML="Country is not empty"
		document.getElementById("country").focus();
		return false;
	}else{
		document.getElementById("condiv").innerHTML=""
	}
}

</script>
</body>
<!-- END BODY -->
</html>