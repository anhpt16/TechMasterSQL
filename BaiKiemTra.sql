use quanlysanpham;

-- Tạo bảng
create table categories (
	category_id int primary key,
    category_name varchar(30)
);
create table products (
	product_id int primary key,
    product_name varchar(30),
    category_id int,
    price double,
    foreign key (category_id) references categories(category_id)
);
create table customers (
	customer_id int primary key,
    customer_name varchar(30),
    email varchar(30)
);
create table orders (
	order_id int primary key,
    customer_id int,
    order_date date,
    foreign key (customer_id) references customers(customer_id)
);
create table orderdetails (
	order_detail_id int primary key,
    order_id int,
    product_id int,
    quantity int,
    foreign key (order_id) references orders(order_id),
    foreign key (product_id) references products(product_id)
);
-- Dữ liệu
insert into categories (category_id, category_name) values
	(1, "Điện thoại"),
    (2, "Đồ gia dụng"),
    (3, "Thời trang"),
    (4, "Máy tính"),
    (5, "Quan tài"),
    (6, "Xe máy"),
    (7, "Ô tô"),
    (9, "Vũ khí"),
    (10, "Ma túy"),
    (11, "Sách"),
    (12, "Máy Lạnh");
insert into products (product_id, product_name, category_id, price) values
	(1, "Laptop ASUS GL552VX", 4, 2200),
    (2, "Laptop DELL Vostro", 4, 1200),
    (3, "Laptop Dell Inspiron", 4, 2100),
    (4, "Laptop Dell Latitude", 4, 1000),
    (5, "Laptop Dell XPS", 4, 1300),
    (6, "Dell Alienware", 4, 3200),
    (7, "Laptop Asus VivoBook Pro", 4, 900),
    (8, "Laptop Asus ExpertBook", 4, 4200),
    (9, "Tủ lạnh AQR-D59FA BS", 2, 5000),
    (10, "Tủ lạnh Electrolux ", 2, 4000),
    (11, "Tủ lạnh Casper", 2, 3000),
    (12, "Tử lạnh Electrolux", 2, 8200),
    (13, "Lò nướng Panasonic", 2, 2300),
    (14, "Lò nướng Sanaky", 2, 4200),
    (15, "Lò nướng Sharp", 2, 10000),
    (16, "Áo tay liền cổ trụ", 3, 100),
    (17, "Áp peplum phối cổ", 3, 200),
    (18, "Áo kiểu tay liền", 3, 300),
    (19, "Áo 2 dây lụa B2", 3, 100),
    (20, "Áo lửng cổ vuông", 3, 350),
    (21, "Quần short xếp ly", 3, 250),
    (22, "Quần short đỉa đôi", 3, 140),
    (23, "Quần short ống xuông", 3, 150),
    (24, "Iphone 11", 1, 1200),
    (25, "Sam Sung J2", 1, 1400),
    (26, "Iphone 12 promax", 1, 2400),
    (27, "Oppo A9", 1, 1200),
    (28, "Lumia 520", 1, 2300),
    (29, "Nokia 8800", 1, 200),
    (30, "Nokia 1280", 1, 400),
    (31, "Quan tài nắp tròn", 5, 5000),
    (32, "Quan tài nắp vuông", 5, 6000),
    (33, "Quan tài phương tây", 5, 12000),
    (34, "Quan tài gỗ hương", 5, 13000),
    (35, "Quan tài gỗ trai", 5, 14000),
    (36, "Quan tài gỗ sao", 5, 12000),
    (37, "Wave S", 6, 1200),
    (38, "Airblade 2023", 6, 6000),
    (39, "Vision 2024", 6, 7000),
    (40, "Super Cup", 6, 3000),
    (41, "Exciter 2021", 6, 3200),
    (42, "Z1000", 6, 8000),
    (43, "Xe lắc trẻ em", 6, 1900),
    (44, "Xe lăn cải tạo", 6, 4100),
    (45, "BMW X6", 7, 5200),
    (46, "Mazda 3", 7, 1200),
    (47, "Audi A8", 7, 1000000),
    (48, "Audi Q6", 7, 20000),
    (49, "Urus", 7, 21000),
    (50, "Lựu đạn", 9, 1200),
    (51, "Bom xăng", 9, 2200),
    (52, "M4A1 Silent", 9, 12000),
    (53, "AUG", 9, 3400),
    (54, "AK47 Emprire", 9, 5340),
    (55, "46 Noob", 9, 1200),
    (56, "DE headshot", 9, 3500),
    (57, "MP5", 9, 3400),
    (58, "Ketamin", 10, 1200),
    (59, "Kẹo mút cần sa", 10, 2200),
    (60, "Tem giấy ma túy", 10, 2300),
    (61, "Thuốc lắc", 10, 1200),
    (62, "Ma túy “muối tắm", 10, 2200),
    (63, "Cocaine", 10, 5400),
    (64, "Trăm năm cô đơn", 11, 1200),
    (65, "Vũ trụ", 11, 2200),
    (66, "Lược sử vạn vật", 11, 4200),
    (67, "Đắc nhân tâm", 11, 1300),
    (68, "Bá tước Monte Cristo", 11, 2000),
    (69, "Mật mã Da Vinci", 11, 4500),
    (70, "Những người khốn khổ", 11, 2400),
    (71, "Máy lạnh Toshiba", 15, 2200),
    (72, "Máy lạnh Panasonic", 15, 2333),
    (73, "Máy lạnh Casper", 15, 23444),
    (74, "Máy lạnh Mitsubishi", 15, 22233),
    (75, "Máy lạnh Daikin", 15, 2223),
    (76, "Máy lạnh LG", 15, 4333),
    (77, "Máy lạnh Sharp", 15, 2111);
