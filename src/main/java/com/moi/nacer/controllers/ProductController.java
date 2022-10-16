package com.moi.nacer.controllers;

import java.util.List;
import java.util.UUID;

import javax.websocket.server.PathParam;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.moi.nacer.entities.Product;
import com.moi.nacer.services.IProductService;

@RestController
@RequestMapping("/api/v1/product")
public class ProductController {
	
	private IProductService productService;

	public ProductController(IProductService productService) {
		this.productService = productService;
	}

	@GetMapping("/products")
	public List<Product> get() {
		return productService.get();
	}
	
	@GetMapping("/product/{codeProduct}")
	public Product get(@PathVariable(name = "codeProduct") UUID id) throws Exception {
		return productService.get(id);
	}
	
	@PostMapping("/saveProduct")
	public Product add(@RequestBody Product product) throws Exception {
		return productService.add(product);
	}
	
	@PutMapping("/updateProduct")
	public Product update(@RequestBody Product updatedProduct) throws Exception {
		return productService.update(updatedProduct);
	}
	
	@DeleteMapping("/deleteProduct/{idProduct}")
	public void delete(@PathVariable UUID idProduct) throws Exception {
		productService.delete(idProduct);
	}
}
