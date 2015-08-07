<!DOCTYPE>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ADMIN</title>
<link href="<%=request.getContextPath()%>/resources/admin/pages/css/merchant/login.css" type="text/css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,300italic,700' rel='stylesheet' type='text/css'>

<!-- END PAGE LEVEL SCRIPTS -->
 <script src="<%=request.getContextPath()%>/resources/global/calender/jquery-1.10.2.js"></script>
 
   <script src="<%=request.getContextPath()%>/resources/global/calender/jquery-ui.js"></script> 
   
   <script src="//code.jquery.com/jquery-1.10.2.js" type="text/javascript"></script>
   <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js" type="text/javascript"></script>

<script type="text/javascript">
$(document).ready(function(){
	
    $("#id_sbt_btn").click(function(){
    	
    	//alert("test");
    	
    	var username=  $('#id_username').val();
    	var password = $('#id_password').val();
    	var merchantId = $('#id_merchantid').val();
    	
    	var hdnmerchantId = $('#id_dbMerchantId').val();
       	
       	var hdnautogenPwd = $('#id_dbAutogenPwd').val();
       	
       	var hdnmerchantChangedPwd = $('#id_dbMerchantChangedPwd').val();
       
    	
    	//alert("hdnmerchantChangedPwd===>:"+hdnmerchantChangedPwd);
    	
    	if(hdnmerchantChangedPwd=="null"){
    		
    		//alert("hrllo");
    	}
    	
    	
    	//alert("hdnmerchantId==>"+hdnmerchantId+"=====merchantId====>"+merchantId);
    	
    	
    	if(username=="" && password=="" && merchantId==""){
    		$('#dis').slideDown().html("<span>Please Enter Valid Credentials</span>");
    		return false;
    	}else{
    		$('#dis').slideDown().html("");
    	}
    	
    	
    	
    	if(username=="")
    	{
    		$('#dis').slideDown().html("<span>Please type Username</span>");
    		return false;
    	}else{
    		$('#dis').slideDown().html("");
    	}
    	
    	
    	if(merchantId=="")
    	{
    	$('#dis').slideDown().html("<span>Please type your  MerchantId</span>");
    	return false;
    	}else if(merchantId!="" && hdnmerchantId!=""){
    		  if(merchantId!=hdnmerchantId){
    			  
    			  $('#dis').slideDown().html("<span>Please Enter the Valid MerchantId</span>");
    			  return false;
    		  }else{
    			  $('#dis').slideDown().html("");
    		  }
    		
    		
    	}
    	
    	
    	if(password=="")
    	{
    	$('#dis').slideDown().html('<span>Please type Password</span>');
    	return false;
    	}
    	
    	
    	

    	if(username!="" && password!="" && merchantId!="")
    	{
    		
    		//alert("Everything given");
    		
     
    	
    	 if(hdnmerchantChangedPwd=="null"){
    		  
    		  
    		//alert("In hdnmerchantChangedPwd value is null");
      		
  	        $.ajax({
  			type: 'GET',
  			url: '<%=request.getContextPath()%>/authenticateCredentails',
  			data: {merchantid: merchantId,username: $('#id_username').val(),password: $('#id_password').val() },
  			success: function(response) 
  			{
  			    //alert("success:"+response);
  			    if(response.length>0)
  			    {
  			    	//alert('valid user');
  			    	<%-- window.location.replace("<%=request.getContextPath()%>/merchant/index"); --%>
  			    	window.location.replace("<%=request.getContextPath()%>/merchant/resetpassword?merchantId="+hdnmerchantId);
  			    }else
  			    {
  			    	//alert('Invalid user');
  			    	
  			    	if(hdnmerchantChangedPwd!=""){
  			    		//var content="<h4 id='statusDisplay'>Invalid Credentials.Please type your new Password</h4>";
  			    		var content="<h4 id='statusDisplay'>Invalid Credentials.</h4>";
  			    		document.getElementById("invalid_div").innerHTML=content;
      			    	//$('#invalid_div').append(content);
  			    		
  			    	}
  			    	
  			    	/* var content="<h4 id='statusDisplay'>Invalid Credentials</h4>";
  			    	$('#invalid_div').append(content); */
  			    	
  			    	
  			    	
  			    }
  			    
  			},
  			error: function(){
  				//alert("Error");
  			}
  			});
    	  
    	  
    	  
    	  
    	  }else{
    	    	
    	    	//alert("In hdnmerchantChangedPwd not null");
    	    	
    	    	if(hdnmerchantChangedPwd==$('#id_password').val()){
    	    		
    	    		//alert("changed password and given pwd are same");
    	    		
    	    		$.ajax({
            			type: 'GET',
            			url: '<%=request.getContextPath()%>/authenticateCredentails',
            			data: {merchantid: merchantId,username: $('#id_username').val(),password:hdnmerchantChangedPwd },
            			success: function(response) 
            			{
            			    //alert("success:"+response);
            			    if(response.length>0)
            			    {
            			    	//alert('valid user');
            			    	window.location.replace("<%=request.getContextPath()%>/merchant/index");
            			    }else
            			    {
            			    	//alert('Invalid user');
            			    	var content="<h4 id='statusDisplay'>Invalid Credentials</h4>";
            			    	document.getElementById("invalid_div").innerHTML=content;
            			    	//$('#invalid_div').append(content);
            			    }
            			    
            			},
            			error: function(){
            				//alert("Error");
            			}
            			});
    	    		
    	    		
    	    	}else if(hdnmerchantChangedPwd!=$('#id_password').val()){
    	    		
    	    		//alert("changed password and given pwd are not same");
    	    		
    	    		$.ajax({
            			type: 'GET',
            			url: '<%=request.getContextPath()%>/authenticateCredentails',
            			data: {merchantid: merchantId,username: $('#id_username').val(),password:$('#id_password').val() },
            			success: function(response) 
            			{
            			    //alert("success:"+response);
            			    if(response.length>0)
            			    {
            			    	//alert('valid user');
            			    	window.location.replace("<%=request.getContextPath()%>/merchant/index?mid="+merchantId);
            			    }else
            			    {
            			    	//alert('Invalid user');
            			    	var content="<h4 id='statusDisplay'>Invalid Credentials</h4>";
            			    	document.getElementById("invalid_div").innerHTML=content;
            			    	//$('#invalid_div').append(content);
            			    }
            			    
            			},
            			error: function(){
            				//alert("Error");
            			}
            			});
 	    		
    	    	}
    	  }
    	}
      
    });
});
function forget(){
	/* alert("forget"); */
    document.forgotform.submit();
     var mailid = document.getElementById("email").value;
    /* alert(mailid); */
    var hdnmerchantId = $('#id_dbMerchantId').val();
    /* alert(hdnmerchantId); */
    if(mailid == ""){
    	/* alert("check"); */
    	document.getElementById("erroruser").innerHTML = "Enter the MailId";
    }
    document.forgotform.submit();
    document.forgotform.action="<%=request.getContextPath()%>/forgetform?id="+hdnmerchantId;
}
</script>
</head>