insert into customers (customer_id, customer_name, email) values
	(1, "Nelson Ho", "ho@mgail.com"),
    (2, "Mccullough", "mccullough@gmail.com"),
    (3, "Silas Tate", "tate@gmail.com"),
    (4, "Josie Santos", "santos@gmail.com"),
    (5, "Kristy Harmon", "harmon@gmail.com"),
    (6, "Emerson Singh", "emerson@gmail.com"),
    (7, "Barrett Nunez", "barrett@gmail.com"),
    (8, "Fanny Swanson", "swanson@gmail.com"),
    (9, "Cleveland Campbell", "campbell@gmail.com"),
    (10, "Elma Calderon", "calderon@gmail.com");
insert into orders (order_id, customer_id, order_date) values
	(1, 1, "2012-1-12"),
    (2, 1, "2012-2-4"),
    (3, 1, "2012-3-10"),
    (4, 1, "2012-4-16"),
    (5, 2, "2012-1-10"),
    (6, 2, "2012-2-7"),
    (7, 2, "2012-3-11"),
    (8, 2, "2012-4-12"),
    (9, 3, "2012-1-1"),
    (10, 3, "2012-2-12"),
    (11, 3, "2012-3-23"),
    (12, 3, "2012-4-25"),
    (13, 4, "2012-1-2"),
    (14, 4, "2012-2-3"),
    (15, 4, "2012-3-4"),
    (16, 4, "2012-4-21"),
    (17, 5, "2012-1-12"),
    (18, 5, "2012-2-3"),
    (19, 5, "2012-3-5"),
    (20, 5, "2012-4-13"),
    (21, 6, "2012-1-11"),
    (22, 6, "2012-2-10"),
    (23, 6, "2012-3-2"),
    (24, 6, "2012-4-12"),
    (25, 7, "2012-6-1"),
    (26, 7, "2012-7-2"),
    (27, 7, "2012-8-22"),
    (28, 7, "2012-9-14"),
    (29, 8, "2012-4-1"),
    (30, 8, "2012-5-4"),
    (31, 8, "2012-6-22"),
    (32, 8, "2012-7-16");
insert into orderdetails (order_detail_id, order_id, product_id, quantity) values
	(1, 1, 1, 5),
    (2, 1, 4, 10),
    (3, 1, 10, 12),
    (4, 1, 6, 10);
    
