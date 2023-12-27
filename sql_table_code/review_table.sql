create table e_commerce.review(
review_id int primary key,
description varchar(255),
rating enum('1','2','3','4','5'),
customer_id int,
FOREIGN KEY (customer_id) REFERENCES customer(customer_id) on delete set null on update no action,
product_id int,
FOREIGN KEY (product_id) REFERENCES product(product_id) on delete set null on update no action
);

