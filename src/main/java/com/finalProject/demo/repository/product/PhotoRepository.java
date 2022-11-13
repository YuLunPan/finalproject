package com.finalProject.demo.repository.product;

import org.springframework.data.jpa.repository.JpaRepository;

import com.finalProject.demo.model.entity.product.Photo;

public interface PhotoRepository extends JpaRepository<Photo, Long> {

}
