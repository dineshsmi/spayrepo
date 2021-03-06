package com.spay.controller.merchant;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.text.Format;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JRExporterParameter;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.export.JRCsvExporter;
import net.sf.jasperreports.engine.export.ooxml.JRXlsxExporter;
import net.sf.jasperreports.engine.util.JRLoader;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

import com.google.gson.Gson;
import com.spay.model.merchant.Merchant;
import com.spay.model.transaction.CurrencyCode;
import com.spay.model.transaction.TransationMonitoring;
import com.spay.model.uam.AuditTrial;
import com.spay.model.uam.UserRegistration;
import com.spay.service.merchant.MerchantService;
import com.spay.service.merchant.PaymentService;

@Controller
public class MerchantController {
	
	
	private static Random random = new Random((new Date()).getTime());

	@Autowired
	PaymentService paymentService;
	
	@Autowired
	MerchantService merchantService;
	
	@Autowired 
	private ApplicationContext appContext;
	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "/merchant/resetpassword")
	public ModelAndView resetPasswordPage(HttpServletRequest request) {
		System.out.println("In auth cren method");
		
		ModelAndView model = new ModelAndView();
		String merchantId = request.getParameter("merchantId");
		
		List<Merchant> merlist = merchantService.getMerchantdetails(merchantId);
		
		if(merlist != null){
			for(Merchant mer : merlist){
				String name = mer.getMerchantName();
				String autopass = mer.getAutogeneratedPassword();
				String deval = decrypt(autopass);
				System.out.println("name==>"+name);
				System.out.println("autopass==>"+autopass);
				System.out.println("deval==>"+deval);
				
				model.addObject("deval", deval);
			}
		}
		
		System.out.println("merchantId==>"+merchantId);
		
		model.addObject("merchantId", merchantId);
		
		model.setViewName("/merchant/resetpassword");
		
		return model;
	}
	
	public static String decrypt(String encstr) {

		String val = null;
	    if (encstr.length() > 12) {
             String cipher = encstr.substring(12);
             BASE64Decoder decoder = new BASE64Decoder();

    	try {
            //return new String(decoder.decodeBuffer(cipher));
    		val = new String(decoder.decodeBuffer(cipher));
    		System.out.println("val=>"+val);
        } catch (IOException e) {

    	    e.printStackTrace();
       }
    }
    	  
    	  return val;

 }
	
	
	@RequestMapping(value = "/merchant/resetpasswordverified",method = RequestMethod.GET)
	public ModelAndView resetpasswordverified(HttpServletRequest request) {
		System.out.println("In resetpasswordverified");
		
		ModelAndView model = new ModelAndView();
		
		String merchantId = request.getParameter("merchantId");
		
		System.out.println("In merchantId==>"+merchantId);
		
		Merchant merchant = merchantService.getMerchantByMerchantId(merchantId);
		
		
		String merchantPKId = Long.toString(merchant.getId());
		
		System.out.println("merchantPKId==>"+merchantPKId);
		
		
		model.addObject("merchantPKId", merchantPKId);
		model.addObject("merchantId", merchantId);
		model.addObject("autoPwd", merchant.getAutogeneratedPassword());
		model.addObject("changedPwd", merchant.getChangedPassword());
		
		model.setViewName("/merchant/resetpasswordverified");
		
		return model;
	}
	
	
	
	
	
		
@RequestMapping(value = "/merchantLoginPage/{merchantPKId}/{merchantId}/{autopwd}/{changedPwd}", method = RequestMethod.GET)
public ModelAndView merchantLoginPage(HttpServletRequest request,@PathVariable("merchantPKId") Integer id,
		         @PathVariable("merchantId") String merchantid,@PathVariable("autopwd") String autopwd,@PathVariable("changedPwd") String changedPwd) {
		
	      System.out.println("In merchantLoginPage==>");
	
		   ModelAndView model = new ModelAndView();
	        
		   model.addObject("merchantPKId", id);
		   model.addObject("merchantId", merchantid);
		   model.addObject("merchantAutogeneratedPassword", autopwd);
		   model.addObject("merchantChangedPassword", changedPwd);
		   
		   model.setViewName("merchant/merchantlogin");
		   //model.setViewName("merchant/login");
		
		   //return "merchant/login";
		   
		   return model;
	}


