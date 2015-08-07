<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/global/calender/jquery-ui.css">
  <script src="<%=request.getContextPath()%>/resources/global/calender/jquery-1.10.2.js"></script>
 
   <script src="<%=request.getContextPath()%>/resources/global/calender/jquery-ui.js"></script> 
        
      <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/global/calender/style.css"> 


</head>

<body class="page-boxed page-header-fixed page-container-bg-solid page-sidebar-closed-hide-logo ">
<!-- BEGIN HEADER -->



<div class="container">
	<!-- BEGIN CONTAINER -->
	<div class="page-container">
		
		<!-- BEGIN CONTENT -->
		<!-- <div class="page-content-wrapper"> -->
		<div>
			<div class="page-content">
				
				<h3 class="page-title">
				Transaction Adjustment Refund 
				</h3>
				<div class="page-bar">
					<ul class="page-breadcrumb">
						<li>
							<i class="fa fa-home"></i>
							<a href="index.html">Home</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="#">admin</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="#">Transaction Adjustment Refund</a>
						</li>
					</ul>
					
				</div>
				<!-- END PAGE HEADER-->
				<!-- BEGIN PAGE CONTENT-->
				<form name="refundform" method="get">
				<div class="row">
					<div class="col-md-12">
						
						
						<!--------detail start------------>
                        <div class="portlet box red">
							<div class="portlet-title">
								<div class="caption">
									Transaction Adjustment Refund
								</div>
								
							</div>
							
							<div class="portlet-body flip-scroll">
								<table class="table table-bordered table-striped table-condensed flip-content">
								
								<tbody>
								  <c:forEach items="${tmlist}" var="mer">
								  <tr>
										<td>
											Merchant ID:
										</td>
										<td>
											${mer.merchantid}
										    <input type="hidden" class="form-control" id="hiddenmerid" name="hiddenmerid" value="${mer.merchantid}">
										</td>
									</tr>
								  <tr>
									<td>
										Transaction Code:
									</td>
									<td>
										${mer.txncode}
										<input type="hidden" class="form-control" id="hiddentxncode" name="hiddentxncode" value="${mer.txncode}">
									</td>
								</tr>
								<tr>
									<td>
										Transaction Date:
									</td>
									<td>
										<fmt:formatDate value="${mer.txndate}" pattern="dd-MM-yyyy" />
										<input type="hidden" class="form-control" id="hiddentxndate" name="hiddentxndate" value="<fmt:formatDate value="${mer.txndate}" pattern="MM/dd/yyyy" />">
									</td>
								</tr>
								<tr>
									<td>
										Card Number:
									</td>
									<td>
										${mer.cardnumber}
										<input type="hidden" class="form-control" id="hiddencardnumber" name="hiddencardnumber" value="${mer.cardnumber}">
									</td>
								</tr>
								<tr>
									<td>
										Transaction Ref No:
									</td>
									<td>
										${mer.txnrefno}
										<input type="hidden" class="form-control" id="hiddentxnrefno" name="hiddentxnrefno" value="${mer.txnrefno}">
									</td>
								</tr>
								<tr>
									<td>
										Trace Number:
									</td>
									<td>
										${mer.trackno}
										<input type="hidden" class="form-control" id="hiddentrackno" name="hiddentrackno" value="${mer.trackno}">
									</td>
								</tr>
								
								<tr>
									<td>
										Resp Code:
									</td>
									<td>
										${mer.respcode}
										<input type="hidden" class="form-control" id="hiddenrespcode" name="hiddenrespcode" value="${mer.respcode}">
									</td>
								</tr>
								
								<tr>
									<td>
										Transaction Currency:
									</td>
									<td>
										<c:forEach items="${txnlist}" var="name">
										 	${name.currencyname}
										 	<input type="hidden" class="form-control" id="hiddencurrencyname" name="hiddencurrencyname" value="${name.currencyname}">
										</c:forEach>
									</td>
								</tr>
								<tr>
									<td>
										Transaction Amount:
									</td>
									<td>
										${mer.txnamount}
										<input type="hidden" class="form-control" id="hiddentxnamount" name="hiddentxnamount" value="${mer.txnamount}">
									</td>
								</tr>
								<tr>
									<td>
										Transaction Fee:
									</td>
									<td>
										${mer.txnfees}
										<input type="hidden" class="form-control" id="hiddentxnfees" name="hiddentxnfees" value="${mer.txnfees}">
									</td>
								</tr>
								<tr>
									<td>
										Settle Amount:
									</td>
									<td>
										${mer.settleamount}
										<input type="hidden" class="form-control" id="hiddensettleamount" name="hiddensettleamount" value="${mer.settleamount}">
									</td>
								</tr>
								<tr>
									<td>
										Settle Currency:
									</td>
									<td>
										<c:forEach items="${setlist}" var="name">
										 ${name.currencyname}
										 <input type="hidden" class="form-control" id="hiddencurrencyname" name="hiddencurrencyname" value="${name.currencyname}">
									</c:forEach>
									
									
									</td>
								</tr>
								<tr>
									<td>
										Account Status:
									</td>
									<td>
										<c:choose>
											<c:when test="${mer.chargebackauthorizestatus == 'A'}">
												Accpect
											</c:when>
											<c:otherwise>
												Reject
											</c:otherwise>
										</c:choose>
										 <input type="hidden" class="form-control" id="hiddenchargeback" name="hiddenchargeback" value="${mer.chargebackauthorizestatus}">
									
									
									
									</td>
								</tr>
								<tr>
									<td>
										Transaction Amount
									</td>
									<td>
										<input type="text" class="form-control" id="transamount" name="transamount" onkeypress="javascript:return isNumberBudget (event)">
										<div id="tadiv" style="color: red;"></div>
									</td>
								</tr>
								<tr>
									<td>
										Merchent Amount Status
									</td>
									<td>
										<select class="form-control" id="meramountstatus" name="meramountstatus">
													<option value="0">-Select-</option>
                                                    <option value="credit">credit</option>
                                                    <option value="debit">debit</option>
                                                   
                                          </select>
                                          <div id="msdiv" style="color: red;"></div>
									</td>
								</tr>
                               </c:forEach>
                               
								
								</tbody>
								</table>
								 <div class="form-actions right1">
								 	<button type="button" class="btn redclr" onclick="saveRefund()" style="border-radius: 25px !important;width:80px;">Save</button>
									<button type="button" class="btn grayclr" onclick="resetFun()" style="border-radius: 25px !important;width:80px;">Reset</button>
										
								</div>
							</div>
						</div>
                       
					</div>
				</div>
				</form>
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
$( "#tdate" ).datepicker();
});

function resetFun(){
	document.getElementById("transamount").value = "";
	document.getElementById("meramountstatus").value = "0"
}
function saveRefund(){
	
		
	if(document.getElementById("transamount").value == ""){
		document.getElementById("tadiv").innerHTML = "Transaction amount required.";
		document.getElementById("transamount").focus();
		return false;
	}
	if(document.getElementById("meramountstatus").value== "0"){
		//alert("Merchent amount status  required")
		document.getElementById("msdiv").innerHTML = "Merchent amount status  required.";
		document.getElementById("meramountstatus").focus();
		return false;
	} 
	
	document.refundform.action="<%=request.getContextPath()%>/saveadjustrefund"
	document.refundform.submit();
	window.close();
}
function isNumberBudget(evt) {
    var iKeyCode = (evt.which) ? evt.which : evt.keyCode
   
   		 
   if (iKeyCode != 48 && iKeyCode > 31 && (iKeyCode < 48 || iKeyCode > 57)){
   	
   	 document.getElementById("tadiv").innerHTML = "Number not allowed.";
       return false;
   }
   document.getElementById("tadiv").innerHTML =""; 
   return true;
}
</script>
</body>
<!-- END BODY -->
</html>