package com.test.implementation;

import java.sql.Blob;
import java.util.Base64;
import java.util.List;

import javax.sql.DataSource;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.test.dao.ProductDao;
import com.test.model.Product;
import com.test.model.ProductBuy;
import com.test.repository.ProductRepository;

@Repository
public class ProductDaoImpl implements ProductDao {
	
	@Autowired
	private ProductRepository productrepo;
	
	private JdbcTemplate jdbcTemp;

	public ProductDaoImpl(DataSource dataSource) {
		jdbcTemp = new JdbcTemplate(dataSource);
	}
	
	public ProductDaoImpl() {
		
	}
	
	private static final Logger logger = LoggerFactory.getLogger(AdminDaoImpl.class);

	@Override
	public void saveProductToDb(MultipartFile file, String name, String description, int price) {
		Product p=new Product();
		String filename=StringUtils.cleanPath(file.getOriginalFilename());
		if(filename.contains("..")) {
			System.out.println("not a valid file");
		}
		try {
			p.setImage(Base64.getEncoder().encodeToString(file.getBytes()));
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		p.setDescription(description);
		p.setName(name);
		p.setPrice(price);
		productrepo.save(p);
	}

	@Override
	public List<Product> getAllProduct() {
		return productrepo.findAll();
	}

	@Override
	public void deleteProductById(Integer id) {
		productrepo.deleteById(id);
		
	}

	@Override
	public void changeProductDescription(Integer id, String description) {
		Product p=new Product();
		p=productrepo.findById(id).get();
		p.setDescription(description);
		productrepo.save(p);
		
	}

	@Override
	public void changeProductPrice(Integer id, int price) {
		Product p=new Product();
		p=productrepo.findById(id).get();
		p.setPrice(price);
		productrepo.save(p);
		
	}

	@Override
	public void changeProductName(Integer id, String name) {
		Product p=new Product();
		p=productrepo.findById(id).get();
		p.setName(name);
		productrepo.save(p);
		
	}

	@Override
	public Blob getPhotoById(Integer id) {
		String query = "select photo from products where id=?";

		//Blob photo = jdbcTemp.query(query, new Object[] { id }, Blob.class);
		Blob photo=jdbcTemp.queryForObject(query,new Object[] {id} , Blob.class);

		return photo;
	}

	@Override
	public List<Product> getproductbyid(Integer id) {
		// TODO Auto-generated method stub
		List<Product> list=productrepo.findAll();
		return list;
	}

	

	

	

}
