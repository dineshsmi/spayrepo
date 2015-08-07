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


<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-1.10.2.js" type="text/javascript"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js" type="text/javascript"></script> -->

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


 $(function() {//dob
      $("#fdate" ).datepicker({changeMonth: true,changeYear:true,yearRange: "1900:3000"});
      $("#tdate" ).datepicker({changeMonth: true,changeYear:true,yearRange: "1900:3000",maxDate: new Date});

    
  }); 

$(document).ready(function(){
	
	 $('#confirm_btn').hide();
	
	 $('#back_btn').hide();
	
	 $('#mcccodenotneeded').hide();
	
	 $('#append').hide();
	 
	 $('#id_mobilenumerrormsg').hide();
	 
	 $('#id_telnumerrormsg').hide();
	 
	 
	 <!-- Real-time Validation -->
	 <!--Name can't be blank-->
	 
	 $('#merchant_merchantId').on('input', function() {
		    var input=$(this);
			var is_name=input.val();
			if(is_name){input.removeClass("invalid").addClass("valid");}
			else{input.removeClass("valid").addClass("invalid");}
		});
	 
	 $('#procode').on('input', function() {
		    var input=$(this);
			var is_name=input.val();
			if(is_name){input.removeClass("invalid").addClass("valid");}
			else{input.removeClass("valid").addClass("invalid");}
		});
	 
	 $('#feessetting').on('input', function() {
		    var input=$(this);
			var is_name=input.val();
			if(is_name){input.removeClass("invalid").addClass("valid");}
			else{input.removeClass("valid").addClass("invalid");}
		});
	 
	 
	$('#merchant_merchantName').bind('keyup blur',
		function(){
		       //alert("here");
		       $(this).val( $(this).val().replace(/[^A-Za-z]/g,'') ); 
		 });
	 
	 
	 $('#merchant_merchantName').on('input', function() {
	    var input=$(this);
		var is_name=input.val();
		if(is_name){input.removeClass("invalid").addClass("valid");}
		else{input.removeClass("valid").addClass("invalid");}
	});
	 
	 
	 
	 $('#dob').change('input', function() {
		
		    var input=$(this);
			var is_name=input.val();
			
			 if(is_name.length==10){
				
				 input.removeClass("invalid").addClass("valid");
			 }else{
				
				 $('#dob').val("");
				 input.removeClass("valid").addClass("invalid");
			 }
		});
	 
	 
	 $('#merchant_merchantEmailId').on('input', function() {
		   
		    var input=$(this);
		  	var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
			var is_email=filter.test(input.val());
			if(is_email){input.removeClass("invalid").addClass("valid");}
			else{input.removeClass("valid").addClass("invalid");}
	});
	 
	 
	 
	 
	  $('#merchant_merchantMobile').keypress(function(e) {
		    var input=$(this);
			var is_name=input.val();
			
			var length = is_name.length;
			//alert("is_name===>"+input.val());
			if(is_name){
				//alert("In if");
				input.removeClass("invalid").addClass("valid");
			}
			else{
				//alert("In else");
				input.removeClass("valid").addClass("invalid");
			}
			
			
			
			
		 //if the letter is not digit then display error and don't type anything
	     if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
	        //display error message
	        $("#errmsg").html("Please Enter Digits Only").show().fadeOut("slow");
	       
	        input.removeClass("valid").addClass("invalid");
				
	        return false;
	    }else{
	    	//alert("In here");
	    	input.removeClass("invalid").addClass("valid");
	    	
	    }
		 
	 }); 
	  
		  
	  $('#merchant00').keypress(function(e) {
		    var input=$(this);
			var is_name=input.val();
			
			var length = is_name.length;
			//alert("is_name===>"+input.val());
			if(is_name){
				//alert("In if");
				input.removeClass("invalid").addClass("valid");
			}
			else{
				//alert("In else");
				input.removeClass("valid").addClass("invalid");
			}
			
			
			
			
		 //if the letter is not digit then display error and don't type anything
	     if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
	        //display error message
	        $("#errmsg").html("Please Enter Digits Only").show().fadeOut("slow");
	       
	        input.removeClass("valid").addClass("invalid");
				
	        return false;
	    }else{
	    	//alert("In here");
	    	input.removeClass("invalid").addClass("valid");
	    	
	    }
		 
	 }); 
	  
	  
	  
	  
	  
	  $('#merchant6').keypress(function(e) {
		  
		 
		    
		    var input=$(this);
			var is_name=input.val();
			
			var length = is_name.length;
			//alert("is_name===>"+input.val());
			if(is_name){
				//alert("In if");
				input.removeClass("invalid").addClass("valid");
			}
			else{
				//alert("In else");
				input.removeClass("valid").addClass("invalid");
			}
			
			
			
			
		 //if the letter is not digit then display error and don't type anything
	     if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
	        //display error message
	        $("#errmsgTxn").html("Please Enter Digits Only").show().fadeOut("slow");
	       
	        input.removeClass("valid").addClass("invalid");
				
	        return false;
	    }else{
	    	//alert("In here");
	    	input.removeClass("invalid").addClass("valid");
	    	
	    }
		 
	 }); 
	 
	 
	 
	
	 
	
	 
	 
	 
	 <!-- After Form Submitted Validation-->
	$("#btn1").click(function(event){	 	
			
			
			
			var form_data=$("#merchant").serializeArray();
			
			var error_free=true;
			
			var status = false;
			
        
				
		for (var input in form_data){
				
				var element=$("#merchant_"+form_data[input]['name']);
				
				var valid=element.hasClass("valid");
				
				var error_element=$("span", element.parent());
				
				if (!valid){
					
					error_element.removeClass("error").addClass("error_show"); error_free=false;
				}
				else{
					
					error_element.removeClass("error_show").addClass("error");
				}
				
				
				if (!error_free){
					
					event.preventDefault(); 
				}
				else{
					
					status = true;
					  
				}
				
		
			}
			
			
			if( $('#dob').val()==""){
				
				//alert("DOB & Mobile no checking");
				return false;
				
			}
			
			
			
			
			
           if($('#merchant_merchantMobile').val()==""){
        	   
        	   
        	   //alert("merchantMobile value===>"+$('#merchant_merchantMobile').val());
        	   
        	   $('#merchant_merchantMobile').removeClass("valid").addClass("invalid");
        		return false;
           }
           
           
           if($('#merchant_merchantMobile').val().length<8){
        	   
        	    //alert("Minimum 8 charaters required");
        	    
        	    $('#id_mobilenumerrormsg').show();
        	 
        		return false;
           }
           
           
           
           if($('#merchant6').val()==""){
        	   
        	   
               //alert("merchantTel value===>"+$('#merchant6').val());
        	   
        	   $('#merchant6').removeClass("valid").addClass("invalid");
        		return false;
           }
           
           
           if($('#merchant6').val().length<8){
        	   
       	    //alert("Minimum 8 charaters required");
       	    
       	     $('#id_telnumerrormsg').show();
       	    
       	      $('#merchant6').removeClass("valid").addClass("invalid");
       	    
       	        if($('#merchant_merchantMobile').val().length>8){
       	        	
       	            $('#id_mobilenumerrormsg').hide();
       	        	
       	        }
       	 
       		return false;
          }
           
           
          
           if( $('#merchant_merchantName').val()==""){ 
         
        	   $('#merchant_merchantName').removeClass("valid").addClass("invalid");
              return false;
           }   
           
           
           
           
           if( $('#merchant_merchantEmailId').val()!=""){
        	  
        	   
        	   var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
        	   var is_email=filter.test($('#merchant_merchantEmailId').val());
        	   
        	  
        	   
        	   if(is_email){
        		 
        		   status = true;
        	    }
   			    else{
   			     
   			    	status = false;
   			    }
				
				
			}
           
           
           
           if( $('#merchant_merchantEmailId').val()==""){
        	  
        	    return false;
				
				
			}
           
           
           
           if($("#merchant_merchantId").val()==""){
				
				
				return false;
				
			}else{
				var content;
			   $.ajax({
					type: 'GET',
					url: '<%=request.getContextPath()%>/merchantIdExistCheck',
					data: {merchantid: $('#merchant_merchantId').val()},
					success: function(response) 
					{
					   
					    if(response.length>0)
					    {
					    	
					    	content="<div class="+"error_show"+">Merchant Id already Exists</div>";
					    	
					    	$('#errorstatus').append(content);
                             content = null;
					    	
					    	$('#Container').show();
					    	$('#append').hide();
					    	$('#confirm_btn').hide();
					    	$('#back_btn').hide();
					    	
					    	$("#btn1").show();
					    	$("#btn2").show();
					    	
					    	
					    	
					    	return false;
					    }else
					    {
					    	//alert('Merchant Id Not already Exists');
					    	
					    }
					    
					  
					    
					},
					error: function(){
						//alert("Error");
					}
					});
			   
			     //alert("here...")
	   }
           
            
			
			if(status){
				
			//alert("status true");
			
			$('#mcccodenotneeded').hide();
			$("#btn1").hide();
			$('#confirm_btn').show();
     		$("#btn2").hide();
     		$('#back_btn').show();
			 
			 $('#Container').hide();
			 $('#append').show();
			 
			 //alert($('#merchant_merchantId').val());
			 
			 $( "#merchant11" ).text($('#merchant_merchantId').val());
			 $( "#merchant12" ).text($('#merchant_merchantName').val());
		     $( "#merchant13" ).text($('#dob').val());
		     $( "#merchant14" ).text($('#merchant_merchantEmailId').val());
		     $( "#merchant15" ).text($('#merchant_merchantMobile').val());
		     $( "#merchant16" ).text($('#merchant6').val());
		     $( "#merchant17" ).text($('#merchant7').val());
		     $( "#merchant18" ).text($('#merchant8').val());
		     $( "#merchant19" ).text($('#merchant9').val());
		     $( "#merchant20" ).text($('#merchant10').val());
		     $( "#merchant22"  ).text($('#merchant00').val());
		    
			 
			}
			//return false;
		});
	