insert into orderdetails (order_detail_id, order_id, product_id, quantity) values
    (5, 1, 3, 12),
    (6, 2, 2, 12),
    (7, 2, 40, 1),
    (8, 2, 12, 1),
    (9, 2, 20, 1),
    (10, 2, 25, 1),
    (11, 2, 28, 1),
    (12, 3, 24, 1),
    (13, 3, 41, 1),
    (14, 3, 45, 1),
    (15, 3, 46, 1),
    (16, 4, 47, 1),
    (17, 4, 48, 1),
    (18, 4, 49, 12),
    (19, 4, 50, 1),
    (20, 5, 1, 5),
    (21, 5, 4, 10),
    (22, 5, 10, 12),
    (23, 5, 6, 10),
    (24, 6, 3, 12),
    (25, 6, 2, 12),
    (26, 6, 40, 1),
    (27, 6, 12, 1),
    (28, 7, 20, 1),
    (29, 7, 25, 1),
    (30, 7, 28, 1),
    (31, 7, 24, 1),
    (32, 8, 41, 1),
    (33, 8, 45, 1),
    (34, 8, 46, 1),
    (35, 8, 47, 1),
    (36, 9, 48, 1),
    (37, 9, 49, 12),
    (38, 9, 50, 1),
    (39, 9, 1, 5),
    (40, 10, 4, 10),
    (41, 10, 10, 12),
    (42, 10, 6, 10),
    (43, 10, 3, 12),
    (44, 11, 2, 12),
    (45, 11, 40, 1),
    (46, 11, 12, 1),
    (47, 11, 20, 1),
    (48, 12, 25, 1),
    (49, 12, 28, 1),
    (50, 12, 24, 1),
    (51, 12, 41, 1),
    (52, 12, 45, 1),
    (53, 13, 46, 1),
    (54, 13, 47, 1),
    (55, 13, 48, 1),
    (56, 13, 49, 12),
    (57, 14, 50, 1),
    (58, 14, 51, 2),
    (59, 14, 52, 3),
    (60, 14, 53, 4),
    (61, 15, 54, 21),
    (62, 15, 55, 2),
    (63, 15, 56, 3),
    (64, 15, 57, 4),
    (65, 16, 58, 1),
    (66, 16, 59, 34),
    (67, 16, 60, 43),
    (68, 16, 61, 12),
    (69, 17, 62, 12),
    (70, 17, 63, 12),
    (71, 17, 64, 13),
    (72, 17, 65, 1),
    (73, 18, 66, 12),
    (74, 18, 67, 1),
    (75, 18, 68, 11),
    (76, 18, 69, 21),
    (77, 19, 70, 21),
    (78, 19, 71, 21),
    (79, 19, 71, 11),
    (80, 19, 71, 31),
    (81, 20, 62, 31),
    (82, 20, 61, 13),
    (83, 20, 60, 21),
    (84, 20, 16, 1),
    (85, 20, 15, 11),
    (86, 21, 14, 2),
    (87, 21, 13, 3),
    (88, 21, 11, 31),
    (89, 21, 32, 12),
    (90, 22, 31, 1),
    (91, 22, 32, 13),
    (92, 22, 33, 1),
    (93, 22, 34, 13),
    (94, 23, 35, 14),
    (95, 23, 36, 1),
    (96, 23, 37, 15),
    (97, 23, 38, 1),
    (98, 24, 39, 11),
    (99, 24, 50, 11),
    (100, 24, 45, 31),
    (101, 24, 44, 1),
    (102, 25, 46, 11),
    (103, 25, 47, 21),
    (104, 25, 63, 12),
    (105, 25, 12, 1),
    (106, 26, 34, 11),
    (107, 26, 25, 1),
    (108, 26, 56, 12),
    (109, 26, 23, 1),
    (110, 27, 26, 12),
    (111, 27, 26, 31),
    (112, 27, 22, 1),
    (113, 27, 12, 12),
    (114, 28, 14, 1),
    (115, 28, 16, 11),
    (116, 28, 12, 11),
    (117, 28, 12, 1),
    (118, 29, 13, 11),
    (119, 29, 44, 11),
    (120, 29, 43, 1),
    (121, 29, 12, 11),
    (122, 30, 13, 12),
    (123, 30, 14, 1),
    (124, 30, 41, 1),
    (125, 30, 15, 11),
    (126, 31, 23, 12),
    (127, 31, 34, 1),
    (128, 31, 33, 11),
    (129, 31, 22, 12),
    (130, 32, 45, 11),
    (131, 32, 56, 31),
    (132, 32, 55, 1),
    (133, 32, 66, 12);
