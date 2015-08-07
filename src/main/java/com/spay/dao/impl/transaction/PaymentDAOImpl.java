package com.spay.dao.impl.transaction;

import java.util.List;

import javax.persistence.Column;
import javax.servlet.http.HttpServletRequest;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spay.dao.AbstractDao;
import com.spay.dao.merchant.PaymentDAO;
import com.spay.model.merchant.Merchant;
import com.spay.model.transaction.CurrencyCode;
import com.spay.model.transaction.FeesSetting;
import com.spay.model.transaction.PaymentSetup;
import com.spay.model.transaction.ProductForm;
import com.spay.model.transaction.TransationMonitoring;
import com.spay.model.uam.AccountAdjustment;
import com.spay.model.uam.RefundAdjustment;

@Repository("paymentdao")
@Transactional
public class PaymentDAOImpl extends AbstractDao implements PaymentDAO{

 private HibernateTemplate hibernateTemplate;
	 
	 HttpServletRequest request;
	 
	 @Autowired
	 public void setSessionFactory(SessionFactory sessionFactory) {
	        hibernateTemplate = new HibernateTemplate(sessionFactory);
	}
	
	public int savePayment(PaymentSetup payment) {
		int s = 0;
		try{
			
		   hibernateTemplate.save(payment);
		     
		}catch(Exception e){
		  e.printStackTrace();
		}
		return s;
	}
	
	@SuppressWarnings("unchecked")
	public List<Merchant> getMerchantDateByID(String merid){
		
		List<Merchant> merchantList = null;
		try{
			System.out.println("ID"+merid);
			String query = "from Merchant where merchant_Id = "+"'"+merid+ "'";
			
			Query insertqforauth = getSession().createQuery(query);
			 if (insertqforauth.list() != null && !insertqforauth.list().isEmpty()) {
				   merchantList = insertqforauth.list();
				     
				   System.out.println("=====merchantList===>"+merchantList);
			 }
		}catch(Exception e){
			e.printStackTrace();
		}
   	 	return merchantList;
	}
	
	@SuppressWarnings("unchecked")
	public List<Merchant> getMerchantDateByval(long id){
		List<Merchant> merchantList = null;
		try{
			
			String query = "from Merchant where Id = "+"'"+id+ "'";
			
			Query insertqforauth = getSession().createQuery(query);
			 if (insertqforauth.list() != null && !insertqforauth.list().isEmpty()) {
				   merchantList = insertqforauth.list();
				     
				   System.out.println("=====merchantList===>"+merchantList);
			 }
		}catch(Exception e){
			e.printStackTrace();
		}
   	 	return merchantList;
	}
	
	@SuppressWarnings("unchecked")
	public List<Merchant> getMerchantDateByName(String name){
		List<Merchant> merchantList = null;
		try{
			String query = "from Merchant where merchant_name = '"+name+"'";
			Query insertqforauth = getSession().createQuery(query);
			System.out.println("insertqforauth==>"+insertqforauth);
			System.out.println("insertqforauth list==>"+insertqforauth.list());
			 if (insertqforauth.list() != null && !insertqforauth.list().isEmpty()) {
				   merchantList = insertqforauth.list();
				     
				   System.out.println("=====merchantList===>"+merchantList);
			 }
		}catch(Exception e){
			e.printStackTrace();
		}
   	 	return merchantList;
	}
	
