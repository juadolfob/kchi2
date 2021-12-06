package controllers;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import models.TrainingProposals;
import models.TrainingRequirementMaster;
import services.MembersServices;
import services.RequerimentServices;
import services.TrainerService;

@Controller
public class RequerimentServicesController {
		
	@RequestMapping("/newRequest")  
    public String newrequest(ModelMap model)  
    {  
		model.addAttribute("verticals", new MembersServices().getAllVerticalMaster());
		return "LBP/new_request";
    } 

	@RequestMapping("/createRequest")
    public ModelAndView createRequest(HttpServletRequest servlet)  
    {  
		TrainingRequirementMaster requirement = new TrainingRequirementMaster();
		Date startDate;
		try {
			startDate = new SimpleDateFormat("dd/MM/yyyy").parse(servlet.getParameter("startDate"));
		} catch (ParseException e) {
			startDate = new Date();
		}
		requirement.setRequestedTrainingStartDate(startDate);
		requirement.setRequirementReceivedDate(new Date());
		//Usuario en la sesion:
		requirement.setRequirementUser("Get from session");
		MembersServices members = new MembersServices();
		requirement.setRequirementUserVertical(members.getVerticalMasterById(servlet.getParameter("verticalMaster")));
		requirement.setRequirementID(members.getNewId("TrainingRequirementMaster", "RequirementID"));
		requirement.setTotalCandidates(Integer.parseInt(servlet.getParameter("candidates")));
		requirement.setTotalDurationDays(Integer.parseInt(servlet.getParameter("days")));
		requirement.setTrainingArea(servlet.getParameter("trainingArea"));
		requirement.setTrainingDescription(servlet.getParameter("description"));
		requirement.setTrainingTimeZone(servlet.getParameter("timeZone"));
		new RequerimentServices().createRequestRequeriment(requirement);
		return new ModelAndView("redirect:/requeriment-all");
    }
	
	@RequestMapping("/firstRequest")  
    public String firstRequest(ModelMap model , @PathVariable String RequerimentID) 
    {  
		List<TrainingProposals> Lista = new TrainerService().GetSlot(RequerimentID);
	
		model.addAttribute("Slot", Lista);
	//System.out.println(Lista.toString());
	
		for(TrainingProposals T: Lista) {
		System.out.println(T.getProposalID()+ " " +T.getRequirementID()+ " " +T.getMemberID().getMemberName()+ " " +T.getProposedDate());
	}

		return "LBP/request_first";
    } 

	@RequestMapping("/firstRequestSendSecond")
	 public String firstRequestSendSecond(HttpServletRequest servlet, ModelMap model)
	 {
		String requirementId = servlet.getParameter("requirementId");
		TrainingRequirementMaster requirement = new RequerimentServices().ReadRequestRequeriment(requirementId);
		List<TrainingProposals> proposals = new TrainerService().getSelectedProposals(requirementId);
		model.addAttribute("requirement", requirement);
		model.addAttribute("proposals", proposals);
		return "LBP/request_second";
	 }
	
	@RequestMapping("/requeriment/{id}")  
    public String firstRequest(Model model, @PathVariable String id) 
    {  
		model.addAttribute("requirement", new RequerimentServices().ReadRequestRequeriment(id));
		return "LBP/request_first";
    } 
	
	@RequestMapping("/requeriment-all")
    public String secondRequest(Model model)  
    {  
		model.addAttribute("requirements", new RequerimentServices().ReadAllRequestRequeriment());
		return "LBP/landing-page";
    } 
	
	@RequestMapping("/aproveRequirement")
	public ModelAndView aproveRequirement(HttpServletRequest servlet) {
		String requirementId = servlet.getParameter("requirementId");
		String proposalId = servlet.getParameter("proposalId");
		RequerimentServices requirementService = new RequerimentServices();
		TrainingRequirementMaster requirement = requirementService.ReadRequestRequeriment(requirementId);
		TrainingProposals proposal = new TrainerService().getSlot(proposalId);
		requirementService.aproveRequirement(requirement, proposal);
		return new ModelAndView("redirect:/requeriment-all");
	}
	
	@RequestMapping("/select-slot")
	public String selectSlot(HttpServletRequest servlet) {
		
		return "Users/logindelivery";
	}
}
