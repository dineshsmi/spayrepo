package com.spay.service.impl.recon;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spay.dao.recon.ReconDAO;
import com.spay.model.transaction.TransationMonitoring;
import com.spay.service.recon.ReconService;


@Service("reconService")
@Transactional
public class ReconServiceImpl implements ReconService{
	
	@Autowired
	ReconDAO recondao;

	
	public List<TransationMonitoring> getDetailsforBcelatmandunionpay(){
		// TODO Auto-generated method stub
		
		return recondao.getDetailsforBcelatmandunionpay();
		  
		
	}

	
	public List<TransationMonitoring> getbceljcbtransactiondetails() {
		// TODO Auto-generated method stub
		return recondao.getbceljcbtransactiondetails();
	}

	
	public List<TransationMonitoring> getoffusunionpaytxndetails() {
		// TODO Auto-generated method stub
		return recondao.getoffusunionpaytxndetails();
	}

	
	public List<TransationMonitoring> downloadAlltransactions() {
		// TODO Auto-generated method stub
		return recondao.downloadAlltransactions();
	}
	
	
}
