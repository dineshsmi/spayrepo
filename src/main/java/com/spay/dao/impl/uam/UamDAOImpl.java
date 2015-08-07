package com.spay.dao.impl.uam;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spay.dao.AbstractDao;
import com.spay.dao.uam.UamDAO;
import com.spay.model.merchant.Admin;
import com.spay.model.merchant.BranchCode;
import com.spay.model.merchant.DepartmentDesignation;
import com.spay.model.transaction.TransationMonitoring;
import com.spay.model.uam.AssignRights;
import com.spay.model.uam.AuditTrial;
import com.spay.model.uam.UserRegistration;

@Repository("uamdao")
@Transactional
public class UamDAOImpl extends AbstractDao implements UamDAO {

	private HibernateTemplate hibernateTemplate;
	HttpServletRequest request;
	 
	 @Autowired
	 public void setSessionFactory(SessionFactory sessionFactory) {
	        hibernateTemplate = new HibernateTemplate(sessionFactory);
	}
	
	public int savePermission(AssignRights ar) {
		int s = 0;
		try{
			
		   hibernateTemplate.save(ar);
		     
		}catch(Exception e){
		  e.printStackTrace();
		}
		return s;
	}
	
	public int saveRegistration(UserRegistration ur) {
		int s = 0;
		try{
			
		   hibernateTemplate.save(ur);
		     
		}catch(Exception e){
		  e.printStackTrace();
		}
		return s;
	}
	
	@SuppressWarnings("unchecked")
	public List<UserRegistration> checkEmpId(String empid){
		List<UserRegistration> tmlist = null;
		try{
			String query = "from UserRegistration where empid='"+empid+"'";
			Query insertqforauth = getSession().createQuery(query);
			 if (insertqforauth.list() != null && !insertqforauth.list().isEmpty()) {
				 tmlist = insertqforauth.list();
				  
			 }
			}catch(Exception e){
				e.printStackTrace();
			}
	   	 	return tmlist;
	}
	
	public List<Admin> getAdminDetails(){
		List<Admin> tmlist = null;
		try{
			String query = "from Admin";
			Query insertqforauth = getSession().createQuery(query);
			 if (insertqforauth.list() != null && !insertqforauth.list().isEmpty()) {
				 tmlist = insertqforauth.list();
				  
			 }
			}catch(Exception e){
				e.printStackTrace();
			}
	   	 	return tmlist;
	}
	
	public List<BranchCode> getBranchCode(){
		List<BranchCode> tmlist = null;
		try{
			String query = "from BranchCode";
			Query insertqforauth = getSession().createQuery(query);
			 if (insertqforauth.list() != null && !insertqforauth.list().isEmpty()) {
				 tmlist = insertqforauth.list();
				  
			 }
			}catch(Exception e){
				e.printStackTrace();
			}
	   	 	return tmlist;
	}
	
	public List<DepartmentDesignation> getDDvalue(){
		List<DepartmentDesignation> tmlist = null;
		try{
			String query = "from DepartmentDesignation";
			Query insertqforauth = getSession().createQuery(query);
			 if (insertqforauth.list() != null && !insertqforauth.list().isEmpty()) {
				 tmlist = insertqforauth.list();
				  
			 }
			}catch(Exception e){
				e.printStackTrace();
			}
	   	 	return tmlist;
	}
	
	public List<AuditTrial> searchUserAudit(String uname, String fdate,
			String tdate){
		List<AuditTrial> tmlist = null;
		try{
			String query = "from AuditTrial where user_name='Mani' and log_date >='"+fdate+"' and log_date<='"+tdate+"'";
			Query insertqforauth = getSession().createQuery(query);
			 if (insertqforauth.list() != null && !insertqforauth.list().isEmpty()) {
				 tmlist = insertqforauth.list();
				  
			 }
			}catch(Exception e){
				e.printStackTrace();
			}
	   	 	return tmlist;
	}

	@Override
	public List<UserRegistration> getEmailIdbyEmpId(String empId) {
		// TODO Auto-generated method stub
		
		List<UserRegistration> userRegistrationList = null;
		try{
			String query = "from UserRegistration where EMPID = "+"'"+empId+"'";
			Query insertqforauth = getSession().createQuery(query);
			 if (insertqforauth.list() != null && !insertqforauth.list().isEmpty()) {
				 userRegistrationList = insertqforauth.list();
				  
			 }
			}catch(Exception e){
				e.printStackTrace();
			}
	   	 	return userRegistrationList;
	   	 	
		
	}
	

}
