# E-Commerce-Database-management-project

  As a part of our course, I made this project for Database Management Systems (DBMS). This project contains theoretical as well as implementation in SQL.
  
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

  Customer Table
 
 ```sql
    create table e_commerce.customer (
      customer_id int primary key,
      FirstName varchar(50),
      MiddleName varchar(50),
      LastName varchar(50),
      Email varchar(100),
      DateOfBirth date,
      phone INT(10),
      age int null
    );

 ```
  Category Table
  
  ```sql
    create table e_commerce.category (
      category_id int primary key,
      category_name varchar(255),
      Description varchar(255)
  );
```
  Seller Table
  
  ```sql
    create table e_commerce.seller (
      seller_id int primary key,
      seller_name varchar(255),
      seller_phone int(15),
      total_sales float
  );
```
  Address Table
  
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
      FOREIGN KEY (customer_id) REFERENCES customer(customer_id) on delete cascade on update no action
  );
```
  Product Table
  
  ```sql
    create table e_commerce.product (
      product_id int primary key,
      product_name varchar(50),
      MRP float,
      stock bool,
      brand varchar(255),
      category_id int,
      seller_id int,
      FOREIGN KEY (category_id) REFERENCES category(category_id) on delete set null on update no action,
      FOREIGN KEY (seller_id) REFERENCES seller(seller_id) on delete set null on update no action
  );
```
  Cart Table
  
```sql
    create table e_commerce.cart (
      cart_id int primary key,
      grandtoatl float ,
      itemtotal int,
      customer_id int,
      FOREIGN KEY (customer_id) REFERENCES customer(customer_id) on delete set null on update no action,
      product_id int,
      FOREIGN KEY (product_id) REFERENCES product(product_id) on delete set null on update no action
  );
```
  Review Table
  
  ```sql
    create table e_commerce.review(
      review_id int primary key,
      description varchar(255),
      rating enum('1','2','3','4','5'),
      customer_id int,
      FOREIGN KEY (customer_id) REFERENCES customer(customer_id) on delete set null on update no action,
      product_id int,
      FOREIGN KEY (product_id) REFERENCES product(product_id) on delete set null on update no action
);
```
  Order Table
  
```sql
    create table e_commerce.order_table(
      order_id int primary key,
      order_date datetime,
      order_amount float,
      order_status enum('delivery','not delivery'),
      shipping_date datetime,
      customer_id int,
      FOREIGN KEY (customer_id) REFERENCES customer(customer_id) on delete set null on update no action,
      cart_id int,
      FOREIGN KEY (cart_id) REFERENCES cart(cart_id) on delete set null on update no action
  );
```

  OrderItem Table

```sql
    create table e_commerce.orderitem(
      order_id int,
      product_id int,
      foreign key (order_id) references order_table(order_id) on delete set null on update no action,
      foreign key (product_id) references product(product_id) on delete set null on update no action,
      MRP float,
      quantity int
  );
```

  Payment Table

  ```sql
    create table e_commerce.payment(
      paymentMode enum('online','offline'),
      dateofpayment datetime,
      order_id int,
      foreign key (order_id) references order_table(order_id) on delete set null on update no action,
      customer_id int,
      FOREIGN KEY (customer_id) REFERENCES customer(customer_id) on delete set null on update no action
  );	
```

### Insert the data

  Customer Table
  ```sql
      insert into e_commerce.customer values (1,'vivek','umesh','wadher','wadhervivek6904@gmail.com','2004-09-06',2147483647,0);
      insert into e_commerce.customer values (2,'devansh','hitesh','makawana','devansh@gmail.com','2004-05-23',2147483647,0);
      insert into e_commerce.customer values (3,'jay','amit','chauhan','jay@gmail.com','2004-05-02',2147483647,0);
```

  Category Table
  
  ```sql
    insert into e_commerce.category values (1,'Mobiles & Computer','all the brands are there like phone, tablets, PC, Desktop '); 
    insert into e_commerce.category values (2,'TV & Aplliances & Electronics','all the brands are there like tv smart, tv oled, mixer and many more'); 
    insert into e_commerce.category values (3,'Men`s Fashion','all the brands are there like t-Shirts, jeans, shirts,etc'); 
    insert into e_commerce.category values (4,'Women`s Fashion','all the brands are there like shorts,one pic, kurti, t-shirt,jeans,etc');
