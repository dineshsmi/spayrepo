package com.spay.controller.chargeback;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spay.controller.merchant.SearchController;
import com.spay.model.merchant.Merchant;
import com.spay.model.transaction.CurrencyCode;
import com.spay.model.transaction.TransationMonitoring;
import com.spay.service.chargeback.ChargebackService;
import com.spay.service.merchant.MerchantService;
import com.spay.service.merchant.PaymentService;

import org.springframework.ui.ModelMap;


@Controller
public class ChargebackController{
	
	@Autowired
	ChargebackService chargebackService;
	
	@Autowired
	PaymentService paymentService;
	
	
	@Autowired
	MerchantService merchantService;
	
	
	@RequestMapping(value = "/chargeback", method = RequestMethod.POST)
	public ModelAndView showChargeback(HttpServletRequest request){
		
		TransationMonitoring  transationMonitoring  = new TransationMonitoring();
		
		ModelAndView model = new ModelAndView();
		
		Date date = null;
		
		System.out.println("In chargeback form");
		
		String strMerchantID = request.getParameter("merchantID");
		String strTrnDate = request.getParameter("txndate");
		String strCardnum = request.getParameter("cardnum");
		String strTxnRefNo  = request.getParameter("txnref");
		   
		   try{
			   
			   SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
			   
			   if(strTrnDate!=""){
			       date = formatter.parse(strTrnDate);
			   }
			   
			   if(strMerchantID!= null){
				   transationMonitoring.setMerchantid(strMerchantID);
				}
			   
			   if(strTrnDate!= null){
				   transationMonitoring.setTxndate(date);
				}
			   
			   
			   if(strCardnum!= null){
				   transationMonitoring.setTxndate(date);
				}
			   
			   
			   if(strTxnRefNo!= null){
				   transationMonitoring.setTxndate(date);
				}
			   
			   List<TransationMonitoring> txnmonitoringList =  chargebackService.showChargeback(transationMonitoring);
			   
			   
			   System.out.println("txnmonitoring==>"+txnmonitoringList);
			   
			   model.addObject("txnmonitoringList", txnmonitoringList);
			   model.addObject("screenname","chargebackresult");
			   model.setViewName("chargeback/chargebackresults");
			   
			   
		   }catch(Exception ex){
			   
			   ex.printStackTrace();
		   }
		   
		   
				
		return model;
		
	}
	
	
	
	
	@RequestMapping(value = "/chargebackview")
	public String chargebackview(){
		
		System.out.println("In chargebackview");
		
		return "chargeback/chargebackview";
	}
	
	
	
	@RequestMapping(value = "/representmentview", method = RequestMethod.POST)
	public ModelAndView viewRepresentment(HttpServletRequest request){
		
		System.out.println("In viewRepresentment");
		
		TransationMonitoring  transationMonitoring  = new TransationMonitoring();
		
		ModelAndView model = new ModelAndView();
		
		Date date = null;
		
		System.out.println("In chargeback form");
		
		String strMerchantID = request.getParameter("merchantID");
		String strTrnDate = request.getParameter("txndate");
		String strCardnum = request.getParameter("cardnum");
		String strTxnRefNo  = request.getParameter("txnref");
		   
		   try{
			   
			   SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
			   
			   if(strTrnDate!=""){
			       date = formatter.parse(strTrnDate);
			   }
			   
			   if(strMerchantID!= null){
				   transationMonitoring.setMerchantid(strMerchantID);
				}
			   
			   if(strTrnDate!= null){
				   transationMonitoring.setTxndate(date);
				}
			   
			   
			   if(strCardnum!= null){
				   transationMonitoring.setTxndate(date);
				}
			   
			   
			   if(strTxnRefNo!= null){
				   transationMonitoring.setTxndate(date);
				}
			   
			   List<TransationMonitoring> txnmonitoringList =  chargebackService.showChargeback(transationMonitoring);
			   
			   
			   System.out.println("txnmonitoring==>"+txnmonitoringList);
			   
			   model.addObject("txnmonitoringList", txnmonitoringList);
			  
			   model.setViewName("chargeback/representmentresults");
			   
			   
		   }catch(Exception ex){
			   
			   ex.printStackTrace();
		   }
		   
		   
				
		return model;
		
	}
	
	
	
	@RequestMapping(value = "/updateChargebackstatus", method = RequestMethod.POST)
	public ModelAndView updateChargebackstatus(HttpServletRequest request,ModelMap modelmap){
		
		ModelAndView model = new ModelAndView();
		
		System.out.println("In updateChargebackstatus");
		
		
		String strStatus = request.getParameter("radiobtn");//radiobtn
		
		String strMerchantId = request.getParameter("merchantId");
		
		System.out.println("=====strStatus=====>"+strStatus);
		
		if(strStatus.equals("accept")){
			
			strStatus = "A";
		}
		
		if(strStatus.equals("reject")){
			
			strStatus = "R";
		}
		
		boolean isupdated = chargebackService.updateChargebackstatus(strStatus,strMerchantId);
	   
		List<TransationMonitoring> tmlist = paymentService.getTransationMonitoringValue(strMerchantId);
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
		
		model.addObject("isupdated", isupdated);
		modelmap.addAttribute("tmlist", tmlist);	
		model.setViewName("chargeback/chargebackresultpopup");
		
		return model;
	}
	
	
	
