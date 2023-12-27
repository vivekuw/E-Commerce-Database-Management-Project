create table e_commerce.order_table(
order_id int primary key,
order_date datetime,
order_amount float,
order_status enum('delivery','not delivery'),
shipping_date datetime,
customer_id int,
FOREIGN KEY (customer_id) REFERENCES customer(customer_id) on delete cascade on update no action,
cart_id int,
FOREIGN KEY (cart_id) REFERENCES cart(cart_id) on delete cascade on update no action
);