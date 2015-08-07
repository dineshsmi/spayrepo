package com.spay.dao.recon;

import java.util.List;

import com.spay.model.transaction.TransationMonitoring;


public interface ReconDAO {
	
	List<TransationMonitoring> getDetailsforBcelatmandunionpay();

	List<TransationMonitoring> getbceljcbtransactiondetails();

	List<TransationMonitoring> getoffusunionpaytxndetails();

	List<TransationMonitoring> downloadAlltransactions();

	
}
