package com.test.implementation;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.dao.ProductBuyDao;
import com.test.model.ProductBuy;
import com.test.repository.ProductBuyRepo;

@Repository
public class ProductBuyDaoImpl implements ProductBuyDao {
	
	@Autowired
	private ProductBuyRepo pbr;

	@Override
	public void add(ProductBuy pb) {
		// TODO Auto-generated method stub
		pbr.save(pb);
		
		
	}

	@Override
	public List<Map<String, Object>> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductBuy> getAllproduct() {
		return pbr.findAll();
	}

	@Override
	public void changeStatus(Integer id, String deliverystatus, String paymentstatus) {
		// TODO Auto-generated method stub
		ProductBuy pb=new ProductBuy();
		pb=pbr.findById(id).get();
		pb.setDeliverystatus(deliverystatus);
		pb.setPaymentstatus(paymentstatus);
		pbr.save(pb);
		
	}

	@Override
	public List<ProductBuy> getproductbyid(Integer id) {
		// TODO Auto-generated method stub
		List<ProductBuy> pb=pbr.findAll();
		return pb;
	}
	

}
