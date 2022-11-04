package com.test.controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLConnection;
import java.text.DateFormat;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.dom4j.DocumentException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.test.exceptions.ResourceNotFoundException;
import com.test.model.Product;
import com.test.model.ProductBuy;
import com.test.repository.ProductRepository;
import com.test.services.ProductService;

import io.swagger.annotations.ApiOperation;

@Controller
public class ProductController {

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	private ProductService pservice;
	@Autowired
	private ProductRepository prepo;
	
//	@RequestMapping(value="/productsbuy",method = { RequestMethod.GET, RequestMethod.POST })
//	public String showView(Model model) {
//	HttpServletRequest request=((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
//		List<Product> products=pservice.getAllProduct();
//		for(Product p:products) {
//		System.out.println("the products are:"+p.getName());}
//		HttpSession session=request.getSession();
//    	session.setAttribute("data", products);
//		model.addAttribute("products", products);
//		return "productsbuy";
//		
//	}
	@RequestMapping(value="/productsbuy",method = { RequestMethod.GET, RequestMethod.POST })
	public String getview(Model model) {
		HttpServletRequest request=((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		HttpSession session=request.getSession();
    	
		Product p=pservice.getoneproduct(5);
		System.out.println("the products"+p.getName());
		System.out.println(p.getPrice());
		model.addAttribute("p1", p);
		session.setAttribute("p1id", p.getId());
		
		Product p1=pservice.getoneproduct(3);
		model.addAttribute("p2", p1);
		return "productsbuy";
	}
	@RequestMapping(value="/personalinfo")
	public String nextpage(Model model) {
		model.addAttribute("amodel", model);
		return "payinfo";
		
	}
	@RequestMapping(value="/confirmorder",method = { RequestMethod.GET, RequestMethod.POST })
	public String confirmorder(@RequestParam("address") String address,@RequestParam("quantity") int quantity,@RequestParam("phono") String phono,@RequestParam("email") String email,@RequestParam("uname") String username,Model model) {
		HttpServletRequest request=((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		HttpSession session=request.getSession();
		Integer pid=(Integer) session.getAttribute("p1id");
		System.out.println(pid);
		Product p=pservice.getoneproduct(pid);
		
		ProductBuy pb=new ProductBuy();
		pb.setProductid(p.getId());
		pb.setImage(p.getImage());
		pb.setName(p.getName());
		pb.setAddress(address);
		pb.setEmail(email);
		pb.setPhono(phono);
		pb.setUsername(username);
		pb.setQuantity(quantity);
		int price=quantity*p.getPrice();
		pb.setPrice(price);
		pb.setPaymentstatus("Cod");
		pb.setDeliverystatus("shipping");
		LocalDate sdate= LocalDate.now();
		pb.setOdate(sdate);
		LocalDate edate=sdate.plusDays(7);
		pb.setDdate(edate);
		pservice.save(pb);
		model.addAttribute("order", pb);
		session.setAttribute("order1", pb);
		String msg="order confirmed track your order in your order section";
		session.setAttribute("msg", msg);
		return "success";
		
	}
	@RequestMapping(value="/orderspage")
		public String yourOrder(ModelMap model) {
		List<ProductBuy> pb=pservice.getAllProductorder();
		for(ProductBuy pbs:pb) {
		System.out.println("the productorder"+pbs.getDeliverystatus());}
		model.addAttribute("ordersa", pb);
			return "yourorder";
		}
	
	@RequestMapping(value="/delivery")
	public String deliveryUpdate(Model model,@RequestParam("id") Integer id) {
		String deliverystatus="delivered";
		String paymentstatus="paid";
		pservice.changeStatus(id,deliverystatus,paymentstatus);
		List<ProductBuy> pb=pservice.getAllProductorder();
		for(ProductBuy pbs:pb) {
		System.out.println("the productorder"+pbs.getDeliverystatus());}
		model.addAttribute("ordersa", pb);
		return "yourorder";
	}
	
	@RequestMapping(value="/yourorder")
	public String orderstatus(ModelMap model) {
		HttpServletRequest request=((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		HttpSession session=request.getSession();
		ProductBuy porder=(ProductBuy) session.getAttribute("order1");
		Integer id=porder.getId();
		ProductBuy pb=pservice.getoneproductBuy(id);
		model.addAttribute("status", pb);
		
		
		return "orderstatus";
		
	}
	@RequestMapping(value="/completeinfo")
	public String orderInfoProduct(Model model) {
		Product p=pservice.getoneproduct(5);
		System.out.println("the products"+p.getName());
		System.out.println(p.getPrice());
		model.addAttribute("p1", p);
		return "completeproduct";
	}
	
	@GetMapping("/products/{id}")
	public ResponseEntity<Product> getEmployeeById(@PathVariable(value = "id")  Integer Id)
			throws ResourceNotFoundException {
		Product product = prepo.findById(Id)
				.orElseThrow(() -> new ResourceNotFoundException("Employee not found for this id :: " + Id));
		return ResponseEntity.ok().body(product);
	}
	@ApiOperation("updation of products hey u")
	@PutMapping("/product/{id}")
	public ResponseEntity<Product> updateEmployee(@PathVariable(value = "id") Integer Id,
			@Valid @RequestBody Product pDetails) throws ResourceNotFoundException {
		Product product = prepo.findById(Id)
				.orElseThrow(() -> new ResourceNotFoundException("Employee not found for this id :: " + Id));

		product.setImage(pDetails.getImage());
		product.setName(pDetails.getName());
		product.setPrice(pDetails.getPrice());
		final Product updatedproduct = prepo.save(product);
		return ResponseEntity.ok(updatedproduct);
	}

	

	
}
