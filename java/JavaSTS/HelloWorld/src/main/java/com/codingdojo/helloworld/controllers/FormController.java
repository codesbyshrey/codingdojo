package com.codingdojo.helloworld.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;

@Controller
public class FormController {
	@RequestMapping("/form")
	public String index() {
		return "form.jsp";
	}

	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(
			@RequestParam(value="email") String email,
			@RequestParam(value="password") String password,
			HttpSession session) {
		session.setAttribute("email", email);
		session.setAttribute("password", password);
		// CODE TO PROCESS FORM
		//return "results.jsp";
		return "redirect:/homesession";
	}
	
	@RequestMapping("/search")
	public String search() {
		return "search.jsp";
	}
	
	@RequestMapping("/homesession")
	public String home() {
		// return "results.jsp";
		return "welcome.jsp";
	}
}