	@SuppressWarnings("unchecked")
	public List<Merchant> getMerchantDateByEmail(String name){
		List<Merchant> merchantList = null;
		try{
		String query = "from Merchant where email_Id = '"+name+"'";
		Query insertqforauth = getSession().createQuery(query);
		 if (insertqforauth.list() != null && !insertqforauth.list().isEmpty()) {
			   merchantList = insertqforauth.list();
			  
		 }
		}catch(Exception e){
			e.printStackTrace();
		}
   	 	return merchantList;
	}
	
	
	@SuppressWarnings("unchecked")
	public int deactiveMerchant(long mid,String sdate,String edate){
				
		int result = 0;
		try{
			
			String query = "update Merchant set is_active = 0,startdate='"+sdate+"',enddate='"+edate+"' where id=:Id";
			 Query q =getSession().createQuery(query).setParameter("Id",mid);
	        result=q.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
        return result;
	}
	
	@SuppressWarnings("unchecked")
	public int activeMerchant(long mid){
		int result = 0;
		String query = "update Merchant set is_active = 1 where id=:Id";
		Query q =getSession().createQuery(query).setParameter("Id",mid);
        result=q.executeUpdate();
        
        return result;
	}
	
	@SuppressWarnings("unchecked")
	public int deleteMerchant(long mid){
		int result = 0;
		String query = "DELETE FROM Merchant WHERE id=:Id";
		Query q =getSession().createQuery(query).setParameter("Id",mid);
        result=q.executeUpdate();
        
        return result;
	}

	@SuppressWarnings("unchecked")
	public List<CurrencyCode> getCurrencyCode(){
		List<CurrencyCode> ccList = null;
		try{
		String query = "from CurrencyCode";
		Query insertqforauth = getSession().createQuery(query);
		 if (insertqforauth.list() != null && !insertqforauth.list().isEmpty()) {
			 ccList = insertqforauth.list();
			  
		 }
		}catch(Exception e){
			e.printStackTrace();
		}
   	 	return ccList;
	}
	
	@SuppressWarnings("unchecked")
	public int saveRealTime(TransationMonitoring tm){
		int s = 0;
		try{
			
		   hibernateTemplate.save(tm);
		     
		}catch(Exception e){
		  e.printStackTrace();
		}
		return s;
	}
	
	@SuppressWarnings("unchecked")
	public List<TransationMonitoring> getTransationMonitoringTDate(
			String merid, String cardtype, String tdate,String count){
		List<TransationMonitoring> tmlist = null;
		try{
			String query = "from TransationMonitoring where MERCHANT_ID='"+merid+"' and CARD_TYPE='"+cardtype+"' and TXN_DATE='"+tdate+"' and rownum<="+count+" order by ID desc";
			Query insertqforauth = getSession().createQuery(query);
			 if (insertqforauth.list() != null && !insertqforauth.list().isEmpty()) {
				 tmlist = insertqforauth.list();
				  
			 }
			}catch(Exception e){
				e.printStackTrace();
			}
	   	 	return tmlist;
	}
	
	@SuppressWarnings("unchecked")
	public List<TransationMonitoring> getTransationMonitoringTDate(
			String merid, String tdate){
		List<TransationMonitoring> tmlist = null;
		try{
			String query = "from TransationMonitoring where MERCHANT_ID='"+merid+"' and TXN_DATE='"+tdate+"' order by ID desc";
			Query insertqforauth = getSession().createQuery(query);
			 if (insertqforauth.list() != null && !insertqforauth.list().isEmpty()) {
				 tmlist = insertqforauth.list();
				  
			 }
			}catch(Exception e){
				e.printStackTrace();
			}
	   	 	return tmlist;
	}
	
	@SuppressWarnings("unchecked")
	public List<TransationMonitoring> getTransationMonitoring(String merid,
			String cardtype,String count){
		List<TransationMonitoring> tmlist = null;
		try{
			//select * from (select * from REAL_TRANSACTION_MONITORING order by ID desc) where rownum<=5 ;
			//String query = "from TransationMonitoring where MERCHANT_ID='"+merid+"' and CARD_TYPE='"+cardtype+"'";
			String query = "from TransationMonitoring where MERCHANT_ID='"+merid+"' and CARD_TYPE='"+cardtype+"' and rownum<="+count+" order by ID desc";
			System.out.println("query==>"+query); 
			Query insertqforauth = getSession().createQuery(query);
			 
			 if (insertqforauth.list() != null && !insertqforauth.list().isEmpty()) {
				 tmlist = insertqforauth.list();
				  
			 }
			}catch(Exception e){
				e.printStackTrace();
			}
	   	 	return tmlist;
	}
	
	@SuppressWarnings("unchecked")
	public List<TransationMonitoring> getTransationMonitoring(String merid){
		List<TransationMonitoring> tmlist = null;
		try{
			//select * from (select * from REAL_TRANSACTION_MONITORING order by ID desc) where rownum<=5 ;
			//String query = "from TransationMonitoring where MERCHANT_ID='"+merid+"' and CARD_TYPE='"+cardtype+"'";
			String query = "from TransationMonitoring where MERCHANT_ID='"+merid+"' order by ID desc";
			System.out.println("query==>"+query); 
			Query insertqforauth = getSession().createQuery(query);
			 
			 if (insertqforauth.list() != null && !insertqforauth.list().isEmpty()) {
				 tmlist = insertqforauth.list();
				  
			 }
			}catch(Exception e){
				e.printStackTrace();
			}
	   	 	return tmlist;
	}
	
	@SuppressWarnings("unchecked")
	public List<TransationMonitoring> getTransationMonitoringRefno(
			String merid, String cardtype, String trefno,String count){
		List<TransationMonitoring> tmlist = null;
		try{
			String query = "from TransationMonitoring where MERCHANT_ID='"+merid+"' and MERCHANT_ID=id and CARD_TYPE='"+cardtype+"' and TXN_REF_NO='"+trefno+"'  and rownum<="+count+" order by ID desc";
			Query insertqforauth = getSession().createQuery(query);
			 if (insertqforauth.list() != null && !insertqforauth.list().isEmpty()) {
				 tmlist = insertqforauth.list();
				  
			 }
			}catch(Exception e){
				e.printStackTrace();
			}
	   	 	return tmlist;
	}
	
	@SuppressWarnings("unchecked")
	public List<TransationMonitoring> getTransationMonitoringRefno(
			String merid, String trefno){
		List<TransationMonitoring> tmlist = null;
		try{
			String query = "from TransationMonitoring where MERCHANT_ID='"+merid+"' and MERCHANT_ID=id and TXN_REF_NO='"+trefno+"' order by ID desc";
			Query insertqforauth = getSession().createQuery(query);
			 if (insertqforauth.list() != null && !insertqforauth.list().isEmpty()) {
				 tmlist = insertqforauth.list();
				  
			 }
			}catch(Exception e){
				e.printStackTrace();
			}
	   	 	return tmlist;
	}
	
	@SuppressWarnings("unchecked")
	public List<TransationMonitoring> getTransationMonitoringCardno(
			String merid, String cardtype, String cnumber,String count){
		List<TransationMonitoring> tmlist = null;
		try{
			String query = "from TransationMonitoring where MERCHANT_ID='"+merid+"' and MERCHANT_ID=id and CARD_TYPE='"+cardtype+"' and CARD_NUMBER='"+cnumber+"'  and rownum<="+count+" order by ID desc";
			Query insertqforauth = getSession().createQuery(query);
			 if (insertqforauth.list() != null && !insertqforauth.list().isEmpty()) {
				 tmlist = insertqforauth.list();
				  
			 }
			}catch(Exception e){
				e.printStackTrace();
			}
	   	 	return tmlist;
	}
	
	@SuppressWarnings("unchecked")
	public List<TransationMonitoring> getTransationMonitoringCardno(
			String merid, String cnumber){
		List<TransationMonitoring> tmlist = null;
		try{
			String query = "from TransationMonitoring where MERCHANT_ID='"+merid+"' and MERCHANT_ID=id and CARD_NUMBER='"+cnumber+"' order by ID desc";
			Query insertqforauth = getSession().createQuery(query);
			 if (insertqforauth.list() != null && !insertqforauth.list().isEmpty()) {
				 tmlist = insertqforauth.list();
				  
			 }
			}catch(Exception e){
				e.printStackTrace();
			}
	   	 	return tmlist;
	}
	
	/*@SuppressWarnings("unchecked")
	public List<TransationMonitoring> getTransationMonitoringCardno(
			String merid, String cardtype, String tdate, String trefno,
			String cnumber,String count){
		List<TransationMonitoring> tmlist = null;
		try{
			String query = "from TransationMonitoring where MERCHANT_ID='"+merid+"' and MERCHANT_ID=id and CARD_TYPE='"+cardtype+"' and TXN_DATE='"+tdate+"' and TXN_REF_NO='"+trefno+"' and CARD_NUMBER='"+cnumber+"'  and rownum<="+count+" order by ID desc";
			Query insertqforauth = getSession().createQuery(query);
			 if (insertqforauth.list() != null && !insertqforauth.list().isEmpty()) {
				 tmlist = insertqforauth.list();
				  
			 }
			}catch(Exception e){
				e.printStackTrace();
			}
	   	 	return tmlist;
	}*/
	
	@SuppressWarnings("unchecked")
	public List<TransationMonitoring> getTransationMonitoringAll(String merid,
			String cardtype, String tdate, String trefno, String cnumber,
			String count){
		
		List<TransationMonitoring> tmlist = null;
		try{
			String query = "from TransationMonitoring where MERCHANT_ID='"+merid+"' and MERCHANT_ID=id and CARD_TYPE='"+cardtype+"' and TXN_DATE='"+tdate+"' and TXN_REF_NO='"+trefno+"' and CARD_NUMBER='"+cnumber+"'  and rownum<="+count+" order by ID desc";
			Query insertqforauth = getSession().createQuery(query);
			 if (insertqforauth.list() != null && !insertqforauth.list().isEmpty()) {
				 tmlist = insertqforauth.list();
				  
			 }
			}catch(Exception e){
				e.printStackTrace();
			}
	   	 	return tmlist;
	}
	@SuppressWarnings("unchecked")
	public List<TransationMonitoring> getTransationMonitoringAll(String merid,
			String tdate, String trefno, String cnumber){
		List<TransationMonitoring> tmlist = null;
		try{
			String query = "from TransationMonitoring where MERCHANT_ID='"+merid+"' and MERCHANT_ID=id and TXN_DATE='"+tdate+"' and TXN_REF_NO='"+trefno+"' and CARD_NUMBER='"+cnumber+"' order by ID desc";
			Query insertqforauth = getSession().createQuery(query);
			 if (insertqforauth.list() != null && !insertqforauth.list().isEmpty()) {
				 tmlist = insertqforauth.list();
				  
			 }
			}catch(Exception e){
				e.printStackTrace();
			}
	   	 	return tmlist;
	}
	
	@SuppressWarnings("unchecked")
	public List<TransationMonitoring> getTransationMonitoringValue(String tmid){
		List<TransationMonitoring> tmlist = null;
		try{
			String query = "from TransationMonitoring  where Id ='"+tmid+"'";
			Query insertqforauth = getSession().createQuery(query);
			 if (insertqforauth.list() != null && !insertqforauth.list().isEmpty()) {
				 tmlist = insertqforauth.list();
				  
			 }
			}catch(Exception e){
				e.printStackTrace();
			}
	   	 	return tmlist;
	}
	
	@SuppressWarnings("unchecked")
	public List<CurrencyCode> getCurrencyName(String txncurr){
		List<CurrencyCode> tmlist = null;
		try{
			String query = "from CurrencyCode  where currencycode='"+txncurr+"'";
			Query insertqforauth = getSession().createQuery(query);
			 if (insertqforauth.list() != null && !insertqforauth.list().isEmpty()) {
				 tmlist = insertqforauth.list();
				  
			 }
			}catch(Exception e){
				e.printStackTrace();
			}
	   	 	return tmlist;
	}
	
	@SuppressWarnings("unchecked")
	public int saveProductForm(ProductForm productform){
		int s = 0;
		try{
			
		   hibernateTemplate.save(productform);
		     
		}catch(Exception e){
		  e.printStackTrace();
		}
		return s;
	}

	@SuppressWarnings("unchecked")
	public List<ProductForm> getProductForm(String pcode){
		List<ProductForm> tmlist = null;
		try{
			String query = "from ProductForm  where productcode='"+pcode+"'";
			Query insertqforauth = getSession().createQuery(query);
			 if (insertqforauth.list() != null && !insertqforauth.list().isEmpty()) {
				 tmlist = insertqforauth.list();
				  
			 }
			}catch(Exception e){
				e.printStackTrace();
			}
	   	 	return tmlist;
	}
	
	@SuppressWarnings("unchecked")
	public List<ProductForm> getProductForm(int pid){
		List<ProductForm> tmlist = null;
		try{
			String query = "from ProductForm  where ID='"+pid+"'";
			Query insertqforauth = getSession().createQuery(query);
			 if (insertqforauth.list() != null && !insertqforauth.list().isEmpty()) {
				 tmlist = insertqforauth.list();
				  
			 }
			}catch(Exception e){
				e.printStackTrace();
			}
	   	 	return tmlist;
	}
	
	@SuppressWarnings("unchecked")
	public List<ProductForm> getProductForm(){
		List<ProductForm> tmlist = null;
		try{
			String query = "from ProductForm";
			Query insertqforauth = getSession().createQuery(query);
			 if (insertqforauth.list() != null && !insertqforauth.list().isEmpty()) {
				 tmlist = insertqforauth.list();
				  
			 }
			}catch(Exception e){
				e.printStackTrace();
			}
	   	 	return tmlist;
	}
	
	@SuppressWarnings("unchecked")
	public int updateProductForm(ProductForm productform){
		int s = 1;
		try{
			
		   hibernateTemplate.update(productform);
		     
		}catch(Exception e){
		  e.printStackTrace();
		}
		return s;
	}
	
	@SuppressWarnings("unchecked")
	public int saveFeesSetting(FeesSetting fees){
		int s = 0;
		try{
			
		   hibernateTemplate.save(fees);
		     
		}catch(Exception e){
		  e.printStackTrace();
		}
		return s;
	}
	
	@SuppressWarnings("unchecked")
	public List<FeesSetting> getFeesSetting(String pcode){
		List<FeesSetting> tmlist = null;
		try{
			String query = "from FeesSetting  where productcode='"+pcode+"'";
			Query insertqforauth = getSession().createQuery(query);
			 if (insertqforauth.list() != null && !insertqforauth.list().isEmpty()) {
				 tmlist = insertqforauth.list();
				  
			 }
			}catch(Exception e){
				e.printStackTrace();
			}
	   	 	return tmlist;
	}
	
	@SuppressWarnings("unchecked")
	public List<FeesSetting> getFeesSettingValue(String feecode){
		List<FeesSetting> tmlist = null;
		try{
			String query = "from FeesSetting where feecode='"+feecode+"'";
			Query insertqforauth = getSession().createQuery(query);
			 if (insertqforauth.list() != null && !insertqforauth.list().isEmpty()) {
				 tmlist = insertqforauth.list();
				  
			 }
			}catch(Exception e){
				e.printStackTrace();
			}
	   	 	return tmlist;
	}
	
	@SuppressWarnings("unchecked")
	public List<TransationMonitoring> getcheckTCode(String tcode){
		List<TransationMonitoring> tmlist = null;
		try{
			String query = "from TransationMonitoring where txncode='"+tcode+"'";
			Query insertqforauth = getSession().createQuery(query);
			 if (insertqforauth.list() != null && !insertqforauth.list().isEmpty()) {
				 tmlist = insertqforauth.list();
				  
			 }
			}catch(Exception e){
				e.printStackTrace();
			}
	   	 	return tmlist;
	}
	
	@SuppressWarnings("unchecked")
	public List<TransationMonitoring> checkTraceNumber(String trnum){
		List<TransationMonitoring> tmlist = null;
		try{
			String query = "from TransationMonitoring where trackno='"+trnum+"'";
			Query insertqforauth = getSession().createQuery(query);
			 if (insertqforauth.list() != null && !insertqforauth.list().isEmpty()) {
				 tmlist = insertqforauth.list();
				  
			 }
			}catch(Exception e){
				e.printStackTrace();
			}
	   	 	return tmlist;
	}
	
	@SuppressWarnings("unchecked")
	public int saveAdjustRefund(RefundAdjustment adj){
		int s = 0;
		try{
			
		   hibernateTemplate.save(adj);
		     
		}catch(Exception e){
		  e.printStackTrace();
		}
		return s;
	}
	
	public int callAccpectandReject(String tid, char status){
		int result = 0;
		try{
			
			String query = "update TransationMonitoring set CHARGEBACK_AUTHORIZE_STATUS ='"+status+"' where id= "+tid+"";
			 Query q =getSession().createQuery(query);
	        result=q.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
        return result;
	}
	
	public int saveAccountAdjustment(AccountAdjustment aa){
		int s = 0;
		try{
			
		   hibernateTemplate.save(aa);
		     
		}catch(Exception e){
		  e.printStackTrace();
		}
		return s;
	}
}
