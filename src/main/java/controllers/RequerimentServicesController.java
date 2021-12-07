package controllers;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import mappers.TrainingParticipantMapper;
import models.LDRoles;
import models.TrainingParticipantData;

import models.TrainingProposals;

import models.TrainingRequirementMaster;
import services.MembersServices;
import services.ParticipantServices;
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
		requirement.setTotalCandidates(Integer.parseInt(servlet.getParameter("candidates")));
		requirement.setTotalDurationDays(Integer.parseInt(servlet.getParameter("days")));
		requirement.setTrainingArea(servlet.getParameter("trainingArea"));
		requirement.setTrainingDescription(servlet.getParameter("description"));
		requirement.setTrainingTimeZone(servlet.getParameter("timeZone"));
		new RequerimentServices().createRequestRequeriment(requirement);
		return new ModelAndView("redirect:/requeriment-all");
    }
	@RequestMapping("/firstRequest/{RequerimentID}")
    public String firstRequest(ModelMap model , @PathVariable String RequerimentID)
    {  
		model.addAttribute("requirement", new RequerimentServices().ReadRequestRequeriment(RequerimentID));
		List<TrainingProposals> Lista = new TrainerService().GetSlot(RequerimentID);
	
		model.addAttribute("slots", Lista);
	//System.out.println(Lista.toString());
	
		for(TrainingProposals T: Lista) {
			System.out.println(T.getProposalID()+ " " +T.getRequirementID()+ " " +T.getMemberID().getMemberName()+ " " +T.getProposedDate());
		}

		return "LBP/request_first";
    } 

	@RequestMapping("/firstRequestSendSecond/{id}")
	 public String firstRequestSendSecond(ModelMap model, @PathVariable String requirementId)
	 {
		TrainingRequirementMaster requirement = new RequerimentServices().ReadRequestRequeriment(requirementId);
		List<TrainingProposals> proposals = new TrainerService().getSelectedProposals(requirementId);
		model.addAttribute("requirement", requirement);
		model.addAttribute("proposals", proposals);
		return "LBP/request_second";
	 }
	
	@RequestMapping("/sendRequest/{id}")
    public String sendRequest(Model model, @PathVariable String id) 
    {  
		RequerimentServices services = new RequerimentServices();
		
		model.addAttribute("requestSent", services.checkEntryExistance("RequirementSendId", "RequestID", id));
		model.addAttribute("requirement", services.ReadRequestRequeriment(id));
		return "LBP/SendRequest";
    }
	
	@RequestMapping("/sendRequestService/{id}")
    public String sendRequestService(Model model, @PathVariable String id) 
    {  
		RequerimentServices services = new RequerimentServices();
		
		if(!services.checkEntryExistance("RequirementSendId", "RequestID", id))
			services.sendRequest(id);
		//return "redirect:/SendRequest/{"+id+"}";
		return "redirect:/requeriment-all";
    } 
	
	@RequestMapping("/requeriment-all")
    public String landingLD(Model model)  
    {  
		model.addAttribute("requirements", new RequerimentServices().ReadAllRequestRequeriment());
		model.addAttribute("user", "LBP");
		return "LBP/landing-page";
    }
	
	@RequestMapping("/requirement-trainer")
	public String landingTrainer (Model model) {
		model.addAttribute("requirements", new RequerimentServices().readSendRequirement());
		model.addAttribute("user", "TRAINER");
		return "LBP/landing-page";
	}
	
	@RequestMapping("/requeriment/{id}")  
    public String trainingInf(Model model, @PathVariable String id) 
    {  
		model.addAttribute("requirementApprove", new RequerimentServices().GetApprove(id));
		model.addAttribute("requirement", new RequerimentServices().ReadRequestRequeriment(id));
		List<TrainingParticipantData> ParticipantsDatalist = new ParticipantServices().getParticipants(id);
		model.addAttribute("participandatalist",ParticipantsDatalist);

		return "LBP/training_information";
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
	
	@RequestMapping("/select-slot/{requirementId}")
	public String selectSlot(HttpServletRequest servlet, @PathVariable String requirementId) {
		String [] proposalsRequest = servlet.getParameterValues("proposal");
		List <TrainingProposals> proposals = new ArrayList<TrainingProposals>();
		RequerimentServices requirementServices = new RequerimentServices();
		
		for (String proposal : proposalsRequest) {
			proposals.add(new TrainerService().getSlot(proposal));
		}
		
		requirementServices.selectSlot(proposals, requirementId);
		return "redirect:/requeriment-all";
	}
	
	
	
	@RequestMapping("/ti")  
    public String trainingInf() 
    {  

		return "LBP/request_second";
    } 
	
	
	
	
	
	
	
	
	
	

}
