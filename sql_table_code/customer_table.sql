create schema e_commerce;

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


