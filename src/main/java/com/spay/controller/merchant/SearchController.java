package com.spay.controller.merchant;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.spay.model.merchant.Merchant;
import com.spay.model.transaction.CurrencyCode;
import com.spay.model.transaction.FeesSetting;
import com.spay.model.transaction.ProductForm;
import com.spay.model.transaction.TransationMonitoring;
import com.spay.service.chargeback.ChargebackService;
import com.spay.model.uam.AuditTrial;
import com.spay.service.merchant.MerchantService;
import com.spay.service.merchant.PaymentService;

@Controller
@RequestMapping("/")
public class SearchController {

	@Autowired
	PaymentService paymentService;
	
	@Autowired
	MerchantService merchantService;
	
	@Autowired
	ChargebackService chargebackService;
	
	@RequestMapping(value = "/realtimetxn",method = RequestMethod.GET)
	public @ResponseBody ModelAndView realTimeTxn(HttpServletRequest request) {
		
		ModelAndView model = null;
		 model = new ModelAndView("acquirer/Realtimetxn");
		 return model;
		
	}
	
	@RequestMapping(value = "/realtimetxninsert",method = RequestMethod.GET)
	public @ResponseBody ModelAndView realTimeTxnInsert(HttpServletRequest request,ModelMap modelmap) {
		
		ModelAndView model=null;
		try{
			List<CurrencyCode> cclist = paymentService.getCurrencyCode();
			List<Merchant> merlist = merchantService.getMerchantdetails();
			
			
			
			System.out.println("cclist size==>"+cclist.size());
			System.out.println("merlist size==>"+merlist.size());
			
			modelmap.addAttribute("cclist", cclist);
			modelmap.addAttribute("merlist", merlist);
			model = new ModelAndView("acquirer/realtimetxninsert");
		}catch(Exception e){
			e.printStackTrace();
		}
		 
		 return model;
		
	}
	
	
	@RequestMapping(value = "/saverealtime",method = RequestMethod.POST)
	public @ResponseBody ModelAndView saveRealTime(HttpServletRequest request,ModelMap modelmap) {
		
		ModelAndView model=null;
		try{
			AuditTrial audit = new AuditTrial();
			   HttpSession sessionObj = request.getSession();
			   
			TransationMonitoring tm = new TransationMonitoring();
			String mername = request.getParameter("mername");
			String cardtype = request.getParameter("cardtype");
			//String tdate = request.getParameter("tdate");
			String trefno = request.getParameter("trefno");
			String cardnumber = request.getParameter("cardnumber");
			String tcode = request.getParameter("tcode");
			String tnumber = request.getParameter("tnumber");
			String tcurrency = request.getParameter("tcurrency");
			String tamount = request.getParameter("tamount");
			String tfees = request.getParameter("tfees");
			String settleamount = request.getParameter("settleamount");
			String settlecurrency = request.getParameter("settlecurrency");
			String rcode = request.getParameter("rcode");
			
			
			/*DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
			Date date1 = new Date();
			System.out.println("date==>"+dateFormat.format(date1)); //2014/08/06 15:59:48
			
			Date date2 = new Date(dateFormat.format(date1));
			System.out.println("date2==>"+date2);*/
			
			//-----------------------
			java.util.Date date = new java.util.Date();
		      long t = date.getTime();
		      java.sql.Date sqlDate = new java.sql.Date(t);
		      java.sql.Time sqlTime = new java.sql.Time(t);
		      java.sql.Timestamp sqlTimestamp = new java.sql.Timestamp(t);
		      System.out.println("sqlDate=" + sqlDate);
		      System.out.println("sqlTime=" + sqlTime);
			//-----------------------
			
			tm.setMerchantid(mername);
			tm.setCardtype(cardtype);
			tm.setTxndate(sqlDate);
			tm.setTxnrefno(trefno);
			tm.setCardnumber(Integer.parseInt(cardnumber));
			tm.setTxncode(Integer.parseInt(tcode));
			tm.setTxncurrency(tcurrency);
			tm.setTxnamount(Integer.parseInt(tamount));
			tm.setTxnfees(Integer.parseInt(tfees));
			tm.setSettleamount(Integer.parseInt(settleamount));
			tm.setSettlecurrency(settlecurrency);
			tm.setTrackno(Integer.parseInt(tnumber));
			tm.setRescode(11);
			tm.setRespcode(Integer.parseInt(rcode)); 
			
			int id = paymentService.saveRealTime(tm);
			
			
			//--audit function start--
			DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			   //get current date time with Date()
			   Date date1 = new Date();
			   System.out.println("date and time==>"+dateFormat.format(date1));
			  		   
			   String adminname = (String) sessionObj.getAttribute("adminname");
			   audit.setUsername(adminname);
			   audit.setDescription("Insert the real time transaction monitoring");
			   audit.setLogdate(dateFormat.format(date1));
			   
			   int auditid = merchantService.saveAudit(audit);
			 //--audit function end--
			
			
			model = new ModelAndView("acquirer/realtimetxnshow");
		}catch(Exception e){
			e.printStackTrace();
		}
		 
		 return model;
		
	}
	
