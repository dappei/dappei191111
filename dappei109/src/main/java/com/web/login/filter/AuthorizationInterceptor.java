package com.web.login.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.web.login.model.MemberBean;

/**
 * 攔截器必須實現HandlerInterceptor介面
 */
public class AuthorizationInterceptor implements HandlerInterceptor {
	SessionFactory factory;

	@Autowired
	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}

	// 不攔截"/loginForm"和"/login"請求
	@SuppressWarnings("unused")
	private static final String[] IGNORE_URI = {"/","/login" };

	/**
	 * preHandle方法是進行處理器攔截用的，該方法將在Controller處理之前進行呼叫，
	 * 該方法的返回值為true，攔截器才會繼續往下執行，該方法的返回值為false的時候整個請求就結束了。
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("AuthorizationInterceptor preHandle --> ");
		// flag變數用於判斷使用者是否登入，預設為false
		boolean flag = false;
		// 獲取請求的路徑進行判斷
		String servletPath = request.getServletPath();
		// 判斷請求是否需要攔截
		for (String s : IGNORE_URI) {
			if (servletPath.contains(s)) {
				flag = true;
				break;
			}
		}

		// 攔截請求
		if (!flag) {
			// 1.獲取session中的使用者
			MemberBean user = (MemberBean) request.getSession().getAttribute("currentUser");
			// 2.判斷使用者是否已經登入
			if (user == null) {
				// 如果使用者沒有登入，則設定提示資訊，跳轉到登入頁面
				System.out.println("AuthorizationInterceptor攔截請求：");
			} else {
				// 如果使用者已經登入，則驗證通過，放行
				System.out.println("AuthorizationInterceptor放行請求：");
				flag = true;
			}
		}
		return flag;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("AuthorizationInterceptor postHandle --> ");

	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		System.out.println("AuthorizationInterceptor afterCompletion --> ");
	}


}