@RequestMapping(value = "/getDailyReport", method = RequestMethod.POST)
public ModelAndView getDailyReport(HttpServletRequest request) throws ParseException {
	
	ModelAndView model= new ModelAndView();
	
	AuditTrial audit = new AuditTrial();
	   HttpSession sessionObj = request.getSession();
	
	System.out.println("In getDailyReport");
	
	String strDate = request.getParameter("merchantDOB").replace("/", "-"); 
	
	String strTransactionstatus = request.getParameter("transactionstatus");
	
	
	List<TransationMonitoring> transactionmonitoringList = merchantService.getDailyReport(strDate,strTransactionstatus);

    
	model.addObject("reportList", transactionmonitoringList);
	model.addObject("merchantDOB", strDate);

	model.setViewName("reports/viewdailyreport");
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


@RequestMapping(value = "/getMonthlyReport", method = RequestMethod.POST)
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
	
	
	

	model.setViewName("reports/viewmonthlyreport");
	
    
	return model;
}



@RequestMapping(value = "/generateReport/{exportType}/{reporttype}/{merchantDOB}", method = RequestMethod.GET)
public ModelAndView generatedPdfReport(HttpServletRequest request, HttpServletResponse response,
		@PathVariable("exportType") String exportType,@PathVariable("reporttype") String reporttype,@PathVariable("merchantDOB") String strDate) 
