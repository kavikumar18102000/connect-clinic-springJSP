package com.arya.clinic.Controller;

import java.util.Arrays;



import java.util.List;

import javax.servlet.http.HttpSession;
import javax.sound.midi.Soundbank;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.arya.clinic.Entity.Bookings;
import com.arya.clinic.Entity.Clinic;
import com.arya.clinic.Entity.User;
import com.arya.clinic.Repository.BookingRepository;
import com.arya.clinic.Repository.ClinicRepository;
import com.arya.clinic.Repository.UserRepostiroy;
import com.arya.clinic.Services.ClinicService;
import com.arya.clinic.Services.UserService;


@Controller
@RequestMapping("/clinic")
public class ClinicController {
	
	@Autowired
	private ClinicService clinicService;

	
	@Autowired
	private UserService userService;

	

	
	@GetMapping({"/","/home"})
	public String home() {

		return "home";
	}
	
	@PostMapping("/searchResults")
    public String searchClinic(@RequestParam("location") String location,Model model,RedirectAttributes redirectAttributes){
	
       List<Clinic> list = (List<Clinic>) clinicService.getClinics(location);
       
       if(list.isEmpty()) {
    	   redirectAttributes.addFlashAttribute("message", "Not detected");
    	   return "redirect:/";
       }
       
       
       model.addAttribute("list",list);
        return "guest_search_view";
    }
	
	@GetMapping("/usersignup")
	public String signin(Model model) {


		return "usersignup";
	}
	
	@PostMapping("/signupSuccess")
	public String signupSuccess(@RequestParam("userName") String userName,@RequestParam("email") String email,@RequestParam("password") String password, RedirectAttributes redirectAttributes) 
{

		User user = new User();
		user.setUserName(userName);
		user.setEmail(email);
		user.setPassword(password);
		
		boolean isvalid = userService.addUser(user);
		
		if(isvalid) {
			redirectAttributes.addFlashAttribute("message","valid signin" );
			return "redirect:/userlogin";
		}
		
			redirectAttributes.addFlashAttribute("message","invalid" );
			return "redirect:/usersignup";
		
	}
	
	
	@GetMapping("/userlogin")
	public String userlogin() {
		return "userlogin";
	}
	
	@PostMapping("/loginSuccess")
	public String loginSuccess(@RequestParam("email") String email, @RequestParam("password") String password, RedirectAttributes redirectAttributes, HttpSession session, Model model) {


		User user = userService.findUser(email);
		
				
		if(user==null) {
			redirectAttributes.addFlashAttribute("message", "Invalid");
			
			return "redirect:/userlogin";
		}
		else if(user.getPassword().equals(password)){
			session.setAttribute("username", user.getUserName());
			session.setAttribute("useremail",user.getEmail());
			
			return "userhome";
		}
		else {
			redirectAttributes.addFlashAttribute("message", "Invalid");
			return "redirect:/userlogin";
		}
		
	}
	
	@GetMapping("/userhome")
	public String userhome(HttpSession session,Model model) {
		String email = (String) session.getAttribute("useremail");
		List<Bookings> list = clinicService.getAllUserBookings(email);
		
		String username = (String) session.getAttribute("username");
		model.addAttribute("username", username);
		model.addAttribute("bookings", list);
		return "userhome";
	}
	
	@GetMapping("/logout")
	public String logout(Model model,HttpSession session,RedirectAttributes redirectAttributes ){
		redirectAttributes.addFlashAttribute("message", "Logout");
		session.invalidate();
		return "redirect:/";
	}
	
	@PostMapping("/userSearch")

	public String userSearch(@RequestParam("location") String location,Model model,RedirectAttributes redirectAttributes) {

		System.out.println(location);
		List<Clinic> list = (List<Clinic>) clinicService.getClinics(location);
	       
	       if(list.isEmpty()) {
	    	   redirectAttributes.addFlashAttribute("message", "Not detected");
	    	   return "redirect:/userhome";
	       }

	    model.addAttribute("list",list);
		return "userSearchview";
	}
	
	@GetMapping("/bookform/{clinicEmail}")

	public String bookForm(@PathVariable("clinicEmail") String clinicEmail,Model model,HttpSession session) {
		Clinic clinic = clinicService.findClinic(clinicEmail);
		model.addAttribute("clinicName", clinic.getClinicName());
		model.addAttribute("clinicEmail", clinic.getClinicEmail());
		model.addAttribute("clinicAddress", clinic.getClinicLocation());
		model.addAttribute("doctorName", clinic.getDoctorName());
		model.addAttribute("clinic", clinic);
		model.addAttribute("username", session.getAttribute("username"));
		
		return "book";
	}
	
	@PostMapping("/book")

	public String book(@ModelAttribute("bookings") Bookings book,@RequestParam("clinicEmail") String email,RedirectAttributes redirectAttributes) {
		List<Bookings> list = clinicService.getAllBookings(book.getClinicName());
		if(list.isEmpty()) {
			clinicService.addBooking(book);
			redirectAttributes.addFlashAttribute("message","Booking Ok");
			return "redirect:/userhome";
		}
		
		for (Bookings bookings : list) {
			if(bookings.getDate().equals(book.getDate()) && bookings.getStartTime().equals(book.getStartTime())) {
				redirectAttributes.addFlashAttribute("message", "Time slot taken");
				return "redirect:/bookform/"+email;
			}
			else {
				clinicService.addBooking(book);
				redirectAttributes.addFlashAttribute("message","Booking Ok");
				break;
			}
		}
		
		return "redirect:/userhome";
	}
	
	@GetMapping("/delete/{bookingId}")
	public String delete(@PathVariable("bookingId") Long id,RedirectAttributes redirectAttributes) {
		if(clinicService.deleteBooking(id)) {
			redirectAttributes.addFlashAttribute("message", "Deleted");
			return "redirect:/userhome";
		}
		redirectAttributes.addFlashAttribute("message", "Not Deleted");
		return "redirect:/userhome";
	}
}
