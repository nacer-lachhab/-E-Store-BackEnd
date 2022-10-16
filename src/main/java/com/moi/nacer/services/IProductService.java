package com.moi.nacer.services;

import java.util.List;
import java.util.UUID;

import com.moi.nacer.entities.Product;

public interface IProductService {

	public List<Product> get();
	public Product get(UUID idProduct) throws Exception;
	public Product add(Product p) throws Exception;
	public Product update(Product p) throws Exception;
	public void delete(UUID idProduct) throws Exception;
}
