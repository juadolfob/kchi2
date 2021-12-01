package controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import models.LDRoles;
import services.MembersServices;


@Controller
public class MembersController {
	
    @RequestMapping("/members")  
    public String main()
    {  
		return "LBP/index";
    } 
	@RequestMapping("/signIn")  
    public String signin()  
    {  
		return "Users/login";
    }
     
	@RequestMapping("/signUp")  
    public String registerPage(Model model)  
    {  
		List<LDRoles> ldroleslist = new MembersServices().getLDRoles();
		model.addAttribute("ldroles",ldroleslist);
		return "Users/register";
    }
	
	@RequestMapping("/resultMembers")  
	 public String  resultMembers(HttpServletRequest servlet)
    {  
		return "LBP/landing-page";
    }
    
	@RequestMapping("/registerMember") 
	 public String registerMember(HttpServletRequest servlet)
	 {
		 return "LBP/landing-page";
	 }
	
}
