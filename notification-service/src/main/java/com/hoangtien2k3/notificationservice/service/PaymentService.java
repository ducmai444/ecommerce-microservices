package com.ducmai444.notificationservice.service;

import com.ducmai444.notificationservice.dto.PaymentDto;
import com.ducmai444.notificationservice.entity.Payment;
import reactor.core.publisher.Mono;

import java.util.List;

public interface PaymentService {
    Mono<Payment> savePayment(PaymentDto paymentDto);
    Mono<Payment> getPayment(Integer paymentId);
    Mono<List<Payment>> getAllPayments();
    Mono<Void> deletePayment(Integer paymentId);
}
