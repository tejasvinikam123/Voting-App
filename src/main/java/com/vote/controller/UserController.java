package com.vote.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.vote.model.User;
import com.vote.serviceimpl.UserService;

@Controller

public class UserController {

	@Autowired
	UserService userser;

	@GetMapping("/")
	public String home() {
		System.out.println("this is home page");
		return "home";
	}

	@GetMapping("/login")
	public String loginPage() {

		return "login";
	}		

	int countOne = 0;
	int countTwo = 0;
	int countThree = 0;
	int countFour = 0;

	@RequestMapping("/loginCheck")
	public String showLoginPage(@RequestParam String email, @RequestParam String password, ModelMap map) {

		if (email.equals("admin@gmail.com") && password.equals("admin")) {
			Iterable<User> allData = userser.getAllData();
			for (User user : allData) {
				if (user.getCountvote() == 1) {
					countOne++;

				}
				if (user.getCountvote() == 2) {
					countTwo++;

				}
				if (user.getCountvote() == 3) {
					countThree++;

				}
				if (user.getCountvote() == 4) {
					countFour++;

				}

			}
			map.addAttribute("candidateOne", countOne);
			map.addAttribute("candidateTwo", countTwo);
			map.addAttribute("candidateThree", countThree);
			map.addAttribute("candidateFour", countFour);

			return "votingdata";
		} else {

			boolean checkLogin = userser.checkLogin(email, password);
			System.out.println(checkLogin);
			if (checkLogin) {
				map.addAttribute("invalid", "you are already voted");
				return "login";
			} else {
				map.addAttribute("valid", "Login succesfully......");
				return "voting";
			}
		}

	}

	@GetMapping("/register")
	public String showRegistrationPage() {
		return "register";
	}

	@GetMapping("/votingOne")
	public String showVotingPage() {
		return "voting";
	}

	@PostMapping("/register")
	public String processRegistration(@ModelAttribute User user, ModelMap map) {
		userser.savedata(user);
		map.addAttribute("reg", "Register succesfully.....");
		return "login";
	}

	@RequestMapping("/voting")
	public String updatevoter(@RequestParam Integer userid, @RequestParam Integer vote,ModelMap map) {

		System.out.println(userid);
		System.out.println(vote);

		userser.updateData(userid, vote);
        map.addAttribute("vote", "You have succesfully voted");
		return "login";
	}

}
