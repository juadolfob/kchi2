package controllers;

import java.util.Date;
import java.util.List;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;  

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import models.LDMemberData;
import models.LDRoles;
import models.TrainingProposals;
import models.TrainingRequirementMaster;
import services.MembersServices;
import services.RequerimentServices;


@Controller
public class MembersController {
	
	@RequestMapping("/")  
    public String index()
    {  
		return "LBP/index";
    } 
	
    @RequestMapping("/members")
    public String main()
    {  
		return "LBP/training_information";
    } 
    
    @RequestMapping("/signInLD")  
    public String signinLD()  
    {  
		return "Users/login_LD";
    }
    
	@RequestMapping("/signInDelivery")  
    public String signinDelivery()  
    {  
		return "Users/login_Delivery";
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
		String memberName = servlet.getParameter("user_name");
		String memberContact = servlet.getParameter("user_contact");
		String memberLocation = servlet.getParameter("user_city");
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
	
	@RequestMapping("/newSlot/{requirementId}")  
	 public String  newSlot(Model model, @PathVariable String requirementId)
	   {  
			model.addAttribute("requirement", new RequerimentServices().ReadRequestRequeriment(requirementId));
			return "LBP/TrainerSlot";
	   }
	
	@RequestMapping("/registerSlot")  
	 public String  registerSlot(HttpServletRequest servlet) throws ParseException
	   {  
			MembersServices newIDService = new MembersServices();
			
			TrainingProposals proposal = new TrainingProposals();
			TrainingRequirementMaster reqID = new TrainingRequirementMaster();
			LDMemberData member = new LDMemberData();
			String proposalID = newIDService.getNewId("TrainingProposals", "ProporsalID");
			reqID.setRequirementID(servlet.getParameter("requirementId"));
			int selected = 0;
			member.setMemberId("MEM04");
			
			String PropsedTime = servlet.getParameter("slot_time");
			int ProposedDuration = Integer.parseInt(servlet.getParameter("slot_duration"));
			
//			String proposedDate = servlet.getParameter("slot_date");
//			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//			SimpleDateFormat sdf2 = new SimpleDateFormat("dd-MMM-yy");
//			System.out.println(sdf2.format(sdf.parse(proposedDate))); 
			
			Date proposedDate; 
			try {
				proposedDate = new SimpleDateFormat("dd/MM/yyyy").parse(servlet.getParameter("slot_date"));
			} catch (ParseException e) {
				proposedDate = new Date();
			}
			
			
			TrainingProposals newproposal = new TrainingProposals();
			newproposal.setProposalID(proposalID);
			newproposal.setRequirementID(reqID);
			newproposal.setSelected(selected);
			newproposal.setMemberID(member);
			newproposal.setProposedDate(proposedDate);
			newproposal.setPropsedTime(PropsedTime);
			newproposal.setProposedDuration(ProposedDuration);
			
			MembersServices memservice = new MembersServices();
			memservice.registerSlot(newproposal);
			
			return "LBP/landing-page";
	   }
	
}
