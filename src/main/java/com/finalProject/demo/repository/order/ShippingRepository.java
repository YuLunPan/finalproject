package com.finalProject.demo.repository.order;

import org.springframework.data.jpa.repository.JpaRepository;

import com.finalProject.demo.model.entity.order.Shipping;

public interface ShippingRepository extends JpaRepository<Shipping, Integer> {

}
