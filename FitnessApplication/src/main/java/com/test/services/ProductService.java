package com.test.services;

import java.sql.Blob;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.test.dao.ProductBuyDao;
import com.test.dao.ProductDao;
import com.test.model.Product;
import com.test.model.ProductBuy;

@Service
@Transactional
public class ProductService {
	
	@Autowired
	private ProductDao productdao;
	
	@Autowired 
	private ProductBuyDao pbd;
	
	public ProductService() {
		
	}
	public void saveProductToDb(MultipartFile file,String name,String description
			,int price) {
		productdao.saveProductToDb(file, name, description, price);
	}
	
	public List<Product> getAllProduct(){
		List<Product> p=productdao.getAllProduct();
		return p;
	}
	
	public void deleteProductById(Integer id) {
		productdao.deleteProductById(id);
	}
	
	public void changeProductName(Integer id,String name) {
		productdao.changeProductName(id, name);
	}
    
	public void changeProductDescription(Integer id,String description) {
		productdao.changeProductDescription(id, description);
	}
	
	public void changeProductPrice(Integer id,int price) {
		productdao.changeProductPrice(id, price);
	}
	public Product getoneproduct(Integer id) {
		
		List<Product> list=productdao.getproductbyid(id);
		Product p=new Product();
		for(Product p1:list) {
			if(id==p1.getId()) {
				return p1;
			}
		}
		return null;
	}
	public void save(ProductBuy pb) {
		// TODO Auto-generated method stub
		pbd.add(pb);
		
	}
	public List<ProductBuy> getAllProductorder() {
		// TODO Auto-generated method stub
		List<ProductBuy> p=pbd.getAllproduct();
		return p;
		
	}
	public void changeStatus(Integer id, String deliverystatus, String paymentstatus) {
		// TODO Auto-generated method stub
		pbd.changeStatus(id,deliverystatus,paymentstatus);
		
	}
	public ProductBuy getoneproductBuy(Integer id) {
		// TODO Auto-generated method stub
		List<ProductBuy> list=pbd.getproductbyid(id);
		ProductBuy p=new ProductBuy();
		for(ProductBuy p1:list) {
			if(id==p1.getId()) {
				return p1;
			}
		}
		return null;
	}
		
}
