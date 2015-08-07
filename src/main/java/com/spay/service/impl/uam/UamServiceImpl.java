package com.spay.service.impl.uam;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spay.dao.uam.UamDAO;
import com.spay.model.merchant.Admin;
import com.spay.model.merchant.BranchCode;
import com.spay.model.merchant.DepartmentDesignation;
import com.spay.model.uam.AssignRights;
import com.spay.model.uam.AuditTrial;
import com.spay.model.uam.UserRegistration;
import com.spay.service.uam.UamService;

@Service("UamService")
public class UamServiceImpl implements UamService{

	@Autowired
	UamDAO uamdao;
	
	public int savePermission(AssignRights ar){
		return uamdao.savePermission(ar);
	}

	public int saveRegistration(UserRegistration ur) {
		return uamdao.saveRegistration(ur);
	}
	
	public List<UserRegistration> checkEmpId(String empid){
		
		List<UserRegistration> ur = null;
		try{
			ur = uamdao.checkEmpId(empid);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return ur;
	}
	
	public List<Admin> getAdminDetails(){
		List<Admin> ur = null;
		try{
			ur = uamdao.getAdminDetails();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return ur;
	}
	
	public List<AuditTrial> searchUserAudit(String uname, String fdate,
			String tdate){
		List<AuditTrial> ur = null;
		try{
			ur = uamdao.searchUserAudit(uname,fdate,tdate);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return ur;
	}

	@Override
	public List<UserRegistration> getEmailIdbyEmpId(String empid) {
		// TODO Auto-generated method stub
		return uamdao.getEmailIdbyEmpId(empid);
	}
	
	public List<BranchCode> getBranchCode(){
		List<BranchCode> ur = null;
		try{
			ur = uamdao.getBranchCode();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return ur;
	}
	
	public List<DepartmentDesignation> getDDvalue(){
		List<DepartmentDesignation> ur = null;
		try{
			ur = uamdao.getDDvalue();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return ur;
	}
}
