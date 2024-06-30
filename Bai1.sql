create schema bai1;

use bai1;

create table person (
	id int,
    fullname varchar(30),
    job varchar(30),
    birthday date,
    salary double,
    address varchar(50)
);

insert into person(id, fullname, job, birthday, salary, address) values
	(1, "Anh", "IT", "2002-10-11", 1000, "Phú Thọ"),
    (2, "Nam", "Sale", "2001-12-12", 2000, "Hà Nội"),
    (3, "Hoàng", "BA", "2002-12-4", 3000, "Bắc Giang"),
    (4, "Hiếu", "Worker", "2001-8-1", 1000, "Hải Phòng"),
    (5, "Hải", "Tester", "2004-4-3", 2000, "Hải Dương"),
    (6, "Dương", "IT", "2002-10-7", 1000, "Phú Thọ"),
    (7, "Thu", "HR", "2001-8-20", 2000, "Hà Nội"),
    (8, "Kiên", "Manager", "1990-7-25", 1000, "Yên Bái"),
    (9, "Nga", "Doctor", "2000-9-15", 2000, "Điện Biên"),
    (10, "Long", "Singer", "1995-6-12", 5000, "Hồ Chí Minh");