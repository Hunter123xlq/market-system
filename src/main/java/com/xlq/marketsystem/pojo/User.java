package com.xlq.marketsystem.pojo;

import javax.management.relation.Role;
import java.time.LocalDateTime;

// 用户表
public class User {
    private Integer userID;
    private String username;
    private String password;
    private Role role;
    private String phone;
    private String email;
    private LocalDateTime createTime;
    private LocalDateTime updateTime;
}
