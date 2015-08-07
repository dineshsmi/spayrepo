package com.spay.dao.impl.chargeback;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spay.dao.AbstractDao;
import com.spay.dao.chargeback.ChargebackDAO;
import com.spay.model.merchant.Merchant;
import com.spay.model.transaction.TransationMonitoring;

@Repository("chargebackDAO")//chargebackDAO
@Transactional
public class ChargebackDAOImpl extends AbstractDao implements ChargebackDAO {
	
 private HibernateTemplate hibernateTemplate;
	 
	 HttpServletRequest request;
	 
	 @Autowired
	 public void setSessionFactory(SessionFactory sessionFactory) {
	        hibernateTemplate = new HibernateTemplate(sessionFactory);
	}

	@SuppressWarnings("unchecked")
	public List<TransationMonitoring> showChargeback(TransationMonitoring txnmonitoring) {
		
		   String query = "from TransationMonitoring where MERCHANT_ID = "+"'"+txnmonitoring.getMerchantid()+"'" ;
		
		 
		   System.out.println("query===>"+query);
		   
		   List<TransationMonitoring> transationMonitoringList = null;
		   
		    
		   Query insertqforauth = getSession().createQuery(query);
		   
		   if (insertqforauth.list() != null && !insertqforauth.list().isEmpty()) {
			   
			   transationMonitoringList = insertqforauth.list();
		    }
		
		
		   return transationMonitoringList;
		
	}

	
	public boolean updateChargebackstatus(String strStatus,String strPkId) {
		// TODO Auto-generated method stub
		
		boolean isupdated = false;
		
		int result = 0;
		
		try{
		 String query = "update TransationMonitoring set chargebackauthorizestatus = "+"'"+strStatus+"'"+" WHERE ID = "+"'"+strPkId +"'";
		 
		 Query updateChangedPwd = getSession().createQuery(query);
		 
         result=updateChangedPwd.executeUpdate();
         
         System.out.println("result : "+result);
		
		}catch(Exception e){
			
			 e.printStackTrace();
		}	
			
		
         if(result==1){
			
        	 isupdated = true;
		}
		
		
         System.out.println("isupdated==>"+isupdated);
		
		return isupdated;
	}

	public boolean updateIsChargebackRaised(String strPKId) {
		// TODO Auto-generated method stub
		
       boolean isupdated = false;
		
		int result = 0;
		
		try{
		 String query = "update TransationMonitoring set chargebackrasiedornot = 'YES' "+" WHERE ID = "+"'"+strPKId +"'";
		 
		 Query updateChangedPwd = getSession().createQuery(query);
		 
         result=updateChangedPwd.executeUpdate();
         
         System.out.println("result : "+result);
		
		}catch(Exception e){
			
			 e.printStackTrace();
		}	
			
		
         if(result==1){
			
        	 isupdated = true;
		}
		
		
         System.out.println("isupdated==>"+isupdated);
		
		return isupdated;
		
		
		
	}

	public List<TransationMonitoring> getChargeBackRaisedMerchants(String strMerchantId) {
		
		String query = "from TransationMonitoring where MERCHANT_ID = "+"'"+strMerchantId+"'" + " AND  ISCHARGEBACKRAISED = 'YES' " ;
		
		 
		   System.out.println("query===>"+query);
		   
		   List<TransationMonitoring> transationMonitoringList = null;
		   
		    
		   Query insertqforauth = getSession().createQuery(query);
		   
		   if (insertqforauth.list() != null && !insertqforauth.list().isEmpty()) {
			   
			   transationMonitoringList = insertqforauth.list();
		    }
		
		
		   return transationMonitoringList;
	}

	public List<TransationMonitoring> getChargebackrasiedDetailsByMerId(String strMerchantId) {
		
		
		List<TransationMonitoring> transationMonitoringList = null;
		
		try{
			 String query = "from TransationMonitoring  WHERE MERCHANT_ID = "+"'"+strMerchantId +"'" + " AND  ISCHARGEBACKRAISED = 'YES' ";
			 
			 Query insertqforauth = getSession().createQuery(query);
			 
			    if (insertqforauth.list() != null && !insertqforauth.list().isEmpty()) {
				   
				   transationMonitoringList = insertqforauth.list();
			  }
		
		}catch(Exception e){
				
				 e.printStackTrace();
		}	
	
	
	   return transationMonitoringList;
	}
	
	
}
