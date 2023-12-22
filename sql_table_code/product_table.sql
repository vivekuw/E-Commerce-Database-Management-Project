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