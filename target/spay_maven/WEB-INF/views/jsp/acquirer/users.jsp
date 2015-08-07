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
<link href="<%=request.getContextPath()%>/resources//global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css"/>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN THEME STYLES -->
<link href="<%=request.getContextPath()%>/resources/global/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/resources/global/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/resources/admin/layout2/css/layout.css" rel="stylesheet" type="text/css"/>
<link id="style_color" href="<%=request.getContextPath()%>/resources/admin/layout2/css/themes/grey.css" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/resources/admin/layout2/css/custom_acquirer.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico"/>

<script type="text/javascript">

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
<div class="page-header navbar navbar-fixed-top"> 
  <!-- BEGIN HEADER INNER -->
  <div class="page-header-inner container"> 
    <!-- BEGIN LOGO -->
    <div class="page-logo"> <a href="index.html"> <img src="<%=request.getContextPath()%>/resources/admin/layout2/img/logo01.png" alt="logo" class="logo-default"/> </a>
      <div class="menu-toggler sidebar-toggler"> 
        <!-- DOC: Remove the above "hide" to enable the sidebar toggler button on header --> 
      </div>
    </div>
    <!-- END LOGO --> 
    <!-- BEGIN RESPONSIVE MENU TOGGLER --> 
    <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse"> </a> 
    <!-- END RESPONSIVE MENU TOGGLER --> 
    <!-- BEGIN PAGE ACTIONS --> 
    <!-- DOC: Remove "hide" class to enable the page header actions -->
    <div class="page-actions hide">
      <div class="btn-group">
        <button type="button" class="btn btn-circle red-pink dropdown-toggle" data-toggle="dropdown"> <i class="icon-bar-chart"></i>&nbsp;<span class="hidden-sm hidden-xs">New&nbsp;</span>&nbsp;<i class="fa fa-angle-down"></i> </button>
        <ul class="dropdown-menu" role="menu">
          <li> <a href="#"> <i class="icon-user"></i> New User </a> </li>
          <li> <a href="#"> <i class="icon-present"></i> New Event <span class="badge badge-success">4</span> </a> </li>
          <li> <a href="#"> <i class="icon-basket"></i> New order </a> </li>
          <li class="divider"> </li>
          <li> <a href="#"> <i class="icon-flag"></i> Pending Orders <span class="badge badge-danger">4</span> </a> </li>
          <li> <a href="#"> <i class="icon-users"></i> Pending Users <span class="badge badge-warning">12</span> </a> </li>
        </ul>
      </div>
      <div class="btn-group">
        <button type="button" class="btn btn-circle green-haze dropdown-toggle" data-toggle="dropdown"> <i class="icon-bell"></i>&nbsp;<span class="hidden-sm hidden-xs">Post&nbsp;</span>&nbsp;<i class="fa fa-angle-down"></i> </button>
        <ul class="dropdown-menu" role="menu">
          <li> <a href="#"> <i class="icon-docs"></i> New Post </a> </li>
          <li> <a href="#"> <i class="icon-tag"></i> New Comment </a> </li>
          <li> <a href="#"> <i class="icon-share"></i> Share </a> </li>
          <li class="divider"> </li>
          <li> <a href="#"> <i class="icon-flag"></i> Comments <span class="badge badge-success">4</span> </a> </li>
          <li> <a href="#"> <i class="icon-users"></i> Feedbacks <span class="badge badge-danger">2</span> </a> </li>
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
          <li class="dropdown dropdown-user"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true"> <img alt="" class="img-circle" src="../assets/admin/layout2/img/avatar3_small.jpg"/> <span class="username username-hide-on-mobile"> Nick </span> <i class="fa fa-angle-down"></i> </a>
            <ul class="dropdown-menu dropdown-menu-default">
              <li> <a href="#"> <i class="icon-user"></i> My Profile </a> </li>
              <li> <a href="#" onclick="callChangePassword()"> <i class="icon-lock"></i> Change Password </a> </li>
              <li> <a href="loginpage"> <i class="icon-key"></i> Log Out </a> </li>
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
<div class="clearfix"> </div>
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
        <!-- BEGIN PAGE HEADER-->
        <h3 class="page-title"> Users </h3>
       <!--  <div class="page-bar">
          <ul class="page-breadcrumb">
            <li> <i class="fa fa-home"></i> <a href="index.html">Home</a> <i class="fa fa-angle-right"></i> </li>
            <li> <a href="#">Users</a> <i class="fa fa-angle-right"></i> </li>
          </ul>
        </div> -->
        <!-- END PAGE HEADER--> 
        <!-- BEGIN PAGE CONTENT-->
        <div class="row">
          <div class="col-md-12">
           
            <!-- BEGIN SAMPLE TABLE PORTLET-->
            <div class="portlet box blue-chambray">
              <div class="portlet-title">
                <div class="caption"></div>
                <!-- <div class="tools"> <a href="javascript:;" class="collapse"> </a> <a href="javascript:;" class="config"> </a> <a href="javascript:;" class="reload"> </a> <a href="javascript:;" class="remove"> </a> </div> -->
              </div>
              <div class="portlet-body flip-scroll">
                <table class="table table-bordered table-striped table-condensed flip-content">
                  <thead class="flip-content">
                    <tr>
                      <th width="20%"> Username</th>
                      <th> Merchants</th>
                      <th>Users</th>
                      <th>Report</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>      
                      <td> admin</td>
                      <td> <input type="radio" name="radio1" checked class="icheck"></td>
                      <td><input type="radio" name="radio1" checked class="icheck">  </td>
                      <td><input type="radio" name="radio1" checked class="icheck"> </td>
                      	
                    </tr>
                   <tr>      
                      <td> text</td>
                      <td> <input type="radio" name="radio1" checked class="icheck"></td>
                      <td><input type="radio" name="radio1" checked class="icheck">  </td>
                      <td><input type="radio" name="radio1" checked class="icheck"> </td>
                      	
                    </tr>
                    
                    <tr>      
                      <td> text</td>
                      <td> <input type="radio" name="radio1" checked class="icheck"></td>
                      <td><input type="radio" name="radio1" checked class="icheck">  </td>
                      <td><input type="radio" name="radio1" checked class="icheck"> </td>  	
                    </tr>
                    
                    
                  </tbody>
                </table>
              </div>
            </div>
            <!-- END SAMPLE TABLE PORTLET--> 
            
            
            <div class="portlet box blue-chambray">
							<div class="portlet-title">
								<div class="caption">
									User Details
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
								<form class="form-horizontal" role="form">
									<div class="form-body">
										
										<div class="form-group">
											<label class="col-md-2 control-label">Username:</label>
											<div class="col-md-10">
												<input type="text" class="form-control" placeholder="">
											</div>
										</div>
                                        
                                        <div class="form-group">
											<label class="col-md-2 control-label">Full name:</label>
											<div class="col-md-10">
												<input type="text" class="form-control" placeholder="">
											</div>
										</div>
                                        
                                        <div class="form-group">
											<label class="col-md-2 control-label">Phone:</label>
											<div class="col-md-10">
												<input type="text" class="form-control" placeholder="">
											</div>
										</div>
                                        
                                        <div class="form-group">
											<label class="col-md-2 control-label">Permission:</label>
                                            
                                            
                                            <div class="col-md-10">			
                                                <div class="input-group">
                                                    <div class="icheck-inline">
                                                        <label>
                                                        <input type="checkbox" class="icheck">&nbsp; Merchants</label>
                                                        <label>
                                                        <input type="checkbox" checked class="icheck">&nbsp; Users</label>
                                                        <label>
                                                        <input type="checkbox" class="icheck">&nbsp; Reports</label>
                                                    </div>
                                                </div>			
                                            </div>
                                        
										</div>
										
										
									</div>
									<div class="form-actions right1" style="text-align: left;padding-left:180px;">
										<button type="submit" class="btn green">Submit</button>
										<button type="button" class="btn default">Cancel</button>
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
    <div class="scroll-to-top"> <i class="icon-arrow-up"></i> </div>
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
</body>
<!-- END BODY -->
</html>