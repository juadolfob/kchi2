package controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


import models.Reminder;
import services.ReminderServices;

@Controller
public class MainController {

	@RequestMapping("/")
	public String index(Model model, HttpServletRequest servlet) {
		String country = servlet.getParameter("country");
		String countryInfo = null;
		JSONObject json = null;
		if (country != null) {
			try {
				json = JsonReader.readJsonFromUrl("https://en.wikipedia.org/api/rest_v1/page/summary/" + country);
			} catch (JSONException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			countryInfo = json.get("extract_html").toString();
			System.out.println(countryInfo);
		}
		model.addAttribute("country", country);
		model.addAttribute("countryInfo", countryInfo);
		return "index";
	}

	@RequestMapping("/api/getAll")
	public String getAll(Model model) {
		List<Reminder> Reminders = new ReminderServices().getAll();
		String response = "[";
		int i = 0;
		for (Reminder reminder : Reminders) {
			if (i++ == Reminders.size() - 1) {
				response = response + reminder.toJSON();
			} else {
				response = response + reminder.toJSON() + ",";
			}
		}
		response = response + "]";
		model.addAttribute("response", response);
		return "response";
	}

	@RequestMapping("/api/get/{id}")
	public String getID(Model model, @PathVariable String id) {

		int nid = 0;
		String response = "{}";

		try {
			nid = Integer.parseInt(id);
		} catch (NumberFormatException e) {
			return "response";
		}

		List<Reminder> Reminders = new ReminderServices().getByID(nid);

		if (Reminders.size() != 0) {
			response = "";
			int i = 0;
			for (Reminder reminder : Reminders) {
				response = response + reminder.toJSON();
				if (!(i++ == Reminders.size() - 1)) {
					response = response + ",";
				}
			}
		}

		model.addAttribute("response", response);
		return "response";

	}

	@RequestMapping("/api/put")
	public String put(Model model, HttpServletRequest servlet) {
		
		String id = servlet.getParameter("id");
		String reminder = servlet.getParameter("reminder");
		
		System.out.println(id);
		System.out.println(reminder);
		
		ReminderServices Reminders = new ReminderServices();
		Reminders.put(Integer.parseInt(id),reminder);
		
		model.addAttribute("response", "{\"response\":\"request sent\"}");
		return "response";

	}
	
	@RequestMapping("/api/update")
	public String update(Model model, HttpServletRequest servlet) {
		
		String id = servlet.getParameter("id");
		String reminder = servlet.getParameter("reminder");
		
		System.out.println(id);
		System.out.println(reminder);
		
		ReminderServices Reminders = new ReminderServices();
		Reminders.update(Integer.parseInt(id),reminder);
		
		model.addAttribute("response", "{\"response\":\"request sent\"}");
		return "response";

	}

	@RequestMapping("/api/delete")
	public String delete(Model model, HttpServletRequest servlet) {
		
		String id = servlet.getParameter("id");
		
		System.out.println(id);

		ReminderServices Reminders = new ReminderServices();
		Reminders.delete(Integer.parseInt(id));
		
		model.addAttribute("response", "{\"response\":\"request sent\"}");
		return "response";
	}

	

}
