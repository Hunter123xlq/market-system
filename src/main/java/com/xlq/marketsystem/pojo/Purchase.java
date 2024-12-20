package com.xlq.marketsystem.pojo;

import java.time.LocalDateTime;

public class Purchase {
    private Integer purchaseId;
    private Supplier supplier;
    private Product product;
    private int quantity;
    private double totalCost;
    private LocalDateTime createTime;
    private LocalDateTime updateTime;
}
