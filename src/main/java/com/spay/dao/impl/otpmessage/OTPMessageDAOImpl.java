package com.spay.dao.impl.otpmessage;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import sun.misc.BASE64Decoder;

import com.spay.dao.AbstractDao;
import com.spay.dao.merchant.MerchantDAO;
import com.spay.dao.otpmessage.OTPMessageDAO;
import com.spay.model.merchant.Merchant;
import com.spay.model.otpmessage.OTPMessage;


@Repository("otpmessagedao")
@Transactional
public class OTPMessageDAOImpl extends AbstractDao implements OTPMessageDAO{
	
	 private HibernateTemplate hibernateTemplate;
	 
	 HttpServletRequest request;
	 
	 @Autowired
	 public void setSessionFactory(SessionFactory sessionFactory) {
	        hibernateTemplate = new HibernateTemplate(sessionFactory);
	}

	public void addNewOTPMessageTemplate(OTPMessage otpmessage) {
		// TODO Auto-generated method stub
		System.out.println("In addNewOTPMessageTemplate");
		 try{
			    hibernateTemplate.save(otpmessage);
			  }catch(Exception e){
				  e.printStackTrace();
			  }
	}

	public boolean updateOTPexpiryperiod(OTPMessage otpmessageObj) {
		// TODO Auto-generated method stub
		int result = 0;
		
		boolean isOtpexpiryUpdated = false;
		
		
		 try{
		   hibernateTemplate.saveOrUpdate("OTPMessage", otpmessageObj);
		   isOtpexpiryUpdated = true;
		 }catch(Exception e){
			 isOtpexpiryUpdated= false;
			  e.printStackTrace();
		  }
		
		
		
		return isOtpexpiryUpdated;
	}

	
	
}