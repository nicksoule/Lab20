package com.gc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/*
 * @author: Nicholas Soule
 *
 */

@Controller
public class HomeController {

	@RequestMapping("/welcome")
	public String registrationForm() {
		return "registration";
	}

	@RequestMapping("success")
	public ModelAndView registrationSuccess(@RequestParam("fName") String firstName,
			@RequestParam("dropDown") String option, @RequestParam("dropDown2") String option2) {

		String sayHello = "Hello, " + firstName + ". Your " + option2 + " " + option + " is coming right up!";
		// first parameter is the name of the jsp
		// second parameter is the name of the EL tag variable name
		// third parameter is an objet or the data that should go back into our jsp page
		return new ModelAndView("success", "helloMsg", sayHello);
	}
}