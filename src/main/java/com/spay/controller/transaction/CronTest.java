package com.spay.controller.transaction;

import java.util.Timer;

import org.quartz.CronScheduleBuilder;
import org.quartz.JobBuilder;
import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.SchedulerFactory;
import org.quartz.SimpleScheduleBuilder;
import org.quartz.Trigger;
import org.quartz.TriggerBuilder;

import org.quartz.impl.StdSchedulerFactory;

public class CronTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		
		try {
			
			         JobDetail job = JobBuilder.newJob(MyTask.class).withIdentity("MyTask").build();
			        
			         
			         /*Trigger trigger = TriggerBuilder.newTrigger().withSchedule(SimpleScheduleBuilder.simpleSchedule()
				                                                                            .withIntervalInSeconds(10)
					                                                                            .repeatForever())
						                                          .build();*/
			         
			         Trigger trigger = TriggerBuilder.newTrigger()
			        		 .withSchedule(CronScheduleBuilder.cronSchedule("0/5 * * * * ?"))
			        		 .build();
			         
			         

			         
			         //schedule the job
			         SchedulerFactory schFactory = new StdSchedulerFactory();
			         Scheduler sch = schFactory.getScheduler();
			         sch.start();
			         sch.scheduleJob(job, trigger);
			
			 
			
		 } catch (SchedulerException e) {
			         e.printStackTrace();
		 }

	}

}
