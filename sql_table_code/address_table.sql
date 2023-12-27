create table e_commerce.address(
address_id int primary key,
apart_no int(10),
apart_name varchar(255),
streetname varchar(255),
state varchar(255),
city varchar(255),
pincode int(6),
customer_id int ,
FOREIGN KEY (customer_id) REFERENCES customer(customer_id) on delete set null on update no action
);

