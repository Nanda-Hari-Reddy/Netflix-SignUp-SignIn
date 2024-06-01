package com.jsp.netflix.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.netflix.dao.UserDao;
import com.jsp.netflix.dto.User;
@Controller
public class UserController 
{
	@Autowired  
	UserDao userDao;
	@RequestMapping("/regesterEmail")
	public ModelAndView saveUser(HttpSession session,HttpServletRequest req)
	{
		String email = req.getParameter("email");
		User user = new User();
		session.setAttribute("email", email);
		System.out.println("regester"+user);
		ModelAndView mav = new ModelAndView("SignUp");
		mav.addObject("User", user);
		return mav;
	}
	@RequestMapping("/regester")
	
	public ModelAndView saveUser(@ModelAttribute("User") User user,HttpSession session)
	{
		session.setAttribute("user", user);
		System.out.println("regester"+user);
		userDao.saveUser(user);
		
		ModelAndView mav = new ModelAndView("HomePage");
		return mav;
	}
	@RequestMapping("/validateuser")
	public ModelAndView validateUser(HttpServletRequest req)
	{
		String email = req.getParameter("email") ;
		String password = req.getParameter("password") ;
		User user = (User)userDao.validateUser(email, password) ; 
		if(user!=null) 
		{
			ModelAndView mav = new ModelAndView("HomePage") ;
			HttpSession hs = req.getSession() ;
			hs.setAttribute("user", user) ;
			return mav ;
		}
		else 
		{
			ModelAndView mav = new ModelAndView("SignIn") ;
			mav.addObject("msg", "invalid credentials Try Again") ;
			return mav ;
		}
	}
}
