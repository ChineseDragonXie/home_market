package com.homemarket.system.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {
	/**
	 * 跳转到登录页面
	 * @return
	 */
	@RequestMapping("/gologin")
	public String gologin(){
		return "user/login";
	}

	@RequestMapping("/userRegister")
	public String userRegister(){
		return "userRegister";
	}

	/**
	 * 退出
	 * @return
	 */
	@RequestMapping("/logout")
	public String logout(){
		Subject subject = SecurityUtils.getSubject();
		subject.logout();
		return "user/login";
	}
	/**
	 * 登录
	 * @param username
	 * @param password
	 * @param request
	 * @return
	 */
	@RequestMapping("/login")
	public String login(String username,String password,HttpServletRequest request,HttpSession session){
		System.out.println("---------------------------------");
		System.out.println(username);
		System.out.println(password);
		Subject subject = SecurityUtils.getSubject();
		UsernamePasswordToken token = new UsernamePasswordToken(username,password);
		try {
			subject.login(token);
			return "redirect:pageController/main";
		} catch (AuthenticationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			request.getSession().setAttribute("error","账号密码错误");
			return "user/login";
		}
	}
}
