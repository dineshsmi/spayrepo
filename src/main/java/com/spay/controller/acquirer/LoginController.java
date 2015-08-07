package com.spay.controller.acquirer;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

import com.spay.model.merchant.Admin;
import com.spay.model.merchant.MailOption;
import com.spay.model.merchant.Merchant;
import com.spay.model.merchant.Securitytable;
import com.spay.model.transaction.CurrencyCode;
import com.spay.model.transaction.ProductForm;
import com.spay.model.uam.AuditTrial;
import com.spay.service.merchant.MerchantService;
import com.spay.service.merchant.PaymentService;


@Controller
@RequestMapping("/")
public class LoginController{
	
	/**
	 * @return
	 */
	private static Random random = new Random((new Date()).getTime());
	
	@Autowired
	private MerchantService merchantService;
	
	
	@Autowired
	PaymentService paymentService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)	
	public ModelAndView indexPage(HttpServletRequest request) {
		List<Securitytable> securlist = merchantService.getSecurityques();
		ModelAndView model = new ModelAndView("acquirer/adminlogin");
		model.addObject("securlist", securlist);
		return model;
	}
	
	
	@RequestMapping(value = "/{pagename}", method = RequestMethod.GET)
	public ModelAndView merchantpage(ModelMap modelmap,HttpServletRequest request,@PathVariable("pagename") String pagename) {
		
		ModelAndView model = new ModelAndView();
		
		
		//index
		
		 if(pagename.equalsIgnoreCase("merchants"))
		 { 
			 List<ProductForm> provalue = paymentService.getProductForm();
			 modelmap.addAttribute("provalue", provalue);
				
			 model = new ModelAndView("acquirer/merchants");
		 }else if(pagename.equalsIgnoreCase("users")){
		       model = new ModelAndView("acquirer/users");  
		 }else if(pagename.equalsIgnoreCase("transaction_reports")){
			   model = new ModelAndView("acquirer/transaction_reports");  
		 }else if(pagename.equalsIgnoreCase("Settlement")){
			   model = new ModelAndView("acquirer/Settlement");  
		 }else if(pagename.equalsIgnoreCase("otpmessageform")){
			   model = new ModelAndView("acquirer/otpmessageform");  
		 }else if(pagename.equalsIgnoreCase("otpexpiryperiodform")){
			   model = new ModelAndView("acquirer/otpexpiryperiodform");  
		 }else if(pagename.equalsIgnoreCase("showdailyreports")){
			   model = new ModelAndView("reports/dailyreport");  
		 }else if(pagename.equalsIgnoreCase("showmonthlyreports")){
			 	Calendar date = Calendar.getInstance();
				int curr = date.get(Calendar.YEAR);
				int pre  = date.get(Calendar.YEAR)-1;
							
				model.addObject("curr", curr);
				model.addObject("pre", pre);
				
				model.setViewName("reports/monthlyreport");
				return model;
			  // model = new ModelAndView("reports/monthlyreport");  
		 }else if(pagename.equalsIgnoreCase("realtimetxnshow")){
			   model = new ModelAndView("acquirer/realtimetxnshow");  
		 }else if(pagename.equalsIgnoreCase("index")){
			   model = new ModelAndView("acquirer/index");  
		 }else if(pagename.equalsIgnoreCase("chargeback")){
			   model = new ModelAndView("chargeback/chargebackform");  
		 }else if(pagename.equalsIgnoreCase("representmentform")){
			   model = new ModelAndView("chargeback/representmentform");  
		 }else if(pagename.equalsIgnoreCase("representmentview")){
			   model = new ModelAndView("chargeback/representmentform");  
		 }else if(pagename.equalsIgnoreCase("reconfileform")){
			   model = new ModelAndView("recon/reconfileform");  
		 }else if(pagename.equalsIgnoreCase("loginform")){
			   model = new ModelAndView("acquirer/index");  
		 } else if(pagename.equalsIgnoreCase("showUserModification")){
			   model = new ModelAndView("acquirer/usermodifyconfirm");  
		 }else if(pagename.equalsIgnoreCase("sendForgotPwdLink")){
			   model = new ModelAndView("acquirer/userforgetform");  
		 }
		 
		 
		 
		
		 
		
		return model;
	}
	

	@RequestMapping(value = "/txnstmt",method = RequestMethod.GET)
	public @ResponseBody ModelAndView txnStmt(HttpServletRequest request) {
		System.out.println("In auth Txnstmt method");
		ModelAndView model = new ModelAndView();
		 model = new ModelAndView("acquirer/transactionstatement");
		 return model;
		
	}
	
	
	@RequestMapping(value = "/loginpage",method = RequestMethod.GET)
	public @ResponseBody ModelAndView loginpage(HttpServletRequest request) {
		System.out.println("In loginpage method");
		ModelAndView model = new ModelAndView();
		 model = new ModelAndView("acquirer/adminlogin");
		 return model;
		
	}
	
	
	
	@RequestMapping(value = "/expiryform",method = RequestMethod.GET)
	public ModelAndView expiryForm(HttpServletRequest request) {
		System.out.println("In auth expiry method");
		ModelAndView model = new ModelAndView();
		 model.setViewName("acquirer/otpexpiryperiodform");
		 return model;
		
	}
	@RequestMapping(value = "/modifymerchant",method = RequestMethod.GET)
	public @ResponseBody ModelAndView modifyMerchant(HttpServletRequest request,@RequestParam("id") String merchantid) {
		System.out.println("In auth modifyMerchant method");
		System.out.println("id==>"+merchantid);
		
	
		ModelAndView model = new ModelAndView();
		 model = new ModelAndView("acquirer/Modifymerchant");
		 /*String id = (String) request.getAttribute("value");
		 System.out.println("id==>"+id);*/
			List<Merchant> merchantList=merchantService.getMerchantdetails(merchantid);
				System.out.println("Modifylist=>"+merchantList);
				if(merchantList!=null){
					String mailid=	merchantList.get(0).getEmailId();
					String mername=	merchantList.get(0).getMerchantName();
					long mobile=	merchantList.get(0).getMobile();
					long tel=	merchantList.get(0).getTelephone();
					String country=	merchantList.get(0).getCountry();
					String region=	merchantList.get(0).getRegion();
					String business=	merchantList.get(0).getBusiness();
					Date DOB=	merchantList.get(0).getDOB();
					String address=	merchantList.get(0).getAddress();
					String member=	merchantList.get(0).getMembershiptype();
					long txnfee=	merchantList.get(0).getTransactionfee();
					long id=merchantList.get(0).getId();
											
					model.addObject("merchantList", merchantList);
					model.addObject("merchantId", merchantid);
					model.addObject("mername", mername);
					model.addObject("DOB", DOB);
					model.addObject("mailid", mailid);
					model.addObject("mobile", mobile);
					model.addObject("tel", tel);
					model.addObject("business", business);
					model.addObject("region", region);
					model.addObject("address", address);
					model.addObject("country", country);
					model.addObject("member", member);
					model.addObject("txnfee", txnfee);
					model.addObject("id", id);
				}
			
			
		 return model;
		
	}
	@RequestMapping(value = "/updatedetails",method = RequestMethod.POST)
	public @ResponseBody ModelAndView updateDetails(HttpServletRequest request) {
		System.out.println("In auth updatedetail method");
		ModelAndView model = null;
		try{
			
			AuditTrial audit = new AuditTrial();
			   HttpSession sessionObj = request.getSession();
			
			String merchantid = request.getParameter("merchantId").trim();
			System.out.println("merchantid"+merchantid);
			String merchantname = request.getParameter("merchantName");
			String merchantemail = request.getParameter("merchantEmailId");
			String merchantdob = request.getParameter("merchantDOB");
			System.out.println("merchantdob"+merchantdob);
			String merchantmobile = request.getParameter("merchantMobile");
			//long mermobile = Long.to(merchantmobile);
			String merchantbusiness = request.getParameter("merchantBusiness");
			String merchantregion = request.getParameter("merchantregion");
			String merchantcountry = request.getParameter("merchantCountry");
			String merchanttel = request.getParameter("merchantTel");
			//long mertel = Long.parseLong(merchanttel);
			String merchantaddress = request.getParameter("merchantAddress");
			System.out.println("merchantaddress"+merchantaddress);
			String merchantmember = request.getParameter("merchantmember");
			String merchanttxnfee = request.getParameter("transactionfee");
			//long mertxn = Long.parseLong(merchanttxnfee);
			String id=request.getParameter("merchant_id");
			long merid=Long.valueOf(id).longValue();
			System.out.println("check"+merid);
			
			Merchant merchant = new Merchant();
			merchant.setId(merid);
			merchant.setMerchantId(merchantid);
			merchant.setMerchantName(merchantname);
			//merchant.setDOB(merchantdob);
			 DateFormat df2 = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss"); 
		       
		        Date merchantDOB;
		  try {
		   merchantDOB = (Date)df2.parse(merchantdob);
		   System.out.println("merchantDOB"+merchantDOB);
		    merchant.setDOB(merchantDOB);
		  } catch (ParseException e) {
		   // TODO Auto-generated catch block
		   e.printStackTrace();
		  }
			 
		    merchant.setMobile(Long.valueOf(merchantmobile).longValue());
		    
			merchant.setEmailId(merchantemail);
			merchant.setTelephone(Long.valueOf(merchanttel).longValue());
			merchant.setBusiness(merchantbusiness);
			merchant.setRegion(merchantregion);
			merchant.setAddress(merchantaddress);
			merchant.setCountry(merchantcountry);
			merchant.setMembershiptype(merchantmember);
			merchant.setTransactionfee(Long.valueOf(merchanttxnfee).longValue());
			merchantService.updatemodifydetails(merchant);
			
			//--audit process start--
			DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			   //get current date time with Date()
			   Date date = new Date();
			   System.out.println("date and time==>"+dateFormat.format(date));
			  		   
			   String adminname = (String) sessionObj.getAttribute("adminname");
			   audit.setUsername(adminname);
			   audit.setDescription("Update the merchent '"+merchantname+"'");
			   audit.setLogdate(dateFormat.format(date));
			   
			   int auditid = merchantService.saveAudit(audit);
			//--audit process end--
			
			model = new ModelAndView("treatement/searchmerchant");
		}catch(Exception e){
			e.printStackTrace();
		}
		return model;
	}
	@RequestMapping(value = "/loginform",method = RequestMethod.POST)
	public ModelAndView loginForm(HttpServletRequest request) {
		System.out.println("In auth updatedetail method");
		ModelAndView model = null;
		try{
			HttpSession sessionObj = request.getSession();
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			/*String adminid="123";
			List<Admin> merchantdetails= merchantService.admindetails(adminid);  */
			List<Admin> merchantdetails= merchantService.checkAdminDetails(username,password);
			
			if(merchantdetails != null){
				String adminuname=merchantdetails.get(0).getUsername();
				String adminpassword=merchantdetails.get(0).getPassword();
				String adminid=merchantdetails.get(0).getAdminid();
				String adminname=merchantdetails.get(0).getAdminname(); 
				
				sessionObj.setAttribute("adminid" , adminid);
				sessionObj.setAttribute("adminname" , adminname);
				
				if(username.equals(adminuname) && password.equals(adminpassword)){
					System.out.println("success");
					model = new ModelAndView("acquirer/index");
				}
				else{
					String error ="Enter the correct username and password";
					model = new ModelAndView("acquirer/adminlogin");
					model.addObject("error", error);
				}
			}else{
				String error ="Enter the correct username and password";
				model = new ModelAndView("acquirer/adminlogin");
				model.addObject("error", error);
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/modifyuser",method = RequestMethod.GET)
	public ModelAndView modifyUser(HttpServletRequest request) {
		System.out.println("In auth userform method");
		ModelAndView model = new ModelAndView();
		 model.setViewName("acquirer/modifyuserform");
		 return model;
		
	}
	@RequestMapping(value = "/userforget",method = RequestMethod.GET)
	public ModelAndView userForget(HttpServletRequest request) {
		System.out.println("In auth userform method");
		ModelAndView model = new ModelAndView();
		 model.setViewName("acquirer/userforgetform");
		 return model;
		
	}
	
	@RequestMapping(value = "/forgetform",method = RequestMethod.POST)
	public ModelAndView forgetForm(HttpServletRequest request,@RequestParam("id") String hdnmerchantId) {
		System.out.println("In auth forgetForm method");
		String mailid = request.getParameter("email");
		System.out.println("mailid"+mailid);
		ModelAndView model = new ModelAndView();
		Merchant merchant = new Merchant();
		 String  randomPwd = generateRandomString();
		 String encryptedPwd = encrypt(randomPwd);
		  System.out.println("merchantId==>"+encryptedPwd);
		  if(encryptedPwd!= null){
		   merchant.setAutogeneratedPassword(encryptedPwd);
		  }
		   else{
			   merchant.setAutogeneratedPassword("");
		   } 
		  String password=merchant.getAutogeneratedPassword();
		  System.out.println("password==>"+password);
		  String decryptedPwd = decrypt(password);
		  merchantService.updateautopassword(hdnmerchantId,decryptedPwd);
		  List<Merchant> merchantList=merchantService.getMerchantdetails(hdnmerchantId);
			System.out.println("Modifylist"+merchantList);
			String mername=	merchantList.get(0).getMerchantName();
			System.out.println("mername"+mername);
		  sendEmailPassword(mailid,request,password,mername);
		  String merchantId=merchantList.get(0).getMerchantId();
			System.out.println("mername"+mername);
			model.addObject("mername", mername);
			model.addObject("merchantId", hdnmerchantId);
	   model.setViewName("acquirer/mailforget");
		 return model;
	}
	public String generateRandomString() {
	      char[] values = {'a','b','c','d','e','f','g','h','i','j',
	               'k','l','m','n','o','p','q','r','s','t',
	               'u','v','w','x','y','z','0','1','2','3',
	               '4','5','6','7','8','9'};

	      String out = "";

	      for (int i=0;i<11;i++) {
	          int idx=random.nextInt(values.length);
	        out += values[idx];
	      }

	      System.out.println(out);
	      return out;
	    }
	
		
	public static String encrypt(String str) {
		    	
		    BASE64Encoder encoder = new BASE64Encoder();
	        byte[] salt = new byte[8];
	        random.nextBytes(salt);
	        return encoder.encode(salt) + encoder.encode(str.getBytes());
	 }
		  
		  
		  
	public static String decrypt(String encstr) {

		    if (encstr.length() > 12) {
               String cipher = encstr.substring(12);
               BASE64Decoder decoder = new BASE64Decoder();

	    	try {
              return new String(decoder.decodeBuffer(cipher));
          } catch (IOException e) {

	    	    //  throw new InvalidImplementationException(

	    	    //Fail
         }
	    }
	    	  
	    	  return null;

	 }	
	private void sendEmailPassword(String mailid,
			HttpServletRequest request,String password,String mername) {
    	  
		// TODO Auto-generated method stub
  		Date date = new Date();
  		String dateformat = new SimpleDateFormat("MM-dd-YYYY").format(date);
  		
  		StringBuilder tableContent = new StringBuilder();
  		tableContent.append("<html><body>");
  		tableContent.append("<table border='0' style='border:none;'>");
  		tableContent.append("<tr>");
  		tableContent.append("<td >" + "Dear" + " " + mername+" , "+ "</td>");
  		tableContent.append("</tr>");
  		tableContent.append("<br>");
  		tableContent.append("<tr>");
  		tableContent.append("<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + "Your SPAY account Password are given below!" + "</td>");
  		tableContent.append("</tr>");
  		tableContent.append("<br>");

  		String decryptedPwd = decrypt(password);
  		
  		tableContent.append("<tr>");
  		tableContent.append("<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + "Your Password is "+decryptedPwd +"</td>");
  		tableContent.append("</tr>");
  		tableContent.append("<br>");

  		String serverUrl = null;
  		if(request.getServerPort()==0){
  			serverUrl = request.getScheme() + "://"
  					+ request.getServerName() + request.getContextPath();
  		}else{
  			serverUrl = request.getScheme() + "://"
  					+ request.getServerName() + ":" + request.getServerPort()
  					+ request.getContextPath();
  		}
  		
  		tableContent.append("<tr>");
  		
  		tableContent.append("</tr>");
  		tableContent.append("<br>");
  		
  	    tableContent.append("<tr>");
  		tableContent.append("<td  align=\"right\" >" + dateformat + "</td>");
  		tableContent.append("</tr>");
  		tableContent.append("<br>");

  		tableContent.append("</table>");

  		tableContent.append("</table></body></html>");
  		
  		
  		String[] sendEmailIds = new String[1];
  		sendEmailIds[0] = mailid;
  		
  		Multipart mp = new MimeMultipart();
  		MimeBodyPart htmlPart = new MimeBodyPart();
  		
  		try {
  			htmlPart.setContent(tableContent.toString(), "text/html");
  			mp.addBodyPart(htmlPart);
  		} catch (MessagingException e) {
  		}
  		
  		
  		try {
  			sendMultipartEmailWithForCase(sendEmailIds,mailid,mp);
  		} catch (AddressException e) {
  			// TODO Auto-generated catch block
  			e.printStackTrace();
  		} catch (MessagingException e) {
  			// TODO Auto-generated catch block
  			e.printStackTrace();
  		}
  	    	  
	}
	public  void sendMultipartEmailWithForCase(String[] clinicalEmailIds,
			String ccEmail, Multipart bodyContent) throws AddressException, MessagingException {
		
		MailOption mailOption = new MailOption();
		mailOption.setForceSystemConfiguredSender(true);
		mailOption.setAuthenticate(true);
		mailOption.setTo(clinicalEmailIds);
		mailOption.setCc(new String[] { ccEmail });
		mailOption.setSubject("Welcome to SPAY!");
		mailOption.setMultipart(bodyContent);
		sendMultipartMail(mailOption);
	}
	public boolean sendMultipartMail(final MailOption mailOption) {
		try {
			Properties props = System.getProperties();
			props.put("mail.transport.protocol", "smtp");
			//props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.host", "smtp.bcel.com.la");
	    	props.put("mail.smtp.port", "25");
	    	props.put("mail.smtp.auth", "true");
	    	props.put("mail.smtp.starttls.enable", "true");
	    	props.put("mail.smtp.starttls.required", "true");

			//Session session = Session.getInstance(props, null);
			
			Session session = Session.getDefaultInstance(props,
					new javax.mail.Authenticator() {
						protected PasswordAuthentication getPasswordAuthentication() {
							//return new PasswordAuthentication("dineshvgsmadurai","VGS@1234");
							return new PasswordAuthentication("spay@bcel.com.la","bcel@123");
						}
					});

			try {
				MimeMessage msg = new MimeMessage(session);
				
				System.out.println("mailOption : "+mailOption.getTo()[0]);
				
				//msg.setFrom(new InternetAddress("dineshvgsmadurai@gmail.com"));
				msg.setFrom(new InternetAddress("spay@bcel.com.la"));
     	        msg.setRecipient(Message.RecipientType.TO, new InternetAddress(mailOption.getTo()[0]));
		        msg.setSubject(mailOption.getSubject());
		        msg.setContent(mailOption.getMultipart());
		        
		        Transport.send(msg);
		    

			} catch (MessagingException e) {
				e.printStackTrace();
			}

		} catch (Exception e) {

		}
		return true;
	}
	@RequestMapping(value = "/resetpassword")
	public ModelAndView resetPasswordPage(HttpServletRequest request,@RequestParam("id") String merchantId) {
		System.out.println("In auth cren method");
		
		ModelAndView model = new ModelAndView();
				
		System.out.println("merchantId==>"+merchantId);
		
		model.addObject("merchantId", merchantId);
		
		model.setViewName("/merchant/resetpassword");
		
		return model;
	}
	
	
	
	@RequestMapping(value = "/adminforget",method = RequestMethod.POST)
	public ModelAndView adminForget(HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		try{
		System.out.println("In auth adminforgetForm method");
		String mailid = request.getParameter("email");
		System.out.println("mailid"+mailid);
		Admin admin = new Admin();
		 
		  List<Admin> admindetails= merchantService.getdetailsusingmailid(mailid);  
			System.out.println("admindetails==>"+admindetails);
			if(admindetails == null){
				String note = "Enter the Registered Mail ID";
				System.out.println("note"+note);
				model.addObject("note", note);
				model.addObject("pagename", "forgot");
				model.setViewName("acquirer/adminlogin");
				
			}
			else{
				String adminuname=admindetails.get(0).getUsername();
				System.out.println("adminuname"+adminuname);
			  String adminid=admindetails.get(0).getAdminid();
				System.out.println("adminId"+adminid);
				String password=admindetails.get(0).getPassword();
				System.out.println("password"+password);
				sendEmaildbPassword(mailid,request,password,adminuname);
					model.addObject("adminuname", adminuname);
					model.addObject("adminId", adminid);
					 model.setViewName("acquirer/adminforgetmail");
					 }
					 
			
		}catch(Exception e){
			e.printStackTrace();
		}
	  
		 return model;
	}
	
	
	private void sendEmaildbPassword(String mailid,
			HttpServletRequest request,String password,String mername) {
    	  
		// TODO Auto-generated method stub
  		Date date = new Date();
  		String dateformat = new SimpleDateFormat("MM-dd-YYYY").format(date);
  		
  		StringBuilder tableContent = new StringBuilder();
  		tableContent.append("<html><body>");
  		tableContent.append("<table border='0' style='border:none;'>");
  		tableContent.append("<tr>");
  		tableContent.append("<td >" + "Dear" + " " + mername+" , "+ "</td>");
  		tableContent.append("</tr>");
  		tableContent.append("<br>");
  		tableContent.append("<tr>");
  		tableContent.append("<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + "Your SPAY account Password are given below!" + "</td>");
  		tableContent.append("</tr>");
  		tableContent.append("<br>");

  		
  		
  		tableContent.append("<tr>");
  		tableContent.append("<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + "Your Password is "+password +"</td>");
  		tableContent.append("</tr>");
  		tableContent.append("<br>");

  		String serverUrl = null;
  		if(request.getServerPort()==0){
  			serverUrl = request.getScheme() + "://"
  					+ request.getServerName() + request.getContextPath();
  		}else{
  			serverUrl = request.getScheme() + "://"
  					+ request.getServerName() + ":" + request.getServerPort()
  					+ request.getContextPath();
  		}
  		
  		tableContent.append("<tr>");
  		
  		tableContent.append("</tr>");
  		tableContent.append("<br>");
  		
  	    tableContent.append("<tr>");
  		tableContent.append("<td  align=\"right\" >" + dateformat + "</td>");
  		tableContent.append("</tr>");
  		tableContent.append("<br>");

  		tableContent.append("</table>");

  		tableContent.append("</table></body></html>");
  		
  		
  		String[] sendEmailIds = new String[1];
  		sendEmailIds[0] = mailid;
  		
  		Multipart mp = new MimeMultipart();
  		MimeBodyPart htmlPart = new MimeBodyPart();
  		
  		try {
  			htmlPart.setContent(tableContent.toString(), "text/html");
  			mp.addBodyPart(htmlPart);
  		} catch (MessagingException e) {
  		}
  		
  		
  		try {
  			sendMultipartEmailWithForCase(sendEmailIds,mailid,mp);
  		} catch (AddressException e) {
  			// TODO Auto-generated catch block
  			e.printStackTrace();
  		} catch (MessagingException e) {
  			// TODO Auto-generated catch block
  			e.printStackTrace();
  		}
  	    	  
	}
	
	@RequestMapping(value = "/adminpassword")
	public ModelAndView adminPasswordPage(HttpServletRequest request,@RequestParam("id") String adminId) {
		System.out.println("In adminpassword method");
		
		ModelAndView model = new ModelAndView();
				
		System.out.println("adminId==>"+adminId);
		
		
		model.addObject("adminId", adminId);
		
		model.setViewName("/acquirer/adminresetpassword");
		
		return model;
	}
	@RequestMapping(value = "/adminreset",method = RequestMethod.POST)
	public ModelAndView adminReset(HttpServletRequest request,@RequestParam("id") String adminId) {
		System.out.println("In auth adminresetForm method");
		String autopwd = request.getParameter("autopwd");
		System.out.println("autopwd"+autopwd);
		String newpassword = request.getParameter("newpassword");
		System.out.println("newpassword"+newpassword);
		String adminid = request.getParameter("adminid");
		System.out.println("adminid"+adminid);
		ModelAndView model = new ModelAndView();
		Admin admin = new Admin();
		System.out.println("adminId"+adminId);
		merchantService.updateadminreset(adminId,newpassword);
		List<Admin> merchantdetails= merchantService.admindetails(adminId);  
		System.out.println("merchantdetails==>"+merchantdetails);
		System.out.println("merchantdetails"+merchantdetails);
		String adminuname=merchantdetails.get(0).getUsername();
		System.out.println("adminuname"+adminuname);
		String adminautopassword=merchantdetails.get(0).getAutopassword();
		System.out.println("adminautopassword"+adminautopassword);
		String adminnewpassword=merchantdetails.get(0).getPassword();
		System.out.println("adminnewpassword"+adminnewpassword);
		if(autopwd.equals(adminautopassword) && newpassword.equals(adminnewpassword)){
			System.out.println("success");
			model.setViewName("/acquirer/adminlogin");
		}
		else{
			String error ="Enter the correct autopassword and newpassword";
			System.out.println("error"+error);
			model = new ModelAndView("/acquirer/adminresetpassword");
			model.addObject("error", error);
		}
		
		return model;
		
	}
	@RequestMapping(value = "/reconfile",method = RequestMethod.GET)
	public ModelAndView reconFile(HttpServletRequest request) {
		System.out.println("In auth reconfile method");
		ModelAndView model = new ModelAndView();
		 model.setViewName("recon/reconfileform");
		 return model;
		
	}
	
	@RequestMapping(value = "/txnadjust",method = RequestMethod.GET)
	public ModelAndView txnAdjust(HttpServletRequest request) {
		System.out.println("In auth txnAdjust method");
		ModelAndView model = new ModelAndView();
		 model.setViewName("acquirer/txnadjustform");
		 return model;
		
	}
	
	
	/*@RequestMapping(value = "/useraudit",method = RequestMethod.GET)
	public ModelAndView userAudit(HttpServletRequest request) {
		System.out.println("In auth useraudit method");
		ModelAndView model = new ModelAndView();
		 model.setViewName("acquirer/useraduitlog");
		 return model;
	}*/
	@RequestMapping(value = "/merchantsetup",method = RequestMethod.GET)
	public ModelAndView merchantSetup(HttpServletRequest request) {
		System.out.println("In auth merchantSetup method");
		ModelAndView model = new ModelAndView();
		 model.setViewName("acquirer/Merchantsetup");
		 return model;
	}
	
	@RequestMapping(value = "/changepwd",method = RequestMethod.GET)
	public ModelAndView changePwd(HttpServletRequest request) {
		System.out.println("In auth changePwd method");
		ModelAndView model = new ModelAndView();
		 model.setViewName("acquirer/changepwdpopup");
		 return model;
	}
	@RequestMapping(value = "/adminchange",method = RequestMethod.POST)
	public ModelAndView adminChange(HttpServletRequest request) {
		System.out.println("In auth adminChange method");
		String newpassword = request.getParameter("newpassword");
		System.out.println("newpassword"+newpassword);
		ModelAndView model = new ModelAndView();
		try{
		Admin admin = new Admin();
		HttpSession sessionObj = request.getSession();
	    String adminid = sessionObj.getAttribute("adminid").toString();
	
		//sessionObj.setAttribute("adminname" , adminname);
		System.out.println("adminid"+adminid);
		List<Admin> merchantdetails= merchantService.admindetails(adminid);  
		System.out.println("merchantdetails==>"+merchantdetails);
		String adminpwd = merchantdetails.get(0).getPassword();
		System.out.println("adminpwd" +adminpwd);
		String adminpwd1 = merchantdetails.get(0).getPasswd1();
		System.out.println("adminpwd1" +adminpwd1);
		if(adminpwd1 == null && !adminpwd.equals(newpassword)){
			merchantService.updatepwd1(adminid,newpassword);
			
		}
		else{
			model.setViewName("acquirer/changepwdpopup");
			String adminpwd2 = merchantdetails.get(0).getPasswd2();
			System.out.println("adminpwd2" +adminpwd2);
			if(adminpwd2 == null && !adminpwd.equals(newpassword) && !adminpwd1.equals(newpassword)){
				merchantService.updatepwd2(adminid,newpassword);
			}
			else{
				model.setViewName("acquirer/changepwdpopup");
				if(!adminpwd2.equals(newpassword) && !adminpwd.equals(newpassword) && !adminpwd1.equals(newpassword)){
					merchantService.updateadminreset(adminid,adminpwd1);
					System.out.println("updateadminreset");
					merchantService.updatepwd1(adminid,adminpwd2);
					System.out.println("updatepwd1");
					merchantService.updatepwd2(adminid,newpassword);
					System.out.println("updatepwd2");
					String note = "Reset password Successfully";
					System.out.println("note"+note);
					model.addObject("note", note);
					model.setViewName("acquirer/changepwdpopup");
					model.addObject("pagename", "resetsuccess");
					//model.setViewName("/acquirer/adminlogin");
				}
				else{
				String note1 = "You are not allowed to enter last three Password";
				System.out.println("note"+note1);
				model.addObject("error", note1);
				model.setViewName("acquirer/changepwdpopup");
				//merchantService.updateadminreset(adminid,newpassword);
			}
		}	
	}
	
		
		
		}catch(Exception e){
			e.printStackTrace();
		}
	  
		 return model;
  }
}