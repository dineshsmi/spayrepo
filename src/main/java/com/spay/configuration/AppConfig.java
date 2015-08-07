package com.spay.configuration;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.ResourceBundleViewResolver;
import org.springframework.web.servlet.view.jasperreports.JasperReportsMultiFormatView;
import org.springframework.web.servlet.view.jasperreports.JasperReportsPdfView;
import org.springframework.web.servlet.view.jasperreports.JasperReportsViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "com.spay.")
public class AppConfig extends WebMvcConfigurerAdapter{
	
	
	

	
	@Bean
	public ViewResolver viewResolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setViewClass(JstlView.class);
		viewResolver.setPrefix("/WEB-INF/views/jsp/");
		viewResolver.setSuffix(".jsp");
		//viewResolver.setOrder(1);

		return viewResolver;
	}
	
	
	/*@Bean
	public JasperReportsViewResolver getJasperReportsViewResolver() {
		
	  JasperReportsViewResolver resolver = new JasperReportsViewResolver();
	  resolver.setPrefix("classpath:/");
	  resolver.setSuffix(".jrxml");
	  resolver.setReportDataKey("datasource");
	  //resolver.setViewNames("rpt_*");
	  resolver.setViewClass(JasperReportsMultiFormatView.class);
	
	  //resolver.setOrder(1);
	  
	  return resolver;
	}  */
	
	
	/*@Bean JasperReportsPdfView pdfReport(){
		
		JasperReportsPdfView jsasperpdfview = new JasperReportsPdfView();
		
		jsasperpdfview.setUrl("classpath:dailytransactionsreport.jrxml");
		jsasperpdfview.setReportDataKey("datasource");
		
		
		return jsasperpdfview;
	}*/
	
	
	
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**").addResourceLocations("/WEB-INF/resources/assets/");
        registry.addResourceHandler("/jrxmlpath/**").addResourceLocations("/WEB-INF/reportjrxml/");
    }
	
	@Bean
	public MessageSource messageSource() {
	    ResourceBundleMessageSource messageSource = new ResourceBundleMessageSource();
	    messageSource.setBasename("messages");
	    return messageSource;
	}
	
	
	/*@Bean
	public JasperReportsPdfView pdfReport(){
		
		JasperReportsPdfView jspreport = new JasperReportsPdfView();
		
		jspreport.setUrl("classpath:dailytransactionsreport.jrxml");
		jspreport.setReportDataKey("datasource");
		
		return jspreport;
	
	} */
	
	
}

