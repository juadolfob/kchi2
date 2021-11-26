package controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class MembersController {
	
    @RequestMapping("/index")  
    public String main()
    {  
		return "index";
    } 
	@RequestMapping("/signIn")  
    public String signin()  
    {  
		return "login";
    }
     
	@RequestMapping("/signUp")  
    public String registerPage()  
    {  
		return "register";
    }
	@RequestMapping("/resultMembers")  
	 public String  resultMembers(HttpServletRequest servlet)
    {  
		return "landing-page";
    }
	
    
	@RequestMapping("/registerMember") 
	 public String registerMember(HttpServletRequest servlet)
	 {
		 return "landing-page";
	 }
	
	
}