$('#confirm_btn').click(function(event){
		
		
		//alert("confirm btn clicked"+$('#merchant_merchantId').val());
		
		var confirmedmerchantId = $('#merchant_merchantId').val();
		var confirmedmerchantName = $('#merchant_merchantName').val();
		var confirmedmerchantEmailId = $('#merchant_merchantEmailId').val();
		var confirmedmerchantBusinesscode = $('#merchant7').val();
		var confirmedmerchantRegion = $('#merchant8').val();
	
		
		document.merchantRegistrationform.submit();
		
		 
	});
	
$('#back_btn').on('click', function()
{
	$('#Container').show();
	$('#append').hide();
	$('#confirm_btn').hide();
	$('#back_btn').hide();
	$('#id_mobilenumerrormsg').hide();
	
	$("#btn1").show();
	$("#btn2").show();

	      
 });	
		
	
	
	
	
	
	
$('#modify').on('click', function()
	    {
	        //alert("modify");
	        $('#merdetail').hide();
 	       $('#moddetail').show();
	       $(this).css({backgroundColor: 'purple'});
	      
	    });	
$('#delete').on('click', function()
	    {
	        
	       $(this).css({backgroundColor: 'purple'});
	      
	    });	
}); 
	 
	 
$("#btn2").click(function(event){
	alert("Reset btn clicked");
	
	
	
	
	
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
					<span class="title"></span>Admin
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
				<h3 class="page-title">
				UAM
				</h3>
				<div class="row">
					<div class="col-md-12">
						<div>	
						
						<a href="<%=request.getContextPath()%>/desdepbranch"><button class="btn grayclr" type="button" style="border-radius: 25px !important;width:136px;padding-left:3px;">Branch Registration</button></a>
						
                             <a href="<%=request.getContextPath()%>/userform"><button class="btn grayclr" type="button" style="border-radius: 25px !important;width:120px;padding-left:3px;">User Registration</button></a>
                             
                             <a href="<%=request.getContextPath()%>/modifyuser"><button class="btn grayclr" type="button" id="modify" style="border-radius: 25px !important;width:120px;">Modify User</button></a>
                             
                              <a href="<%=request.getContextPath()%>/userforget"><button class="btn grayclr" type="button" id="delete" style="border-radius: 25px !important;width:120px;padding-left:5px;">Forget Password</button></a>

                             <a href="<%=request.getContextPath()%>/userdepartment"><button class="btn grayclr" type="button" style="border-radius: 25px !important;width:120px;">Assign Rights</button></a>
                             
                             <a href="<%=request.getContextPath()%>/useraudit"><button class="btn redclr" type="button" style="border-radius: 25px !important;width:120px;">Audit Trail</button></a>
						</div>
						<br />
						
                        <!--------detail start------------>
                        <div class="portlet box red">
							<div class="portlet-title">
								<div class="caption">
									User Audit
								</div>
								
							</div>
							<div class="portlet-body form">
								<form class="form-horizontal" role="form" method="get" action="searchuseraudit">
									<div class="form-body" style="text-align: left;padding-left:160px;">
										<div class="form-group">
											<label class="col-md-2 control-label">User Name:</label>
											<div class="col-md-10">
												<select class="form-control" id="uname" name="uname" style="width:400px;">
													<option value="0">-Select-</option>
													<c:forEach var="userval" items="${userlist}">
														<option value="${userval.adminname}">${userval.adminname}</option>
													</c:forEach>
                                                    
                                                 </select>

											</div>
											<div id="unamediv" style="color: red;margin-left:184px"></div>
										</div>
										
										<!-- <div class="form-group">
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
										</div> -->
                                        
                                        <div class="form-group">
											<label class="col-md-2 control-label">From Date:</label>
											<div class="col-md-10">
												<input type="text" class="form-control" placeholder="" name="fdate" id="fdate" style="width:400px;">
											</div>
											<div id="fdatediv" style="color: red;margin-left:184px"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">To Date:</label>
											<div class="col-md-10">
												<input type="text" class="form-control" placeholder="" id="tdate" name="tdate" style="width:400px;">
											</div>
											<div id="tdatediv" style="color: red;margin-left:184px"></div>
										</div>
                                        
                                       
										
									</div>
									 <div class="form-actions right1" style="text-align: left;padding-left:315px;">
                       					<button type="submit" class="btn redclr" id="id_sbtbtn" onclick="return validFun()" style="border-radius: 25px !important;width:80px;">Search</button>
										<!-- <button type="button" class="btn grayclr" onclick="resetFun()" style="border-radius: 25px !important;width:80px;">Reset</button> -->
								
									</div>
								</form>
							</div>
						</div>

						
						
                        <!--------detail end---------->
						

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
});



