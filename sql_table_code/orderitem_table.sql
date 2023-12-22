create table e_commerce.orderitem(
order_id int,
product_id int,
foreign key (order_id) references order_table(order_id),
foreign key (product_id) references product(product_id),
MRP float,
quantity int
);