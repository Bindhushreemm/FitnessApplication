package com.test.controller;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.util.List;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.test.implementation.ProductDaoImpl;
import com.test.model.Admin;
import com.test.model.Product;
import com.test.model.UserSub;
import com.test.services.AdminService;
import com.test.services.GymServices;
import com.test.services.ProductService;
import com.test.services.UserSubService;

@Controller
public class AdminController {

private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	private AdminService aservice;
	
	@Autowired
	private UserSubService uservice;
	
	@Autowired
	private ProductDaoImpl pdi;
	
	@Autowired
	private ProductService pservice;

	@Autowired
    public AdminController(AdminService aservice) {
        this.aservice = aservice;
    }
	
	@RequestMapping(value="/adminlogin")
	public String adminPage(Model model,Admin admin) {
		model.addAttribute("info",admin);
		return "adminlog";
	}
	
	@RequestMapping(value="/alogin",method=RequestMethod.POST)
	public String adminLoginPage(@Valid @ModelAttribute("info") Admin admin,BindingResult br,Model model) {
		HttpServletRequest request=((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		
		try {
			if(br.hasErrors()) {
				return "adminlog";
			}
			else {
				if(admin.getUsername().equals("admin") && admin.getPassword().equals("admin123")) {
					aservice.add(admin);
					List<UserSub> result=uservice.getall();
					HttpSession session=request.getSession();
			    	session.setAttribute("data", result);
					
					return "adminhome";
				}
				else {
					return "adminlog";
				}
			}
		}
		catch(Exception e) {
			e.printStackTrace();
			return "adminlog";
		}
		
		
	}
	@RequestMapping(value="/listproducts",method = { RequestMethod.GET, RequestMethod.POST })
		public String showView(Model model) {
		HttpServletRequest request=((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
			List<Product> products=pservice.getAllProduct();
			for(Product p:products) {
			System.out.println("the products are:"+p.getName());}
			HttpSession session=request.getSession();
	    	session.setAttribute("data", products);
			model.addAttribute("products", products);
			return "listproducts";
			
		}
	
	
	@RequestMapping(value="/products",method = { RequestMethod.GET, RequestMethod.POST })
	public String productPage() {
		return "addproduct";
	}
	
	@RequestMapping(value="/addP",method = { RequestMethod.GET, RequestMethod.POST })
	public String saveProduct(@RequestParam("file") MultipartFile file,@RequestParam("pname") String name,
			@RequestParam("price") int price,
			@RequestParam("desc") String desc) {
		pservice.saveProductToDb(file, name, desc, price);
		return "listproducts";
		
	}
	@RequestMapping(value="/changename",method = { RequestMethod.GET, RequestMethod.POST })
    public String changePname(@RequestParam("id") Integer id,
    		@RequestParam("newpname") String name, Model model)
    {
    	pservice.changeProductName(id, name);
    	HttpServletRequest request=((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		List<Product> products=pservice.getAllProduct();
		HttpSession session=request.getSession();
    	session.setAttribute("data", products);
		model.addAttribute("products", products);
    	return "listproducts";
    }
	@RequestMapping(value="/descriptions",method={ RequestMethod.GET, RequestMethod.POST })
	public String changeDesc(@RequestParam("id") Integer id,@RequestParam("newdesc") String desc) {
		System.out.println("the description change is"+desc);
		pservice.changeProductDescription(id, desc);
		return "index";
	}
	@RequestMapping(value="/changeprice",method= {RequestMethod.GET,RequestMethod.POST})
	public String changePrice(@RequestParam("id")Integer id,@RequestParam("pprice")int price) {
		pservice.changeProductPrice(id, price);
		return "listproducts";
	}
	@RequestMapping(value="/deleteproduct",method= {RequestMethod.GET,RequestMethod.POST})
	public String deleteProduct(@RequestParam("id")Integer id) {
		pservice.deleteProductById(id);
		return "index";
	}
	
	/*@RequestMapping(value="/orderspage")
	public String orderppage(Model model) {
		return "adminorder";
		
	}*/
	
	
}