throws ParseException, IOException {
	
	System.out.println("zgdfgfdg"+exportType);
	

	
	ModelAndView modelAndView = new ModelAndView();
	
   // String strDate = request.getParameter("merchantDOB");
    
    String strReporttype = request.getParameter("reporttype");
   
	
	String strTransactionstatus = request.getParameter("transactionstatus");
	
	strTransactionstatus = "1";
	
	System.out.println("strTransactionstatus===>"+strTransactionstatus);
	
	Map<String,Object> parameterMap = new HashMap<String,Object>();
	
	List<TransationMonitoring> transactionmonitoringList = null;
	
	if(reporttype.equalsIgnoreCase("dailyreport")){
		
	  transactionmonitoringList = merchantService.getDailyReport(strDate,strTransactionstatus);
	 
	}
	
	if(reporttype.equalsIgnoreCase("monthlyreport")){
		
		//strDate = "January";
		
		transactionmonitoringList = merchantService.getMonthlyReport(strDate, strTransactionstatus);
	}
	
	
	
	 String printFileName = null;
	 
	 InputStream reportStream = null;
	 
	 JasperReport report = null;
	 
	 JasperPrint print = null;
	 
	 String saveDirectory=null;
	   
	 String mimeType = null;
	   
	 OutputStream outPutStream = null;
	 
	
	 
	 JRDataSource datasource = new JRBeanCollectionDataSource(transactionmonitoringList, true);
	 
	 System.out.println("request.getServletContext()"+request.getServletContext().getRealPath("WEB-INF/reportjrxml/dailytransactionsreport.jrxml"));
	 
	 try {
		 //report = JasperCompileManager.compileReport(reportStream);
		 
		 JasperCompileManager.compileReportToFile(request.getServletContext().getRealPath("WEB-INF/reportjrxml/dailytransactionsreport.jrxml"), request.getServletContext().getRealPath("WEB-INF/reportjrxml/dailytransactionsreport.jasper"));
	} catch (JRException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	 
	 try {
		 printFileName = JasperFillManager.fillReportToFile(request.getServletContext().getRealPath("WEB-INF/reportjrxml/dailytransactionsreport.jasper"), parameterMap, datasource);
	} catch (JRException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	 
	
	  try {
		report = JasperCompileManager.compileReport(request.getServletContext().getRealPath("WEB-INF/reportjrxml/dailytransactionsreport.jrxml"));
	} catch (JRException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	}
	 
	 
	  try {
		print = JasperFillManager.fillReport(report, parameterMap);
	} catch (JRException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	}
	 
	  JasperPrint jprint = null;
	  
	  try {
		jprint = (JasperPrint) JasperFillManager.fillReport(request.getServletContext().getRealPath("WEB-INF/reportjrxml/dailytransactionsreport.jasper"), parameterMap);
	} catch (JRException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	}
	 
	   try {
		 if(exportType.equals("PDF")){  
		    JasperExportManager.exportReportToPdfFile(printFileName, request.getServletContext().getRealPath("WEB-INF/reportjrxml/sample_report.pdf"));
		    mimeType = "application/pdf";
		 }
		 
		 if(exportType.equals("XLS")){  
			    //JasperExportManager.exportReportToPdfFile(printFileName, request.getServletContext().getRealPath("WEB-INF/reportjrxml/sample_report.pdf"));
			 JRXlsxExporter exporter = new JRXlsxExporter();
			 
			 exporter.setParameter(JRExporterParameter.INPUT_FILE_NAME,
	                  printFileName);
	         exporter.setParameter(JRExporterParameter.OUTPUT_FILE_NAME,
	        		 request.getServletContext().getRealPath("WEB-INF/reportjrxml/sample_report.xls"));
	         
	         exporter.exportReport();
			 
	         mimeType = "application/vnd.ms-excel";
		}
		 
		 if(exportType.equals("CSV")){
			 
		   JRCsvExporter exporter = new JRCsvExporter();
		 
		   File sourceFile = new File(request.getServletContext().getRealPath("WEB-INF/reportjrxml/dailytransactionsreport.jrprint"));
		   
		    System.out.println("print===>"+print);
		    
		    JasperPrint jasperPrint = (JasperPrint)JRLoader.loadObject(sourceFile);
		    
			exporter.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint);
			exporter.setParameter(JRExporterParameter.OUTPUT_FILE_NAME, request.getServletContext().getRealPath("WEB-INF/reportjrxml/sample_report.csv"));

			exporter.exportReport();
			
			 mimeType = "text/csv";
			
			
		 } 
		
	   } catch (JRException e) {
		// TODO Auto-generated catch block
		  e.printStackTrace();
	  }
	   
	
	   if(exportType.equals("PDF")){  
	     saveDirectory = request.getServletContext().getRealPath("WEB-INF/reportjrxml/sample_report.pdf");
	   }
	   
	   
	   if(exportType.equals("XLS")){  
		     saveDirectory = request.getServletContext().getRealPath("WEB-INF/reportjrxml/sample_report.xls");
	   }
	   
	   if(exportType.equals("CSV")){  
		     saveDirectory = request.getServletContext().getRealPath("WEB-INF/reportjrxml/sample_report.csv");
	   }
	  
	   try {
		   outPutStream = response.getOutputStream();
	   } catch (IOException e) {
		  // TODO Auto-generated catch block
		  e.printStackTrace();
	   }
	   
	   
	   response.setHeader("Content-Disposition", "attachment; filename=\""+ "sample_report"+ "\"");
	   
	   response.setContentType(mimeType);
	   response.setCharacterEncoding("UTF-8");
	   
	   File file = new File(saveDirectory);
	   
	   if (file.exists()) {
		     FileInputStream fin = new FileInputStream(saveDirectory);

		     BufferedInputStream bin = new BufferedInputStream(fin);
		     BufferedOutputStream bout = new BufferedOutputStream(
		       outPutStream);
		     int ch = 0;
		     while ((ch = bin.read()) != -1) {
		      bout.write(ch);
		     }
		     bin.close();
		     fin.close();
		     bout.close();
		     outPutStream.close();
		     
		     response.getOutputStream().flush();
		     response.getOutputStream().close();
		    }
	
	
	
	modelAndView.setViewName("reports/dailyreport");
	
     return modelAndView;
	
	
}


   @RequestMapping(value = "/showTxnStatement",method = RequestMethod.POST)
   public ModelAndView showTxnStatement(HttpServletRequest request) throws ParseException {
	   
    System.out.println("showTxnStatement");   
	
	ModelAndView model= new ModelAndView();
	
	System.out.println("In showTxnStatement");
	
	String strmerchantId = request.getParameter("merchantId");
	
	
	List<TransationMonitoring> transactionmonitoringList = merchantService.showTxnStatement(strmerchantId);

    
	model.addObject("reportList", transactionmonitoringList);

	model.setViewName("acquirer/viewtransactionstatement");
	
    
	
	return model;
  }

   
   
   @RequestMapping(value = "/txnStatement")
   public String txnStatement(HttpServletRequest request) throws ParseException {
	
	 return "acquirer/Txnstmt";
  }

   
   @RequestMapping(value = "/backtodailyreport")
   public String backToDailyreport(HttpServletRequest request) throws ParseException {
	
	 return "reports/dailyreport";
  }
   
   @RequestMapping(value = "/backtomonthlyreport")
   public String backToMonthlyreport(HttpServletRequest request) throws ParseException {
	
	 return "reports/monthlyreport";
  }
   
   
   
   
   
   @RequestMapping(value = "/showUserModification",method = RequestMethod.POST)
   public ModelAndView showUserModification(HttpServletRequest request) throws ParseException {
	   
	   ModelAndView model= new ModelAndView();
	   
	   List<UserRegistration> userRegList = new ArrayList<UserRegistration>();
	   
	   
	   String strEmployeeId = request.getParameter("employeeId");
	   
	   String strUserName = request.getParameter("userName");
	   
	   String strEmailId = request.getParameter("EmailId");
	   
	   if(strEmployeeId!=null){
	      userRegList = merchantService.showUserModification(strEmployeeId,strUserName,strEmailId);
	   } 
	   if(userRegList != null){
	   
		model.addObject("empPKId", userRegList.get(0).getId());   
		model.addObject("employeeId", userRegList.get(0).getEmpid());
		model.addObject("userName", userRegList.get(0).getName());
		model.addObject("emailId", userRegList.get(0).getEmailid());
		model.addObject("telephone", userRegList.get(0).getTel());
		model.addObject("mobile", userRegList.get(0).getMobile());
		model.addObject("department",userRegList.get(0).getDepartment());
		model.addObject("country", userRegList.get(0).getCountry());
		model.addObject("dob", userRegList.get(0).getDob());
		model.addObject("branchcode", userRegList.get(0).getBranchcode());
		model.addObject("address", userRegList.get(0).getAddress());
		model.addObject("designation", userRegList.get(0).getDesignation());
	   }

		model.setViewName("acquirer/usermodifyconfirm");
	
	    return model;
  }

   
   
   @RequestMapping(value = "/updateUserDetails",method = RequestMethod.POST)
   public ModelAndView updateUserDetails(HttpServletRequest request) throws ParseException {
	   
	   ModelAndView  model = new ModelAndView();
	   
	   
	   String strPkId = request.getParameter("empPKId");
	   String strEmpId = request.getParameter("employeeId");
	   String strUsername = request.getParameter("userName");
	   String strBranchcode = request.getParameter("branchcode");
	   String strEmailId = request.getParameter("emailId");
	   String strDesignation = request.getParameter("designation");
	   String strTel = request.getParameter("tel");
	   String strMobile = request.getParameter("mobile");
	   String strDept = request.getParameter("department");
	   String strDOB = request.getParameter("dob");
	   String strAddress = request.getParameter("address");
	   String strCountry = request.getParameter("country");
	    
	   boolean isUpdated = false;
	   
	   String dateOnly = null;
	   
	   String sfmtedDat = null;
	   
	   String strMonthinAplphabet = null;
	   
	   String strFinalDate = null;
	   
	   String strYearFull = null;
	   
	   String strMonthFull = null;
	   
	   String strDateFull = null;
	   
	   String dd = null;
	   
	   if(strDOB!=null){
		   
		   String[] strDtSaplit = strDOB.split(" ");
		   
		   dateOnly = strDtSaplit[0];
		   
		   System.out.println("dateOnly===>"+dateOnly);
		   
		   String[] strDate = dateOnly.split("-");
		   
		   strYearFull = strDate[0].substring(2,4);
		   
		   System.out.println("strYearFull===>"+strYearFull);
		   
		   strMonthFull = strDate[1];
		   
		   System.out.println("strMonthFull===>"+strMonthFull);
	   
		   strDateFull = strDate[2];
		   
		   System.out.println("strDateFull===>"+strDateFull);
	    }
	   
	   
	   
	   if(strMonthFull.equals("01")){
	    	
	    	strMonthinAplphabet = "JAN";
	    	
	    }
	    
       if(strMonthFull.equals("02")){
	    	
	    	strMonthinAplphabet = "FEB";
	    	
	    }
       
      if(strMonthFull.equals("03")){
	    	
	    	strMonthinAplphabet = "MAR";
	    	
	    }
      
      if(strMonthFull.equals("04")){
	    	
	    	strMonthinAplphabet = "APR";
	    	
	    }
      
      if(strMonthFull.equals("05")){
	    	
	    	strMonthinAplphabet = "MAY";
	    	
	    }
      
      if(strMonthFull.equals("06")){
	    	
	    	strMonthinAplphabet = "JUN";
	    	
	    }
      
       if(strMonthFull.equals("07")){
	    	
	    	strMonthinAplphabet = "JUL";
	    	
	    }
       
       if(strMonthFull.equals("08")){
	    	
	    	strMonthinAplphabet = "AUG";
	    	
	    }
       
      if(strMonthFull.equals("09")){
	    	
	    	strMonthinAplphabet = "SEP";
	    	
	    }
      
      if(strMonthFull.equals("10")){
	    	
	    	strMonthinAplphabet = "OCT";
	    	
	    }
      
      if(strMonthFull.equals("11")){
	    	
	    	strMonthinAplphabet = "NOV";
	    	
	    }
      
      if(strMonthFull.equals("12")){
	    	
	    	strMonthinAplphabet = "DEC";
	    	
	    }
      
      
      System.out.println("strDateFull===>"+strDateFull);
      
      strFinalDate =   strDateFull+"-"+strMonthinAplphabet+"-"+strYearFull ;
      
      System.out.println("strFinalDate===>"+strFinalDate);
    
	   
	   if (strPkId!= null & strEmpId!= null & strUsername!=null & strBranchcode!=null & strEmailId!=null &  strDesignation!=null
			   &  strTel!=null &  strMobile!=null&  strDept!=null  & strDOB!=null & strAddress!=null & strCountry!=null) {
		   
		   isUpdated = merchantService.updateUserDetails(strPkId,strEmpId,strUsername,strBranchcode,strEmailId,
                   strDesignation,strTel,strMobile,strDept,strFinalDate,strAddress,strCountry);
		      
		   
		   
			}
	   
	      if(isUpdated = true){
	    	  
	    	  System.out.println("Updated fine==>");
	    	  
	      }
	   
	   model.addObject("isUpdated",isUpdated);
	   model.setViewName("acquirer/usermodifyconfirm");
	
	   return model;
  }


	
	
	@RequestMapping(value = "/updateChangedPwd")
	public @ResponseBody String updateChangedPwd(HttpServletRequest request) {
		
		 System.out.println("In updateChangedPwd==>");
		 
		 String merchantId = request.getParameter("merchantId");
		 String confirmedPwd = request.getParameter("confirmedPwd");
		
		 String json=null;
		
			System.out.println("merchantId==>"+merchantId);
			System.out.println("confirmedPwd==>"+confirmedPwd);
			
		
	        
		   boolean isUpdatedornot = merchantService.updateChangedPwd(merchantId,confirmedPwd);
		   

			if(isUpdatedornot)
			{
				//model.setViewName("merchant/index");
				json = new Gson().toJson("1");
			}
			else
			{
			  /* model.addObject("authenticationStatus","Invalid Crentials");
			   model.setViewName("merchant/login");*/
			   //json = new Gson().toJson("0");
			}
			 return json;
	}
	
	
	
	
	
	/**
	 * @return
	 */
	@RequestMapping(value = "/authenticateCredentails")
	public @ResponseBody String authenticateCredentails(HttpServletRequest request) {
		System.out.println("In auth cren method");
		
		
		String merchantId = request.getParameter("merchantid");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String json=null;
		
		
		boolean isValidMercahnt = merchantService.authenticateCredentails(merchantId,username,password);
		
		System.out.println("isValidMercahnt==>"+isValidMercahnt); 
		
		if(isValidMercahnt == true)
		{
			
			json = new Gson().toJson("1");
		}
		else
		{
		 
		}
		 return json;
	}
	
	
	public static String md5(String input) {
        
        String md5 = null;
         
        if(null == input) return null;
         
        try {
             
        //Create MessageDigest object for MD5
        MessageDigest digest = MessageDigest.getInstance("MD5");
         
        //Update input string in message digest
        digest.update(input.getBytes(), 0, input.length());
 
        //Converts message digest value in base 16 (hex) 
        md5 = new BigInteger(1, digest.digest()).toString(16);
 
        } catch (NoSuchAlgorithmException e) {
 
            e.printStackTrace();
        }
        return md5;
    }
	
	
	
	public static String encrypt(String str) {
    	
	    BASE64Encoder encoder = new BASE64Encoder();
        byte[] salt = new byte[8];
        random.nextBytes(salt);
        return encoder.encode(salt) + encoder.encode(str.getBytes());
 }
	
	@RequestMapping(value = "/searchinvoice",method = RequestMethod.GET)
	public ModelAndView searchInvoice(HttpServletRequest request) {
		System.out.println("In auth searchinvoice method");
		ModelAndView model = new ModelAndView();
		 model.setViewName("merchantpage/searchinvoice");
		 return model;
	}	
	
	/*@RequestMapping(value = "/usagesetting",method = RequestMethod.GET)
	public ModelAndView usageSetting(HttpServletRequest request) {
		System.out.println("In auth usagesetting method");
		ModelAndView model = new ModelAndView();
		List<CurrencyCode> cclist = paymentService.getCurrencyCode();
		 model.setViewName("merchantpage/usagesetting");
		 model.addObject("cclist", cclist);
		 return model;
	}	*/
	
	/*@RequestMapping(value = "/createinvoice",method = RequestMethod.GET)
	public ModelAndView createInvoice(HttpServletRequest request) {
		System.out.println("In auth createinvoice method");
		ModelAndView model = new ModelAndView();
		 model.setViewName("merchantpage/createinvoice");
		 return model;
	}	*/
	
		
	
		
}
