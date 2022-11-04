package com.test.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.test.model.Gym;
import com.test.model.User;
import com.test.services.GymServices;

//import antlr.collections.List;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

//@RestController
//@ResponseBody
//@Api(value = "This is spring boot rest api and hibernate Car mngnt application")
@Controller
public class GYmRegisterController {

	private static final Logger logger = LoggerFactory.getLogger(GYmRegisterController.class);
	
	@Autowired
	private GymServices gymservice;

	@Autowired
    public GYmRegisterController(GymServices gymservice) {
        this.gymservice = gymservice;
    }
	
	@RequestMapping(value="/frstpage")
	public String homepage() {
		return "index";
	}
	
	@RequestMapping(value="/signup")
	public String signupPage(Model model,Gym gym, HttpServletRequest request) {
		model.addAttribute("info",gym);
		HttpSession session=request.getSession();
		session.setAttribute("error", null);
		return "register";
	}
	
//	@ApiOperation(value = "it will add  DATA ")
	@RequestMapping(value = "/uregister", method = RequestMethod.POST)
    public String create(@Valid @ModelAttribute("info") Gym gym1, BindingResult bindingResult,Model model, HttpServletRequest request){
        try {
        HttpServletRequest request2=((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		HttpSession session=request2.getSession();
		session.setAttribute("fullname",gym1.getFullname());
        	
        	 
        		
        		logger.info(gym1.getUsername());
        		logger.info(gym1.getPassword());
        	
            
            
                             List<Gym> data=gymservice.findobj();
                             System.out.println(data.size());
            for(Gym g:data) {
            	System.out.println("the g in if username"+g.getUsername());
            	System.out.println("the gym in if username"+gym1.getUsername());
            	
            	if(g.getUsername().equals(gym1.getUsername())) {
            		System.out.println("the g username"+g.getUsername());
            		String error="Username allready exists";
        			HttpSession session1=request.getSession();
        			session.setAttribute("error", error);
        			
            		
            		return "register";
            	}
            	
            }
            gymservice.add(gym1);
        	return "login";
        	
           
        } catch (Exception e) {
            e.printStackTrace();
            return "register";
        }
    }
	
	
	
	
	
	
	
	///userlogin
	@RequestMapping(value="/mlogin")
	public String loginPage(Model model,Gym gym, HttpServletRequest request) {
		model.addAttribute("info", gym);
		HttpSession session=request.getSession();
		session.setAttribute("error", null);
		return "login";
	}
	
	@RequestMapping(value="/ulogin",method=RequestMethod.POST)
	public String userLogin(@Valid @ModelAttribute("info") Gym gym1,BindingResult br,Model model,HttpServletRequest request) {
		try {
			if(br.hasErrors()) {
				return "login";
			}
			else {
				boolean x = gymservice.logintest(gym1);
				System.out.println(x);
				if(x) {
				return "subscription";}
				else {
					String error="Invalid credentials";
					HttpSession session1=request.getSession();
        			session1.setAttribute("error", error);
					return "login";
				}
			}
		}
		catch(Exception e) {
			e.printStackTrace();
			return "login";
		}
		
	}
	
	
	
	
	
	@RequestMapping(value="/subscription1")
	public String subsriptionPage(Model model,User usr) {
		model.addAttribute("sub", usr);
		return "subscription1";
	}
	
	
	
	
	 
}
