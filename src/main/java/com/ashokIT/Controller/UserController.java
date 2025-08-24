package com.ashokIT.Controller;

import com.ashokIT.Entity.Registration;
import com.ashokIT.Entity.Task;
import com.ashokIT.Entity.login;
import com.ashokIT.Repository.taskRepo;
import com.ashokIT.Repository.userRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController {

	
	@Autowired
	userRepo dbuser;
	taskRepo taskIn;

    
	@GetMapping("/")
	public String welcome() {
		return "index";
	}
	@GetMapping("/reg")
	public String reg() {
		return "reg";
		
	}
	@PostMapping("/registerUser")
	@ResponseBody
	public String regSuccfull(Registration regUser) {
		dbuser.save(regUser);
		return "Successfully";
	}
	
	@GetMapping("/login")
	public String log() {
		return "login";
	}
	
	
	
	
	@PostMapping("/checkLogin")
	public String checklog(login log,Model model) {
		System.out.println(log);
		String email = log.getEmail();
		String password = log.getPassword();
		Registration user = dbuser.findByEmailAndPassword(email,password);
		System.out.println(user);
//		session.setAttribute("user", user);
		model.addAttribute("user",user);
		
		if(user != null) {
			
			return "userLogin";
		}
		else {
			return "Incorrect";
		}
		
	}
	
	@GetMapping("/logout")
	public String out() {
		return "index";
	}
	
	@PostMapping("/addTask")
//	@ResponseBody
	public String addTask(  Task task) {
//	    Task task = new Task();
//	    task.setTask(giventask);
//	    System.out.println(giventask);
	    // save task in DB
		 System.out.println("Task ID: " + task.getTaskId());
		    System.out.println("Task Name: " + task.getTask());
		    
	    return "userLogin";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