	@RequestMapping(value = "/searchrealtranaction",method = RequestMethod.POST)
	public @ResponseBody ModelAndView searchRealTranaction(HttpServletRequest request,ModelMap modelmap) {
		
		ModelAndView model=null;
		try{
			AuditTrial audit = new AuditTrial();
			   HttpSession sessionObj = request.getSession();
			String[] mount = { "JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC" };
			String merid = request.getParameter("merchantid");
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
			   
			/*if(tmlist != null){
				TransationMonitoring t = tmlist.get(0);
				System.out.println("mmmm==>"+t.getMerchantid()); 
			}*/
			modelmap.addAttribute("tmlist", tmlist);
			modelmap.addAttribute("countoftransaction", countoftransaction);
			model = new ModelAndView("acquirer/viewrealtranaction");
		}catch(Exception e){
			e.printStackTrace();
		}
		 
		 return model;
		
	}
	
	@RequestMapping(value = "/realtranactionpopup",method = RequestMethod.GET)
	public @ResponseBody ModelAndView realTranactionPopup(HttpServletRequest request,ModelMap modelmap) {
		
		ModelAndView model=null;
		try{
			String tmid = request.getParameter("tid");
			System.out.println("tmid==>"+tmid); 
			List<TransationMonitoring> tmlist = paymentService.getTransationMonitoringValue(tmid);
			if(tmlist!=null){
				TransationMonitoring tm = tmlist.get(0);
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
			model = new ModelAndView("acquirer/realtranactionpopup");
		}catch(Exception e){
			e.printStackTrace();
		}
		 
		 return model;
		
	}
	
	
	@RequestMapping(value = "/chargebackresultpopup",method = RequestMethod.GET)
	public @ResponseBody ModelAndView chargebackresultpopup(HttpServletRequest request,ModelMap modelmap) {
		
		ModelAndView model=null;
		 boolean isupdated = false;
		try{
			String tmid = request.getParameter("tid");
			
			String strChbkAuth = request.getParameter("strChbkView");
			
			String strAuthstatus = request.getParameter("authorizestatus");
			
			String strRepresentmentView = null;
			
			
		
			List<TransationMonitoring> tmlist = paymentService.getTransationMonitoringValue(tmid);
			if(tmlist!=null){
				TransationMonitoring tm = tmlist.get(0);
				String merid = tm.getMerchantid();
				String txncurr = tm.getTxncurrency();
				String setcurr = tm.getSettlecurrency();
				
				List<Merchant> merlist = merchantService.getMerchantdetails(merid);
				List<CurrencyCode> txnlist = paymentService.getCurrencyName(txncurr);
				List<CurrencyCode> setlist = paymentService.getCurrencyName(setcurr);
				
				modelmap.addAttribute("merlist", merlist);
				modelmap.addAttribute("txnlist", txnlist);
				modelmap.addAttribute("setlist", setlist);
				
				
				
				String strStatus = request.getParameter("radiobtn");//radiobtn
				
				System.out.println("strStatus==>"+strStatus);
				
			  if(strStatus!=null){
				  
				   if(strStatus.equals("accept")){
					
					   strStatus = "A";
					   
					   modelmap.addAttribute("strStatus", strStatus);
				   }
				
				   if(strStatus.equals("reject")){
					
					  strStatus = "R";
					  
					  modelmap.addAttribute("strStatus", strStatus);
				    }
				
				   isupdated = chargebackService.updateChargebackstatus(strStatus,tmid);
			   }	
			}
			
			modelmap.addAttribute("chargebackupdatedstatus", isupdated);
			modelmap.addAttribute("tmlist", tmlist);
			if(strChbkAuth!=null){
				modelmap.addAttribute("strChbkView", "chargebackresult");
			}
			else{
				System.out.println("strAuthstatus==>"+strAuthstatus);
				
				strRepresentmentView =  request.getParameter("strChbkViewRep");
				
				if(strRepresentmentView.equalsIgnoreCase("representmentview")){
						modelmap.addAttribute("strChbkView", "representmentview");
				}else{
				   modelmap.addAttribute("strChbkView", "chargebackauthorize");
				}
				
			}
			
		    model = new ModelAndView("chargeback/chargebackresultpopup");
		}catch(Exception e){
			e.printStackTrace();
		}
		 
		 return model;
		
	}
	
	
	
	
	@RequestMapping(value = "/transactionstatementpopup",method = RequestMethod.GET)
	public @ResponseBody ModelAndView transactionstatementpopup(HttpServletRequest request,ModelMap modelmap) {
		
		ModelAndView model=null;
		 boolean isupdated = false;
		try{
			String tmid = request.getParameter("tid");
		
			List<TransationMonitoring> tmlist = paymentService.getTransationMonitoringValue(tmid);
			if(tmlist!=null){
				TransationMonitoring tm = tmlist.get(0);
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
			
			modelmap.addAttribute("chargebackupdatedstatus", isupdated);
			modelmap.addAttribute("tmlist", tmlist);
			model = new ModelAndView("acquirer/transactionstatementpopup");
		}catch(Exception e){
			e.printStackTrace();
		}
		 
		 return model;
		
	}
	
	
	
	@RequestMapping(value = "/chargebackViewpopup",method = RequestMethod.GET)
	public @ResponseBody ModelAndView chargebackViewpopup(HttpServletRequest request,ModelMap modelmap) {
		
		ModelAndView model=null;
		 boolean isupdated = false;
		try{
			String tmid = request.getParameter("tid");
			
			String strChbkView = "chargebackview";
			
			System.out.println("strChbkView==>"+strChbkView);
			
			List<TransationMonitoring> tmlist = paymentService.getTransationMonitoringValue(tmid);
			if(tmlist!=null){
				TransationMonitoring tm = tmlist.get(0);
				String merid = tm.getMerchantid();
				String txncurr = tm.getTxncurrency();
				String setcurr = tm.getSettlecurrency();
				
				List<Merchant> merlist = merchantService.getMerchantdetails(merid);
				List<CurrencyCode> txnlist = paymentService.getCurrencyName(txncurr);
				List<CurrencyCode> setlist = paymentService.getCurrencyName(setcurr);
				
				modelmap.addAttribute("merlist", merlist);
				modelmap.addAttribute("txnlist", txnlist);
				modelmap.addAttribute("setlist", setlist);
				
				
				
				String strStatus = request.getParameter("radiobtn");//radiobtn
				
				System.out.println("strStatus==>"+strStatus);
				
			  if(strStatus!=null){
				  
				   if(strStatus.equals("accept")){
					
					   strStatus = "A";
					   
					   modelmap.addAttribute("strStatus", strStatus);
				   }
				
				   if(strStatus.equals("reject")){
					
					  strStatus = "R";
					  
					  modelmap.addAttribute("strStatus", strStatus);
				    }
				
				   isupdated = chargebackService.updateChargebackstatus(strStatus,tmid);
			   }	
			}
			
			modelmap.addAttribute("chargebackupdatedstatus", isupdated);
			modelmap.addAttribute("tmlist", tmlist);
			modelmap.addAttribute("strChbkView", strChbkView);
			model = new ModelAndView("chargeback/chargebackresultpopup");
		}catch(Exception e){
			e.printStackTrace();
		}
		 
		 return model;
		
	}
	
	@RequestMapping(value = "/productfrom",method = RequestMethod.GET)
	public @ResponseBody ModelAndView productFrom(HttpServletRequest request) {
		
		ModelAndView model = null;
		 model = new ModelAndView("product/productform");
		 return model;
		
	}
	
	@RequestMapping(value = "/saveproductform",method = RequestMethod.POST)
	public @ResponseBody ModelAndView saveProductForm(HttpServletRequest request) {
		
		ModelAndView model = null;
		ProductForm productform = null;
		try{
			
			AuditTrial audit = new AuditTrial();
			HttpSession sessionObj = request.getSession();
			
			productform = new ProductForm();
			String pcode = request.getParameter("productcode");
			String pcat = request.getParameter("procategory");
			String pdes = request.getParameter("prodes");
			String expper = request.getParameter("expperiod");
			
			if(!pcode.equals("")){
				productform.setProductcode(pcode);
			}else{
				productform.setProductcode("null");
			}
			if(!pcat.equals("")){
				productform.setProcategory(pcat);
			}else{
				productform.setProcategory("null");
			}
			if(!pdes.equals("")){
				productform.setProductdesc(pdes);
			}else{
				productform.setProductdesc("null");
			}
			if(!expper.equals("")){
				
				productform.setExpiryperiod(Integer.parseInt(expper));
			}else{
				productform.setExpiryperiod(0);
			}
			
			int s = paymentService.saveProductForm(productform);
			
			//--insert audit start --
			DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			   //get current date time with Date()
			   Date date = new Date();
			   System.out.println("date and time==>"+dateFormat.format(date));
			  		   
			   String adminname = (String) sessionObj.getAttribute("adminname");
			   audit.setUsername(adminname);
			   audit.setDescription("Insert the 'Product Form'");
			   audit.setLogdate(dateFormat.format(date));
			   
			   int auditid = merchantService.saveAudit(audit);
			//--insert audit end --
			
			 model = new ModelAndView("product/productconfirm");
		}catch(Exception e){
			e.printStackTrace();
		}
		
		 return model;
		
	}
	
	
	@RequestMapping(value = "/modifyproduct",method = RequestMethod.GET)
	public @ResponseBody ModelAndView modifyProduct(HttpServletRequest request) {
		
		ModelAndView model = null;
		 model = new ModelAndView("product/modifyproduct");
		 return model;
		
	}
	
	@RequestMapping(value = "/modifyproductview",method = RequestMethod.POST)
	public @ResponseBody ModelAndView modifyProductView(HttpServletRequest request,ModelMap modelmap) {
		
		ModelAndView model = null;
		try{
			String pcode = request.getParameter("productcode");
			List<ProductForm> provalue = paymentService.getProductForm(pcode);
			System.out.println("provalue==>"+provalue.size()); 
			modelmap.addAttribute("provalue", provalue);
			model = new ModelAndView("product/modifyproductview");
		}catch(Exception e){
			e.printStackTrace();
		}
		
		 return model;
		
	}
	
	
	@RequestMapping(value = "/editmodified",method = RequestMethod.POST)
	public @ResponseBody ModelAndView editmodified(HttpServletRequest request) {
		
		ModelAndView model = null;
		ProductForm productform = null;
		try{
			AuditTrial audit = new AuditTrial();
			   HttpSession sessionObj = request.getSession();
			productform = new ProductForm();
			String proid = request.getParameter("hiddenproid");
			String pcode = request.getParameter("productcode");
			String pcat = request.getParameter("procategory");
			String pdes = request.getParameter("prodes");
			String expper = request.getParameter("expperiod");
			productform.setId(Integer.parseInt(proid)); 
			if(!pcode.equals("")){
				productform.setProductcode(pcode);
			}else{
				productform.setProductcode("null");
			}
			if(!pcat.equals("")){
				productform.setProcategory(pcat);
			}else{
				productform.setProcategory("null");
			}
			if(!pdes.equals("")){
				productform.setProductdesc(pdes);
			}else{
				productform.setProductdesc("null");
			}
			if(!expper.equals("")){
				
				productform.setExpiryperiod(Integer.parseInt(expper));
			}else{
				productform.setExpiryperiod(0);
			}
			
			int s = paymentService.updateProductForm(productform);
			
			//--audit function start--
			DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			   //get current date time with Date()
			   Date date1 = new Date();
			   System.out.println("date and time==>"+dateFormat.format(date1));
			  		   
			   String adminname = (String) sessionObj.getAttribute("adminname");
			   audit.setUsername(adminname);
			   audit.setDescription("Update the product");
			   audit.setLogdate(dateFormat.format(date1));
			   
			   int auditid = merchantService.saveAudit(audit);
			 //--audit function end--
			
			 model = new ModelAndView("product/productupdateconfirm");
		}catch(Exception e){
			e.printStackTrace();
		}
		
		 return model;
		
	}
	
	@RequestMapping(value = "/feessetting",method = RequestMethod.GET)
	public @ResponseBody ModelAndView feesSetting(HttpServletRequest request,ModelMap modelmap) {
		
		ModelAndView model = null;
		
		List<CurrencyCode> cclist = paymentService.getCurrencyCode();
		List<ProductForm> provalue = paymentService.getProductForm();
		modelmap.addAttribute("cclist", cclist);
		modelmap.addAttribute("provalue", provalue);
		 model = new ModelAndView("fees/feessettingform");
		 return model;
		
	}
	
	@RequestMapping(value = "/savefeessetting",method = RequestMethod.POST)
	public @ResponseBody ModelAndView saveFeesSetting(HttpServletRequest request) {
		
		ModelAndView model = null;
		FeesSetting fees = null;
		try{
			AuditTrial audit = new AuditTrial();
			HttpSession sessionObj = request.getSession();
			   
			fees = new FeesSetting();
			/*String fcode = request.getParameter("feecode");
			String ftype = request.getParameter("feetype");
			String curr = request.getParameter("tcurrency");
			String procode = request.getParameter("procode");
			String cardtype = request.getParameter("cardtype");
			String effdate = request.getParameter("effdate");*/
			
			/*cell1.innerHTML = fcode+"<input type='hidden' name='fcode' value='"+fcode+"'>";
		    cell2.innerHTML = typename+"<input type='hidden' name='typename' value='"+typename+"'>";
		    cell3.innerHTML = tvalue+"<input type='hidden' name='typevalue' value='"+tvalue+"'>";
		    cell4.innerHTML = cur+"<input type='hidden' name='cur' value='"+cur+"'>";
		    cell5.innerHTML = ctype+"<input type='hidden' name='ctype' value='"+ctype+"'>";*/
			
			String fcode[] = request.getParameterValues("fcode");
			String typename[] = request.getParameterValues("typename");
			String typevalue[] = request.getParameterValues("typevalue");
			String cur[] = request.getParameterValues("cur");
			String procode[] = request.getParameterValues("pcode");
			String ctype[] = request.getParameterValues("ctype");
			String efdate[] = request.getParameterValues("efdate");
			
			System.out.println("fcode len==>"+fcode.length); 
			
			
			for(int s = 0;s<fcode.length;s++){
				Date date = new Date(efdate[s]);
								
				fees.setFeecode(fcode[s]);
				fees.setFeetype(typename[s]);
				fees.setFeevalue(Integer.parseInt(typevalue[s]));
				fees.setCurrency(cur[s]);
				fees.setProductcode(procode[s]);
				fees.setCardtype(ctype[s]);
				fees.setEffectivedate(date);
				int v = paymentService.saveFeesSetting(fees);
			}
			
			//-- insert the audit start--
			DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			   //get current date time with Date()
			   Date date = new Date();
			   System.out.println("date and time==>"+dateFormat.format(date));
			  		   
			   String adminname = (String) sessionObj.getAttribute("adminname");
			   audit.setUsername(adminname);
			   audit.setDescription("Insert the 'Fee Settings Form'");
			   audit.setLogdate(dateFormat.format(date));
			   
			   int auditid = merchantService.saveAudit(audit);
			//-- insert the audit end --
			
			/*Date date = new Date(effdate);
			
			fees.setFeecode(fcode);
			fees.setFeetype(ftype);
			fees.setCurrency(curr);
			fees.setProductcode(procode);
			fees.setCardtype(cardtype);
			fees.setEffectivedate(date);
			setFeevalue*/
			
			//int s = paymentService.saveFeesSetting(fees);
			 model = new ModelAndView("fees/feesconfirm");
		}catch(Exception e){
			e.printStackTrace();
		}
		
		 return model;
		
	}
	
	@RequestMapping(value = "/loadFeesSetting",method = RequestMethod.GET)
	public @ResponseBody String loadFeesSetting(HttpServletRequest request,ModelMap modelmap) {
		
		ModelAndView model = null;
		String messages = null;
		try{
			String pcode = request.getParameter("procode");
			List<FeesSetting> provalue = paymentService.getFeesSetting(pcode);
			System.out.println("provalue==>"+provalue);  
			Gson gson = new Gson();
			modelmap.addAttribute("provalue", provalue);
			messages = new Gson().toJson(modelmap);
		
		// model = new ModelAndView("fees/feessettingform");
		}catch(Exception e){
			e.printStackTrace();
		}
		 return messages;
		
	}
	
	@RequestMapping(value = "/checkTCode",method = RequestMethod.GET)
	public @ResponseBody String checkTCode(HttpServletRequest request,ModelMap modelmap) {
		
		ModelAndView model = null;
		String messages = null;
		String status = null;
		try{
			String tcode = request.getParameter("tcode");
			System.out.println("tcode=>"+tcode);
			List<TransationMonitoring> tcodevalue = paymentService.getcheckTCode(tcode);
			 
			if(tcodevalue != null){
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
	
	@RequestMapping(value = "/checkTraceNumber",method = RequestMethod.GET)
	public @ResponseBody String checkTraceNumber(HttpServletRequest request,ModelMap modelmap) {
		
		ModelAndView model = null;
		String messages = null;
		String status = null;
		try{
			
			String trnum = request.getParameter("trnum");
			System.out.println("trnum=>"+trnum);
			List<TransationMonitoring> tcodevalue = paymentService.checkTraceNumber(trnum);
			 
			if(tcodevalue != null){
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
	
	
}
