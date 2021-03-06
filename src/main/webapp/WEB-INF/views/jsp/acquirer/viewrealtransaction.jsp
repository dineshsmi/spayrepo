<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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




<script type="text/javascript">



<%-- function madeAjaxCall(){
	
alert('In made Ajaxcall');	

var js1 = document.getElementById('id_merchantId').value;
var js2 = document.getElementById('id_emailId').value;

var name = $('#id_merchantId').val();

alert("name===>"+name);
alert("id_emailId==>"+$("#id_emailId").val());
var contextPath="<%=request.getContextPath()%>";

  $.ajax({
   			type: "post",
   	  		url: contextPath+"/addmerchant",   	  	  
   	  		data : {merchantId:$("#id_merchantId").val(),merchantEmailId: $("#id_emailId").val()},
   	  		cache: false,
   	  		async: true,	
   	  		dataType: "json",
   	  		success: function(response){	
   	  			alert(response);
   	  		/* var status=response.status;	
			var message=response.message;  				
			 if(status=='Yes'){          				
				$('#updatedMsgDiv').html(message);
	        	$('#updatedMsgDiv').fadeIn().delay(4000).fadeOut('slow');
			}
			callClearData();   
			getAgencyUsersDetails();
   	  		$('#uploadprocess').hide();
   	  		$('#uploadprocess').removeClass("loader"); */
   	  		},
   	  			error: function(){						
   	  		}
   	 	}); 





}  --%>


/* $(#id_sbtbtn).click(function() {
	  alert('In jqry id_sbtbtn');
} */

function callChangePassword(){
	
	window.open("<%=request.getContextPath()%>/changepwd","_blank","toolbar=no, scrollbars=yes, resizable=yes, top=200, left=500, width=600, height=400");
}

</script>
<style>
        table, th, td {
            cellpadding:1px;
            cellspacing:1px;
        }
        th{
            /* background:#B4F114; */
            background:#ABABAB
        }
        .active {
            background:#F7BABA;
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

<form name="searchform" method="get">

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
				
				<h3 class="page-title">
				Realtime Transaction Monitoring List
				</h3>
				<!-- <div class="page-bar">
					<ul class="page-breadcrumb">
						<li>
							<i class="fa fa-home"></i>
							<a href="index.html">Home</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="#">admin</a>
							
						</li>
						
					</ul>
					
				</div> -->
				<!-- END PAGE HEADER-->
				<!-- BEGIN PAGE CONTENT-->
				<div class="row">
					<div class="col-md-12">
						
						
						<!-- BEGIN SAMPLE TABLE PORTLET-->
						<div class="portlet box blue-chambray">
							<div class="portlet-title">
								<div class="caption">
									Realtime Transaction Monitoring List
								</div>
								<!-- <div class="tools">
									<a href="javascript:;" class="collapse">
									</a>
									<a href="javascript:;" class="config">
									</a>
									<a href="javascript:;" class="reload">
									</a>
									<a href="javascript:;" class="remove">
									</a>
								</div> -->
							</div>
                            
                            
                            
							<div class="portlet-body flip-scroll">
								<div style="margin-left: 886px">
									Download Excel
								</div>
								<table id="data" class="table table-bordered table-striped table-condensed flip-content">
								<thead class="flip-content">
								<tr>
									<th>
										 
									</th>
									<th>
										 Merchant ID
									</th>
									<th>
										 Txn Date
									</th>
									<th>
										 Txn Code
									</th>
									<th>
										 Card No.
									</th>
									<th>
										 Ref No.
									</th>
									<th>
										 Trace No.
									</th>
									<th>
										 Resp Code
									</th>
																		
									<th>
										Txn currency
									</th>
																		
									<th>
										Account Status
									</th>
									<th>
										Txn Amount
									</th>
									<th>
										Txn Fee
									</th>
									<th>
										Settle Amount
									</th>
									<th>
										Settle currency
									</th>
									
								</tr>
								</thead>
								<tbody>
								  <c:forEach items="${reportList}" var="mlist">
								<tr>
									<td>
										<input type="radio" name="rtid" value="${mlist.id}" onclick="viewRealTranaction(this)">
									</td>
									<td>
										 ${mlist.merchantid}
									</td>
									<td>
										${mlist.txndate}
									</td>
									<td >
									  ${mlist.txncode}
									</td>
									<td>
										${mlist.cardnumber}
									</td>
									<td>
										${mlist.txnrefno}
									</td>
									<td>
										${mlist.trackno}
									</td>
									<td>
										${mlist.respcode}
									</td>
									<td>
										${mlist.txncurrency}
									</td>
									<td>
										D
									</td>
									<td>
										${mlist.txnamount}
									</td>
									<td>
										${mlist.respcode}
									</td>
									<td>
										${mlist.settleamount}
									</td>
									<td>
										${mlist.settlecurrency}
									</td>
								</tr>
                               </c:forEach>
                                
                                
                                
								
								</tbody>
								</table>
								 <div class="form-actions right1">
									<button type="button" class="btn default" onclick="backFun()">Back</button>
										
								</div>
							</div>
							
						</div>
						
						<!-- END SAMPLE TABLE PORTLET-->
						
                       
						
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




</body>
<script>
jQuery(document).ready(function() {  
	//alert('In jquery')
   // initiate layout and plugins
   Metronic.init(); // init metronic core components
Layout.init(); // init current layout
Demo.init(); // init demo features

$('#data').after('<div id="nav"></div>');
var rowsShown = 10;
var rowsTotal = $('#data tbody tr').length;
var numPages = rowsTotal/rowsShown;
for(i = 0;i < numPages;i++) {
    var pageNum = i + 1;
    $('#nav').append('<a href="#" rel="'+i+'">'+pageNum+'</a> ');
}
$('#data tbody tr').hide();
$('#data tbody tr').slice(0, rowsShown).show();
$('#nav a:first').addClass('active');
$('#nav a').bind('click', function(){

    $('#nav a').removeClass('active');
    $(this).addClass('active');
    var currPage = $(this).attr('rel');
    var startItem = currPage * rowsShown;
    var endItem = startItem + rowsShown;
    $('#data tbody tr').css('opacity','0.0').hide().slice(startItem, endItem).
            css('display','table-row').animate({opacity:1}, 300);
});

});


function backFun(){
	document.searchform.action="<%=request.getContextPath()%>/realtimetxn";
	document.searchform.submit();
}

function viewRealTranaction(val){
	var tid = val.value;
	window.open("<%=request.getContextPath()%>/realtranactionpopup?tid="+tid,"_blank", "toolbar=no, scrollbars=yes, resizable=yes, top=200, left=500, width=1000, height=1000")
}

</script>
<!-- END BODY -->
</html>