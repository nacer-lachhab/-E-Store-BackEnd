package com.moi.nacer.services;

import java.util.List;
import java.util.UUID;

import org.springframework.stereotype.Service;

import com.moi.nacer.entities.Product;
import com.moi.nacer.repositories.ProductRepository;

@Service
public class ProductServiceImp implements IProductService{
	
	private final ProductRepository repository;

	public ProductServiceImp(ProductRepository repository) {
		this.repository = repository;
	}

	@Override
	public List<Product> get() {
		// TODO Auto-generated method stub
		return repository.findAll();
	}

	@Override
	public Product get(UUID idProduct) throws Exception {
		// TODO Auto-generated method stub
		return repository
				.findById(idProduct)
				.orElseThrow(()-> new Exception("No Product Found with id: "+idProduct));
	}

	@Override
	public Product add(Product p) throws Exception {
		// TODO Auto-generated method stub
		Product savedProduct = repository.save(p);
		if(!savedProduct.equals(null))
			return savedProduct;
		else 
			throw new Exception("Product not saved!!!!");
	}

	@Override
	public Product update(Product updatedProduct) throws Exception {
		// TODO Auto-generated method stub
		//get(updatedProduct.getId());//to throw exception if no Product with id in BD.
		return repository.save(updatedProduct);//replace old value on BD.
	}

	@Override
	public void delete(UUID idProduct) throws Exception {
		// TODO Auto-generated method stub
		Product productToDelete = get(idProduct);
		repository.delete(productToDelete);
	}

	
}
