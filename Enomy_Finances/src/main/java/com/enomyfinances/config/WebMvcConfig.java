package com.enomyfinances.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan(basePackages="com.enomyfinances")
@EnableWebMvc
public class WebMvcConfig implements WebMvcConfigurer {

	@Bean(name = "viewResolver")
	public InternalResourceViewResolver getViewResolver() {
		InternalResourceViewResolver internalResourceViewResolver = new InternalResourceViewResolver();
		
		internalResourceViewResolver.setPrefix("/WEB-INF/views/");
		
		internalResourceViewResolver.setSuffix(".jsp");
		
		return internalResourceViewResolver;
		
	}

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
				
		      if (!registry.hasMappingForPattern("/static/**")) {
		      	System.out.println("/////////////////// Resources Handlers 2 //////////////////");
		      	registry.addResourceHandler(
		                  "/images/**",
		                  "/css/**",
		                  "/js/**")
		                  .addResourceLocations(
		                          "classpath:/static/images/",
		                          "classpath:/static/css/",
		                          "classpath:/static/js/");
		      	
		      }
	}

	
}