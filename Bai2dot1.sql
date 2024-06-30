use person;
-- Câu1
create table product (
	product_id int,
    product_name varchar(30),
    price double,
    quatity int
);

alter table product change quatity quantity int;
-- Câu 2
insert into product(product_id, product_name, price, quantity) values
	(1,'Apple iPhone 14', 799.99, 50),
	(2,'Samsung Galaxy S21', 699.99, 30),
	(3,'Google Pixel 6', 599.99, 40),
	(4,'OnePlus 9', 729.99, 20),
	(5,'Sony WH-1000XM4', 349.99, 25),
	(6,'Bose QuietComfort 35', 299.99, 15),
	(7,'Apple MacBook Air', 999.99, 10),
	(8,'Dell XPS 13', 1099.99, 8),
	(9,'HP Spectre x360', 1199.99, 12),
	(10,'Microsoft Surface Pro 7', 899.99, 5);
-- Câu 3     
alter table product add description varchar(100);

set SQL_SAFE_UPDATES = 0;
-- Câu 4
update product
set product_id = 99
where product_id = 1;
-- Câu 5
update product
set price = price + price * 0.1
where product_id = 2;


use person;

-- Câu 6
update person
set fullname = "John Doe"
where id = 10;
-- Câu 7
update person
set country = "Canada"
where id = 3;
-- Câu 8
update person
set birthday = "1990-05-15",
	country = "Việt Nam"
where id = 7;
-- Câu 9
update person
set salary = salary + salary * 0.1
where id = 40;
-- câu 10
update person
set salary = salary - salary * 0.15
where salary > 6000;