package com.spay.controller.recon;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JRExporterParameter;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.export.JRCsvExporter;
import net.sf.jasperreports.engine.util.JRLoader;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spay.model.transaction.TransationMonitoring;
import com.spay.service.merchant.MerchantService;
import com.spay.service.recon.ReconService;

@Controller
public class ReconController {
	
	
	private static Random random = new Random((new Date()).getTime());
	
	
	@Autowired
	private ReconService reconService;
	

	
	
	@RequestMapping(value = "/showReconfileresult",method = RequestMethod.POST)
	public ModelAndView showReconfileresult(HttpServletRequest request) 
	{
		System.out.println("dfdfdfd");
		
		ModelAndView model = new ModelAndView();
		
		String strReportdate = request.getParameter("reportdate");
		
		String strReportdateReplace = strReportdate.replaceAll("/","");
		
		File file = new File(request.getServletContext().getRealPath("WEB-INF/reconfilejrxml/"+strReportdateReplace));
		 
		 if (!file.exists()) {
				if (file.mkdir()) {
					System.out.println("Directory is created!");
				} else {
					System.out.println("Failed to create directory!");
				}
			}
		 
		model.addObject("repordateVal", strReportdate);
		model.setViewName("recon/reconfileform");
		
		return model;
	
	}
	
	
	

	@SuppressWarnings("unused")
	@RequestMapping(value = "/bcelatmandunionpay/{reportdate}",method = RequestMethod.GET)
	public ModelAndView getbcelatmandunionpayDetails(HttpServletRequest request,@PathVariable("reportdate") String reportdate ) 
    throws JRException
	{
		System.out.println("bcelatmandunionpay");
		
		ModelAndView model = new ModelAndView();
		
		 JasperReport report = null;
		 JasperPrint print = null;
		 String saveDirectory=null;
		 String mimeType = null;
		 OutputStream outPutStream = null;
		 String printFileName = null;
		 
		 String strReportdate = reportdate;
		 
		 
		 
		 Map<String,Object> parameterMap = new HashMap<String,Object>();
		 
		 List<TransationMonitoring>  transationMonitoringList = reconService.getDetailsforBcelatmandunionpay();
		 
		 JasperPrint jprint = null;
		
		if(transationMonitoringList!=null){
			
			 JRDataSource datasource = new JRBeanCollectionDataSource(transationMonitoringList, true);
			
			 System.out.println("request.getServletContext()===>"+request.getServletContext().getRealPath("WEB-INF/reconfilejrxml/reconfilereport.jrxml"));
			 
			 JasperCompileManager.compileReportToFile(request.getServletContext().getRealPath("WEB-INF/reconfilejrxml/reconfilereport.jrxml"), request.getServletContext().getRealPath("WEB-INF/reconfilejrxml/reconfilereport.jasper"));
		
			 printFileName = JasperFillManager.fillReportToFile(request.getServletContext().getRealPath("WEB-INF/reconfilejrxml/reconfilereport.jasper"), parameterMap, datasource);
			
			 report = JasperCompileManager.compileReport(request.getServletContext().getRealPath("WEB-INF/reconfilejrxml/reconfilereport.jrxml"));
			 
			 jprint = (JasperPrint) JasperFillManager.fillReport(request.getServletContext().getRealPath("WEB-INF/reconfilejrxml/reconfilereport.jasper"), parameterMap);
			 
			 
			
			 
			 JRCsvExporter exporter = new JRCsvExporter();
			 
			 File sourceFile = new File(request.getServletContext().getRealPath("WEB-INF/reconfilejrxml/reconfilereport.jrprint"));
			   
			 System.out.println("print===>"+print);
			    
			 JasperPrint jasperPrint = (JasperPrint)JRLoader.loadObject(sourceFile);
			    
			 exporter.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint);
			 
			 System.out.println("strReportdate==>"+strReportdate);
			 
			 exporter.setParameter(JRExporterParameter.OUTPUT_FILE_NAME, request.getServletContext().getRealPath("WEB-INF/reconfilejrxml/"+strReportdate+"/BCELandUnionPayDetails.csv"));
			 
			 exporter.exportReport();
			
		}
		
		model.setViewName("recon/reconfileform");
				
