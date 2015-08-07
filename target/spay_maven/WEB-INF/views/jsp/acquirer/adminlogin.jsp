<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ADMIN</title>
<link href="<%=request.getContextPath()%>/resources/global/css/login.css" type="text/css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,300italic,700' rel='stylesheet' type='text/css'>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-1.10.2.js" type="text/javascript"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js" type="text/javascript"></script>

<script type="text/javascript">


$(document).ready(function(){
	
	$('#id_forgetPwd').hide();
});



function update(){
	
   var uid = document.getElementById("username").value;
     var passid = document.getElementById("password").value;  
   
    if(uid == "" && passid == ""){
    	document.getElementById("error").innerHTML = "Enter the username and password";
    	document.getElementById("username").focus();
    	return false;
    }else{
    	document.getElementById("error").innerHTML = "";
    	
    }
    if(uid == ""){
    	
    	document.getElementById("error").innerHTML = "Enter the username";
    	document.getElementById("username").focus();
    	return false
    }else{
    	document.getElementById("error").innerHTML = "";
    	
    }
    if(passid == ""){
    	
    	document.getElementById("error").innerHTML = "Enter the password";
    	document.getElementById("password").focus();
    	return false
    }else{
    	document.getElementById("error").innerHTML = "";
    	
    }
     
    document.login.action="<%=request.getContextPath()%>/loginform"; 
    document.login.submit();
}

function pagefound(){
	var pagename="${pagename}";
	/* alert(pagename); */
	if(pagename == "forgot"){
		/* alert("enter if"); */
		$('#id_adminlogin').hide();
		$('#id_forgetPwd').show();
		$('#forgotpassword').hide();
	}
}

function forgotpwd(){
	$('#id_adminlogin').hide();
	$('#id_forgetPwd').show();
	$('#forgotpassword').hide();
	
	document.getElementById("error").innerHTML = "";
}

function backbtn(){
	
	
	$('#id_forgetPwd').hide();
	$('#id_adminlogin').show();
	$('#forgotpassword').show();
	document.getElementById("errordisplay").innerHTML = "";
}


function forget(){
	  /* alert("forget"); */
		var mailid = document.getElementById("mailid").value;
		var regex = /^([0-9a-zA-Z]([-_\\.]*[0-9a-zA-Z]+)*)@([0-9a-zA-Z]([-_\\.]*[0-9a-zA-Z]+)*)[\\.]([a-zA-Z]{2,9})$/;
		$('#mailid').removeAttr('placeholder');
	     if(mailid == ""){
									    	
				document.getElementById("errordisplay").innerHTML = "Enter Your Registered Mail id";
				return false;  
								    
		}
		else
		{
			if(regex.test(mailid)){
			    		/* alert("check mail"); */
			    		document.getElementById("errordisplay").innerHTML = "";
			        	<%-- document.adminforgotform.action="<%=request.getContextPath()%>/adminforget"; --%>
						//document.adminforgotform.submit();
						 document.login.action="<%=request.getContextPath()%>/adminforget"; 
						 document.login.submit();
			}
			else{
			   		document.getElementById("errordisplay").innerHTML = "Enter valid Mail id";
		        	return false;
			}
	   
	 } 
}	     
</script>





</head>

<body onload="pagefound()">
<div id="container">
	<div class="fleft">
    	<h1>Welcome to Admin Panel</h1>
        <p>Admin Portal in SPAY is a key module. It facilitates all functions required to manage Merchant activities which covers enrollment, manage user controls, Disputes, Realtime Transaction monitoring and Reporting. It includes Payment Gateway Setting controls too. UAM also covered in Admin Module for team management and auditing. </p>
        <p>SPAY a payment solutions facilitates all your essential business needs. We ensure your happiness 
           with our service.</p>
    </div>
    <div class="fright">
    <div class="loginbox">
    	
        <form id="id_loginpageform" class="login-form" action="" method="post" name="login">
        <h2><img src="<%=request.getContextPath()%>/resources/global/img/logo.png" alt="logo"></h2>
        <div style="text-align: center;">
        <span class="error" style="color: red;" id="error">${error}</span>
        
         <span class="error" id="forgeterror" style="color:red">${note}</span>
		 <br>
		  <span class="error" id="errordisplay" style="color:red"></span>
        </div>
        <ul class="formfield" id="id_adminlogin">
        	<li><input type="text" placeholder="User Name" id="username" name="username"/>
        	 </li>
        	<li><input type="password" placeholder="Password" id="password" name="password" /></li>
            <li>
                <button type="button" class="login_btn" onclick="update();">Login</button>
            </li>
            
        </ul>
        
         <ul class="formfieldforgetpwd" id="id_forgetPwd">
       
			
         <li>
			<input class="form-control" type="text" autocomplete="off" placeholder="Enter your Registered e-mail Id" name="email" id="mailid" style="width: 290px;"/>
			
		</li>
		
		<li>
		        <button type="button" class="login_btn" onclick="forget();">Submit</button>
		        &nbsp;&nbsp;&nbsp;
                <button type="button" class="login_btn" onclick="backbtn();">Back</button>
            </li>
            
        </ul>
        
        <div class="clear"></div>
        <div class="ftrdiv"><a href="#" onclick="forgotpwd();" id="forgotpassword">Forgot Password?</a></div>
       </form>
       
    </div>   
       
<%--   <div id="forgetpage">
	<form id="id_forgotpassword" class="forget-form" action="" method="post" name="adminforgotform" style="height:700px;width:200px;">
		<div class="form-title">
			<span class="form-title">Forget Password ?</span>
			
		</div>
		<span class="error" id="forgeterror" style="color:red">${note}</span>
		<br>
		<span class="error" id="errordisplay" style="color:red"></span>
		
		<div class="form-group">
			<input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="Enter your Registered e-mail Id" name="email" id="mailid" style="width: 280px;"/>
			
		</div>
		
				<div class="form-actions">
			<button type="button" id="back-btn" class="btn btn-primary" onclick="backbtn();">Back</button>
			<button type="button" class="btn btn-primary" onclick="forget();" id="forgotpassword">Submit</button>
		</div>
	</form>
	</div> --%>
        
        </div>
    </div>
    <div class="clear"></div>
    <div class="footer">
    <p style="margin-left:1050px"> @ Poweredby Sysmatik</p>
    </div>
</div>
</body>
</html>
