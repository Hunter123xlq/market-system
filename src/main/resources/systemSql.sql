-- 创建数据库
drop database if exists market_system;
create database market_system ;
use market_system;

-- 创建表
create table user (
    user_id int auto_increment primary key comment '用户ID',
    username varchar(50) comment '用户名',
    password varchar(50) comment '密码',
    role enum('admin', 'employee') comment '角色',
    phone varchar(15) comment '电话',
    email varchar(50) comment '邮箱',
    create_time datetime comment '创建时间',
    update_time datetime comment '修改时间'
) comment '用户表';

create table category (
    category_id int auto_increment primary key comment '分类ID',
    name varchar(50) comment '分类名称'
) comment '分类表';

create table product (
    product_id  int auto_increment primary key comment '商品ID',
    name        varchar(50) comment '商品名称',
    category_id int comment '商品类别ID',
    price       decimal(5, 2) comment '单价',
    create_time datetime comment '创建时间',
    update_time datetime comment '修改时间',
    constraint fk_category_products foreign key (category_id) references category(category_id)
) comment '商品表';

create table inventory (
    inventory_id int auto_increment primary key comment '库存ID',
    product_id int comment '商品ID',
    quantity int comment '库存数量',
    create_time datetime comment '创建时间',
    update_time datetime comment '修改时间',
    constraint fk_inventory_product foreign key (product_id) references product(product_id)
) comment '库存表';

create table sale (
    sale_id int auto_increment primary key comment '销售记录ID',
    product_id int comment '商品ID',
    user_id int comment '用户ID',
    quantity int comment '销售数量',
    total_price decimal(5, 2) comment '总价',
    create_time datetime comment '创建时间',
    update_time datetime comment '修改时间',
    constraint fk_sale_product foreign key (product_id) references product(product_id),
    constraint fk_sale_user foreign key (user_id) references user(user_id)
) comment '销售记录表';

create table supplier (
    supplier_id int auto_increment primary key comment '供应商ID',
    name varchar(50) comment '供应商名称',
    contact_info varchar(50) comment '联系信息',
    address varchar(100) comment '地址',
    create_time datetime comment '创建时间',
    update_time datetime comment '修改时间'
) comment '供应商表';

create table purchase (
    purchase_id int auto_increment primary key comment '采购记录ID',
    supplier_id int comment '供应商ID',
    product_id int comment '商品ID',
    quantity int comment '采购数量',
    total_cost decimal(10 ,2) comment '总花费',
    create_time datetime comment '创建时间',
    update_time datetime comment '修改时间',
    constraint fk_purchase_supplier foreign key (supplier_id) references supplier(supplier_id),
    constraint fk_purchase_product foreign key (product_id) references product(product_id)
) comment '采购记录表'
