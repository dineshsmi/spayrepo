package com.spay.service.impl.chargeback;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spay.dao.chargeback.ChargebackDAO;
import com.spay.model.transaction.TransationMonitoring;
import com.spay.service.chargeback.ChargebackService;


@Service("chargebackService")//chargebackService
@Transactional
public class ChargebackServiceImpl implements ChargebackService{

	@Autowired  
	ChargebackDAO chargebackDAO;
	
	public List<TransationMonitoring> showChargeback(TransationMonitoring txnmonitoring) {
		
		List<TransationMonitoring> trnmonitoring= chargebackDAO.showChargeback(txnmonitoring);
		
		return trnmonitoring;
	
	}

	
	public boolean updateChargebackstatus(String strStatus,String strMerchantId) {
		// TODO Auto-generated method stub
		
		return chargebackDAO.updateChargebackstatus(strStatus,strMerchantId);
	}

	
	public boolean updateIsChargebackRaised(String strPKId) {
		// TODO Auto-generated method stub
		return chargebackDAO.updateIsChargebackRaised(strPKId);
	}

	
	public List<TransationMonitoring> getChargeBackRaisedMerchants(
			String strMerchantId) {
		// TODO Auto-generated method stub
		return chargebackDAO.getChargeBackRaisedMerchants(strMerchantId);
	}

	
	public List<TransationMonitoring> getChargebackrasiedDetailsByMerId(
			String strMerchantId) {
		// TODO Auto-generated method stub
		return chargebackDAO.getChargebackrasiedDetailsByMerId(strMerchantId);
	}	
	

	
}
