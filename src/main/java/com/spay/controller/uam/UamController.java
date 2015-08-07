package com.spay.controller.uam;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

import com.google.gson.Gson;
import com.spay.model.merchant.Admin;
import com.spay.model.merchant.BranchCode;
import com.spay.model.merchant.DepartmentDesignation;
import com.spay.model.merchant.MailOption;
import com.spay.model.merchant.Merchant;
import com.spay.model.transaction.CurrencyCode;
import com.spay.model.transaction.TransationMonitoring;
import com.spay.model.uam.AccountAdjustment;
import com.spay.model.uam.AssignRights;
import com.spay.model.uam.AuditTrial;
import com.spay.model.uam.RefundAdjustment;
import com.spay.model.uam.UserRegistration;
import com.spay.service.merchant.MerchantService;
import com.spay.service.merchant.PaymentService;
import com.spay.service.uam.UamService;

@Controller
@RequestMapping("/")
public class UamController {

	private static Random random = new Random((new Date()).getTime());
	@Autowired
	UamService uamService; 
	
	@Autowired
	MerchantService merchantService;
	
	@Autowired
	PaymentService paymentService;
	
	
	@RequestMapping(value = "/userdepartment",method = RequestMethod.GET)
	public ModelAndView userDepartment(HttpServletRequest request,ModelMap modelmap) {
		System.out.println("In auth userform method");
		ModelAndView model = new ModelAndView();
		try{
			
			List<BranchCode> branchcode = uamService.getBranchCode();
			List<DepartmentDesignation> departcode = uamService.getDDvalue();
			List<DepartmentDesignation> descode = uamService.getDDvalue();
			
			
			modelmap.addAttribute("branchcode", branchcode);
			modelmap.addAttribute("departcode", departcode);
			modelmap.addAttribute("descode", descode);
			
			 model.setViewName("acquirer/userdepartment");
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return model;
		
	}
	
	@RequestMapping(value = "/savepermission",method = RequestMethod.POST)
	public ModelAndView savePermission(HttpServletRequest request) {
		System.out.println("In auth userform method");
		ModelAndView model=null;
		AssignRights ar = null;
		try{
			ar = new AssignRights();
			model = new ModelAndView();
			AuditTrial audit = new AuditTrial();
			   HttpSession sessionObj = request.getSession();
			
			//String depid = request.getParameter("departmentId");
			String depname = request.getParameter("department");
			//String desid = request.getParameter("designationId");
			String des = request.getParameter("designation");
			
			
			
			
			
			
			String eid = request.getParameter("employeeId");
			String usname = request.getParameter("userName");
			String bcode = request.getParameter("branchcode");
			
			String funname[] = request.getParameterValues("hiddenfun");
			String fundes[] = request.getParameterValues("hiddendes");
						
			for(int s=0;s<funname.length;s++){
				
				String read = request.getParameter("hiddenread"+s);
				String write = request.getParameter("hiddenwrite"+s);
				String del = request.getParameter("hiddendel"+s);
				
				
				ar.setDepartmentname(depname);
				
				ar.setDesignation(des);
				ar.setFunctions(funname[s]);
				ar.setFunctionsdes(fundes[s]);
				ar.setRead(read);
				ar.setWrite(write);
				ar.setDel(del);
				ar.setEmpid(eid);
				ar.setUsername(usname);
				ar.setBranchcode(bcode);
				
				int v = uamService.savePermission(ar);
				
			}
			//--insert audit start--
			
			DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			   //get current date time with Date()
			   Date date = new Date();
			   System.out.println("date and time==>"+dateFormat.format(date));
			  		   
			   String adminname = (String) sessionObj.getAttribute("adminname");
			   audit.setUsername(adminname);
			   audit.setDescription("Insert the 'Designation & Department Registration'");
			   audit.setLogdate(dateFormat.format(date));
			   
			   int auditid = merchantService.saveAudit(audit);
			
			//--insert audit end -- 
			
			model.setViewName("acquirer/userdepartmentconfirm");
		}catch(Exception e){
			e.printStackTrace();
		}
		 
		 return model;
		
	}
	
	@RequestMapping(value = "/userform",method = RequestMethod.GET)
	public ModelAndView userForm(HttpServletRequest request,ModelMap modelmap) {
		
		ModelAndView model = new ModelAndView();
		try{
			List<BranchCode> branchcode = uamService.getBranchCode();
			List<DepartmentDesignation> departcode = uamService.getDDvalue();
			List<DepartmentDesignation> descode = uamService.getDDvalue();
			
			
			System.out.println("descode==>"+descode.size());
			
			System.out.println("BranchCode==>"+branchcode.size());
			modelmap.addAttribute("branchcode", branchcode);
			modelmap.addAttribute("departcode", departcode);
			modelmap.addAttribute("descode", descode);
			model.setViewName("acquirer/userregistration");
		}catch(Exception e){
			e.printStackTrace();
		}
		
		 return model;
		
	}
	
	@RequestMapping(value = "/getEmailIdbyEmpId", method = RequestMethod.GET)
	 public @ResponseBody String getEmailIdbyEmpId(HttpServletRequest request,ModelMap modelmap) {
	    
	  System.out.println("In getEmailIdbyEmpId");
		
	  String json=null;
	  String messages = null;
	  List<UserRegistration> userlist = new ArrayList<UserRegistration>();
	  try{
	   
	   String empid = request.getParameter("employeeId");
	   
	   if(empid != null){
	      userlist = uamService.getEmailIdbyEmpId(empid); 
	   }
	   Gson gson = new Gson();
	   
	   System.out.println("userlist===>"+userlist);
	  
	   if(userlist!=null){
	    modelmap.addAttribute("userlist", userlist);
	   }else{
		   modelmap.addAttribute("userlist", "null");
	   }
	   messages = new Gson().toJson(userlist);
	    
	  }catch(Exception e){
	   e.printStackTrace();
	 }
	  
	   return messages;
	 }
	
	@RequestMapping(value = "/saveregistration",method = RequestMethod.POST)
	public ModelAndView saveRegistration(HttpServletRequest request) {
		
		ModelAndView model = null;
		UserRegistration ur = null;
		try{  
			AuditTrial audit = new AuditTrial();
			HttpSession sessionObj = request.getSession();
			
			ur = new UserRegistration();
			model = new ModelAndView();
			String empid = request.getParameter("employeeId");
			String username = request.getParameter("userName");
			String branchcode = request.getParameter("branchcode");
			String des = request.getParameter("designation");
			String depart = request.getParameter("department");
			String dob = request.getParameter("dob");
			String email = request.getParameter("emailId");
			
			String mobile = request.getParameter("mobile");
			String tel = request.getParameter("tel");
			String add = request.getParameter("address");
			String count = request.getParameter("country");
			
			Calendar cal = Calendar.getInstance();
			int year = cal.get(Calendar.YEAR);
			int month = cal.get(Calendar.MONTH);
			int dateval = cal.get(Calendar.DATE);
			
			System.out.println("year=>"+year);
			System.out.println("month=>"+month);
			System.out.println("dateval=>"+dateval);
			
			Date curdate = new Date(dateval+"/"+month+"/"+year);
			
			Date date = new Date(dob);
			
			ur.setEmpid(empid);
			ur.setName(username);
			ur.setBranchcode(branchcode);
			ur.setDesignation(des);
			ur.setDepartment(depart);
			
			ur.setDob(date);
			ur.setEmailid(email);
			ur.setMobile(Long.parseLong(mobile));
			ur.setTel(Long.parseLong(tel));
			ur.setAddress(add); 
			ur.setCountry(count);
			
			ur.setCurrentdate(curdate);
			
			String  randomPwd = generateRandomString();
			String encryptedPwd = encrypt(randomPwd);
			   System.out.println("merchantId==>"+encryptedPwd);
			   
			  ur.setPassword(encryptedPwd);
			//ur.setPassword("password");
			
			int v = uamService.saveRegistration(ur);
			
			sendEmailConfirmation(username,encryptedPwd,request,empid,email);
			
			//--audit start--
			DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			   //get current date time with Date()
			   Date date1 = new Date();
			   System.out.println("date and time==>"+dateFormat.format(date1));
			  		   
			   String adminname = (String) sessionObj.getAttribute("adminname");
			   audit.setUsername(adminname);
			   audit.setDescription("Insert the user '"+username+"'");
			   audit.setLogdate(dateFormat.format(date1));
			   
			   int auditid = merchantService.saveAudit(audit);
			//--audit end--
			
			 model.setViewName("acquirer/userregistrationconfirm");
		}catch(Exception e){
			e.printStackTrace();
		}
		
		 return model;
		
	}
	
	private void sendEmailConfirmation(String username,String password1,
			HttpServletRequest request,String empid,String email) {
    	  
		// TODO Auto-generated method stub
		
    		
  		Date date = new Date();
  		String dateformat = new SimpleDateFormat("MM-dd-YYYY").format(date);
  		
  		StringBuilder tableContent = new StringBuilder();
  		tableContent.append("<html><body>");
  		tableContent.append("<table border='0' style='border:none;'>");
  		tableContent.append("<tr>");
  		tableContent.append("<td >" + "Dear" + " " + username + ", "+ "</td>");
  		tableContent.append("</tr>");
  		tableContent.append("<br>");
  		tableContent.append("<tr>");
  		tableContent.append("<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + "Your SPAY account has been created!" + "</td>");
  		tableContent.append("</tr>");
  		tableContent.append("<br>");

  		tableContent.append("<tr>");
  		tableContent.append("<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + "Your User ID is "+empid+"</td>");
  		tableContent.append("</tr>");
  		tableContent.append("<br>");
  		
  		
  		
  		tableContent.append("<tr>");
  		tableContent.append("<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + "Your Username is "+username+"</td>");
  		tableContent.append("</tr>");
  		tableContent.append("<br>");
  		
  		
  		
  		String decryptedPwd = decrypt(password1);
  		
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
  		sendEmailIds[0] = email;
  		
  		Multipart mp = new MimeMultipart();
  		MimeBodyPart htmlPart = new MimeBodyPart();
  		
  		try {
  			htmlPart.setContent(tableContent.toString(), "text/html");
  			mp.addBodyPart(htmlPart);
  		} catch (MessagingException e) {
  		}
  		
  		
  		try {
  			sendMultipartEmailWithForCase(sendEmailIds, email,mp);
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
			props.put("mail.smtp.host", "smtp.bcel.com.la");
	    	props.put("mail.smtp.port", "25");
	    	props.put("mail.smtp.auth", "true");
	    	props.put("mail.smtp.starttls.enable", "true");
	    	props.put("mail.smtp.starttls.required", "true");

			//Session session = Session.getInstance(props, null);
			
			Session session = Session.getDefaultInstance(props,
					new javax.mail.Authenticator() {
						protected PasswordAuthentication getPasswordAuthentication() {
							return new PasswordAuthentication("spay@bcel.com.la","bcel@123");
						}
					});

			try {
				MimeMessage msg = new MimeMessage(session);
				
				System.out.println("mailOption : "+mailOption.getTo()[0]);
				
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

    	    e.printStackTrace();
       }
    }
    	  
    	  return null;

 }
	
	@RequestMapping(value = "/checkEmpId",method = RequestMethod.GET)
	public @ResponseBody String checkEmpId(HttpServletRequest request,ModelMap modelmap) {
		
		ModelAndView model = null;
		String messages = null;
		String status = null;
		try{
			
			String empid = request.getParameter("empid");
			System.out.println("empid=>"+empid);
			List<UserRegistration> userlist = uamService.checkEmpId(empid);
			 
			if(userlist != null){
				status = "found";
			}else{
				status = "notfound";
			}
			System.out.println("status=>"+status); 
			Gson gson = new Gson();
			modelmap.addAttribute("status", status);
			messages = new Gson().toJson(modelmap);
		
		// model = new ModelAndView("fees/feessettingform");
		}catch(Exception e){
			e.printStackTrace();
		}
		 return messages;
		
	}
	
	
	@RequestMapping(value = "/useraudit",method = RequestMethod.GET)
	public ModelAndView userAudit(HttpServletRequest request,ModelMap modelmap) {
		
		ModelAndView model = new ModelAndView();
		try{
			List<Admin> userlist = uamService.getAdminDetails();
			System.out.println("userlist==>"+userlist.size());
			modelmap.addAttribute("userlist", userlist);
		}catch(Exception e){
			e.printStackTrace();
		}
		 model.setViewName("uam/useraudit");
		 return model;
		
	}
	
	@RequestMapping(value = "/searchuseraudit",method = RequestMethod.GET)
	public ModelAndView searchUserAudit(HttpServletRequest request,ModelMap modelmap) {
		
		ModelAndView model = new ModelAndView();
		try{
			String uname = request.getParameter("uname");
			String fdate = request.getParameter("fdate");
			String tdate = request.getParameter("tdate");
			
			String[] fdateval  = fdate.split("/");
			String fmonth = fdateval[0];
			String fday = fdateval[1];
			
			String fyear = fdateval[2];
			
			String firstdate = fyear+"/"+fmonth+"/"+fday+" 00:00:00";
			
			
			String[] tdateval  = tdate.split("/");
			String tmonth = tdateval[0];
			String tday = tdateval[1];
			
			String tyear = tdateval[2];
			
			String lastdate = tyear+"/"+tmonth+"/"+tday+" 23:59:59";
			
			List<AuditTrial> useraudit = uamService.searchUserAudit(uname,firstdate,lastdate); 
			System.out.println("useraudit==>"+useraudit.size());
			modelmap.addAttribute("useraudit", useraudit);
		}catch(Exception e){
			e.printStackTrace();
		}
		 model.setViewName("uam/viewuseraudit");
		 return model;
		
	}
	
	@RequestMapping(value = "/txnadjustment",method = RequestMethod.GET)
	public ModelAndView TxnAdjustment(HttpServletRequest request,ModelMap modelmap) {
		
		ModelAndView model = new ModelAndView();
		try{
			AuditTrial audit = new AuditTrial();
			HttpSession sessionObj = request.getSession();
			//--audit function start--
			DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			   //get current date time with Date()
			   Date date = new Date();
			   System.out.println("date and time==>"+dateFormat.format(date));
			  		   
			   String adminname = (String) sessionObj.getAttribute("adminname");
			   audit.setUsername(adminname);
			   audit.setDescription("open the transaction adjuestment");
			   audit.setLogdate(dateFormat.format(date));
			   
			   int auditid = merchantService.saveAudit(audit);
			 //--audit function end--
		}catch(Exception e){
			e.printStackTrace();
		}
		 model.setViewName("uam/txnadjustment");
		 return model;
		
	}
	
	@RequestMapping(value = "/searchtranactionadjustment",method = RequestMethod.POST)
	public @ResponseBody ModelAndView searchTranactionAdjustment(HttpServletRequest request,ModelMap modelmap) {
		
		ModelAndView model=null;
		try{
			AuditTrial audit = new AuditTrial();
			   HttpSession sessionObj = request.getSession();
			String[] mount = { "JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC" };
			String merid = request.getParameter("merchantid");
			//String cardtype = request.getParameter("cardtype");
			//String countoftransaction = request.getParameter("countoftransaction");
			String tdate = request.getParameter("tdate");
			String trefno = request.getParameter("trefno");
			String cnumber = request.getParameter("cardnumber");
			
			modelmap.addAttribute("merid", merid);
			modelmap.addAttribute("tdate", tdate);
			modelmap.addAttribute("trefno", trefno);
			modelmap.addAttribute("cnumber", cnumber);
			
			/*System.out.println("countoftransaction===>"+countoftransaction);
			
			if(countoftransaction.equals("0")){ 
				countoftransaction="5";
			}*/
			
			List<TransationMonitoring> tmlist = null;
			System.out.println("tdate1===>"+tdate);
			String state = "yes";
			if(!tdate.equals("")){
				
				state = "tdate";
				
				String dateval[] = tdate.split("/");
				String mounth = dateval[0];
				String date = dateval[1];
				String year = dateval[2];
				
				tdate = date+"-"+mount[Integer.parseInt(mounth)-1]+"-"+year;
				System.out.println("tdate2===>"+tdate);
				tmlist = paymentService.getTransationMonitoringTDate(merid,tdate);
			}
			if(!trefno.equals("")){
				state = "trefno";
				tmlist = paymentService.getTransationMonitoringRefno(merid,trefno);
			}
			if(!cnumber.equals("")){
				state = "cnumber";
				tmlist = paymentService.getTransationMonitoringCardno(merid,cnumber);
			}
			if(!cnumber.equals("")&&!trefno.equals("")&&!cnumber.equals("")){
				state = "all";
				tmlist = paymentService.getTransationMonitoringAll(merid,tdate,trefno,cnumber);
			}
			if(state.equals("yes")){
				if(!merid.equals("")){
					tmlist = paymentService.getTransationMonitoring(merid);
				}
			}
			
			//--audit function start--
			DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			   //get current date time with Date()
			   Date date = new Date();
			   System.out.println("date and time==>"+dateFormat.format(date));
			  		   
			   String adminname = (String) sessionObj.getAttribute("adminname");
			   audit.setUsername(adminname);
			   audit.setDescription("View the transaction adjuestment");
			   audit.setLogdate(dateFormat.format(date));
			   
			   int auditid = merchantService.saveAudit(audit);
			 //--audit function end--
			 
			modelmap.addAttribute("tmlist", tmlist);
			model = new ModelAndView("uam/searchtranactionadjustment");
		}catch(Exception e){
			e.printStackTrace();
		}
		 
		 return model;
		
	}
	
	@RequestMapping(value = "/refundpopup",method = RequestMethod.GET)
	public @ResponseBody ModelAndView refundPopup(HttpServletRequest request,ModelMap modelmap) {
		
		ModelAndView model=null;
		try{
			String tmid = request.getParameter("tid");
			System.out.println("tmid==>"+tmid); 
			List<TransationMonitoring> tmlist = paymentService.getTransationMonitoringValue(tmid);
			
			
			if(tmlist!=null){
				TransationMonitoring tm = tmlist.get(0);
				
				System.out.println(tm.getChargebackauthorizestatus());
				
				String merid = tm.getMerchantid();
				String txncurr = tm.getTxncurrency();
				String setcurr = tm.getSettlecurrency();
				List<Merchant> merlist = merchantService.getMerchantdetails(merid);
				List<CurrencyCode> txnlist = paymentService.getCurrencyName(txncurr);
				List<CurrencyCode> setlist = paymentService.getCurrencyName(setcurr);
				
				modelmap.addAttribute("merlist", merlist);
				modelmap.addAttribute("txnlist", txnlist);
				modelmap.addAttribute("setlist", setlist);
			}
			
			modelmap.addAttribute("tmlist", tmlist);
			model = new ModelAndView("uam/refundpopup");
		}catch(Exception e){
			e.printStackTrace();
		}
		 
		 return model;
		
	}
	
	@RequestMapping(value = "/saveadjustrefund",method = RequestMethod.GET)
	public ModelAndView saveAdjustRefund(HttpServletRequest request,ModelMap modelmap) {
		
		try{
			RefundAdjustment adj = new RefundAdjustment();
			adj.setMerchantid(request.getParameter("hiddenmerid"));
			adj.setTxncode(Integer.parseInt(request.getParameter("hiddentxncode")));
			
			System.out.println("hiddentxndate==>"+request.getParameter("hiddentxndate")); 
			
			Date date = new Date(request.getParameter("hiddentxndate"));
			adj.setTxndate(date);
			adj.setCardnumber(Integer.parseInt(request.getParameter("hiddencardnumber")));
			adj.setTxnrefno(request.getParameter("hiddentxnrefno"));
			adj.setTrackno(Integer.parseInt(request.getParameter("hiddentrackno")));
			adj.setRespcode(Integer.parseInt(request.getParameter("hiddenrespcode")));
			System.out.println("hiddencurrencyname==>"+request.getParameter("hiddencurrencyname")); 
			adj.setTxncurrency(request.getParameter("hiddencurrencyname"));
			adj.setTxnamount(Integer.parseInt(request.getParameter("hiddentxnamount")));
			adj.setTxnfees(Integer.parseInt(request.getParameter("hiddentxnfees")));
			adj.setSettleamount(Integer.parseInt(request.getParameter("hiddensettleamount")));
			adj.setChargebackstatus(request.getParameter("hiddenchargeback")); 
			adj.setRefundamount(Integer.parseInt(request.getParameter("transamount"))); 
			
			adj.setMerchentamounttype(request.getParameter("meramountstatus"));
			int id = paymentService.saveAdjustRefund(adj);
			
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
	@RequestMapping(value = "/callAccpect",method = RequestMethod.GET)
	public ModelAndView callAccpect(HttpServletRequest request,ModelMap modelmap) {
		
		ModelAndView model=null;
		try{
			
			String tid = request.getParameter("tid");
			
			int id = paymentService.callAccpectandReject(tid,'R');
			
			//--view the transaction adjustment list --
			
			AuditTrial audit = new AuditTrial();
			   HttpSession sessionObj = request.getSession();
			String[] mount = { "JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC" };
			String merid = request.getParameter("merchantid");
			
			String tdate = request.getParameter("tdate");
			String trefno = request.getParameter("trefno");
			String cnumber = request.getParameter("cardnumber");
			
			modelmap.addAttribute("merid", merid);
			modelmap.addAttribute("tdate", tdate);
			modelmap.addAttribute("trefno", trefno);
			modelmap.addAttribute("cnumber", cnumber);
			
			
			
			List<TransationMonitoring> tmlist = null;
			System.out.println("tdate1===>"+tdate);
			String state = "yes";
			if(!tdate.equals("")){
				
				state = "tdate";
				
				String dateval[] = tdate.split("/");
				String mounth = dateval[0];
				String date = dateval[1];
				String year = dateval[2];
				
				tdate = date+"-"+mount[Integer.parseInt(mounth)-1]+"-"+year;
				System.out.println("tdate2===>"+tdate);
				tmlist = paymentService.getTransationMonitoringTDate(merid,tdate);
			}
			if(!trefno.equals("")){
				state = "trefno";
				tmlist = paymentService.getTransationMonitoringRefno(merid,trefno);
			}
			if(cnumber != null && !cnumber.equals("")){
				state = "cnumber";
				tmlist = paymentService.getTransationMonitoringCardno(merid,cnumber);
			}
			if(cnumber != null &&!trefno.equals("")&&!cnumber.equals("")){
				state = "all";
				tmlist = paymentService.getTransationMonitoringAll(merid,tdate,trefno,cnumber);
			}
			if(state.equals("yes")){ 
				if(!merid.equals("")){
					tmlist = paymentService.getTransationMonitoring(merid);
				}
			}
			
			//--audit function start--
			DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			   //get current date time with Date()
			   Date date = new Date();
			   System.out.println("date and time==>"+dateFormat.format(date));
			  		   
			   String adminname = (String) sessionObj.getAttribute("adminname");
			   audit.setUsername(adminname);
			   audit.setDescription("Change the account transaction status for reject");
			   audit.setLogdate(dateFormat.format(date));
			   
			   int auditid = merchantService.saveAudit(audit);
			 //--audit function end--
			 
			modelmap.addAttribute("tmlist", tmlist);
			model = new ModelAndView("uam/searchtranactionadjustment");
			
			
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/callReject",method = RequestMethod.GET)
	public ModelAndView callReject(HttpServletRequest request,ModelMap modelmap) {
		
		ModelAndView model=null;
		try{
			
			String tid = request.getParameter("tid");
			
			int id = paymentService.callAccpectandReject(tid,'A');
			
			//--view the transaction adjustment list --
			
			AuditTrial audit = new AuditTrial();
			   HttpSession sessionObj = request.getSession();
			String[] mount = { "JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC" };
			String merid = request.getParameter("merchantid");
			
			String tdate = request.getParameter("tdate");
			String trefno = request.getParameter("trefno");
			String cnumber = request.getParameter("cardnumber");
			
			modelmap.addAttribute("merid", merid);
			modelmap.addAttribute("tdate", tdate);
			modelmap.addAttribute("trefno", trefno);
			modelmap.addAttribute("cnumber", cnumber);
			
			
			
			List<TransationMonitoring> tmlist = null;
			System.out.println("tdate1===>"+tdate);
			String state = "yes";
			if(!tdate.equals("")){
				
				state = "tdate";
				
				String dateval[] = tdate.split("/");
				String mounth = dateval[0];
				String date = dateval[1];
				String year = dateval[2];
				
				tdate = date+"-"+mount[Integer.parseInt(mounth)-1]+"-"+year;
				System.out.println("tdate2===>"+tdate);
				tmlist = paymentService.getTransationMonitoringTDate(merid,tdate);
			}
			if(!trefno.equals("")){
				state = "trefno";
				tmlist = paymentService.getTransationMonitoringRefno(merid,trefno);
			}
			if(cnumber != null && !cnumber.equals("")){
				state = "cnumber";
				tmlist = paymentService.getTransationMonitoringCardno(merid,cnumber);
			}
			if(cnumber != null &&!trefno.equals("")&&!cnumber.equals("")){
				state = "all";
				tmlist = paymentService.getTransationMonitoringAll(merid,tdate,trefno,cnumber);
			}
			if(state.equals("yes")){ 
				if(!merid.equals("")){
					tmlist = paymentService.getTransationMonitoring(merid);
				}
			}
			
			//--audit function start--
			DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			   //get current date time with Date()
			   Date date = new Date();
			   System.out.println("date and time==>"+dateFormat.format(date));
			  		   
			   String adminname = (String) sessionObj.getAttribute("adminname");
			   audit.setUsername(adminname);
			   audit.setDescription("Change the account transaction status for accpect");
			   audit.setLogdate(dateFormat.format(date));
			   
			   int auditid = merchantService.saveAudit(audit);
			 //--audit function end--
			 
			modelmap.addAttribute("tmlist", tmlist);
			model = new ModelAndView("uam/searchtranactionadjustment");
			
			
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/acctadjust",method = RequestMethod.GET)
	public ModelAndView acctAdjust(HttpServletRequest request,ModelMap modelmap) {
		
		ModelAndView model = new ModelAndView();
		try{
			List<CurrencyCode> cclist = paymentService.getCurrencyCode();
			List<Merchant> merlist = merchantService.getMerchantdetails();
			
			modelmap.addAttribute("cclist", cclist);
			modelmap.addAttribute("merlist", merlist);
		}catch(Exception e){
			e.printStackTrace();
		}
		 model.setViewName("uam/acctadjust");
		 return model;
		
	}
	
	@RequestMapping(value = "/insertaccountajustment",method = RequestMethod.GET)
	public ModelAndView saveAccountAdjustment(HttpServletRequest request,ModelMap modelmap) {
		
		ModelAndView model = new ModelAndView();
		try{
			AuditTrial audit = new AuditTrial();
		      HttpSession sessionObj = request.getSession();
			AccountAdjustment aa = new AccountAdjustment();
			aa.setDebitaccount(request.getParameter("hiddendebitacct"));
			aa.setCreditaccount(request.getParameter("hiddencreditacct"));
			aa.setAdjustamount(Integer.parseInt(request.getParameter("hiddenadjustacct")));
			aa.setCurrency(request.getParameter("hiddentcurrency"));
			aa.setReason(request.getParameter("hiddenreason"));
			
			int id = paymentService.saveAccountAdjustment(aa);
			
			//--audit function start--
			DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			   //get current date time with Date()
			   Date date = new Date();
			   System.out.println("date and time==>"+dateFormat.format(date));
			  		   
			   String adminname = (String) sessionObj.getAttribute("adminname");
			   audit.setUsername(adminname);
			   audit.setDescription("Insert the account adjustment");
			   audit.setLogdate(dateFormat.format(date));
			   
			   int auditid = merchantService.saveAudit(audit);
			 //--audit function end--
			
			model.setViewName("uam/acctadjustsuccess");
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return model;
	}
	
	
	@RequestMapping(value = "/sendForgotPwdLink",method = RequestMethod.POST)	
    public ModelAndView sendForgotPwdLink(HttpServletRequest request,Merchant merchant){
		
		
		ModelAndView  model = new ModelAndView();
		
		String password = request.getParameter("password");
		
		String emailId = request.getParameter("EmailId");

		String serverUrl = null;
		if(request.getServerPort()==0){
			serverUrl = request.getScheme() + "://"
					+ request.getServerName() + request.getContextPath();
		}else{
			serverUrl = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ request.getContextPath();
		}
		
		StringBuilder tableContent = new StringBuilder();
		tableContent.append("<html><body>");
		tableContent.append("<table border='0' style='border:none;'>");
		tableContent.append("<tr>");
		tableContent.append("<tr>");
		tableContent.append("<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; " + "Your Password is: "+password+"</a></td>");
		tableContent.append("</tr>");
		tableContent.append("<br>");
	
		tableContent.append("<br>");

		tableContent.append("</table>");

		tableContent.append("</table></body></html>");
		
		
		String[] sendEmailIds = new String[1];
		sendEmailIds[0] = emailId;
		
		Multipart mp = new MimeMultipart();
		MimeBodyPart htmlPart = new MimeBodyPart();
		
		try {
			htmlPart.setContent(tableContent.toString(), "text/html");
			mp.addBodyPart(htmlPart);
		} catch (MessagingException e) {
		}
		
		
		try {
			sendMultipartEmailWithForCase(sendEmailIds, emailId,mp);
		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		model.addObject("mailSent","mailSent");
		model.setViewName("acquirer/userforgetform");
		return model;
		
	}
	
	
	
	
	
	
	
	
}
