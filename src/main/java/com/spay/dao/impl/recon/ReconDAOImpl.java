package com.spay.dao.impl.recon;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Query;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spay.dao.AbstractDao;
import com.spay.dao.recon.ReconDAO;
import com.spay.model.transaction.TransationMonitoring;


@Repository("recondao")
@Transactional
public class ReconDAOImpl extends AbstractDao implements ReconDAO{	
	
	 private HibernateTemplate hibernateTemplate;
	 
	 HttpServletRequest request;
	 
	 
	/* 
	 * General Details of BIN
	 * ATM Card Bin - 888888
	   Unionpay Card Bin - 621354
	   JCB Card Bin - 356971, 356970
	 */

	public List<TransationMonitoring> getDetailsforBcelatmandunionpay() {
		// TODO Auto-generated method stub
		
		List<TransationMonitoring> merchantdetails = null;
		
		//Integer range -2147483647 to 2147483647
		////BCEL atm and UnionPay
		String hql = "from TransationMonitoring WHERE BIN_NUMBER LIKE '888888%' OR BIN_NUMBER LIKE '62%' ";
		
		Query query = getSession().createQuery(hql);
	
		if (query.list() != null && !query.list().isEmpty()) {
			merchantdetails = query.list();

		}
		
		return merchantdetails;
		
		
	}

	// Only JCB Card Bin - 356971, 356970


	public List<TransationMonitoring> getbceljcbtransactiondetails() {
		// TODO Auto-generated method stub
		
		List<TransationMonitoring> merchantdetails = null;
		
		//BCEL JCB Card Txn Details
		//JCB Card Bin - 356971, 356970
        String hql = "from TransationMonitoring WHERE BIN_NUMBER IN ('356970','356971') ";
		
		Query query = getSession().createQuery(hql);
	
		if (query.list() != null && !query.list().isEmpty()) {
			merchantdetails = query.list();

		}
		
		return merchantdetails;
	}

	
	public List<TransationMonitoring> getoffusunionpaytxndetails() {
		// TODO Auto-generated method stub
		//Unionpay Card Bin - 621354
		List<TransationMonitoring> merchantdetails = null;
		
		 String hql = "from TransationMonitoring WHERE BIN_NUMBER LIKE '62%' ";
			
			Query query = getSession().createQuery(hql);
		
			if (query.list() != null && !query.list().isEmpty()) {
				merchantdetails = query.list();

			}
			
			return merchantdetails;
		
	}

	@SuppressWarnings("unchecked")
	public List<TransationMonitoring> downloadAlltransactions() {
		// TODO Auto-generated method stub
		
	
		List<TransationMonitoring> bcelandUnionpayList = null;
		List<TransationMonitoring> bceljcbtransactionList = null;
		List<TransationMonitoring> offusunionpayList = null;
		
		List<TransationMonitoring> completeList = new ArrayList<TransationMonitoring>();
		@SuppressWarnings("rawtypes")
		List allDownloadList = new ArrayList();
		
        String hql = "from TransationMonitoring WHERE BIN_NUMBER LIKE '888888%' OR BIN_NUMBER LIKE '62%' ";
		Query bcelandUnionpay = getSession().createQuery(hql);
	    if (bcelandUnionpay.list() != null && !bcelandUnionpay.list().isEmpty()) {
			bcelandUnionpayList = bcelandUnionpay.list();
			
			

		}
		
	    
	    String hqlbceljcb = "from TransationMonitoring WHERE BIN_NUMBER IN ('356970','356971') ";
	    Query bceljcb = getSession().createQuery(hqlbceljcb);
	    if (bceljcb.list() != null && !bceljcb.list().isEmpty()) {
	    	bceljcbtransactionList = bceljcb.list();

		}
	    
	    
	    
	    String hqloffusunion = "from TransationMonitoring WHERE BIN_NUMBER LIKE '62%'  ";
	    Query offusunion = getSession().createQuery(hqloffusunion);
	    if (offusunion.list() != null && !offusunion.list().isEmpty()) {
	    	offusunionpayList = offusunion.list();

		}
	    
	 	
	    
	    completeList.addAll(bcelandUnionpayList);
	    completeList.addAll(bceljcbtransactionList);
	    completeList.addAll(offusunionpayList);
	    
	    System.out.println("completeList==>"+completeList);
	    
	    return completeList;
		
		
	}
	 

}