package controllers;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RequerimentServicesController {
		
	@RequestMapping("/newRequest")  
    public String newrequest()  
    {  
		return "LBP/new_request";
    } 
	@RequestMapping("/createRequest")  
    public String createRequest(HttpServletRequest servlet)  
    {  
		return "LBP/landing-page";
    }
	
	@RequestMapping("/firstRequest")  
    public String firstRequest() 
    {  
		return "LBP/request_first";
    } 
	@RequestMapping("/firstRequestSendSecond") 
	 public String firstRequestSendSecond(HttpServletRequest servlet)
	 {
		return "LBP/request_second";
	 }
	
	@RequestMapping("/secondRequest")  
    public String secondRequest(HttpServletRequest servlet)  
    {  
		return "LBP/landing-page";
    } 

}
