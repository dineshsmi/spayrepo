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
   
   <script src="//code.jquery.com/jquery-1.10.2.js" type="text/javascript"></script>
   <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js" type="text/javascript"></script>
   
        
      <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/global/calender/style.css"> 

   <script>
   
      function setChargeback(){
    	  
    	  //alert("In setChargeback");
      	  
    	  document.frmChargebackresultpopup.submit();
    	  
      }
      
      
      $(document).ready(function(){
    	  
    	  var chargebkVal =  $('#id_chargebackView').val();
    	  
    	  //alert("Jquery==>"+chargebkVal);
    	  
    	  var chargebkReasonId =  $('#id_strChbkreason').val();
    	  
    	     var chargebackType = $('#id_strChbkType').val();
    	    
    	    var chargebackValue = $('#id_strChbkAmountnew').val();
    	    
    	    
    	  
    	  if(chargebkReasonId.length>0){
    		  
    		  //alert('not null');
    		  document.getElementById("id_seltag").value = chargebkReasonId;
    		  $('#id_chargebackstaging').hide();
    		  
    	  }else{
    		  
    		  //alert('Null');
    	  }
    	  
    	  
    	  
         if(chargebackType.length>0){
    		  
    		  //alert('not null');
    		  document.getElementById("id_chargebacktype").value = chargebackType;
    		 
    		  
    	  }else{
    		  
    		  //alert('Null');
    	  }
         
         
         if(chargebackValue.length>0){
   		  
   		  //alert('not null');
   		  document.getElementById("id_chargebackamount").value = chargebackValue;
   		  
   		   if(chargebackType=='Full'){
   			  
   			  
   			document.getElementById("id_chargebackamount").disabled = true;
   			  
   		   }
   		 
   		  
   	     }else{
   		  
   		  //alert('Null');
   	    }
    	  
    	  
    	  
    	  if(chargebkVal=='chargebackauthorize'){
    		  $('#id_acceptrejectbtn').show();
    		  $('#id_chargebackstaging').hide();
    		  $('#id_chargebacktypeTR').hide();
    		  $('#id_chargebackamountTR').hide();
              $('#id_header').text("Chargeback Authorization");
    		  $('#id_subheader').text("Chargeback Authorization");
    		  $('#id_reasonforchargeback').hide();
    		  
    	  }
    	  
    	  
    	  if( chargebkVal=='representmentview'){
    		  $('#id_acceptrejectbtn').show();
    		  $('#id_chargebackstaging').hide();
    		  $('#id_chargebacktypeTR').hide();
    		  $('#id_chargebackamountTR').hide();
              $('#id_header').text("Representment View");
    		  $('#id_subheader').text("Representment View");
    		
    		  
    	  }
    	  
    	  
    	  if(chargebkVal=='chargebackresult'){
    	  
    	     $('#id_acceptrejectbtn').hide();
    	  }
    	  
    	  
    	  if(chargebkVal=='chargebackstaging'){
    		   
    		   $('#id_acceptrejectbtn').hide();
    		  /*  $('#id_chargebacktypeTR').hide();
    		   $('#id_chargebackamountTR').hide(); */
    		   
    		   
    	   }
    	  
    	  if(chargebkVal=='chargebackview'){
    		    
    		  //alert('chargebackview');
    		  
    		  $('#id_header').text("Chargeback Authorization");
    		  
    		  $('#id_subheader').text("Chargeback Authorization");
    		  
    		  		  
    		  $('#id_reasonforchargeback').hide();
    		  
    		  $('#id_chargebackstaging').hide();
    		  
    		  $('#id_acceptrejectbtn').show();
    		  
    		  $('#id_chargebacktypeTR').hide();
    		  
    		  $('#id_chargebackamountTR').hide();
    		  
    	  }
    	  
    	  
      });
      
      
     function updateChargebackStatus(eve){
    	  
    	 var chargebkVal =  $('#id_chargebackView').val();
    	
    	 
    	 if(chargebkVal=='representmentview'){
    		
    		if (document.getElementById('id_accept').checked) {
     		   alert("Represntment has been authorized Successfully");
     		}
     	  
     	  
     	  if (document.getElementById('id_reject').checked) {
    		     alert("Sorry..Represntment has been rejected");
    		  }
    		
    		
    		
    	}
    	
    	else{
    	
    	  
    	  if (document.getElementById('id_accept').checked) {
    		   alert("Charge back has been accepted Successfully");
    		}
    	  
    	  
    	  if (document.getElementById('id_reject').checked) {
   		     alert("Sorry...Charge back has been rejected");
   		  }
    	  
    	}	  
    	  
    	  document.frmChargebackresult.submit();
    	  
      }
     
     
     function changeFunc() {
    	 
    	       var selectBox = document.getElementById("id_chargebacktype");
    	       var selectedValue = selectBox.options[selectBox.selectedIndex].value;
    	       //alert("dfgdfg==>"+selectedValue);
    	       var txnAmount =  document.getElementById("id_txnamount").value;
    	                        
    	      if(selectedValue=="Partial"){
    	    	//alert("In Partial")
    	    	  document.getElementById("id_chargebackamount").value = "";
    	    	  document.getElementById("id_chargebackamount").disabled = false;
    	    	
    	      }else if(selectedValue=="Full"){
    	    	  
    	    	  //alert("In Full")
    	    	  
    	    	  document.getElementById("id_chargebackamount").value = txnAmount;
    	    	  document.getElementById("id_strChbkAmount").value = txnAmount;
    	    	  document.getElementById("id_chargebackamount").disabled = true;
    	    	  
    	      }
    	      
    }
    
     
  
   
   </script>
