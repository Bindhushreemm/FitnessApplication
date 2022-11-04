package com.test.dao;

import java.util.List;
import java.util.Map;

import com.test.model.ProductBuy;

public interface ProductBuyDao {
	
	public void add(ProductBuy pb);
	
	public List<Map<String,Object>> findAll();

	public List<ProductBuy> getAllproduct();

	public void changeStatus(Integer id, String deliverystatus, String paymentstatus);

	public List<ProductBuy> getproductbyid(Integer id);
	

}
