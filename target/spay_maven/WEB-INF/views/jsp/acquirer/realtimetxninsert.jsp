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
      
<script type="text/javascript">

function callChangePassword(){
	
	window.open("<%=request.getContextPath()%>/changepwd","_blank","toolbar=no, scrollbars=yes, resizable=yes, top=200, left=500, width=600, height=400");
}
</script>

</head>

<body class="page-boxed page-header-fixed page-container-bg-solid page-sidebar-closed-hide-logo ">
<!-- BEGIN HEADER -->



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
				<%-- <div>	
                             <!-- <p> <a href="#portlet-config" data-toggle="modal"><button class="btn green" type="button">Add Merchant</button></p></a> -->
                             
                             <a href="<%=request.getContextPath()%>/merchants"><button class="btn blue" type="button">Merchant</button></a>
                             
                              <a href="<%=request.getContextPath()%>/payment"><button class="btn blue" type="button">Payment Screen</button></a>
                             
                              <a href="<%=request.getContextPath()%>/otpmessageform"><button class="btn blue" type="button">OTP</button></a>
                             
                             <a href="<%=request.getContextPath()%>/realtimetxn" ><button class="btn blue" type="button">Realtime Transaction Monitoring</button></a>
                             
                             <a href="<%=request.getContextPath()%>/showdailyreports"><button class="btn blue" type="button">Reports</button></a>
                             
                             <a href="<%=request.getContextPath()%>/txnstmt"><button class="btn purple-soft" type="button">Transaction Statement</button></a>
                             
                              <a href=""><button class="btn blue" type="button">Audit Trail</button></a>
                              
                               <a href="<%=request.getContextPath()%>/feessetting"><button class="btn blue" type="button">Fees Setting</button></a>
                              <div> 
                             <br>
                            </div>

                             <a href="" ><button class="btn blue" type="button">Representment</button></a>
                             
                            <a href=""><button class="btn blue" type="button">Account Adjustment</button></a>
                             
                              <a href="<%=request.getContextPath()%>/userform"><button class="btn blue" type="button">UAM</button></a>
                             
                              <a href=""><button class="btn blue" type="button">Recon File</button></a>
                             
                             <a href="" ><button class="btn blue" type="button">Merchant Integration</button></a>
                             
                             <a href=""><button class="btn blue" type="button">Void</button></a>
                             
                             <a href=""><button class="btn blue" type="button">Transaction Adjustment</button></a>
                             
                             <a href="<%=request.getContextPath()%>/productfrom"><button class="btn blue" type="button">Product Form</button></a>
						</div> --%>
				<h3 class="page-title">
				Merchants 
				</h3>
				<div class="page-bar">
					<ul class="page-breadcrumb">
						<li>
							<i class="fa fa-home"></i>
							<a href="index.html">Merchants</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="#">Realtime Transaction Monitoring</a>
							<i class="fa fa-angle-right"></i>
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
								<form class="form-horizontal" role="form" action="saverealtime" method="post">
									<div class="form-body" style="text-align: left;padding-left:160px;">
										
										
										<div class="form-group" >
										
											<label class="col-md-2 control-label">Merchant Name:*</label>
											<div class="col-md-10" id="test">
												<select class="form-control" id="mername" name="mername" style="width:400px;">
													<option value="0">-Select-</option>
                                                   <c:forEach items="${merlist}" var="mer">
											         <option value="${mer.merchantId}">${mer.merchantName}</option>
											        </c:forEach>
                                                   
                                                 </select>
											</div>
										</div>
										
                                        
                                        <div class="form-group">
											<label class="col-md-2 control-label">Card Type:*</label>
											<div class="col-md-10">
												<select class="form-control" id="cardtype" name="cardtype" style="width:400px;">
													<option value="0">-Select-</option>
                                                    <option value="BCEL Onus Card">BCEL Onus Card</option>
                                                    <option value="CUP Offus Card">CUP Offus Card</option>
                                                   
                                                 </select>
											</div>
										</div>
										
										<!-- <div class="form-group">
											<label class="col-md-2 control-label">Transaction Date:*</label>
											<div class="col-md-10">
												<input type="text" class="form-control" readonly="readonly" id="tdate" placeholder="" name="tdate" >
											</div>
										</div> -->
                                        
                                        <div class="form-group">
											<label class="col-md-2 control-label">Transaction Ref No:*</label>
											<div class="col-md-10">
												<input type="text" maxlength="21" class="form-control" id="trefno" placeholder="" name="trefno" style="width:400px;">
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-md-2 control-label">Card Number:*</label>
											<div class="col-md-10">
												<input type="text" maxlength="16" class="form-control" id="cardnumber" placeholder="" name="cardnumber" style="width:400px;">
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Transaction Code:*</label>
											<div class="col-md-10">
												<input type="text" maxlength="16" class="form-control" id="tcode" placeholder="" name="tcode" onblur="checkTCode()" style="width:400px;">
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Trace Number:*</label>
											<div class="col-md-10">
												<input type="text" maxlength="7" class="form-control" id="tnumber" placeholder="" name="tnumber" onblur="checkTNumber()" style="width:400px;">
											</div>
										</div>
										
                                        <div class="form-group" >
										
											<label class="col-md-2 control-label">Transaction Currency:*</label>
											<div class="col-md-10" id="test">
												<select class="form-control" name="tcurrency" id="tcurrency" style="width:400px;">
													<option value="0">-Select-</option>
                                                   <c:forEach items="${cclist}" var="cc">
											         <option value="${cc.currencycode}">${cc.currencyname}</option>
											        </c:forEach>
                                                   
                                                 </select>
											</div>
										</div>
										<div class="form-group" >
										
											<label class="col-md-2 control-label">Transaction Amount:*</label>
											<div class="col-md-10">
												<input type="text" maxlength="10" class="form-control" id="tamount" placeholder="" name="tamount" style="width:400px;">
											</div>
										</div>
										<div class="form-group" >
										
											<label class="col-md-2 control-label">Transaction Fees:*</label>
											<div class="col-md-10">
												<input type="text" maxlength="10" class="form-control" id="tfees" placeholder="" name="tfees" style="width:400px;">
											</div>
										</div>
										<div class="form-group" >
										
											<label class="col-md-2 control-label">Settle Amount:*</label>
											<div class="col-md-10">
												<input type="text" maxlength="10" class="form-control" id="settleamount" placeholder="" name="settleamount" style="width:400px;">
											</div>
										</div>
										<div class="form-group" >
										
											<label class="col-md-2 control-label">Settle Currency:*</label>
											<div class="col-md-10" id="test">
												<select class="form-control" name="settlecurrency" id="settlecurrency" style="width:400px;">
													<option value="0">-Select-</option>
                                                   <c:forEach items="${cclist}" var="cc">
											         <option value="${cc.currencycode}">${cc.currencyname}</option>
											        </c:forEach>
                                                   
                                                 </select>
											</div>
										</div>
										<div class="form-group" >
										
											<label class="col-md-2 control-label">Resp Code:*</label>
											<div class="col-md-10">
												<input type="text" maxlength="2" class="form-control" id="rcode" placeholder="" name="rcode" style="width:400px;"> 
											</div>
										</div>
									</div>
									<div class="form-actions right1" style="text-align: left;padding-left:315px;">
										<button type="button" class="btn grayclr" onclick="resetFun()" style="border-radius: 25px !important;width:120px;">Reset</button>
										<button type="submit" class="btn redclr" id="id_sbtbtn" onclick="return validFun()" style="border-radius: 25px !important;width:120px;">Submit</button>
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
	/*  document.getElementById("tdate").value = ""; */
	 document.getElementById("trefno").value = "";
	 document.getElementById("cardnumber").value = "";
	 document.getElementById("tcode").value = "";
	 document.getElementById("tnumber").value = "";
	 document.getElementById("tcurrency").value = 0;
	 document.getElementById("tamount").value = "";
	 document.getElementById("tfees").value = "";
	 document.getElementById("settleamount").value = "";
	 document.getElementById("settlecurrency").value = 0;
	 document.getElementById("rcode").value = "";
}