function validFun(){
	
	var uname = document.getElementById("uname").value;
	//var department = document.getElementById("department").value;
	var fdate = document.getElementById("fdate").value;
	var tdate = document.getElementById("tdate").value;
		 
	var fromdate = fdate;
    var todate = tdate;
    var mon1 = parseInt(fromdate.substring(0, 2), 10);
    var dt1 = parseInt(fromdate.substring(3, 5), 10);
   var yr1 = parseInt(fromdate.substring(6, 10), 10);
   var mon2 = parseInt(todate.substring(0, 2), 10);
   var dt2 = parseInt(todate.substring(3, 5), 10);
   var yr2 = parseInt(todate.substring(6, 10), 10);
       
    date1 = new Date(yr1, mon1, dt1);
    date2 = new Date(yr2, mon2, dt2);

    
	
	if(uname == "0"){
		document.getElementById("unamediv").innerHTML="Select the user name"
		document.getElementById("uname").focus();
		return false;
	}else{
		document.getElementById("unamediv").innerHTML=""
	}
	/* if(department == "0"){
		
		document.getElementById("depdiv").innerHTML="Select the department"
		document.getElementById("department").focus();
		return false;
	}else{
		document.getElementById("depdiv").innerHTML=""
	} */
	if(fdate == ""){
		document.getElementById("fdatediv").innerHTML="Enter the from date"
		document.getElementById("fdate").focus();
		return false;
	}else{
		document.getElementById("fdatediv").innerHTML=""
	}
	
	if(tdate == ""){
		document.getElementById("tdatediv").innerHTML="Enter the to date"
		document.getElementById("tdate").focus();
		return false;
	}else{
		document.getElementById("tdatediv").innerHTML=""
	}
	if (date2 <= date1) {
        document.getElementById("tdatediv").innerHTML="To date Should be greater than From date";
        document.getElementById("tdate").value = '';
        document.getElementById("tdate").focus();
        return false;
    }else{
    	document.getElementById("tdatediv").innerHTML=""
    }
	
	
}
</script>
</body>
<!-- END BODY -->
</html>