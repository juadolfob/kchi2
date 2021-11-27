package controllers;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import services.RequerimentServices;

@Controller
public class RequerimentServicesController {
		
	@RequestMapping("/newRequest")  
    public String newrequest()  
    {  
		return "new_request";
    } 
	@RequestMapping("/newRequest2")  
    public String createRequest(HttpServletRequest servlet)  
    {  
		return "landing-page";
    } 
	
	@RequestMapping("/requiremet-second") 
	 public String firstRequestSendSecond(HttpServletRequest servlet)
	 {
		return "request_second";
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

}
