package com.test.dao;

import java.sql.Blob;
import java.util.List;

import javax.validation.Valid;

import org.springframework.web.multipart.MultipartFile;

import com.test.model.Product;
import com.test.model.ProductBuy;

public interface ProductDao {

	public void saveProductToDb(MultipartFile file,String name,String description
			,int price);
	
	public List<Product> getAllProduct();
	
	public void deleteProductById(Integer id);
	
	public void changeProductName(Integer id,String name);
	
	public void changeProductDescription(Integer id,String description);
	
	public void changeProductPrice(Integer id,int price);

	//public Blob getPhotoById(Integer id);
	public Blob getPhotoById(Integer id);

	public List<Product> getproductbyid(Integer id);

	
}
