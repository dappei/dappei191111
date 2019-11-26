package com.web._init.viewResolver;

import java.util.Locale;

import javax.servlet.ServletContext;

import org.springframework.web.servlet.View;
import org.springframework.web.servlet.ViewResolver;

import com.web._init.view.EticketPdfView;
 
public class PdfViewResolver implements ViewResolver{
	
	ServletContext context;
	
	public PdfViewResolver(ServletContext context) {
		this.context = context;
	}
	@Override
	public View resolveViewName(String viewName, Locale locale) throws Exception {
		View view = null;
		viewName.startsWith("event/EventReceipt");
		view = new EticketPdfView();
		
		System.out.println("PdfViewResolver, viewName=" + viewName + ", return value=" + view);
		return view;
      }
	
}