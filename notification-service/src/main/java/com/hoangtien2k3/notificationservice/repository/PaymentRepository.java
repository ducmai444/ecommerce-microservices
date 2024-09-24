package com.ducmai444.notificationservice.repository;

import com.ducmai444.notificationservice.entity.Payment;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PaymentRepository extends MongoRepository<Payment, Integer> {

}
