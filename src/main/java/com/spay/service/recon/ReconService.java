package com.spay.service.recon;

import java.util.List;

import com.spay.model.transaction.TransationMonitoring;


public interface ReconService {

	List<TransationMonitoring> getDetailsforBcelatmandunionpay();

	List<TransationMonitoring> getbceljcbtransactiondetails();

	List<TransationMonitoring> getoffusunionpaytxndetails();

	List<TransationMonitoring> downloadAlltransactions();

	
}