		return model;
	}
	
	@SuppressWarnings("unused")
	@RequestMapping(value = "/bceljcbtransactiondetails/{reportdate}",method = RequestMethod.GET)
	public ModelAndView getbceljcbtransactiondetails(HttpServletRequest request,@PathVariable("reportdate") String reportdate ) 
    throws JRException
	{
		System.out.println("bcelatmandunionpay");
		
		ModelAndView model = new ModelAndView();
		
		 JasperReport report = null;
		 JasperPrint print = null;
		 String saveDirectory=null;
		 String mimeType = null;
		 OutputStream outPutStream = null;
		 String printFileName = null;
		 
		 String strReportdate = reportdate;
		 
		 
		 
		 Map<String,Object> parameterMap = new HashMap<String,Object>();
		 
		 List<TransationMonitoring>  transationMonitoringList = reconService.getbceljcbtransactiondetails();
		 
		 JasperPrint jprint = null;
		
		if(transationMonitoringList!=null){
			
			 JRDataSource datasource = new JRBeanCollectionDataSource(transationMonitoringList, true);
			
			 System.out.println("request.getServletContext()===>"+request.getServletContext().getRealPath("WEB-INF/reconfilejrxml/reconfilereport.jrxml"));
			 
			 JasperCompileManager.compileReportToFile(request.getServletContext().getRealPath("WEB-INF/reconfilejrxml/reconfilereport.jrxml"), request.getServletContext().getRealPath("WEB-INF/reconfilejrxml/reconfilereport.jasper"));
		
			 printFileName = JasperFillManager.fillReportToFile(request.getServletContext().getRealPath("WEB-INF/reconfilejrxml/reconfilereport.jasper"), parameterMap, datasource);
			
			 report = JasperCompileManager.compileReport(request.getServletContext().getRealPath("WEB-INF/reconfilejrxml/reconfilereport.jrxml"));
			 
			 jprint = (JasperPrint) JasperFillManager.fillReport(request.getServletContext().getRealPath("WEB-INF/reconfilejrxml/reconfilereport.jasper"), parameterMap);
			 
			 
			
			 
			 JRCsvExporter exporter = new JRCsvExporter();
			 
			 File sourceFile = new File(request.getServletContext().getRealPath("WEB-INF/reconfilejrxml/reconfilereport.jrprint"));
			   
			 System.out.println("print===>"+print);
			    
			 JasperPrint jasperPrint = (JasperPrint)JRLoader.loadObject(sourceFile);
			    
			 exporter.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint);
			 
			 exporter.setParameter(JRExporterParameter.OUTPUT_FILE_NAME, request.getServletContext().getRealPath("WEB-INF/reconfilejrxml/"+strReportdate+"/BCELJCBDetails.csv"));
			 
			 exporter.exportReport();
			 
		
			}
		
		model.setViewName("recon/reconfileform");
				
		return model;
	}
	
	
	
	@SuppressWarnings("unused")
	@RequestMapping(value = "/offusunionpaytxndetails/{reportdate}",method = RequestMethod.GET)
	public ModelAndView getoffusunionpaytxndetails(HttpServletRequest request,@PathVariable("reportdate") String reportdate ) 
    throws JRException
	{
		System.out.println("bcelatmandunionpay");
		
		ModelAndView model = new ModelAndView();
		
		 JasperReport report = null;
		 JasperPrint print = null;
		 String saveDirectory=null;
		 String mimeType = null;
		 OutputStream outPutStream = null;
		 String printFileName = null;
		 
		 String strReportdate = reportdate;
		 
		 
		 
		 Map<String,Object> parameterMap = new HashMap<String,Object>();
		 
		 List<TransationMonitoring>  transationMonitoringList = reconService.getoffusunionpaytxndetails();
		 
		 JasperPrint jprint = null;
		
		if(transationMonitoringList!=null){
			
			 JRDataSource datasource = new JRBeanCollectionDataSource(transationMonitoringList, true);
			
			 System.out.println("request.getServletContext()===>"+request.getServletContext().getRealPath("WEB-INF/reconfilejrxml/reconfilereport.jrxml"));
			 
			 JasperCompileManager.compileReportToFile(request.getServletContext().getRealPath("WEB-INF/reconfilejrxml/reconfilereport.jrxml"), request.getServletContext().getRealPath("WEB-INF/reconfilejrxml/reconfilereport.jasper"));
		
			 printFileName = JasperFillManager.fillReportToFile(request.getServletContext().getRealPath("WEB-INF/reconfilejrxml/reconfilereport.jasper"), parameterMap, datasource);
			
			 report = JasperCompileManager.compileReport(request.getServletContext().getRealPath("WEB-INF/reconfilejrxml/reconfilereport.jrxml"));
			 
			 jprint = (JasperPrint) JasperFillManager.fillReport(request.getServletContext().getRealPath("WEB-INF/reconfilejrxml/reconfilereport.jasper"), parameterMap);
			 
			 
			
			 
			 JRCsvExporter exporter = new JRCsvExporter();
			 
			 File sourceFile = new File(request.getServletContext().getRealPath("WEB-INF/reconfilejrxml/reconfilereport.jrprint"));
			   
			 System.out.println("print===>"+print);
			    
			 JasperPrint jasperPrint = (JasperPrint)JRLoader.loadObject(sourceFile);
			    
			 exporter.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint);
			 
			 exporter.setParameter(JRExporterParameter.OUTPUT_FILE_NAME, request.getServletContext().getRealPath("WEB-INF/reconfilejrxml/"+strReportdate+"/OffusUnionpayDetails.csv"));
			 
			 exporter.exportReport();
		
			}
		
		model.setViewName("recon/reconfileform");
				
		return model;
	}
	
	
	@SuppressWarnings("unused")
	@RequestMapping(value = "/downloadAlltransactions/{reportdate}",method = RequestMethod.GET)
	public ModelAndView downloadAlltransactions(HttpServletRequest request,HttpServletResponse response,@PathVariable("reportdate") String reportdate ) 
    throws JRException, IOException
	{
		
        System.out.println("downloadAlltransactions");
		
		ModelAndView model = new ModelAndView();
		
		
		 JasperReport report = null;
		 JasperPrint print = null;
		 String saveDirectory=null;
		 String mimeType = null;
		 OutputStream outPutStream = null;
		 String printFileName = null;
	
		 
		 String strReportdate = reportdate;
		 
		 JasperPrint jprint = null;
		 
		 Map<String,Object> parameterMap = new HashMap<String,Object>();
		 
		 List<TransationMonitoring>  transationMonitoringList = reconService.downloadAlltransactions();
		 
		
		 JRCsvExporter exporter = new JRCsvExporter();
		 
		 if(transationMonitoringList != null){
			 
				 JRDataSource datasource = new JRBeanCollectionDataSource(transationMonitoringList, true);
				 
				 System.out.println("request.getServletContext()===>"+request.getServletContext().getRealPath("WEB-INF/reconfilejrxml/reconfilereport.jrxml"));
				 
				 JasperCompileManager.compileReportToFile(request.getServletContext().getRealPath("WEB-INF/reconfilejrxml/reconfilereport.jrxml"), request.getServletContext().getRealPath("WEB-INF/reconfilejrxml/reconfilereport.jasper"));
			
				 printFileName = JasperFillManager.fillReportToFile(request.getServletContext().getRealPath("WEB-INF/reconfilejrxml/reconfilereport.jasper"), parameterMap, datasource);
				
				 report = JasperCompileManager.compileReport(request.getServletContext().getRealPath("WEB-INF/reconfilejrxml/reconfilereport.jrxml"));
				 
				 jprint = (JasperPrint) JasperFillManager.fillReport(request.getServletContext().getRealPath("WEB-INF/reconfilejrxml/reconfilereport.jasper"), parameterMap);
				 
				 exporter = new JRCsvExporter();
				 
				 File sourceFile = new File(request.getServletContext().getRealPath("WEB-INF/reconfilejrxml/reconfilereport.jrprint"));
				   
				 System.out.println("print===>"+print);
				    
				 JasperPrint jasperPrint = (JasperPrint)JRLoader.loadObject(sourceFile);
				    
				 exporter.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint);
				 
				 exporter.setParameter(JRExporterParameter.OUTPUT_FILE_NAME, request.getServletContext().getRealPath("WEB-INF/reconfilejrxml/"+strReportdate+"/AllTransactionDetails.csv"));
				 
				 exporter.exportReport();
				 
				 mimeType = "text/csv";
				 
				 
				 try {
					   outPutStream = response.getOutputStream();
				   } catch (IOException e) {
					  // TODO Auto-generated catch block
					  e.printStackTrace();
				   }
				
			 
				 saveDirectory = request.getServletContext().getRealPath("WEB-INF/reconfilejrxml/"+strReportdate+"/AllTransactionDetails.csv");
			 //System.out.println("testArr"+testArr);
					 
				 
				  response.setHeader("Content-Disposition", "attachment; filename=\""+ "AllTransactionDetails"+ "\"");
				   
				   response.setContentType(mimeType);
				   response.setCharacterEncoding("UTF-8");
				   
				   File file = new File(saveDirectory);
				   
				   if (file.exists()) {
					     FileInputStream fin = null;
						try {
							fin = new FileInputStream(saveDirectory);
						} catch (FileNotFoundException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}

					     BufferedInputStream bin = new BufferedInputStream(fin);
					     BufferedOutputStream bout = new BufferedOutputStream(outPutStream);
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
		 
		 }
		
		 model.setViewName("recon/reconfileform");
		
		 return model;
		
	}
	
	
	
	
	
}
