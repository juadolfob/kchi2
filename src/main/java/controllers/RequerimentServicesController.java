package controllers;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RequerimentServicesController {
		
	@RequestMapping("/newRequest")  
    public String newrequest()  
    {  
		return "new_request";
    } 
	@RequestMapping("/newRequest")  
    public String createRequest(HttpServletRequest servlet)  
    {  
		return "landing-page";
    } 
	
	@RequestMapping("/firstRequest")  
    public String firstRequest() 
    {  
		return "request_first";
    } 
	@RequestMapping("/firstRequest") 
	 public String firstRequestSendSecond(HttpServletRequest servlet)
	 {
		return "request_second";
	 }
	
	@RequestMapping("/secondRequest")  
    public String secondRequest(HttpServletRequest servlet)  
    {  
		return "landing-page";
    } 

}
