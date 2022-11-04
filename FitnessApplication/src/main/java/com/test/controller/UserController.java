package com.test.controller;

import java.time.LocalDate;
import java.util.Date;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.test.model.User;
import com.test.model.UserSub;
import com.test.repository.UserRepository;
import com.test.services.UserServices;
import com.test.services.UserSubService;

import io.swagger.annotations.ApiOperation;

//import com.test.services.GymServices;

@Controller
public class UserController {
	private static final Logger logger=LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private UserServices userservice;
	
	@Autowired
	private UserRepository userrepo;
	
	@Autowired
	private UserSubService usersubservice;
	
	@Autowired
	public UserController(UserServices userservice) {
		this.userservice=userservice;
	}
	
	
	@RequestMapping(value="/usub1",method=RequestMethod.POST)
	public String create(@Valid @ModelAttribute("sub") User usr,BindingResult bindingResult,Model model) {
		try {
			if(bindingResult.hasErrors()) {
				return "subscription1";
			}
			HttpServletRequest request2=((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
			HttpSession session=request2.getSession();
			String fullname=(String) session.getAttribute("fullname");
			
		    if(fullname.equals(usr.getFirstname())){
			logger.info(usr.getFirstname());
			logger.info(usr.getLastname());
			logger.info(usr.getPhono());
			logger.info(usr.getAddress());
			logger.info(usr.getEmail());
			//logger.info(usr.getGym());
			Date sdate=usr.getStartdate();
			String date=sdate.toString();
			logger.info(date);
			session.setAttribute("userinfo", usr);
			session.setAttribute("idno", usr.getUserid());
			System.out.println("the user id is:"+usr.getUserid());
			
			model.addAttribute("id", usr.getUserid());
			
			userservice.add(usr);
			return "subscription1pay";}
			else {
				return "subscription1";
			}
			
		
		}
		catch(Exception e) {
			e.printStackTrace();
			return "subscription1";
		}
	}
	@Transactional
	@RequestMapping(value="/paysub1",method=RequestMethod.POST)
	//@ModelAttribute
	public String paysub1(@RequestParam("phono") String phono , Model model) {
		User obj = userservice.getone(phono);
		HttpServletRequest request2=((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		HttpSession session=request2.getSession();
		session.setAttribute("idnos",obj.getUserid());
		System.out.println("the idnos is:"+obj.getUserid());
		session.setAttribute("phonenumber", phono);
		UserSub data = new UserSub();
		data.setPhono(phono);
		data.setFirstname(obj.getFirstname());
		data.setLastname(obj.getLastname());
		data.setStartdate(obj.getStartdate());
		data.setAmount(3800);
		data.setStatusamount("paid");
		data.setAddress(obj.getAddress());
		data.setEmail(obj.getEmail());
		model.addAttribute("all", "hey usr");
		System.out.println(data.getFirstname());
		usersubservice.add(data);
		LocalDate date=LocalDate.now();
		model.addAttribute("obj", date);
		return "paymentsuccess";
	}
	
	
	
	
	@RequestMapping(value="/profile")
	public String profilePage(Model model,UserSub usr) {
		HttpServletRequest request2=((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		HttpSession session=request2.getSession();
		String phono=(String) session.getAttribute("phonenumber");
		System.out.println(phono);
		//User obj = userservice.getone(phono);
		Integer id1=(Integer) session.getAttribute("idnos");
		System.out.println("the controller id is :"+id1);
		User obj1=userservice.getallinfo(id1);
		
		model.addAttribute("all",obj1);
		return "profilepage";
	}
	
	@RequestMapping(value="/infoupdate")
	public String profileUpdate(Model model,User usr) {
		model.addAttribute("a", usr);
		return "profileupdate";
	}
	@ApiOperation(value = "it will update CAR DATA based on ID")
	@RequestMapping(value="/profileupdation",method=RequestMethod.POST)
	public String profileupdation(@Valid @ModelAttribute("a") User usr,BindingResult bindingResult, Model model) {
		try {
			if(bindingResult.hasErrors()) {
				return "index";
			}
		HttpServletRequest request2=((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		HttpSession session=request2.getSession();
////		String phono=(String) session.getAttribute("phonenumber");
////		System.out.println(phono);
////		//User obj = userservice.getone(phono);
     	User obj1=(User) session.getAttribute("userinfo");
////		System.out.println(obj1.getFirstname());
//		User usr=new User();
	    usr.setStartdate(obj1.getStartdate());
		usr.setFirstname(obj1.getFirstname());
		usr.setLastname(obj1.getLastname());
		usr.setGender(obj1.getGender());
//		
//		
		Integer id=obj1.getUserid();
		System.out.println("the updation id is :"+id);
//		
		userservice.update(id,usr);
			
		
		
	
		return "index";
		}
		catch(Exception e) {
			e.printStackTrace();
			return "index";
		}
		
	}
	
	@RequestMapping(value="/delete")
	public String deleteuser(Model model,UserSub Usr) {
		try {
			HttpServletRequest request2=((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
			HttpSession session=request2.getSession();
			Integer id=(Integer) session.getAttribute("idnos");
			Integer id1=id+1;
			System.out.println("the delete id is:"+id1);
			usersubservice.remove(id1);
			userservice.remove(id);
			return "adminhome";
		}
		catch(Exception e) {
			e.printStackTrace();
			return "adminhome";
		}
		
	}

	
}
