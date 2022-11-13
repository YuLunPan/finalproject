package com.finalProject.demo.repository.order;

import com.finalProject.demo.model.entity.order.OrderDetail;
import com.finalProject.demo.model.mutiKeys.OrderDetailTableMutiKeysClass;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface OrderDetailRepository extends JpaRepository<OrderDetail, OrderDetailTableMutiKeysClass> {
	
	List<OrderDetail> findByOrderId(Long id);
	


}
