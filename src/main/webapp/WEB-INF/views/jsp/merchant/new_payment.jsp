<!DOCTYPE html>
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
<title>Metronic | Form Stuff - Form Controls</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description"/>
<meta content="" name="author"/>
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css">
<link href="../assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="../assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css">
<link href="../assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="../assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
<link href="../assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css"/>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN THEME STYLES -->
<link href="../assets/global/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link href="../assets/global/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="../assets/admin/layout2/css/layout.css" rel="stylesheet" type="text/css"/>
<link href="../assets/admin/layout2/css/themes/light.css" rel="stylesheet" type="text/css" id="style_color"/>
<link href="../assets/admin/layout2/css/custom_merchant.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico"/>
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
<div class="page-header navbar navbar-fixed-top">
	<!-- BEGIN HEADER INNER -->
	<div class="page-header-inner container">
		<!-- BEGIN LOGO -->
		<div class="page-logo">
			<a href="index.html">
			<img src="../assets/admin/layout2/img/logo02.png" alt="logo" class="logo-default"/>
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
					<li class="start">
						<a href="index.html">
							<i class="icon-home"></i>
							<span class="title">Dashboard</span>
							<span class="selected"></span>
						</a>
					</li>
                    <li  class="active">
						<a href="payment.html">
							<i class="icon-docs"></i>
							<span class="title">Payment Page</span>
                            <span class="arrow"></span>
						</a>
					</li>
                    <li>
						<a href="batch_payment.html">
							<i class="icon-basket"></i>
							<span class="title">Batch Payment</span>
                            <span class="arrow"></span>
						</a>
					</li>
                    <li>
						<a href="manual_payment.html">
							<i class="icon-badge"></i>
							<span class="title">Manual Payment</span>
                            <span class="arrow"></span>
						</a>
					</li>
					<li>
						<a href="#">
							<i class="icon-diamond"></i>
							<span class="title">Reports</span>
                            <span class="arrow"></span>
                       	</a>
                        <ul class="sub-menu">
							<li>
								<a href="#">Transactions</a>
							</li>
							<li>
								<a href="#">Batch transactions</a>
							</li>
							<li>
								<a href="#">Failed transactions</a>
							</li>
                     	</ul>
					</li>
					<li>
						<a href="users.html">
							<i class="icon-plane"></i>
							<span class="title">Users</span>
                            <span class="arrow"></span>
						</a>
					</li>
                    <li>
						<a href="users.html">
							<i class="icon-user"></i>
							<span class="title">My User</span>
                            <span class="arrow"></span>
						</a>
					</li>
					<li class="last">
						<a href="#">
							<i class="icon-puzzle"></i>
							<span class="title">Support</span>
                            <span class="arrow"></span>
						</a>
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
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
								<h4 class="modal-title">Modal title</h4>
							</div>
							<div class="modal-body">
								 Widget settings form goes here
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
				New Payment Page
				</h3>
				<div class="page-bar">
					<ul class="page-breadcrumb">
						<li>
							<i class="fa fa-home"></i>
							<a href="index.html">Home</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="#">New Payment Page</a>
						</li>
					</ul>
					<div class="page-toolbar">
						
					</div>
				</div>
				<!-- END PAGE HEADER-->
				<!-- BEGIN PAGE CONTENT-->
				<div class="row">
					
					<div class="col-md-12">
						<!-- BEGIN SAMPLE FORM PORTLET-->
						<div class="portlet box red">
							<div class="portlet-title">
								<div class="caption">
									<i class="fa fa-gift"></i> New Payment Page
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
								<form class="form-horizontal" role="form">
									<div class="form-body">
                                    
                                         <div class="form-group">
											<label class="col-md-3 control-label">
                                            <div class="d_new_pymt"><h5>General Settings</h5></div>
                                            </label>
											<div class="col-md-5"></div>
										 </div>
                                    
										<div class="form-group">
											<label class="col-md-3 control-label">Profile Name:</label>
											<div class="col-md-5">
												<input type="text" class="form-control" placeholder="Enter text">
											</div>
										</div>
                                        
										<div class="form-group">
											<label class="col-md-3 control-label">Public Key:</label>
											<div class="col-md-5">
												<input type="text" class="form-control" placeholder="Enter text">
											</div>
                                            <div class="col-md-3">
                                            	<button type="button" class="btn default">Create new key set</button>
                                            </div>
										</div>
                                        
                                        <div class="form-group">
											<label class="col-md-3 control-label">Private Key:</label>
											<div class="col-md-5">
												<textarea class="form-control" rows="3"></textarea>
											</div>
										</div>
                                        
                                         <div class="form-group">
											<label class="col-md-3 control-label">
                                              <div class="d_new_pymt"><h5>Notification</h5></div>
                                            </label>
											<div class="col-md-5"></div>
										 </div>
                                        
                                        <div class="form-group">
											<label class="col-md-3 control-label">Backend page:</label>
											<div class="col-md-5">
												<input type="text" class="form-control" placeholder="Enter text">
											</div>
										</div>
                                        
                                        <div class="form-group">
											<label class="col-md-3 control-label">On success, redirect user to:</label>
											<div class="col-md-5">
												<input type="text" class="form-control" placeholder="Enter text">
											</div>
										</div>
                                        
                                        <div class="form-group">
											<label class="col-md-3 control-label">On cancel, redirect user to:</label>
											<div class="col-md-5">
												<input type="text" class="form-control" placeholder="Enter text">
											</div>
										</div>
                                        
                                        <div class="form-group">
											<label class="col-md-3 control-label">Email to customer:</label>
											<div class="col-md-5">
												<div class="checkbox-list">
													<label style="float:left;" class="control-label"><input type="checkbox"></label> 
                                                 </div>   
											</div>
										</div>
                                        
                                        <div class="form-group">
											<label class="col-md-3 control-label">Email header:</label>
											<div class="col-md-5">
												<input type="text" class="form-control" placeholder="Enter text">
											</div>
										</div>
                                        
                                        <div class="form-group">
											<label class="col-md-3 control-label">Email footer:</label>
											<div class="col-md-5">
												<input type="text" class="form-control" placeholder="Enter text">
											</div>
										</div>
                                        
                                        
                                        <div class="form-group">
											<label class="col-md-3 control-label">
                                               <div class="d_new_pymt"><h5>Images</h5></div>
                                            </label>
											<div class="col-md-5"></div>
										 </div>
                                        
                                        <div class="form-group">
											<label for="exampleInputFile" class="col-md-3 control-label">Header Left:</label>
											<div class="col-md-9">
												<input type="file" id="exampleInputFile">
											</div>
										</div>
                                        
                                        <div class="form-group">
											<label for="exampleInputFile" class="col-md-3 control-label">Header Middle:</label>
											<div class="col-md-9">
												<input type="file" id="exampleInputFile">
											</div>
										</div>
                                        
                                        <div class="form-group">
											<label for="exampleInputFile" class="col-md-3 control-label">Header Right:</label>
											<div class="col-md-9">
												<input type="file" id="exampleInputFile">
											</div>
										</div>
                                        
                                        <div class="form-group">
											<label for="exampleInputFile" class="col-md-3 control-label">Footer Left:</label>
											<div class="col-md-9">
												<input type="file" id="exampleInputFile">
											</div>
										</div>
                                        
                                        <div class="form-group">
											<label for="exampleInputFile" class="col-md-3 control-label">Footer Middle:</label>
											<div class="col-md-9">
												<input type="file" id="exampleInputFile">
											</div>
										</div>
                                        
                                        <div class="form-group">
											<label for="exampleInputFile" class="col-md-3 control-label">Footer Right:</label>
											<div class="col-md-9">
												<input type="file" id="exampleInputFile">
											</div>
										</div>
                                        
                                      <div class="form-group">
											<label class="col-md-3 control-label">
                                               <div class="d_new_pymt"><h5>Colors</h5></div>
                                            </label>
											<div class="col-md-5"></div>
										 </div> 
                                         
                                         <div class="form-group">
											<label class="col-md-3 control-label">Background Color:</label>
											<div class="col-md-5">
												<input type="text" class="form-control" placeholder="Enter text">
											</div>
										</div>
                                        
                                        <div class="form-group">
											<label class="col-md-3 control-label">Text Color:</label>
											<div class="col-md-5">
												<input type="text" class="form-control" placeholder="Enter text">
											</div>
										</div>
                                        
                                        <div class="form-group">
											<label class="col-md-3 control-label">Frame Color:</label>
											<div class="col-md-5">
												<input type="text" class="form-control" placeholder="Enter text">
											</div>
										</div>
                                        
										<div class="form-group">
											<label class="col-md-3 control-label">Custom CSS</label>
											<div class="col-md-6">
												<textarea class="form-control" rows="4"></textarea>
											</div>
										</div>
									</div>
                                    
									<div class="form-actions">
										<div class="row">
											<div class="col-md-offset-3 col-md-9">
												<button type="button" class="btn default">Cancel</button>
                                                <button type="submit" class="btn green">Submit</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
						<!-- END SAMPLE FORM PORTLET-->
						
						
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
			 2014 &copy; Metronic by keenthemes.
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
<script src="../assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="../assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="../assets/global/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>
<script src="../assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="../assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="../assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="../assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="../assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="../assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<script src="../assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="../assets/admin/layout2/scripts/layout.js" type="text/javascript"></script>
<script src="../assets/admin/layout2/scripts/demo.js" type="text/javascript"></script>
<script>
jQuery(document).ready(function() {   
   // initiate layout and plugins
   Metronic.init(); // init metronic core components
Layout.init(); // init current layout
Demo.init(); // init demo features
});
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>