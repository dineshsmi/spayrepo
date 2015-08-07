package com.spay.controller.transaction;

import javax.servlet.http.HttpServletRequest;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

public class MyTask implements Job {

	
	public void execute(JobExecutionContext jExeCtx) throws JobExecutionException {
		
		try{
		
		
		System.out.println("cron date 1=>");
		
		  /*System.out.println("cron date=>"+date);
		  System.out.println("cron mounth=>"+mounth);
		  System.out.println("cron year=>"+year);*/
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
}