```

  Seller Table
  
  ```sql
  insert into e_commerce.seller values (1,'prem upadhay','1295874636',12000.75);  
  insert into e_commerce.seller values (2,'jay chauhan','7865423565',38000.20);  
  insert into e_commerce.seller values (3, 'yash shetty','7465456456',8529.23);
```

  Address Table

  ```sql
insert into e_commerce.address values (1,'108','khodiayr chs ltd','devipada borivali east','maharsahtra','mumbai','400066',1);
insert into e_commerce.address values (2,'214/B','vitthal chs','rattan nagar kandivali east','maharsahtra','mumbai','400801',2);
insert into e_commerce.address values (3,'52','oberoi sky city','thakur complex malad east','maharsahtra','mumbai','400526',3);
```

  Product Table
  
```sql
insert into e_commerce.product values(1,'pen drive',250,52,'hp',2,1);
insert into e_commerce.product values(2,'monitor',25000,30,'dell',1,3);
insert into e_commerce.product values(3,'keyborad',765,69,'lenovo',2,2);
insert into e_commerce.product values(4,'i phone 15',75000,10,'Apple',1,2);
insert into e_commerce.product values(5,'Mens t-shirts',350,22,'H&M',3,1);
insert into e_commerce.product values(6,'mens kurta',766,32,'ZARA',3,3);
insert into e_commerce.product values(7,'women shorts',360,52,'pantaloom',4,2);
insert into e_commerce.product values(8,'women jeans',699,65,'zudio',4,1);
insert into e_commerce.product values(9,'mouse',299,65,'lenovo',2,3);
insert into e_commerce.product values(10,'destop',25000,10,'dell',1,2);
```

  Cart Table

```sql
insert into e_commerce.cart values (1,75000,1,1,4); 
insert into e_commerce.cart values (2,1050,3,2,5); 
insert into e_commerce.cart values (3,598,2,3,9); 
insert into e_commerce.cart values (4,2160,6,2,7); 
insert into e_commerce.cart values (5,250,1,1,1); 
insert into e_commerce.cart values (6,3830,6,3,6); 
```

  Order Table

```sql
insert into e_commerce.order_table values (1,'2023-12-06 10:12:20',75000,'delivery','2023-12-09 09:25:02',1,1); 
insert into e_commerce.order_table values (2,'2023-12-07 20:23:20',1050,'delivery','2023-12-12 05:29:02',2,2); 
insert into e_commerce.order_table values (3,'2023-12-08 18:12:20',598,'delivery','2023-12-23 09:26:02',3,3); 
insert into e_commerce.order_table values (4,'2023-12-10 15:45:20',2160,'delivery','2023-12-15 11:26:02',2,4); 
insert into e_commerce.order_table values (5,'2023-12-10 15:45:20',250,'delivery','2023-12-15 11:26:02',1,5); 
insert into e_commerce.order_table values (6,'2023-12-21 16:23:20',3830,'delivery','2023-12-29 11:35:09',3,6); ****
```

  Order Item Table

```sql
insert into e_commerce.orderitem values (7500,1,1,4);
insert into e_commerce.orderitem values (1050,3,2,5);
insert into e_commerce.orderitem values (299,2,3,9);
insert into e_commerce.orderitem values (360,6,4,7);
insert into e_commerce.orderitem values (250,1,5,1);
insert into e_commerce.orderitem values (766,6,6,6);
```

  Payment Table

```sql
insert into e_commerce.payment values ('online','2023-12-06 10:12:56',1,1,1);
insert into e_commerce.payment values ('online','2023-12-07 20:23:20',2,2,2);
insert into e_commerce.payment values ('online','2023-12-08 18:12:20',3,3,3);
insert into e_commerce.payment values ('online','2023-12-10 15:45:20',4,2,4);
insert into e_commerce.payment values ('online','2023-12-10 15:45:20',5,1,5);
insert into e_commerce.payment values ('online','2023-12-21 16:23:20',6,3,6);
```

Review Table

```sql
insert into e_commerce.review values (1,'i phone 15 is amazing.','5',1,4);
insert into e_commerce.review values (2,'wow t-shirts ,good in quality.','3',2,5);
insert into e_commerce.review values (3,'best mouse in the world.','4',3,9);
insert into e_commerce.review values (4,'very comfatabale in size and quality.','4',2,7);
insert into e_commerce.review values (5,'the size is 128mb pendrive, speed is good.','5',1,1);
insert into e_commerce.review values (6,'size of kurta and quality is good','2',3,6);
```
