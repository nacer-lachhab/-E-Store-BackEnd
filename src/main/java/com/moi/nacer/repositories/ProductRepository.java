package com.moi.nacer.repositories;

import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.moi.nacer.entities.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, UUID>{

}