<body>
<form class="forget-form" action="" method="post" name="forgotform">
<div id="container">
	<div class="fleft">
    	<h1>Welcome to Merchant Panel</h1>
        <p>Merchant Portal facilitates all functions required to manage Merchant activities which covers edit profile, manage user controls, Disputes, Realtime Transaction monitoring and Reporting. </p>
        <p>It also facilitate merchant to process Telephone or Manual Purchase order to customer and generate invoice.</p>
    </div>
    <div class="fright">
    	<div class="loginbox">
        <h2><img src="<%=request.getContextPath()%>/resources/admin/layout2/img/merchant/merchantadmin.png" alt="logo"></h2>
        
        <label id="dis"></label><br>
        
        <ul class="mechantfiled">
        	<li><span class="merchantidicn"></span>
        	
        	<input type="text" placeholder="MERCHANT ID" name="merchantid" id="id_merchantid"/>
        	<p class="small" style="display:none;">Invalid User Name</p></li>
        	<li><span class="usericon"></span>
        	
        	<input type="text" placeholder="USER NAME" name="username" id="id_username"/>
        	<p class="small" style="display:none;">Invalid User Name</p></li>
        	<li><span class="passwordicon"></span>
        	  	<input type="password" placeholder="PASSWORD" name="password" id="id_password"/>
        	</li>
            <li><input type="button" value="Login" id="id_sbt_btn" class="login_btn"/></li>
        </ul>
        <div class="clear"></div>
        <div class="ftrdiv"><a href="#d" onclick="forget();">Forgot Password?</a></div>
        
        <input type="hidden"  value="<c:out value= "${merchantPKId}"/>"  id="id_dbMerPkId"/>
		<input type="hidden"  value="<c:out value= "${merchantId}" />"  id="id_dbMerchantId" />
		<input type="hidden"   value="<c:out value= "${merchantChangedPassword}" />"  id="id_dbMerchantChangedPwd">
		<input type="hidden"   value="<c:out value= "${merchantAutogeneratedPassword}" />"  id="id_dbAutogenPwd">
		
        </div>
    </div>
    <div class="clear"></div>
    <div class="footer">
    @ Poweredby Sysmatik
    </div>
</div>
</form>
<!-- END LOGIN -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="../../assets/global/plugins/respond.min.js"></script>
<script src="../../assets/global/plugins/excanvas.min.js"></script> 
<![endif]-->
<script src="<%=request.getContextPath()%>/resources/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="<%=request.getContextPath()%>/resources/global/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="<%=request.getContextPath()%>/resources/global/scripts/metronic.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/admin/layout/scripts/layout.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/admin/layout/scripts/demo.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/admin/pages/scripts/login.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
jQuery(document).ready(function() {     
	Metronic.init(); // init metronic core components
	Layout.init(); // init current layout
	Login.init();
	Demo.init();
});

</script>
<!-- END JAVASCRIPTS -->
</body>
</html>
