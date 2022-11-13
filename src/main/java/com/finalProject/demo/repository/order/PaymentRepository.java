package com.finalProject.demo.repository.order;

import org.springframework.data.jpa.repository.JpaRepository;

import com.finalProject.demo.model.entity.order.Payment;

public interface PaymentRepository extends JpaRepository<Payment, Integer> {

}
