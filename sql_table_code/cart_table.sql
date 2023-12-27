create table e_commerce.cart (
cart_id int primary key,
grandtoatl float ,
itemtotal int,
customer_id int,
FOREIGN KEY (customer_id) REFERENCES customer(customer_id) on delete set null on update no action,
product_id int,
FOREIGN KEY (product_id) REFERENCES product(product_id) on delete set null on update no action
);

