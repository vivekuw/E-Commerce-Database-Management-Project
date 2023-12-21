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

### Create schema(database) in MySQL
```sql
  create schema e_commerce;
```
### Create Tables

 -customer tables 
 
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
  -Category table
  ```sql
    create table e_commerce.category (
      category_id int primary key,
      category_name varchar(255),
      Description varchar(255)
  );
```
