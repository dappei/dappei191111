package com.web._init.config;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.web.accept.ContentNegotiationManager;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.ContentNegotiatingViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import com.web._init.viewResolver.PdfViewResolver;


@Configuration
@EnableWebMvc

@ComponentScan({ "com.web._init.config","com.web._init.controller", "com.web.blog.controller", 
		"com.web.blog.dao.impl","com.web.blog.service.impl", "com.web.event.controller", 
		"com.web.event.dao.impl","com.web.event.service.impl", "com.web.login.controller",
		"com.web.login.dao.impl","com.web.login.service.impl", "com.web.maintain.event.controller",
		"com.web.store.controller","com.web.store.dao.impl","com.web.store.service.impl",
		"com.web.announcement.controller","com.web.announcement.dao.impl","com.web.announcement.service.impl",
		"com.web.maintain.store.controller","com.web.maintain.member.controller"})

public class WebAppConfig extends WebMvcConfigurerAdapter {
	
	@Autowired
	ServletContext context;
	//設置內部協商解析器
	@Bean
	public ViewResolver contentNegotiatingViewResolver(ContentNegotiationManager manager) {
		ContentNegotiatingViewResolver resolver = new ContentNegotiatingViewResolver();
		resolver.setContentNegotiationManager(manager);
		ArrayList<View> views = new ArrayList<>();
		List<ViewResolver> resolvers = new ArrayList<ViewResolver>();
		views.add(jsonView());
		resolvers.add(jspViewResolver());
		resolvers.add(pdfViewResolver(context));
		resolver.setDefaultViews(views);
		resolver.setViewResolvers(resolvers);
		return resolver;
	}
	//Spring提供的JSP解析器
	@Bean
	public ViewResolver jspViewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setViewClass(JstlView.class);
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");
		return resolver;
	}
	//自行設計PDF解析器
	@Bean
	public ViewResolver pdfViewResolver(ServletContext context) {
		return new PdfViewResolver(context);
	}
	
	@Bean
	public MappingJackson2JsonView jsonView() {
		MappingJackson2JsonView view = new MappingJackson2JsonView();
		view.setPrettyPrint(true);
		return view;
	}
	@Bean
	public MessageSource messageSource() {
		ResourceBundleMessageSource resource = new ResourceBundleMessageSource();
		resource.setBasename("messages");
		return resource;
	}

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/css/**").addResourceLocations("/WEB-INF/views/css/");
		registry.addResourceHandler("/js/**").addResourceLocations("/WEB-INF/views/js/");
		registry.addResourceHandler("/image/**").addResourceLocations("/WEB-INF/views/images/");
		registry.addResourceHandler("/indeximage/**").addResourceLocations("/WEB-INF/views/indeximage/");

	}

	@Bean
	public CommonsMultipartResolver multipartResolver() {
		CommonsMultipartResolver resolver = new CommonsMultipartResolver();
		resolver.setDefaultEncoding("UTF-8");
		resolver.setMaxUploadSize(81920000);
		return resolver;
	}

}
