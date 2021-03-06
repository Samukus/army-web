package com.mkyong.web.controller;

import com.mkyong.web.*;
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
import org.w3c.dom.events.EventException;

import javax.sql.DataSource;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

@Controller
public class MainController {

	@Autowired
	DataSource dataSource;

	@RequestMapping(value = { "/", "/welcome**" }, method = RequestMethod.GET)
	public ModelAndView defaultPage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Army Web - Welcome");
		model.addObject("message", "This is default page!");

		List<PostsEntity> Posts = HibernateUtils.getPosts(0,20);
		if(Posts != null)
			Collections.reverse(Posts);

		model.addObject("posts", Posts);

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
			model.addObject("user", user);

			List<AwardsEntity> Awards = HibernateUtils.getAwardsByUsername(user.getUsername());
			if(Awards != null)
				Collections.reverse(Awards);

			model.addObject("awards", Awards);

			List<DutiesEntity> Duties = HibernateUtils.getDutiesByUsername(user.getUsername());
			if(Duties != null)
				Collections.reverse(Duties);

			model.addObject("dyties",Duties);

			List<EventsEntity> Events = HibernateUtils.getEventsByUsername(user.getUsername());
			if(Events != null)
				Collections.reverse(Events);

			model.addObject("events", Events);

			List<DiagnosesEntity> Daignoses = HibernateUtils.getDiagnosesByUsername(user.getUsername());
			if(Daignoses != null)
				Collections.reverse(Daignoses);

			model.addObject("diagnoses", Daignoses);
		}

		return model;
	}

	@RequestMapping(value = "/post", method = RequestMethod.GET)
	public ModelAndView post(
			@RequestParam(value = "id", required = true) String id) {
		ModelAndView model = new ModelAndView();

		model.setViewName("post-info");

		PostsEntity post= HibernateUtils.getPostById(id);
		if(post != null) {
			model.addObject("post", post);
		}

		return model;
	}

	// save or update user
	// 1. @ModelAttribute bind form value
	// 2. @Validated form validator
	// 3. RedirectAttributes for flash value
	@RequestMapping(value = "/changeuser", method = RequestMethod.POST)
	public ModelAndView changeuser(@ModelAttribute("User") @Validated UsersEntity user)
	{
		HibernateUtils.updateByEntity(user);
		ModelAndView model = new ModelAndView(new RedirectView(String.format("/user?id=%s", user.getUsername())));

		List<UserRolesEntity> roles = HibernateUtils.getRolesByUsername(user.getUsername());

		if(roles == null || roles.size() == 0) {
			UserRolesEntity new_role = new UserRolesEntity();
			new_role.setRole("ROLE_USER");
			new_role.setUsername(user.getUsername());
			HibernateUtils.updateByEntity(new_role);
		}

		return model;
	}

	@RequestMapping(value = "/remove-user", method = RequestMethod.POST)
	public ModelAndView removeUser(@RequestParam(value = "username", required = true) String username)
	{
		UsersEntity user = HibernateUtils.getUserByUsername(username);
		user.setEnabled((byte) 0);
		HibernateUtils.updateByEntity(user);

		ModelAndView model = new ModelAndView(new RedirectView(String.format("/")));
		return model;
	}

	// add post
	// 1. @ModelAttribute bind form value
	// 2. @Validated form validator
	// 3. RedirectAttributes for flash value
	@RequestMapping(value = "/addPost", method = RequestMethod.POST)
	public ModelAndView addPost(@ModelAttribute("Post") @Validated PostsEntity Post)
	{
		HibernateUtils.updateByEntity(Post);
		ModelAndView model = new ModelAndView(new RedirectView("/"));

		return model;
	}

	// add award
	// 1. @ModelAttribute bind form value
	// 2. @Validated form validator
	// 3. RedirectAttributes for flash value
	@RequestMapping(value = "/addAward", method = RequestMethod.POST)
	public ModelAndView changeuser(@ModelAttribute("Award") @Validated AwardsEntity Award)
	{
		HibernateUtils.updateByEntity(Award);
		ModelAndView model = new ModelAndView(new RedirectView(String.format("/user?id=%s", Award.getUsername())));

		return model;
	}

	// add diagnose
	// 1. @ModelAttribute bind form value
	// 2. @Validated form validator
	// 3. RedirectAttributes for flash value
	@RequestMapping(value = "/addDiagnose", method = RequestMethod.POST)
	public ModelAndView changeuser(@ModelAttribute("Diagnose") @Validated DiagnosesEntity Diagnose)
	{
		HibernateUtils.updateByEntity(Diagnose);
		ModelAndView model = new ModelAndView(new RedirectView(String.format("/user?id=%s", Diagnose.getUsername())));

		return model;
	}

	@RequestMapping(value = "/addEvent", method = RequestMethod.POST)
	public ModelAndView changeuser(@ModelAttribute("Event") @Validated EventsEntity Event)
	{
		HibernateUtils.updateByEntity(Event);
		ModelAndView model = new ModelAndView(new RedirectView(String.format("/user?id=%s", Event.getUsername())));

		return model;
	}

	@RequestMapping(value = "/addDuty", method = RequestMethod.POST)
	public ModelAndView changeuser(@ModelAttribute("Duty") @Validated DutiesEntity Duty)
	{
		HibernateUtils.updateByEntity(Duty);
		ModelAndView model = new ModelAndView(new RedirectView(String.format("/user?id=%s", Duty.getUsername())));

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
			model.addObject("username", userDetail.getUsername());
		}

		model.setViewName("403");
		return model;

	}

	@RequestMapping(value = "/remove", method = RequestMethod.GET)
	public void remove(
			@RequestParam(value = "id", required = true) int id,
			@RequestParam(value = "table", required = true) String table) {
		ModelAndView model = new ModelAndView(new RedirectView("/"));

		HibernateUtils.removeById(table, id);
	}

	@RequestMapping(value = "/remove-post", method = RequestMethod.GET)
	public void disable_post(
			@RequestParam(value = "id", required = true) String id) {

		PostsEntity post = HibernateUtils.getPostById(id);
		post.setEnabled(0);
		HibernateUtils.updateByEntity(post);
	}

	@RequestMapping(value = "/addRole", method = RequestMethod.POST)
	public ModelAndView addRole(
			@RequestParam(value = "username", required = true) String username,
			@RequestParam(value = "role", required = true) String role) {
		try {
			UserRolesEntity new_role = new UserRolesEntity();
			new_role.setRole(role);
			new_role.setUsername(username);
			HibernateUtils.updateByEntity(new_role);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ModelAndView model = new ModelAndView(new RedirectView("/"));
			return model;
		}
	}

	@RequestMapping(value = "/removeRole", method = RequestMethod.POST)
	public ModelAndView RemoveRole(
			@RequestParam(value = "username", required = true) String username,
			@RequestParam(value = "role", required = true) String role) {
		try {
			HibernateUtils.removeRoleByUsernameAndRole(username, role);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ModelAndView model = new ModelAndView(new RedirectView("/"));
			return model;
		}
	}
}