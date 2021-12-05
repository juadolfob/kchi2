package controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import models.LDMemberData;
import models.LDRoles;
import services.MembersServices;


@Controller
public class MembersController {
	
    @RequestMapping("/members")  
    public String main()
    {  
		return "LBP/LDPRequest";
    } 
	@RequestMapping("/signIn")  
    public String signin()  
    {  
		return "Users/logindelivery";
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
		LDRoles role = new LDRoles();
		String memberId = "MEM20";
		String memberName = servlet.getParameter("user_name");;
		String memberContact = servlet.getParameter("user_contact");
		String memberLocation = servlet.getParameter("user_city");;
		String memberEmail = servlet.getParameter("user_email");
		String ldRoleID = servlet.getParameter("ldrole");
		role.setLdRoleID(ldRoleID);
		
		LDMemberData member = new LDMemberData();
		member.setMemberId(memberId);
		member.setMemberName(memberName);
		member.setMemberContact(memberContact);
		member.setMemberLocation(memberLocation);
		member.setMemberEmail(memberEmail);
		member.setLdRoleID(role);
		
		MembersServices memserv = new MembersServices();
		memserv.signUp(member);
		
		System.out.println(memberId);
		System.out.println(memberName);
		System.out.println(memberContact);
		System.out.println(ldRoleID);
		System.out.println(memberEmail);

		return "LBP/landing-page";
	 }
	
}