	@RequestMapping(value = "/getChargebackrasiedbyMerId", method = RequestMethod.GET)
    public ModelAndView getChargebackrasiedbyMerId(HttpServletRequest request,ModelMap modelmap){
		
		System.out.println("In getChargebackrasiedbyMerId");
		
		ModelAndView model = new ModelAndView();
		
		System.out.println("In updateChargebackstatus");
		
		String strMerchantId = request.getParameter("merchantID");
		
		List<TransationMonitoring> tmlist = chargebackService.getChargebackrasiedDetailsByMerId(strMerchantId);
		modelmap.addAttribute("txnmonitoringList", tmlist);	
		model.setViewName("chargeback/chargebackview");
		
		return model;
	}
	
	
	@SuppressWarnings("unused")
	@RequestMapping(value = "/chargebackstaging", method = RequestMethod.POST)
	public ModelAndView showChargebackStaging(HttpServletRequest request,ModelMap modelmap){
		
		ModelAndView  model = new ModelAndView();
		
		System.out.println("In showChargebackStaging");
		
		String strPKId = null;
		String strMerchantId = null;
		String strTxndateandtime = null;
		String strCardno = null;
		String strTxnRefno = null;
		String strTrackNo = null;
		String strRespcode = null;
		String strTxnamount = null;
		String strTxnfee = null;
		String strSettleamount = null;
		String strTrnCcy = null;
		String strStlCcy = null;
		String strChbkreason = null;
		
		String strChbkType = null;
		String strChbkAmount = null;
		
		String strSessionPKId = null;
		
		
		
		List<TransationMonitoring> tmlist = new ArrayList<TransationMonitoring>();
		
		boolean isupdated = false;
		
		try{
			 
			          strPKId = request.getParameter("trnPkid");
			    strMerchantId = request.getParameter("merchantId");
			strTxndateandtime = request.getParameter("txndateandtime");
			        strCardno = request.getParameter("cardnumber");
			      strTxnRefno = request.getParameter("txnrefno");
			       strTrackNo = request.getParameter("trackno");
			      strRespcode = request.getParameter("respcode");
			     strTxnamount = request.getParameter("txnamount");
			        strTxnfee = request.getParameter("txnfees");
			  strSettleamount = request.getParameter("settleamount");    
			        strTrnCcy = request.getParameter("trncurrencyname");    
			        strStlCcy = request.getParameter("settlecurrencyname");
			    strChbkreason = request.getParameter("chargebackreason");
			    
			      strChbkType = request.getParameter("chargebacktype");
			    strChbkAmount = request.getParameter("strChbkAmount");
			    
			    if(strChbkType!=null){
			    	
			    	request.setAttribute("strChbkType", strChbkType);
			    	
			    }
			    
			    
			    if(strChbkAmount!=null){
			    	
			    	request.setAttribute("strChbkAmount", strChbkAmount);
			    }
			    
			    
			    
			    
			    if(strChbkreason!=null){
			    	
			    	 request.setAttribute("strChbkreason", strChbkreason);
			    }
			    
			    
			    request.getSession().setAttribute("strPKIdAttr", strPKId);
			    
			    
			    if(!strPKId.equals("null")){
			    	 
			    	System.out.println(" In if strPKId==>"+strPKId);
			    	isupdated = chargebackService.updateIsChargebackRaised(strPKId);
				    tmlist = paymentService.getTransationMonitoringValue(strPKId);
				    
				    
			    	
			    }else{
			    	
			    	
			    	
			    	strSessionPKId = request.getParameter("strPKIdAttr");
			    	
			    	System.out.println("In else==>"+strSessionPKId);
			    	
			    	request.getSession().setAttribute("strPKIdAttr", strSessionPKId);
			    	
			    	 isupdated = chargebackService.updateIsChargebackRaised(strSessionPKId);
			    	 
					 tmlist = paymentService.getTransationMonitoringValue(strSessionPKId);
			    }
			    
			    
			  
			    
			    
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
				
				model.addObject("isupdated", isupdated);
				modelmap.addAttribute("tmlist", tmlist);
				modelmap.addAttribute("strPKIdAttr", request.getSession().getAttribute("strPKIdAttr"));
				modelmap.addAttribute("strChbkreason", request.getAttribute("strChbkreason"));
				modelmap.addAttribute("strChbkView","chargebackstaging");
				modelmap.addAttribute("strChbkType",request.getAttribute("strChbkType"));
				modelmap.addAttribute("strChbkAmount",request.getAttribute("strChbkAmount"));
				model.setViewName("chargeback/chargebackresultpopup");
				
				return model;
			    
			
		}catch(Exception ex){
			
			ex.printStackTrace();
		}
		
		
		
		
		return model;
		
		
	}
	
	
	

	@RequestMapping(value = "/representmentviewpopup",method = RequestMethod.GET)
	public @ResponseBody ModelAndView representmentviewpopup(HttpServletRequest request,ModelMap modelmap) {
		
		  ModelAndView model=null;
		  boolean isupdated = false;
		  
		  try{
			
			String tmid = request.getParameter("tid");
			
			String strChbkView = "representmentview";
			
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
	

}
