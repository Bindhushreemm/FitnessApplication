package com.test.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.test.model.Product;
import com.test.model.ProductBuy;

@Repository
public interface ProductBuyRepo extends JpaRepository<ProductBuy,Integer>{

}
