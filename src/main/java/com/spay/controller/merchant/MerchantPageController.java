package com.spay.controller.merchant;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
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
import com.spay.model.merchant.BranchCode;
import com.spay.model.merchant.DepartmentDesignation;
import com.spay.model.merchant.Merchant;
import com.spay.model.transaction.CurrencyCode;
import com.spay.model.transaction.FeesSetting;
import com.spay.model.transaction.ProductForm;
import com.spay.model.transaction.TransationMonitoring;
import com.spay.model.uam.AuditTrial;
import com.spay.model.uam.UserRegistration;
import com.spay.service.chargeback.ChargebackService;
import com.spay.service.merchant.MerchantService;
import com.spay.service.merchant.PaymentService;

@Controller
public class MerchantPageController {

	@Autowired
	MerchantService merchantService;
	
	@Autowired
	PaymentService paymentService;
	
	@Autowired
	ChargebackService chargebackService;
	
	@RequestMapping(value = "/mbc")
	public ModelAndView merchantLogin(HttpServletRequest request) 
	{
		
		ModelAndView model = new ModelAndView("/merchant/merchantlogin");
		return model;
	}
	
	@RequestMapping(value = "/merchant/index")
	public ModelAndView merchantpage(HttpServletRequest request) 
	{
		ModelAndView model = null;
		try{
			HttpSession sessionObj = request.getSession();
			String mid = request.getParameter("mid");
			sessionObj.setAttribute("merchantid" , mid);
			model = new ModelAndView("/merchant/index");
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		return model;
	}
	
	
	@RequestMapping(value = "/merchantprofile")
	public ModelAndView merchantProfile(HttpServletRequest request,ModelMap modelmap) 
	{
		ModelAndView model = null;
		try{
			HttpSession sessionObj = request.getSession();
			String meid = sessionObj.getAttribute("merchantid").toString();
			System.out.println("meid==>"+meid);
			
			List<Merchant> merlist = merchantService.getMerchantdetails(meid);
			
			if(merlist.size() != 0){
				for(Merchant mer : merlist){
					
					String productcode = mer.getProductform();
					String feecode = mer.getFeessetting();
					
				
					List<ProductForm> provalue = paymentService.getProductForm(productcode); 
					if(provalue.size() != 0){
						modelmap.addAttribute("provalue", provalue);
					}
					
					List<FeesSetting> feevalue = paymentService.getFeesSettingValue(feecode);
					if(feevalue != null){
						modelmap.addAttribute("feevalue", feevalue);
					}
					
				}
			}
			
			modelmap.addAttribute("merlist", merlist);
			System.out.println("meid size==>"+merlist.size());
			model = new ModelAndView("/merchant/merchantprofile");
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return model;
	}
	
	@RequestMapping(value = "/editmerchant")
	public ModelAndView editMerchant(HttpServletRequest request,ModelMap modelmap) 
	{
		ModelAndView model = null;
		try{
			
			HttpSession sessionObj = request.getSession();
			String meid = sessionObj.getAttribute("merchantid").toString();
			System.out.println("meid==>"+meid);
			
			List<Merchant> merlist = merchantService.getMerchantdetails(meid);
			
			List<ProductForm> provalue = paymentService.getProductForm();
			
			 modelmap.addAttribute("provalue", provalue);
			if(merlist.size() != 0){
				for(Merchant mer : merlist){
					
					String productcode = mer.getProductform();
					List<FeesSetting> feevalue = paymentService.getFeesSetting(productcode);
					if(feevalue != null){
						modelmap.addAttribute("feevalue", feevalue);
					}
				}
			}
			
			modelmap.addAttribute("merlist", merlist);
			System.out.println("meid size==>"+merlist.size());
			model = new ModelAndView("/merchant/merchanteditprofile");
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return model;
	}
	
	@RequestMapping(value = "/updatemerchant")
	public ModelAndView updateMerchant(HttpServletRequest request,ModelMap modelmap) 
	{
		ModelAndView model = null;
		try{
			
			String mid = request.getParameter("hiddenid");
			String merid = request.getParameter("merchantId");
			String mername = request.getParameter("merchantName");
			String dob = request.getParameter("merchantDOB");
			String email = request.getParameter("merchantEmailId");
			String mobile = request.getParameter("merchantMobile");
			String tel = request.getParameter("merchantTel");
			String business = request.getParameter("merchantBusiness");
			String reg = request.getParameter("merchantregion");
			String add = request.getParameter("merchantAddress");
			String con = request.getParameter("merchantCountry");
			String pcode = request.getParameter("procode");
			String feesetting = request.getParameter("feessetting");
			String tfee = request.getParameter("transactionfee");
			
			Merchant mer = new Merchant();
			
			HttpSession sessionObj = request.getSession();
			String meid = sessionObj.getAttribute("merchantid").toString();
			System.out.println("meid==>"+meid);
			
			List<Merchant> merlist = merchantService.getMerchantdetails(meid);
			
			if(merlist.size() != 0){
				for(Merchant mer1 : merlist){
					
					mer.setId(Long.parseLong(mid));
					mer.setMerchantId(merid);
					mer.setEmailId(email);
					mer.setMerchantName(mername);
					mer.setMerchant_ref_no(mer1.getMerchant_ref_no());
					mer.setTelephone(Long.parseLong(tel));
					mer.setRegion(reg);
					mer.setMcccode(mer1.getMcccode());
					mer.setAutogeneratedPassword(mer1.getAutogeneratedPassword());
					mer.setChangedPassword(mer1.getChangedPassword());
					mer.setActive(mer1.getActive());
					Date date = new Date(dob);
					mer.setDOB(date);
					
					mer.setMobile(Long.parseLong(mobile));
					
					mer.setBusiness(business);
					
					mer.setAddress(add);
					mer.setCountry(con);
					mer.setStartdate(mer1.getStartdate());
					mer.setEnddate(mer1.getEnddate());
					mer.setMembershiptype(mer1.getMembershiptype());
					mer.setTransactionfee(Long.parseLong(tfee));
					mer.setProductform(pcode);
					mer.setFeessetting(feesetting);
					
				}
			}
			
			
			
			merchantService.updatemodifydetails(mer);
			
			
			model = new ModelAndView("/merchant/merchanteditconfirm");
		}catch(Exception e){
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/merchantrealtimetxn")
	public ModelAndView merchantRealTimeTxn(HttpServletRequest request) 
	{
		
		ModelAndView model = new ModelAndView("/merchant/merchantrealtimetxn");
		return model;
	}
	
	@RequestMapping(value = "/searchmerchantrt",method = RequestMethod.POST)
	public @ResponseBody ModelAndView searchRealTranaction(HttpServletRequest request,ModelMap modelmap) {
		
		ModelAndView model=null;
		try{
			AuditTrial audit = new AuditTrial();
			   HttpSession sessionObj = request.getSession();
			String[] mount = { "JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC" };
				
			String merid = "656545";
			
			//String merid = sessionObj.getAttribute("merchantid").toString();
			System.out.println("merid==>"+merid);
			
			String cardtype = request.getParameter("cardtype");
			String countoftransaction = request.getParameter("countoftransaction");
			String tdate = request.getParameter("tdate");
			String trefno = request.getParameter("trefno");
			String cnumber = request.getParameter("cardnumber");
			
			System.out.println("countoftransaction===>"+countoftransaction);
			
			if(countoftransaction.equals("0")){ 
				countoftransaction="5";
			}
			
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
				tmlist = paymentService.getTransationMonitoringTDate(merid,cardtype,tdate,countoftransaction);
			}
			if(!trefno.equals("")){
				state = "trefno";
				tmlist = paymentService.getTransationMonitoringRefno(merid,cardtype,trefno,countoftransaction);
			}
			if(!cnumber.equals("")){
				state = "cnumber";
				tmlist = paymentService.getTransationMonitoringCardno(merid,cardtype,cnumber,countoftransaction);
			}
			if(!cnumber.equals("")&&!trefno.equals("")&&!cnumber.equals("")){
				state = "all";
				tmlist = paymentService.getTransationMonitoringAll(merid,cardtype,tdate,trefno,cnumber,countoftransaction);
			}
			if(state.equals("yes")){
				if(!merid.equals("")&&!cardtype.equals("")){
					tmlist = paymentService.getTransationMonitoring(merid,cardtype,countoftransaction);
				}
			}
			
			//--audit function start--
			DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			   //get current date time with Date()
			   Date date = new Date();
			   System.out.println("date and time==>"+dateFormat.format(date));
			  		   
			   String adminname = (String) sessionObj.getAttribute("adminname");
			   audit.setUsername(adminname);
			   audit.setDescription("View the real time transaction monitoring");
			   audit.setLogdate(dateFormat.format(date));
			   
			   int auditid = merchantService.saveAudit(audit);
			 //--audit function end--
			   
			
			modelmap.addAttribute("tmlist", tmlist);
			modelmap.addAttribute("countoftransaction", countoftransaction);
			model = new ModelAndView("merchant/viewrealtranactionmerchant");
		}catch(Exception e){
			e.printStackTrace();
		}
		 
		 return model;
		
	}
	
	@RequestMapping(value = "/merchanttranactionstatement")
	public ModelAndView merchantTranactionStatement(HttpServletRequest request) 
	{
		
		ModelAndView model = new ModelAndView("/merchant/merchanttransactionstatement");
		return model;
	}
	
	@RequestMapping(value = "/merchantchargeback")
	public ModelAndView merchantChargeBack(HttpServletRequest request,ModelMap modelmap) 
	{
		ModelAndView model = null;
		try{
			HttpSession sessionObj = request.getSession();
			String strMerchantId = "656545";
		
			//String merid = sessionObj.getAttribute("merchantid").toString();
			System.out.println("strMerchantId==>"+strMerchantId);

			List<TransationMonitoring> tmlist = chargebackService.getChargebackrasiedDetailsByMerId(strMerchantId);
			modelmap.addAttribute("txnmonitoringList", tmlist);	
			//model.setViewName("chargeback/chargebackview");
			model = new ModelAndView("/merchant/merchantchargebackform");
		}catch(Exception e){
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/merchantdailyreports")
	public ModelAndView dailyReports(HttpServletRequest request) 
	{
		
		ModelAndView model = new ModelAndView("/merchant/merchantdailyreport");
		return model;
	}
	
	@RequestMapping(value = "/merchantmonthlyreports")
	public ModelAndView monthlyReports(HttpServletRequest request,ModelMap modelmap) 
	{
		ModelAndView model = null;
		try{
			
			
			
			 Calendar date = Calendar.getInstance();
			int curr = date.get(Calendar.YEAR);
			int pre  = date.get(Calendar.YEAR)-1;
						
			modelmap.addAttribute("curr", curr);
			modelmap.addAttribute("pre", pre);
			
			System.out.println("corrent year==>"+curr);
			System.out.println("pre year==>"+pre);
			
			model = new ModelAndView("/merchant/merchantmonthreport");
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return model;
	}
	
	@RequestMapping(value = "/getDailyReportMearchent", method = RequestMethod.POST)
	public ModelAndView getMearchentDailyReport(HttpServletRequest request) throws ParseException {
		
		ModelAndView model= new ModelAndView();
		
		AuditTrial audit = new AuditTrial();
		   HttpSession sessionObj = request.getSession();
		
		System.out.println("In getDailyReport");
		
		String strDate = request.getParameter("merchantDOB").replace("/", "-"); 
		
		String strTransactionstatus = request.getParameter("transactionstatus");
		
		
		List<TransationMonitoring> transactionmonitoringList = merchantService.getDailyReport(strDate,strTransactionstatus);

		model.addObject("merchantDOB", strDate);
		model.addObject("reportList", transactionmonitoringList);

		model.setViewName("merchant/viewmerchantdailyreport");
		try{
			
		   
		   DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		   //get current date time with Date()
		   Date date = new Date();
		   System.out.println("date and time==>"+dateFormat.format(date));
		  		   
		   String adminname = (String) sessionObj.getAttribute("adminname");
		   audit.setUsername(adminname);
		   audit.setDescription("Get the Daily report");
		   audit.setLogdate(dateFormat.format(date));
		   
		   int auditid = merchantService.saveAudit(audit);
		   
		  }catch(Exception e){
			  e.printStackTrace();
		  }
	    
		return model;
	}
	
	/*@RequestMapping(value = "/searchinvoice",method = RequestMethod.GET)
	public ModelAndView searchInvoice(HttpServletRequest request) {
		System.out.println("In auth searchinvoice method");
		ModelAndView model = new ModelAndView();
		 model.setViewName("merchantpage/searchinvoice");
		 return model;
	}*/
	
	@RequestMapping(value = "/usagesetting",method = RequestMethod.GET)
	public ModelAndView usageSetting(HttpServletRequest request) {
		System.out.println("In auth usagesetting method");
		ModelAndView model = new ModelAndView();
		List<CurrencyCode> cclist = paymentService.getCurrencyCode();
		 model.setViewName("merchantpage/usagesetting");
		 model.addObject("cclist", cclist);
		 return model;
	}	
	
	@RequestMapping(value = "/createinvoice",method = RequestMethod.GET)
	public ModelAndView createInvoice(HttpServletRequest request) {
		System.out.println("In auth createinvoice method");
		ModelAndView model = new ModelAndView();
		 model.setViewName("merchantpage/createinvoice");
		 return model;
	}
	
	@RequestMapping(value = "/getMonthlyReportMerchant", method = RequestMethod.POST)
	public ModelAndView getMonthlyReport(HttpServletRequest request) throws ParseException {
		
		ModelAndView model= new ModelAndView();
		
		System.out.println("In getDailyReport");
		String month = request.getParameter("merchantmonth");
		String year = request.getParameter("merchantyear");
		
		String strDate = month+" "+year;
		
		System.out.println("strDate==>"+strDate); 
		
		//String strDate = request.getParameter("merchantDOB");
		
		String strTransactionstatus = request.getParameter("transactionstatus");
		
		model.addObject("merchantDOB", strDate);
		List<TransationMonitoring> transactionmonitoringList = merchantService.getMonthlyReport(strDate,strTransactionstatus);
		
		try{
			AuditTrial audit = new AuditTrial();
		   HttpSession sessionObj = request.getSession();
		   
		   DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		   //get current date time with Date()
		   Date date = new Date();
		   System.out.println("date and time==>"+dateFormat.format(date));
		  		   
		   String adminname = (String) sessionObj.getAttribute("adminname");
		   audit.setUsername(adminname);
		   audit.setDescription("Get the monthly report");
		   audit.setLogdate(dateFormat.format(date));
		   
		   int auditid = merchantService.saveAudit(audit);
		   
		  }catch(Exception e){
			  e.printStackTrace();
		  }

	    
		model.addObject("reportList", transactionmonitoringList);
		model.setViewName("merchant/viewmerchantmonthlyreport");
		
	    
		return model;
	}
	
	
	@RequestMapping(value = "/merchantrepresentmentview", method = RequestMethod.GET)
	public ModelAndView viewRepresentment(HttpServletRequest request){
		
		TransationMonitoring  transationMonitoring  = new TransationMonitoring();
		ModelAndView model = new ModelAndView();
		 try{
			   
			   System.out.println("<=viewRepresentment call=>");
			   
			  // HttpSession sessionObj = request.getSession();
			   //String merid = sessionObj.getAttribute("merchantid").toString();
			   String strMerchantID = "656545";
			   if(strMerchantID!= null){
				   transationMonitoring.setMerchantid(strMerchantID);
				}
			   List<TransationMonitoring> txnmonitoringList =  chargebackService.showChargeback(transationMonitoring);
			   
			   System.out.println("txnmonitoringList call==>"+txnmonitoringList.size()); 
			   model.addObject("txnmonitoringList", txnmonitoringList);
			   model.setViewName("merchant/merchantrepresentmentresults");
			   
			   
		   }catch(Exception ex){
			   
			   ex.printStackTrace();
		   }
		   
		   
				
		return model;
		
	}
	
	@RequestMapping(value = "/desdepbranch",method = RequestMethod.GET)
	public ModelAndView desDepBranch(HttpServletRequest request) {
		
		ModelAndView model = new ModelAndView();
		model.setViewName("acquirer/departdesandbranch");
		 return model;
	}
	
	@RequestMapping(value = "/savebranchcode", method = RequestMethod.GET)
	public ModelAndView saveBranchCode(HttpServletRequest request,ModelMap modelmap){
		
		
		ModelAndView model = new ModelAndView();
		 try{
			 BranchCode bc = new BranchCode(); 
			 
			 String bcode = request.getParameter("branchid");
			 String bname = request.getParameter("branchname");
			 bc.setCode(bcode);
			 bc.setBranchname(bname);
			 long s = merchantService.saveBranchCode(bc);
			 String data=null;
			 if(s==0){
				 data = "Branch code not inserted successfully";
			 }else{
				 data = "Branch code inserted successfully";
			 }
			 modelmap.addAttribute("successdata", data);
			  model.setViewName("acquirer/departdesandbranchconfirm");
			   
			   
		   }catch(Exception ex){
			   
			   ex.printStackTrace();
		   }
		   
		   
				
		return model;
		
	}
	
	
	@RequestMapping(value = "/savedepartdes", method = RequestMethod.GET)
	public ModelAndView saveDepartDes(HttpServletRequest request,ModelMap modelmap){
		
		
		ModelAndView model = new ModelAndView();
		 try{
			 DepartmentDesignation dd = new DepartmentDesignation(); 
			
			 String depid = request.getParameter("depid");
			 String depname = request.getParameter("depname");
			 String desid = request.getParameter("desid");
			 String desname = request.getParameter("desname");
			 
			 dd.setDepartmentid(Long.parseLong(depid));
			 dd.setDepartmentname(depname);
			 dd.setDesignationid(Long.parseLong(desid));
			 dd.setDesignationname(desname);
			 
			 long s = merchantService.saveDepartDes(dd);
			 String data=null;
			 if(s==0){
				 data = "Branch code not inserted successfully";
			 }else{
				 data = "Branch code inserted successfully";
			 }
			 modelmap.addAttribute("successdata", data);
			  model.setViewName("acquirer/departdesandbranchconfirm");
			   
			   
		   }catch(Exception ex){
			   
			   ex.printStackTrace();
		   }
		   
		   
				
		return model;
		
	}
	
	
	@RequestMapping(value = "/loadUsername", method = RequestMethod.GET)
	public @ResponseBody String loadUsername(HttpServletRequest request,ModelMap modelmap) {
				
		
		
		String messages = null;
		try{
			
			String empid = request.getParameter("empid");	
			List<UserRegistration> userlist = merchantService.loadUsername(empid);
			//messages = new Gson().toJson(modelmap);
			messages = new Gson().toJson(userlist);
			System.out.println("messages==>"+messages);
				
		}catch(Exception e){
			e.printStackTrace();
		}
		
		 return messages;
	}
	
	
	
	
	
	
}
