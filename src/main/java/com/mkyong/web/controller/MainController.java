package com.mkyong.web.controller;

import com.mkyong.web.HibernateUtils;
import com.mkyong.web.UsersEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.sql.DataSource;

@Controller
public class MainController {

	@Autowired
	DataSource dataSource;

	@RequestMapping(value = { "/", "/welcome**" }, method = RequestMethod.GET)
	public ModelAndView defaultPage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Army Web - Welcome");
		model.addObject("message", "This is default page!");

		model.setViewName("hello");
		return model;

	}

	@RequestMapping(value = { "/staff"}, method = RequestMethod.GET)
	public ModelAndView staff() {
		ModelAndView model = new ModelAndView();
		model.addObject("title", "Army Web - Staff");
		model.addObject("users", HibernateUtils.getUsersByRole("ROLE_ADMIN"));

		model.setViewName("staff");
		return model;
	}

	@RequestMapping(value = { "/recruits"}, method = RequestMethod.GET)
	public ModelAndView recruits() {
		ModelAndView model = new ModelAndView();
		model.addObject("title", "Army Web - Recruits");
		model.addObject("users", HibernateUtils.getUsers(0,20));

		model.setViewName("recruits");
		return model;
	}

	@RequestMapping(value = "/admin**", method = RequestMethod.GET)
	public ModelAndView adminPage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Login Form - Database Authentication");
		model.addObject("message", "This page is for ROLE_ADMIN only!");
		model.setViewName("admin");

		return model;

	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid username and/or password!");
		}

		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		}
		model.setViewName("login");

		return model;

	}

	@RequestMapping(value = "/user", method = RequestMethod.GET)
	public ModelAndView user(
			@RequestParam(value = "id", required = true) String id) {
		ModelAndView model = new ModelAndView();
//		hibernateUtils hibernateU = new hibernateUtils();
//		Session sessionFactory = hibernateU.getSession();

		model.setViewName("user-info");

//		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//		if (!(auth instanceof AnonymousAuthenticationToken)) {
//			UserDetails userDetail = (UserDetails) auth.getPrincipal();
//
//			if(id != null && id.compareTo(userDetail.getUsername()) == 0) {
//				model.addObject("owner", true);
//			}
//		}

		UsersEntity user = HibernateUtils.getUserByUsername(id);
		if(user != null) {
			model.addObject("fname", user.getFname());
			model.addObject("sname", user.getSname());
			model.addObject("tname", user.getTname());
			model.addObject("date", user.getDate());
			model.addObject("role", user.getWorkRole());
			model.addObject("category", user.getCategory());
			model.addObject("description", user.getDescription());
			model.addObject("rank", user.getRank());
			model.addObject("status", user.getStatus());
			model.addObject("phone", user.getPhone());
			model.addObject("address", user.getAdress());
			model.addObject("email", user.getEmail());

			model.addObject("user", user);
			model.addObject("awards",    HibernateUtils.getAwardsByUsername(user.getUsername()));
			model.addObject("dyties",    HibernateUtils.getDutiesByUsername(user.getUsername()));
			model.addObject("events",    HibernateUtils.getEventsByUsername(user.getUsername()));
			model.addObject("diagnoses", HibernateUtils.getDiagnosesByUsername(user.getUsername()));
		}

		return model;
	}

//	@RequestMapping(value = "/user", method = RequestMethod.POST)
//	public String userSubmit(@RequestParam(value = "id", required = true) String id,
//							 @RequestParam(value = "fname", required = false) String fname,
//							 @RequestParam(value = "sname", required = false) String sname,
//							 @RequestParam(value = "tname", required = false) String tname,
//							 @RequestParam(value = "date", required = false) Date date,
//							 @RequestParam(value = "role", required = false) String role,
//							 @RequestParam(value = "category", required = false) String category,
//							 @RequestParam(value = "description", required = false) String description,
//							 @RequestParam(value = "rank", required = false) String rank,
//							 @RequestParam(value = "status", required = false) String status,
//							 @RequestParam(value = "phone", required = false) String phone,
//							 @RequestParam(value = "address", required = false) String address,
//							 @RequestParam(value = "email", required = false) String email) {
//
//			UsersEntity user = new UsersEntity();
//				user.setFname(fname));
//				model.addObject("sname", user.getSname());
//				model.addObject("tname", user.getTname());
//				model.addObject("date", user.getDate());
//				model.addObject("role", user.getWorkRole());
//				model.addObject("category", user.getCategory());
//				model.addObject("description", user.getDescription());
//				model.addObject("rank", user.getRank());
//				model.addObject("status", user.getStatus());
//				model.addObject("phone", user.getPhone());
//				model.addObject("address", user.getAdress());
//				model.addObject("email", user.getEmail());
//			}

//	@RequestMapping(value = "/user", method = RequestMethod.POST)
//
//		return model;
//	}


	// save or update user
	// 1. @ModelAttribute bind form value
	// 2. @Validated form validator
	// 3. RedirectAttributes for flash value
	@RequestMapping(value = "/changeuser", method = RequestMethod.POST)
	public ModelAndView changeuser(@ModelAttribute("User") @Validated UsersEntity user)
	{
		HibernateUtils.updateUserByEntity(user);
		ModelAndView model = new ModelAndView(new RedirectView(String.format("/user?id=%s", user.getUsername())));

		return model;
	}

	//for 403 access denied page
	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public ModelAndView accesssDenied() {

		ModelAndView model = new ModelAndView();
		
		//check if user is login
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
		
			model.addObject("username", userDetail.getUsername());
			model.addObject("username", userDetail.getUsername());
			
		}
		
		model.setViewName("403");
		return model;

	}



}