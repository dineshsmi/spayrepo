package com.spay.controller.transaction;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.spay.model.merchant.Merchant;
import com.spay.model.transaction.PaymentSetup;
import com.spay.model.uam.AuditTrial;
import com.spay.service.merchant.MerchantService;
import com.spay.service.merchant.PaymentService;

@Controller
@RequestMapping("/")
public class TransactionController {

	@Autowired
	PaymentService paymentService;
	
	@Autowired
	MerchantService merchantService;
	/**
	 * @return
	 */
	@RequestMapping(value = "/payment")
	public ModelAndView paymentPage(HttpServletRequest request) {
		
		//--this is old--
		//ModelAndView model = new ModelAndView("treatement/payment");
		
		//--this is new--
		ModelAndView model = new ModelAndView("treatement/paymentdetails");
		
		return model;
	}
	
	@RequestMapping(value = "/addpayment1")
	public ModelAndView addPayment(ModelMap modelmap,HttpServletRequest request) {
		ModelAndView model = null;
		PaymentSetup payment = null;
		try{
			//refer this url for calculate date
			//http://www.quartz-scheduler.org/documentation/quartz-1.x/tutorials/crontrigger
			payment = new PaymentSetup();
			
			String datepic = request.getParameter("datepicker");
			
			//---- corn start -------
			/*String dateval[] = datepic.split("/");
			String mounth = dateval[0];
			String date = dateval[1];
			String year = dateval[2];
			
			System.out.println("mounth==>"+mounth);
			System.out.println("date==>"+date);
			System.out.println("year==>"+year);*/
			
			
			//0 11 11 11 11 ? Fire every November 11th at 11:11am.
			//every 5 sec : 0/5 * * * * ?
			
		/*	0 0 6 6 9 ? 2010
			| | | | | |   |
			| | | | | |   +- 2010 only.
			| | | | | +----- any day of the week.
			| | | | +------- 9th month (September).
			| | | +--------- 6th day of the month.
			| | +----------- 6th hour of the day.
			| +------------- Top of the hour (minutes = 0).
			+--------------- Top of the minute (seconds = 0).*/
			
			 
			
			//String cal = "0 0 11 6 9 ? 2016";  
				
			/*String cal = "0 59 11 "+date+" "+mounth+" ? "+year;
			System.out.println("cal==>"+cal);
			
			
			JobDetail job = JobBuilder.newJob(MyTask.class).withIdentity("MyTask").build();
			Trigger trigger = TriggerBuilder.newTrigger()
	        		 .withSchedule(CronScheduleBuilder.cronSchedule(cal))
	        		 .build();
			//schedule the job
	         SchedulerFactory schFactory = new StdSchedulerFactory();
	         Scheduler sch = schFactory.getScheduler();
	         sch.start();
	         sch.scheduleJob(job, trigger);*/
			
			//---- corn end -------
			
			AuditTrial audit = new AuditTrial();
			   HttpSession sessionObj = request.getSession();
			   
			String comboval[] = request.getParameterValues("multiselectsec");
			   
			 
			
			DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			   //get current date time with Date()
			   Date date = new Date();
			   System.out.println("ddd==>"+dateFormat.format(date));
			   
			   String d = dateFormat.format(date);
			   
			   Date dat = new Date(d);
			
			if(comboval != null){
				for(int i=0;i<comboval.length;i++){
					
					System.out.println("combo1 len===>"+comboval[i]);
					payment.setMerchantId("1");
					payment.setPaymentcondent(comboval[i]);
					payment.setModifieddate(dat);
					payment.setStatus("A");
					payment.setEffectivedate(datepic);
					
					int s = paymentService.savePayment(payment); 
				}
			}
			
			DateFormat dateFormat1 = new SimpleDateFormat("dd/MM/yyyy");
			Date date1 = new Date();
			
			String datevalue = null;
			if(datepic==null || datepic.equals("")){
				datevalue = dateFormat1.format(date1);
			}else{
				datevalue = datepic;
			} 
			
			String cval = "Payment screen design updated successfully with latest changes. It will effectively activate dated on "+datevalue+"";
			
			modelmap.addAttribute("cval",cval);
			  
			//-- insert audit start--
			DateFormat dateFormataudit = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			Date dateaudit = new Date();
			String adminname = (String) sessionObj.getAttribute("adminname");
			audit.setUsername(adminname);
			audit.setDescription("Payment screen design updated successfully with latest changes.");
			audit.setLogdate(dateFormataudit.format(dateaudit));
			int auditid = merchantService.saveAudit(audit);
			   
			 //-- insert audit end --
			
			model = new ModelAndView("treatement/addpayment");
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return model;
	}
	
	@RequestMapping(value = "/addpayment")
	public ModelAndView addPaymentDetails(ModelMap modelmap,HttpServletRequest request) {
		ModelAndView model = null;
		PaymentSetup payment = null;
		try{
			AuditTrial audit = new AuditTrial();
			   HttpSession sessionObj = request.getSession();
			payment = new PaymentSetup();
			String datepic = request.getParameter("datepicker");
			DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			//get current date time with Date()
			Date date = new Date();
			System.out.println("ddd==>"+dateFormat.format(date));
			   
			String d = dateFormat.format(date);
			   
			Date dat = new Date(d);
			//--to insert the billing information--
			
			String billval[] = request.getParameterValues("hiddenbillname");
			String billinformation = request.getParameter("hiddenbilling");
			
			for(int s=0;s<billval.length;s++){
				
				String displaybill = request.getParameter("hiddenread"+s);
				String editbill = request.getParameter("hiddenwrite"+s);
				String reqbill = request.getParameter("hiddendel"+s);
								
				payment.setMerchantId("1");
				payment.setPaymentcondent(billval[s]);
				payment.setModifieddate(dat);
				payment.setStatus("A");
				payment.setEffectivedate(datepic);
				payment.setInformation(billinformation);
				payment.setDisplay(displaybill);
				payment.setEdit(editbill);
				payment.setRequire(reqbill);
				
				int v= paymentService.savePayment(payment); 
				
			}
			
			//--to insert the shiping information
			
			String shipval[] = request.getParameterValues("hiddenshippingfun");
			String shipinformation = request.getParameter("hiddenshipping");
			for(int s=0;s<shipval.length;s++){
				String displayshipbill = request.getParameter("hiddenreadship"+s);
				String editshipbill = request.getParameter("hiddenwriteship"+s);
				String reqshipbill = request.getParameter("hiddendelship"+s);
				
				payment.setMerchantId("1");
				payment.setPaymentcondent(shipval[s]);
				payment.setModifieddate(dat);
				payment.setStatus("A");
				payment.setEffectivedate(datepic);
				payment.setInformation(shipinformation);
				payment.setDisplay(displayshipbill);
				payment.setEdit(editshipbill);
				payment.setRequire(reqshipbill);
				
				int v= paymentService.savePayment(payment);
			}
			
			   
			//--to insert the payment information--   
			String payval[] = request.getParameterValues("hiddenpayfun");
			String payinformation = request.getParameter("hiddenpayinformation");
			
			System.out.println("hiddenpayfun length==>"+payval.length);
			//System.out.println("hiddenpayinformation length==>"+payinformation.length);
			
			for(int s=0;s<payval.length;s++){
				
				String display = request.getParameter("hiddenpayread"+s);
				String edit = request.getParameter("hiddenpaywrite"+s);
				String req = request.getParameter("hiddenpaydel"+s);
								
				payment.setMerchantId("1");
				payment.setPaymentcondent(payval[s]);
				payment.setModifieddate(dat);
				payment.setStatus("A");
				payment.setEffectivedate(datepic);
				payment.setInformation(payinformation);
				payment.setDisplay(display);
				payment.setEdit(edit);
				payment.setRequire(req);
				
				int v= paymentService.savePayment(payment); 
				
			}
			
			DateFormat dateFormat1 = new SimpleDateFormat("dd/MM/yyyy");
			Date date1 = new Date();
			
			String datevalue = null;
			if(datepic==null || datepic.equals("")){
				datevalue = dateFormat1.format(date1);
			}else{
				datevalue = datepic;
			} 
			
			String cval = "Payment screen design updated successfully with latest changes. It will effectively activate dated on "+datevalue+"";
			
			modelmap.addAttribute("cval",cval);
			  
			//-- insert audit start--
			DateFormat dateFormataudit = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			Date dateaudit = new Date();
			String adminname = (String) sessionObj.getAttribute("adminname");
			audit.setUsername(adminname);
			audit.setDescription("Payment screen design updated successfully with latest changes.");
			audit.setLogdate(dateFormataudit.format(dateaudit));
			int auditid = merchantService.saveAudit(audit);
			   
			 //-- insert audit end --
			
			model = new ModelAndView("treatement/addpayment");
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return model;
	}
	
	@RequestMapping(value = "/cal")
	public ModelAndView calenter(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("treatement/cal");
				
		return model;
	}
	
	@RequestMapping(value = "/searchmerchant")
	public ModelAndView searchMerchant(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("treatement/searchmerchant");
		
		return model;
	}
	
	@RequestMapping(value = "/loadserchmerchant",method = RequestMethod.GET)
	public ModelAndView loadSerchMerchant(ModelMap modelmap,HttpServletRequest request) {
		ModelAndView model = null;
		try{
			String id = request.getParameter("merchantId").trim();
			String name = request.getParameter("merchantName").trim();
			String email = request.getParameter("merchantEmailId").trim();
			
			System.out.println("loadserchmerchant id==>"+id); 
			System.out.println("loadserchmerchant name==>"+name); 
			System.out.println("loadserchmerchant email==>"+email); 
			
			modelmap.addAttribute("merchantId",id);
			modelmap.addAttribute("merchantName",name);
			modelmap.addAttribute("merchantEmailId",email);
			
			
			
			String details = null;
			String detailsvalue = null;
			
			List<Merchant> merchantlist = null;
			if(id != null && id !=""){
				//int merid = Integer.parseInt(id);
				merchantlist = paymentService.getMerchantDateByID(id);
				details = "merid";
				detailsvalue = id;
			}
			if(name != null && name !=""){
				merchantlist = paymentService.getMerchantDateByName(name);
				details = "name";
				detailsvalue = name;
			}
			if(email != null && email!=""){
				merchantlist = paymentService.getMerchantDateByEmail(email);
				details = "email";
				detailsvalue = email;
			}
			System.out.println("merchantlist==>"+merchantlist); 
			
			modelmap.addAttribute("merchantlist",merchantlist);
			modelmap.addAttribute("detailsvalue",detailsvalue);
			modelmap.addAttribute("details",details);
			
			
			model = new ModelAndView("treatement/loadserchmerchant",modelmap);
		}catch(Exception e){
			e.printStackTrace();
		}
		return model;
	}
	
	
	@RequestMapping(value = "/deactiveMerchant" ,method = RequestMethod.GET)
	public @ResponseBody String deactiveMerchant(ModelMap modelmap,HttpServletRequest request) {
		ModelAndView model = null;
		String messages = null;
		try{
			AuditTrial audit = new AuditTrial();
			   HttpSession sessionObj = request.getSession();
			List<Merchant> merchantlist = null;
			
			Merchant mer = new Merchant();
			long mid = Long.parseLong(request.getParameter("merid"));
			
			String details = request.getParameter("screendetails");
			String secdetails = request.getParameter("secdetails");
			String sdate = request.getParameter("sdate");
			String edate = request.getParameter("edate");
			
			System.out.println("sdate==>"+sdate);
			System.out.println("edate==>"+edate);
			
			int succid = paymentService.deactiveMerchant(mid,sdate,edate);
			
			
			
			System.out.println("succid==>"+succid);
			
			Gson gson = new Gson();
			modelmap.addAttribute("succid", succid);
			messages = new Gson().toJson(modelmap);
			
			
			//--audit fun started--
			DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			   //get current date time with Date()
			   Date date = new Date();
			   System.out.println("date and time==>"+dateFormat.format(date));
			  		   
			   String adminname = (String) sessionObj.getAttribute("adminname");
			   audit.setUsername(adminname);
			   audit.setDescription("In-active the merchent");
			   audit.setLogdate(dateFormat.format(date));
			   
			   int auditid = merchantService.saveAudit(audit);
			//--audit fun end--
			
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		return messages;
	}
	
	@RequestMapping(value = "/activeMerchant")
	public ModelAndView activeMerchant(ModelMap modelmap,HttpServletRequest request) {
		ModelAndView model = null;
		try{
			List<Merchant> merchantlist = null;
			AuditTrial audit = new AuditTrial();
			   HttpSession sessionObj = request.getSession();
			Merchant mer = new Merchant();
			long mid = Long.parseLong(request.getParameter("merid"));
			
			int succid = paymentService.activeMerchant(mid);
			
			//--audit fun started--
			DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			   //get current date time with Date()
			   Date date = new Date();
			   System.out.println("date and time==>"+dateFormat.format(date));
			  		   
			   String adminname = (String) sessionObj.getAttribute("adminname");
			   audit.setUsername(adminname);
			   audit.setDescription("Active the merchent");
			   audit.setLogdate(dateFormat.format(date));
			   
			   int auditid = merchantService.saveAudit(audit);
			//--audit fun end--
			
			String detailsvalue = null;
			String details = request.getParameter("screendetails");
			String secdetails = request.getParameter("secdetails");
			if(details.equals("merid")){
				
				merchantlist = paymentService.getMerchantDateByval(mid);
			}
			if(details.equals("name")){
				merchantlist = paymentService.getMerchantDateByName(secdetails);
				details = "name";
				
			}
			if(details.equals("email")){
				merchantlist = paymentService.getMerchantDateByEmail(secdetails);
				details = "email";
				
			}
			detailsvalue = secdetails;
			
			modelmap.addAttribute("merchantlist",merchantlist);
			modelmap.addAttribute("detailsvalue",detailsvalue);
			modelmap.addAttribute("details",details);
			
			String merid = request.getParameter("merchantId");
			String mername = request.getParameter("merchantName");
			String mail = request.getParameter("merchantEmailId");
			
			System.out.println("merid==>"+merid);
			System.out.println("mername==>"+mername);
			System.out.println("mail==>"+mail);
			
			modelmap.addAttribute("merchantId",merid);
			modelmap.addAttribute("merchantName",mername);
			modelmap.addAttribute("merchantEmailId",mail);
			
			
			model = new ModelAndView("treatement/loadserchmerchant",modelmap);
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return model;
	}
	
	
	@RequestMapping(value = "/deleteMerchant")
	public ModelAndView deleteMerchant(ModelMap modelmap,HttpServletRequest request) {
		ModelAndView model = null;
		try{
			
			AuditTrial audit = new AuditTrial();
			   HttpSession sessionObj = request.getSession();
			
			List<Merchant> merchantlist = null;
			
			Merchant mer = new Merchant();
			long mid = Long.parseLong(request.getParameter("merid"));
			
			int succid = paymentService.deleteMerchant(mid);
			
			String detailsvalue = null;
			String details = request.getParameter("screendetails");
			String secdetails = request.getParameter("secdetails");
			if(details.equals("merid")){
				merchantlist = paymentService.getMerchantDateByID(request.getParameter("merid"));
			}
			if(details.equals("name")){
				merchantlist = paymentService.getMerchantDateByName(secdetails);
				details = "name";
				
			}
			if(details.equals("email")){
				merchantlist = paymentService.getMerchantDateByEmail(secdetails);
				details = "email";
				
			}
			detailsvalue = secdetails;
			
			modelmap.addAttribute("merchantlist",merchantlist);
			modelmap.addAttribute("detailsvalue",detailsvalue);
			modelmap.addAttribute("details",details);
			
			//--audit fun started--
			DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			   //get current date time with Date()
			   Date date = new Date();
			   System.out.println("date and time==>"+dateFormat.format(date));
			  		   
			   String adminname = (String) sessionObj.getAttribute("adminname");
			   audit.setUsername(adminname);
			   audit.setDescription("Delete the merchent");
			   audit.setLogdate(dateFormat.format(date));
			   
			   int auditid = merchantService.saveAudit(audit);
			//--audit fun edn--
			
			
			model = new ModelAndView("treatement/loadserchmerchant",modelmap);
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/openpopupdate")
	public ModelAndView openPopupDate(ModelMap modelmap,HttpServletRequest request) {
		ModelAndView model = null;
		try{
			String merid = request.getParameter("merid");
			String details = request.getParameter("screendetails");
			String secdetails = request.getParameter("secdetails");
			
			String id = request.getParameter("merchantId");
			String name = request.getParameter("merchantName");
			String email = request.getParameter("merchantEmailId");
			
			System.out.println("merchantId id==>"+id);
			System.out.println("merchantName name==>"+name);
			System.out.println("merchantEmailId email==>"+email);
			
			modelmap.addAttribute("merid",merid);
			modelmap.addAttribute("details",details);
			modelmap.addAttribute("secdetails",secdetails);
			
			modelmap.addAttribute("merchantId",id);
			modelmap.addAttribute("merchantName",name);
			modelmap.addAttribute("merchantEmailId",email);
			
			model = new ModelAndView("treatement/openpopupdate",modelmap);
		}catch(Exception e){
			e.printStackTrace();
		}
		return model;
		
	}
	
	@RequestMapping(value = "/crontest")
	public ModelAndView crontest(ModelMap modelmap,HttpServletRequest request) {
		ModelAndView model = null;
		try{
			
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
		
	}
	
	
	
	
	
}