-- Câu 1: Lấy thông tin tất cả các sản phẩm đã được đặt trong một đơn đặt hàng cụ thể
select products.*, orderdetails.quantity
from products
	inner join orderdetails on products.product_id = orderdetails.product_id
    inner join orders on orderdetails.order_id = orders.order_id
where orders.order_id = 25;
-- Câu 2: Tính tổng số tiền trong một đơn đặt hàng cụ thể
select orders.order_id, sum(products.price * orderdetails.quantity)
from products
	inner join orderdetails on products.product_id = orderdetails.product_id
    inner join orders on orderdetails.order_id = orders.order_id
group by orders.order_id
having orders.order_id = 25;
-- Câu 3: Lấy danh sách các sản phẩm chưa có trong bất kỳ đơn đặt hàng nào.
select * from products
where product_id not in (select distinct(product_id) from orderdetails);
-- Câu 4: Đếm số lượng sản phẩm trong mỗi danh mục. (category_name, total_products)
select categories.category_name, count(products.product_id)
from categories
	left join products on categories.category_id = products.category_id
group by categories.category_id;
-- Câu 5: Tính tổng số lượng sản phẩm đã đặt bởi mỗi khách hàng (customer_name, total_ordered)
select customers.customer_name, sum(orderdetails.quantity)
from customers
	inner join orders on customers.customer_id = orders.order_id
    inner join orderdetails on orders.order_id = orderdetails.order_id
group by customers.customer_id;
-- Câu 6: Lấy thông tin danh mục có nhiều sản phẩm nhất (category_name, product_count)
-- Lấy ra số lượng sản phẩm với điều kiện số lượng đó phải là số lượng lớn nhất
select categories.category_name, count(products.product_id) as number
from categories
	inner join products on categories.category_id = products.category_id
group by categories.category_id
having number = (
	select max(num)
    from (
		select count(products.product_id) as num
        from categories
			inner join products on categories.category_id = products.category_id
		group by categories.category_id
    ) as list
);
-- Câu 7: Tính tổng số sản phẩm đã được đặt cho mỗi danh mục (category_name, total_ordered)
select categories.category_name, sum(orderdetails.quantity)
from categories
	inner join products on categories.category_id = products.category_id
    inner join orderdetails on products.product_id = orderdetails.product_id
group by categories.category_id ;
-- Câu 8: Lấy thông tin về top 3 khách hàng có số lượng sản phẩm đặt hàng lớn nhất (customer_id, customer_name, total_ordered)
select customers.customer_id, customers.customer_name, sum(orderdetails.quantity) as number
from customers
	inner join orders on customers.customer_id = orders.customer_id
    inner join orderdetails on orders.order_id = orderdetails.order_id
group by customers.customer_id
order by number desc
limit 3;
-- Câu 9: Lấy thông tin về khách hàng đã đặt hàng nhiều hơn một lần trong khoảng thời gian cụ thể từ ngày A -> ngày B (customer_id, customer_name, total_orders)
select customer_id, customer_name, number from (
select customers.customer_id, customers.customer_name, count(orders.order_id) as number
from customers
	inner join orders on customers.customer_id = orders.customer_id
where day(orders.order_date) between 2 and 15
group by customers.customer_id
) as list
where number > 1;
-- Câu 10: Lấy thông tin về các sản phẩm đã được đặt hàng nhiều lần nhất và số lượng đơn đặt hàng tương ứng (product_id, product_name, total_ordered)
select products.product_id, products.product_name, count(orders.order_id) as num
from products
	inner join orderdetails on products.product_id = orderdetails.product_id
    inner join orders on orderdetails.order_id = orders.order_id
group by products.product_id
having num  = (select number from (
	select products.product_id, products.product_name , count(orders.order_id) as number
	from products
	inner join orderdetails on products.product_id = orderdetails.product_id
    inner join orders on orderdetails.order_id = orders.order_id
	group by products.product_id   
	order by number desc
	limit 1
	) as list
);

    