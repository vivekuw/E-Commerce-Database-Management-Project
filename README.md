# E-Commerce-Database-management-project

  As a part of our course, I made this project for Database Management Systems (DBMS) . This project contains theoretical as well as implementation in SQL.
  
### Contents
  •	Project Description
  
  •	Basic structure
  
    o	Functional requirements
    
    o	Entity Relation (ER) diagram and constraints
    
    o	Relational database schema
    
  •	Implementation
  
    o	Creating tables
    
    o	Inserting data
    
# Pre-requisite
  •	MySQL
  
### Project Description
  The E-Commerce Database Management Project (DBMD) is a comprehensive solution designed to streamline and optimize the operations of an e-commerce business. This project focuses on creating a robust database management system that facilitates efficient handling of various aspects of an online store, from product inventory to customer orders.

### Relational Database Schema - e-commerce -ER diagram

![alt text](https://github.com/vivekuw/E-Commerce-Database-management-project/blob/23a0b08070f5fe22a055910cafc06d86dc3befb6/E%20commerce%20ER%20Diagram.jpg)

### ER diagram 

![alt text](https://github.com/vivekuw/E-Commerce-Database-management-project/blob/a83d9c48c82ffd18dee02c13f42e87b7069faf67/ECommerce.jpg)

### Create Schema(database) in MySQL
```sql
  create schema e_commerce;
```
### Create Tables

 ####Customer Table
 
 ```sql
    create table e_commerce.customer (
      customer_id int primary key,
      FirstName varchar(50),
      MiddleName varchar(50),
      LastName varchar(50),
      Email varchar(100),
      DateOfBirth date,
      phone INT,
      age int null
   );
 ```
  ####Category Table
  
  ```sql
    create table e_commerce.category (
      category_id int primary key,
      category_name varchar(255),
      Description varchar(255)
  );
```
  ####Seller Table
  
  ```sql
    create table e_commerce.seller (
      seller_id int primary key,
      seller_name varchar(255),
      seller_phone int(15),
      total_sales float
  );
```
  ####Address Table
  
  ```sql
    create table e_commerce.address(
      address_id int primary key,
      apart_no int(10),
      apart_name varchar(255),
      streetname varchar(255),
      state varchar(255),
      city varchar(255),
      pincode int(6),
      customer_id int ,
      FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
  );
```
  ####Product Table
  
  ```sql
    create table e_commerce.product (
      product_id int primary key,
      product_name varchar(50),
      MRP float,
      stock bool,
      brand varchar(255),
      customer_id int,
      seller_id int,
      FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
      FOREIGN KEY (seller_id) REFERENCES seller(seller_id)
  );
```
  -Cart Table
  
```sql
    create table e_commerce.cart (
      cart_id int primary key,
      grandtoatl float ,
      itemtotal int,
      customer_id int,
      FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
      product_id int,
      FOREIGN KEY (product_id) REFERENCES product(product_id)
  );
```
  ####Review Table
  
  ```sql
    create table e_commerce.review(
      review_id int primary key,
      description varchar(255),
      rating enum('1','2','3','4','5'),
      customer_id int,
      FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
      product_id int,
      FOREIGN KEY (product_id) REFERENCES product(product_id)
  );
```
  -Order Table
  
```sql
    create table e_commerce.order_table(
      order_id int primary key,
      order_date datetime,
      order_amount float,
      order_status enum('delivery','not delivery'),
      shipping_date datetime,
      customer_id int,
      FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
      cart_id int,
      FOREIGN KEY (cart_id) REFERENCES cart(cart_id)
  );
```
  ####OrderItem Table

```sql
    create table e_commerce.orderitem(
      order_id int,
      product_id int,
      foreign key (order_id) references order_table(order_id),
      foreign key (product_id) references product(product_id),
      MRP float,
      quantity int
  );
```

  ####Payment Table

  ```sql
    create table e_commerce.payment(
      paymentMode enum('online','offline'),
      dateofpayment datetime,
      order_id int,
      foreign key (order_id) references order_table(order_id),
      customer_id int,
      FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
  );	
```


