create schema quanlysinhdiem;

use quanlysinhdiem;
-- Câu 1
create table tbl_sinhvien (
	id int,
    ten varchar(30),
    tuoi int,
    gioiTinh bit,
    maLop varchar(10)
);
-- Câu 2
create table tbl_giaovien (
	id int,
    ten varchar(30),
    tuoi int,
    gioiTinh bit,
    soNamKN int
);
-- Câu 3
create table tbl_diem (
	id int,
    maSV int,
    diemToan double,
    diemLy double,
    diemHoa double
);
-- Câu 4
insert into tbl_sinhvien (id, ten, tuoi, gioiTinh, maLop) values
	(1, 'Nguyen Van A', 20, 1, 'CS101'),
	(2, 'Le Thi B', 21, 0, 'CS102'),
	(3, 'Tran Van C', 22, 1, 'CS101'),
	(4, 'Pham Thi D', 20, 0, 'CS103'),
	(5, 'Hoang Van E', 23, 1, 'CS104');
    
insert into tbl_giaovien (id, ten, tuoi, gioiTinh, soNamKN) values
	(1, 'Tran Thi X', 35, 1, 10),
	(2, 'Nguyen Van Y', 40, 0, 15),
	(3, 'Pham Thi Z', 45, 1, 20),
	(4, 'Le Van K', 30, 0, 8),
	(5, 'Hoang Thi M', 50, 1, 25);

insert into tbl_diem (id, maSV, diemToan, diemLy, diemHoa) values
	(1, 1, 8.5, 7.0, 9.0),
	(2, 2, 6.5, 8.0, 7.5),
	(3, 3, 9.0, 6.0, 8.5),
	(4, 4, 7.5, 9.0, 6.5),
	(5, 5, 8.0, 7.5, 8.0);