package cs157a.retailinWebApp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	@GetMapping("/")
	public String showHome() {
		return "index";
	}
	
	@GetMapping("/help")
	public String help() {
		return "help";
	}
}
