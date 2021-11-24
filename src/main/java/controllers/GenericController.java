package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
//@RequestMapping("/user")  
public class GenericController {

	@RequestMapping("/")  
    public String index()  
    {  
		return "index";
    } 
	
	@RequestMapping("/index")  
    public String test()  
    {  
		return "LBP/new_request";
    } 
}