function validFun(){
	
	
	 if(document.getElementById("mername").value == "0"){
		alert("Merchant name required")
		document.getElementById("mername").focus();
		return false;
		
	}
	if(document.getElementById("cardtype").value== "0"){
		alert("Card type required")
		document.getElementById("cardtype").focus();
		return false;
	}
	if(document.getElementById("trefno").value == ""){
		alert("Transaction ref number required")
		document.getElementById("trefno").focus();
		return false;
	}
	if(document.getElementById("cardnumber").value== ""){
		alert("Card number required")
		document.getElementById("cardnumber").focus();
		return false;
	}else{
		var x = document.getElementById("cardnumber").value;
		if (isNaN(x) || x < 1 || x > 1000000000) {
	        alert("Number required")
			document.getElementById("cardnumber").focus();
			return false;
		}
	}
	if(document.getElementById("tcode").value == ""){
		alert("Transaction code required")
		document.getElementById("tcode").focus();
		return false;
	}
	if(document.getElementById("tnumber").value == ""){
		alert("Transaction number required")
		document.getElementById("tnumber").focus();
		return false;
	}else{
		var tn = document.getElementById("tnumber").value;
		if (isNaN(tn) || tn < 1 || tn > 1000000000) {
	        alert("Number required")
			document.getElementById("tnumber").focus();
			return false;
		}
	}
	if(document.getElementById("tcurrency").value == "0"){
		alert("Transaction currency required")
		document.getElementById("tcurrency").focus();
		return false;
	}
	if(document.getElementById("tamount").value == ""){
		alert("Transaction amount required")
		document.getElementById("tamount").focus();
		return false;
	}
	if(document.getElementById("tfees").value == ""){
		alert("Transaction fees required")
		document.getElementById("tfees").focus();
		return false;
	}
	if(document.getElementById("settleamount").value == ""){
		alert("Settle amount required")
		document.getElementById("settleamount").focus();
		return false;
	}
	if(document.getElementById("settlecurrency").value == "0"){
		alert("Settle currency required")
		document.getElementById("settlecurrency").focus();
		return false;
	}
	if(document.getElementById("rcode").value == ""){
		alert("Resp code required")
		document.getElementById("rcode").focus();
		return false;
	}else{
		var rc = document.getElementById("rcode").value;
		if (isNaN(rc) || rc < 1 || rc > 1000000000) {
	        alert("Number required")
			document.getElementById("rcode").focus();
			return false;
		}
	}
	
	
	
	/*  var merid = document.getElementById("merchantId").value;
	 var mername = document.getElementById("merchantName").value;
	 var mail = document.getElementById("merchantEmailId").value;
	 if(merid == "" && mername == "" && mail==""){
		 alert("Please enter the value in 'Merchant ID' or 'Merchant Name' or 'Email Id'");
		 return false;
	 } */
}

function checkTCode(){
	
	var code = document.getElementById("tcode").value
	$.ajax({
		  url: '<%=request.getContextPath()%>/checkTCode?tcode='+code,
		  type: 'GET',
		  dataType: "json",
		  success: function(data) {
			 
			  if(data.status == "found"){
				  alert("Transaction code already exist")
					document.getElementById("tcode").focus();
					return false;
			  }else{
				  return true;
			  }
			 
		  },
		  error: function(e) {
			
			  alert("error")
		  }
		});
}

function checkTNumber(){
	var tnum = document.getElementById("tnumber").value
	$.ajax({
		  url: '<%=request.getContextPath()%>/checkTraceNumber?trnum='+tnum,
		  type: 'GET',
		  dataType: "json",
		  success: function(data) {
			 
			  if(data.status == "found"){
				  alert("Trace number already exist")
					document.getElementById("tnumber").focus();
					return false;
			  }else{
				  return true;
			  }
			 
		  },
		  error: function(e) {
			
			  alert("error")
		  }
		});
}

</script>
</body>
<!-- END BODY -->
</html>