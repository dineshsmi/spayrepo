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
    $("#merchant_merchantDOB" ).datepicker({
    	
    	changeMonth: true,
	     changeYear: true,
	     dateFormat: 'MM yy',
	 
	     onClose: function() {
	        var iMonth = $("#ui-datepicker-div .ui-datepicker-month :selected").val();
	        var iYear = $("#ui-datepicker-div .ui-datepicker-year :selected").val();
	        $(this).datepicker('setDate', new Date(iYear, iMonth, 1));
	     },
	 
	     beforeShow: function() {
	       if ((selDate = $(this).val()).length > 0)
	       {
         iYear = selDate.substring(selDate.length - 4, selDate.length);
	          iMonth = jQuery.inArray(selDate.substring(0, selDate.length - 5),	                   $(this).datepicker('option', 'monthNames'));
	          $(this).datepicker('option', 'defaultDate', new Date(iYear, iMonth, 1));
	          $(this).datepicker('setDate', new Date(iYear, iMonth, 1));
	       }
	    }
    	
    	
    });
    
    
    $("#sbt_btn").click(function(event){	 	
		
		//alert("In sbt btn");
		
		var date =  document.monthlyreportform.merchantDOB.value;
		
		//alert("date===>"+date);	
		
	    document.monthlyreportform.submit();
		
	});	

  
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
<div class="page-header navbar navbar-fixed-top">
	<!-- BEGIN HEADER INNER -->
	<div class="page-header-inner container-fluid">
		<!-- BEGIN LOGO -->
		<div class="page-logo">
        
			<a href="index.html">
			<%-- <img src="<%=request.getContextPath()%>/resources/admin/layout2/img/bcel-logo-rev.png" alt="logo" class=""/> --%>
			<p style="color:#ffffff; width:140px;font-size:15px;text-align:center;padding:5px;">MERCHANT BUSINESS CENTER</p>
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
					
						<br />
						
						
                        <!--------detail start------------>
                       
                         <div>
                         <a href="<%=request.getContextPath()%>/merchantdailyreports"><input type="button" class="btn redclr" id="id_sbtbtn" value="Daily Report" style="border-radius: 25px !important;width:127px;"></a>
                         <a href="<%=request.getContextPath()%>/merchantmonthlyreports"><input type="button" class="btn grayclr" value="Monthly Report" style="border-radius: 25px !important;width:127px;"></a>
                        </div>
                        
                        <br />
                        
                                     
                        
                        <div class="portlet box blue-chambray">
							<div class="portlet-title">
							   <input type="hidden" name="reporttype" value="monthlyreport">
								<div class="caption">
									Monthly Report
								</div>
								
							</div>
							<div class="portlet-body form">
								<form name="monthlyreportform" class="form-horizontal" role="form" action="getMonthlyReportMerchant" method="post" id="merchant">
								
							   <div id="reportmainpage">
									<div class="form-body" id="Container">
									
										<div class="form-group" >
										
											<label class="col-md-2 control-label">Month:</label>
											<div class="col-md-10" id="test">
												<select class="form-control" id="merchantmonth" name="merchantmonth">
												   <option value="0">-Select-</option>
												   <option value="January">January</option>
												   <option value="February">February</option>
												   <option value="March">March</option>
												   <option value="April">April</option>
												   <option value="May">May</option>
												   <option value="June">June</option>
												   <option value="July">July</option>
												   <option value="August">August</option>
												   <option value="September">September</option>
												   <option value="October">October</option>
												   <option value="November">November</option>
												   <option value="December">December</option>
											     </select>
											</div>
										</div>
										<div class="form-group" >
											<label class="col-md-2 control-label">Year:</label>
											<div class="col-md-10" id="test">
												<select class="form-control" id="merchantyear" name="merchantyear">
												   <option value="0">-Select-</option>
												   <option value="${pre}">${pre}</option>
												   <option value="${curr}">${curr}</option>
											     </select>
											</div>
										</div>
										<div class="form-group" >
											<label class="col-md-2 control-label">Transaction Status:</label>
											<div class="col-md-10" id="test">
												<select class="form-control" name="transactionstatus">
												   <option value="1">All</option>
												   <option value="2">Success</option>
												   <option value="3">Failure</option>
											     </select>
											</div>
										</div>
									
										
									 </div>
																
										<br />
										
										
										<div class="form-actions" style="text-align: left;padding-left:180px;">
										
										<input type="submit" class="btn redclr" id="id_sbtbtn" value="Submit"  style="border-radius: 25px !important;width:80px;" onclick="return validate();">
										  <!-- <button type="submit" class="btn green" id="sbt_btn" align="center">Submit</button> -->
										
										  <!-- <button type="button" class="btn default" id="regenerate_btn" align="center">Regenerate</button> -->
										<!-- <button id="btn1">Show Text</buttosn> -->
									   </div>
                                        
								</div>	
								
								
							</form>
										
							</div>
									


								
							</div>
						</div>
						
						
                        <!--------detail end---------->
						
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
			 2015 &copy;
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
function validate(){
	
	
	if(document.getElementById("merchantmonth").value == "0"){
		alert("Month required")
		document.getElementById("merchantmonth").focus();
		return false;
	}
	if(document.getElementById("merchantyear").value == "0"){
		alert("Year required")
		document.getElementById("merchantyear").focus();
		return false;
	}
}
</script>
</body>
<!-- END BODY -->
</html>