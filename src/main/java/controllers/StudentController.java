package controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import models.Student;
import templates.StudentTemplate;

@Controller
@RequestMapping("/student")
public class StudentController {

	@RequestMapping("/index")  
    public String index(Model model)  
    {  
		//List<Student> list = new StudentTemplate().getAllStudents();
		//model.addAttribute("students", list);
		return "/student/index";
    }  
}
