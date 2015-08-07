package com.spay.service.chargeback;

import java.util.List;

import com.spay.model.transaction.TransationMonitoring;

public interface ChargebackService {

	List<TransationMonitoring> showChargeback(TransationMonitoring txnmonitoring);

	boolean updateChargebackstatus(String strStatus,String strMerchantId);

	boolean updateIsChargebackRaised(String strPKId);

	List<TransationMonitoring> getChargeBackRaisedMerchants(String strMerchantId);

	List<TransationMonitoring> getChargebackrasiedDetailsByMerId(
			String strMerchantId);

	

}