</head>

<body class="page-boxed page-header-fixed page-container-bg-solid page-sidebar-closed-hide-logo ">
<!-- BEGIN HEADER -->
<%

   String strTrnId = request.getParameter("tid");

  

%>



<div class="container">
	<!-- BEGIN CONTAINER -->
	<div class="page-container">
		
		<!-- BEGIN CONTENT -->
		<!-- <div class="page-content-wrapper"> -->
		<div>
			<div class="page-content">
				
				<h3 class="page-title" id="id_header">
				Chargeback Staging
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
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="#">Chargeback Staging</a>
						</li>
					</ul>
					
				</div> -->
				<!-- END PAGE HEADER-->
				<!-- BEGIN PAGE CONTENT-->
				<div class="row">
					<div class="col-md-12">
						
						<!--------detail start------------>
                        <div class="portlet box red">
							<div class="portlet-title">
								<div class="caption" id="id_subheader">
									Chargeback Staging
								</div>
								
							</div>
							
							 <input type="hidden" name="tid" value=<%=strTrnId %>>
							 
							  <input type="hidden" id="id_chargeback" name="chargebackraised" value="${isupdated}">
							  
							 
							  
							 
							    
							  
							    
							  
							    
					
					          <c:if test="${strChbkView == 'chargebackview'}">
					               <!--  <script>
					                      alert("gfgfg");
					                      document.getElementById('id_chargebackstaging').style.display = "none";
					                </script>
					                <div class="clschargebackstaging" style="display:none"></div> -->
					          </c:if>
					
					
							  
													
							 <div class="portlet-body flip-scroll">
							  
							    <form name="frmChargebackresultpopup" action="chargebackstaging" method="post">
							   
							      <input type="hidden" name="trnPkid" value=<%=strTrnId %>>
							     
							       <input type="hidden" id="id_chargebackViewPkId" name="strPKIdAttr" value="${strPKIdAttr}">
							       
							       <input type="hidden" id="id_chargebackView" name="strChbkView" value="${strChbkView}">
							       
							       <input type="hidden" id="id_strChbkreason" name="strChbkreason" value="${strChbkreason}">
							       
							       
							        <input type="hidden" id="id_strChbkType" name="strChbkType" value="${strChbkType}">
							        
							        <input type="hidden" id="id_strChbkAmount" name="strChbkAmount" value="">
							        
							        <input type="hidden" id="id_strChbkAmountnew" name="strChbkAmount" value="${strChbkAmount}">
							       
							       
							   
								<table class="table table-bordered table-striped table-condensed flip-content">
								
								<tbody>
								  <c:forEach items="${tmlist}" var="mer">
								  
								  <input type="hidden" name="merchantId" value="${mer.merchantid}">
								  <input type="hidden" name="txndateandtime" value="${mer.txndate}">
								  <input type="hidden" name="cardnumber" value="${mer.cardnumber}">
								  <input type="hidden" name="txnrefno" value="${mer.txnrefno}">
								  <input type="hidden" name="trackno" value="${mer.trackno}">
								  <input type="hidden" name="respcode" value="${mer.respcode}">
								  <input type="hidden" name="txnamount" value="${mer.txnamount}" id="id_txnamount">
								  <input type="hidden" name="accountstatus" value="accountstatusDorC">
								  <input type="hidden" name="txnfees" value="${mer.txnfees}">
								  <input type="hidden" name="settleamount" value="${mer.settleamount}">
							
							 
								<tr>
									<td>
										Merchant ID:
									</td>
									<td>
								     	 ${mer.merchantid}
									 </td>
								</tr>
								<tr>
									<td>
										Txn Date & Time:
									</td>
									<td >
									  ${mer.txndate}
									</td>
								</tr>
								<tr>
									<td>
										Card Number:
									</td>
									<td>
										${mer.cardnumber}
									</td>
								</tr>
								<tr>
									<td>
										Transaction Ref No:
									</td>
									<td>
										${mer.txnrefno}
									</td>
								</tr>
								<tr>
									<td>
										Trace Number:
									</td>
									<td>
										${mer.trackno}
									</td>
								</tr>
								
								<tr>
									<td>
										Resp Code:
									</td>
									<td>
										${mer.respcode}
									</td>
								</tr>
							
								<tr>
									<td>
										Transaction Currency:
									</td>
									<td>
										<c:forEach items="${txnlist}" var="name">
										 	${name.currencyname}
										 	<input type="hidden" name="trncurrencyname" value="${name.currencyname}">
										</c:forEach>
										 
									</td>
								</tr>
								<tr>
									<td>
										Transaction Amount:
									</td>
									<td>
										${mer.txnamount}
									</td>
								</tr>
								
								<tr>
									<td>
										Account status:
									</td>
									<td>
										account status(D or C)
									</td>
								</tr>
								<tr>
									<td>
										Transaction Fee:
									</td>
									<td>
										${mer.txnfees}
									</td>
								</tr>
								<tr>
									<td>
										Settle Amount:
									</td>
									<td>
										${mer.settleamount}
									</td>
								</tr>
								<tr id="id_settlecurrency">
									<td>
										Settle Currency:
									</td>
									<td>
										<c:forEach items="${setlist}" var="name">
										 ${name.currencyname}
										  <input type="hidden" name="settlecurrencyname" value="${name.currencyname}">
									    </c:forEach>
									    
									</td>
								</tr>
								
								<tr id="id_chargebacktypeTR">
								    <td>
								        Chargeback Type
									</td>
									<td>
									<select name="chargebacktype" id="id_chargebacktype" onchange="changeFunc();">
									   <option value="0">---select---</option>
									   <option value="Partial">Partial</option>
									   <option value="Full">Full</option>
									</select>
									</td>	
							    </tr>	
							    
							    <tr id="id_chargebackamountTR">
							         <td>
								        Chargeback Amount
									</td>
									<td>
									    <input type="text" name="chargebackamount" id="id_chargebackamount" value="">  
									</td>
							    
							    </tr>							
								
								<tr id="id_reasonforchargeback">
									<td>
										Reason for Chargeback:
									</td>
									<td>
										<select name="chargebackreason" id="id_seltag">
										    <option value="0">----------Select Reason for Chargeback----</option>
										    <option value="DISCOVER_4502">IC-Illegible Sales Data</option>
										    <option value="DISCOVER_4534">DP-Duplicate Processing</option>
										    <option value="DISCOVER_4540">UA-Unauthorized Purchase</option>
										    <option value="DISCOVER_4541">AP-Automatic Payment</option>
										    <option value="DISCOVER_4550">CD-Credit Posted as a Debit</option>
										    <option value="DISCOVER_4553">RM-Quality of Goods or Services</option>
										    <option value="DISCOVER_4554">NC-Not Classified</option>
										    <option value="DISCOVER_4555">RN-Additional Request/ Non-Receipt of Credit</option>
										    <option value="DISCOVER_4586">AW-Altered Amount</option>
										    <option value="DISCOVER_4594">CR-Cancelled Reservation</option>
										    <option value="DISCOVER_4751">CA-Cash Advance Deposit</option>
										    <option value="DISCOVER_4752">DA-Declined Authorization</option>
										    <option value="DISCOVER_4753">Invalid Cardholder number</option>
										    <option value="DISCOVER_4754">No Authorization</option>
										    <option value="DISCOVER_4755">Non-Receipt of Goods or Services</option>
										    <option value="DISCOVER_4756">SV-Stored Value Dispute</option>
										    <option value="MASTERCARD_4802">Requested/Required Item Illegible or Missing</option>
										    <option value="MASTERCARD_4803">Documentation received was invalid/incomplete</option>
										    <option value="MASTERCARD_4804">Duplicate Processing</option>
										    <option value="MASTERCARD_4807">Warning Bulletin File</option>
										    <option value="MASTERCARD_4808">Requested/Required Authorization Not Obtained</option>
										    <option value="MASTERCARD_4812">Account Number Not on File</option>
										    <option value="MASTERCARD_4831">Transaction Amount?</option>
										    <option value="MASTERCARD_4834">Duplicate Processing</option>
										    <option value="MASTERCARD_4835">Card Not Valid or Expired</option>
										    <option value="MASTERCARD_4837">No Cardholder Authorization</option>
										    <option value="MASTERCARD_4840">Fraudulent Processing of Transactions</option>
										    <option value="MASTERCARD_4841">Canceled Recurring Transaction</option>
										    <option value="MASTERCARD_4842">Late Presentment</option>
										    <option value="MASTERCARD_4846">Correct Transaction</option>
										    <option value="MASTERCARD_4847">Unauthorized transaction</option>
										
										</select>
									</td>
								</tr>
								
								<!-- <tr><td>&nbsp;</td></tr> -->
								
								
								  
								
                               </c:forEach>
                               
                               
                                   <tr>
								        <td align="center" colspan=2>
								        
								             <div id="id_chargebackstaging" class="clschargebackstaging">	
                                                  <a href="#"><button class="btn purple-soft" type="button" onclick="setChargeback();">Chargeback Staging</button></a>
                             
                                                  <a href="#"><button class="btn blue" type="button" id="modify">Cancel</button></a>
                             
                                            </div>
								                   
								         </td>
								   </tr>
								  
								  <tr> 
								   <td colspan=2 align="center">
								    <c:if test="${isupdated eq true}">
					                       <span style="color:green;">Charge Back has been Successfully raised to the merchant </span>
					
					                </c:if>
					                </td>
                             	  </tr>					
								</tbody>
								</table>
							</form>
								
								                                    
                             <form name="frmChargebackresult" action="chargebackresultpopup" method="GET">
                                 
                                     <input type="hidden" name="tid" value=<%=strTrnId %>>
                                     
                                    <input type="hidden" id="id_chargebackView" name="strChbkViewRep" value="${strChbkView}">
                                    
                                  <table>
                                     <tr id="id_acceptrejectbtn">
								        <td align="center" colspan=2>
								           <input type="hidden" name="authorizestatus" value="authorize">
								           <input type="radio" name="radiobtn" id="id_accept" value="accept" onclick="updateChargebackStatus(this)">Accept
								           <input type="radio" name="radiobtn" id="id_reject" value="reject" onclick="updateChargebackStatus(this)">Reject 
								         </td>
								   </tr>
								   </table>
                               </form>
								
								
								
								
								
								
								 <div class="form-actions right1">
								 	<button type="button" class="btn redclr" onclick="window.print()" style="border-radius: 25px !important;width:80px;">Print</button>
									<button type="button" class="btn grayclr" onclick="window.close()" style="border-radius: 25px !important;width:80px;">Close</button>
										
								</div>
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
	 document.getElementById("mername").value = 0;
	 document.getElementById("cardtype").value = 0;
	 document.getElementById("tdate").value = "";
	 document.getElementById("trefno").value = "";
	 document.getElementById("cardnumber").value = "";
	 document.getElementById("tcode").value = "";
	 document.getElementById("tnumber").value = "";
	 document.getElementById("tcurrency").value = 0;
	 document.getElementById("tamount").value = "";
	 document.getElementById("tfees").value = "";
	 document.getElementById("settleamount").value = "";
	 document.getElementById("settlecurrency").value = 0;
}

function validFun(){
	
	
	
	/*  var merid = document.getElementById("merchantId").value;
	 var mername = document.getElementById("merchantName").value;
	 var mail = document.getElementById("merchantEmailId").value;
	 if(merid == "" && mername == "" && mail==""){
		 alert("Please enter the value in 'Merchant ID' or 'Merchant Name' or 'Email Id'");
		 return false;
	 } */
}
</script>
</body>
<!-- END BODY -->
</html>