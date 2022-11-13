package com.finalProject.demo.repository.order;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.finalProject.demo.model.entity.member.Member;
import com.finalProject.demo.model.entity.order.Orders;
import com.finalProject.demo.model.entity.order.Payment;

public interface OrdersRepository extends JpaRepository<Orders, Long> {

	@Query(value = " select top 1 *from Orders order by orderId desc",nativeQuery = true)
	Orders findTopOrder();
	
	List<Orders> findByMember(Member member);
	
	@Modifying 
	@Query(value="update orders set orderState = '已出貨', shippingDate = getDate(), shippingCode = ?2 where orderId = ?1", nativeQuery = true)
	int updateShippingCodeAndShippingDateById(Long orderId, String shippingCode);
	
	@Modifying
	@Query(value="update orders set orderState = '已付款' where orderId = ?1", nativeQuery = true)
	int updateOrderStateToPaid(Long orderId);
	
}

	