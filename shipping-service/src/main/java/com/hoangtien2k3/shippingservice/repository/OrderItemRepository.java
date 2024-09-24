package com.ducmai444.shippingservice.repository;

import com.ducmai444.shippingservice.domain.OrderItem;
import com.ducmai444.shippingservice.domain.id.OrderItemId;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OrderItemRepository extends JpaRepository<OrderItem, OrderItemId> {

}