package com.xlq.marketsystem.pojo;

import java.time.LocalDateTime;

public class Sale {
    private Integer saleId;
    private Product product;
    private User user;
    private int quantity;
    private double totalPrice;
    private LocalDateTime createTime;
    private LocalDateTime updateTime;
}
