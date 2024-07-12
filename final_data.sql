use quanlytrungtam;

-- Tạo quyền
insert into tbl_role (role_id, name, description, created_at, updated_at) values
	(0, 'root', 'Quản trị hệ thống', now(), now()),
    (1, 'admin', 'Quản lý trung tâm', now(), now()),
    (2, 'teacher', 'Giảng viên', now(), now()),
    (4, 'student', 'Học viên', now(), now());


-- Tạo tài khoản cho giảng viên
insert into tbl_account (username, password, created_at, updated_at) values
	('dat01', 'dat123', now(), now()),
    ('truong01', 'truong123', now(), now()),
    ('luong01', 'luong123', now(), now()),
    ('thuan01', 'thuan123', now(), now());
-- Nhập thông tin cho giảng viên
insert into tbl_teacher (name, dob, email, phone, address, introduce, created_at, updated_at, account_id) values
	('Đạt', '1995-8-4', 'dattech@gmail.com', 0123456789, 'Hải Phòng', '', now(), now(), 1),
    ('Trường', '1991-8-4', 'truongtech@gmail.com', 0123456789, 'Hà Giang', '', now(), now(), 2),
    ('Lương', '1992-8-4', 'luongtech@gmail.com', 0123456789, 'Bắc Giang', '', now(), now(), 3),
    ('Thuận', '1999-8-4', 'thuantech@gmail.com', 0123456789, 'Yên Bái', '', now(), now(), 4);

update tbl_teacher
set manager_id = 2
where teacher_id = 3 or teacher_id = 4;
    
-- Tạo tài khoản cho học viên
insert into tbl_account (username, password, created_at, updated_at) values
	('nhatanh02', 'anh123', now(), now()),
    ('viet02', 'anh123', now(), now()),
    ('dang02', 'anh123', now(), now()),
    ('bach02', 'anh123', now(), now()),
    ('hoang02', 'anh123', now(), now()),
    ('tuan02', 'anh123', now(), now()),
    ('chanh02', 'anh123', now(), now()),
    ('truong02', 'anh123', now(), now());
insert into tbl_student (name, dob, email, phone, address, introduce, created_at, updated_at, account_id, manager_id) values
	('Nhật Anh', '2000-8-4', 'anhtech@gmail.com', 0123456789, 'Phú Thọ', '', now(), now(), 5, 1),
    ('Việt', '2001-8-4', 'viettech@gmail.com', 0123456789, 'Hà Giang', '', now(), now(), 6, 1),
    ('Đăng', '2002-8-4', 'dangtech@gmail.com', 0123456789, 'Bắc Giang', '', now(), now(), 7, 2),
    ('Bách', '2003-8-4', 'bachtech@gmail.com', 0123456789, 'Yên Bái', '', now(), now(), 8, 2),
    ('Hoàng', '2004-8-4', 'hoangtech@gmail.com', 0123456789, 'Yên Bái', '', now(), now(), 9, 1), 
    ('Tuấn', '2005-8-4', 'tuantech@gmail.com', 0123456789, 'Yên Bái', '', now(), now(), 10, 1),
    ('Chánh', '2006-8-4', 'chanhtech@gmail.com', 0123456789, 'Yên Bái', '', now(), now(), 11, 2), 
    ('Trường', '2007-8-4', 'truongtech@gmail.com', 0123456789, 'Yên Bái', '', now(), now(), 12, 1); 
DELETE FROM tbl_student;
SET SQL_SAFE_UPDATES = 1;
-- Tạo tài khoản cho quản lý
insert into tbl_account (username, password, created_at, updated_at) values
	('thinh01', 'anh123', now(), now()),
    ('thinh02', 'anh123', now(), now());
-- Nhập thông tin cho quản lý
insert into tbl_manager (name, dob, email, phone, address, introduce, created_at, updated_at, account_id) values
	('Thịnh', '1990-8-12', 'thinhtech@gmail.com', 0987676541, 'Hà Nội', '', now(), now(), 13),
    ('Dũng', '1992-1-10', 'dungtech@gmail.com', 0436217123, 'Hà Nội', '', now(), now(), 14);
    
-- Tạo tài khoản cho qtv
insert into tbl_account (username, password, created_at, updated_at) values
	('cuong01', 'anh123', now(), now());
    
    
-- Phân quyền cho tài khoản
insert into tbl_permission (role_id, account_id, created_at) values
	(0, 15, now()),
    (1, 13, now()),
    (1, 14, now()),
    (2, 1, now()),
    (2, 2, now()),
    (2, 3, now()),
    (2, 4, now()),
    (4, 5, now()),
    (4, 6, now()),
    (4, 7, now()),
    (4, 8, now()),
    (4, 9, now()),
    (4, 10, now()),
    (4, 11, now()),
    (4, 12, now());
    
-- Tạo lớp học
insert into tbl_class (class_code, class_name, number_student, start_date, created_at, updated_at, manager_id) values
	('Java 25', 'Lớp học combo spring boot', 3, curdate(), now(), now(), 1),
    ('Java 24', 'Lớp học combo spring boot', 3, curdate(), now(), now(), 1),
    ('Java 22', 'Lớp học BA', 3, curdate(), now(), now(), 2);
-- Điền học viên cho lớp học
insert into tbl_class_student (student_id, class_id, created_at, updated_at) values
	(25, 1, now(), now()),
    (26, 1, now(), now()),
    (27, 1, now(), now()),
    (28, 2, now(), now()),
    (29, 2, now(), now()),
    (30, 2, now(), now()),
    (31, 3, now(), now()),
    (32, 3, now(), now()),
    (25, 3, now(), now());
-- Điền học viên giảng viên
insert into tbl_teacher_student (student_id, teacher_id, created_at) values
	(25, 1, now()),
    (25, 2, now()),
    (25, 3, now()),
    (25, 4, now()),
    (26, 1, now()),
    (26, 2, now()),
    (26, 3, now()),
    (26, 4, now()),
    (27, 1, now()),
    (27, 2, now()),
    (27, 3, now()),
    (27, 4, now()),
    (28, 1, now()),
    (28, 2, now()),
    (28, 3, now()),
    (28, 4, now()),
    (29, 1, now()),
    (29, 2, now()),
    (29, 3, now()),
    (29, 4, now()),
    (30, 1, now()),
    (30, 2, now()),
	(31, 1, now()),
    (31, 2, now()),
    (32, 1, now()),
    (32, 2, now());
-- Điền lớp học cho giảng viên
insert into tbl_class_teacher (class_id, teacher_id, created_at) values
	(1, 1, now()),
    (1, 2, now()),
    (1, 3, now()),
    (1, 4, now()),
    (2, 1, now()),
    (2, 2, now()),
    (2, 3, now()),
    (2, 4, now()),
    (3, 1, now()),
    (3, 2, now());
-- Tạo giáo trình
insert into tbl_textbook (name, content, created_at, updated_at) values
	('Giáo trình Java Core', 'Đây là giáo trình super super pro', now(), now()),
    ('Giáo trình HTML', 'Đây là giáo trình super super pro', now(), now()),
    ('Giáo trình Cấu trúc dữ liệu', 'Đây là giáo trình super super pro', now(), now()),
    ('Giáo trình Spring Boot', 'Đây là giáo trình super super pro', now(), now()),
    ('Giáo trình BA', 'Đây là giáo trình super super pro', now(), now());
-- Tạo khung chương trình cho Java Core
alter table tbl_section 
add textbook_id int not null;
alter table tbl_section
ADD CONSTRAINT fk_section
foreign key (textbook_id) references tbl_textbook(textbook_id);
insert into tbl_section (title, content, number, created_at, updated_at, textbook_id) values
	('Cú pháp', 'Cú pháp cơ bản trong Java', 1, now(), now(), 1),
    ('Hướng Đối Tượng', 'Các tính chất hướng đối tượng', 2, now(), now(), 1),
    ('Xử lý Ngoại Lệ', 'Xử lý ngoại lệ trong Java', 3, now(), now(), 1);
-- Tạo bài tập cho Java Core
insert into tbl_exercise (title, content, created_at, updated_at, section_id) values
	("Bài tập cú pháp", "Các bài tập về cú pháp", now(), now(), 1),
    ("Bài tập hướng đối tượng", "Các bài tập về hướng đối tượng", now(), now(), 2),
    ("Bài tập xử lý ngoại lệ", "Các bài tập về xử lý ngoại lệ", now(), now(), 3);
-- Tạo khung chương trình cho HTML
insert into tbl_section (title, content, number, created_at, updated_at, textbook_id) values
	('Cú pháp', 'Cú pháp cơ bản trong HTML', 1, now(), now(), 2),
    ('Flexbox', 'Các thao tác với flexbox', 2, now(), now(), 2),
    ('Bootstrap', 'Các cú pháp phổ biến', 3, now(), now(), 2);
-- Tạo bài tập HTML
insert into tbl_exercise (title, content, created_at, updated_at, section_id) values
	("Bài tập cú pháp", "Các bài tập về cú pháp", now(), now(), 4),
    ("Bài tập FlexBox", "Các bài tập về hướng đối tượng", now(), now(), 5),
    ("Bài tập ứng dụng BootStrap", "Các bài tập Bootstrap", now(), now(), 6);
-- Tạo khung chương trình cho Cấu trúc dữ liệu
insert into tbl_section (title, content, number, created_at, updated_at, textbook_id) values
	('Các thuật toán sắp xếp', 'Cú pháp cơ bản trong HTML', 1, now(), now(), 3),
    ('Các thuật toán tìm kiếm', 'Các thao tác với flexbox', 2, now(), now(), 3);
-- Tạo khung bài tập cho cấu trúc dữ liệu 
insert into tbl_exercise (title, content, created_at, updated_at, section_id) values
	("Bài tập sắp xếp", "Các bài tập về thuật toán sắp xếp", now(), now(), 7),
    ("Bài tập tìm kiếm", "Các bài tập về thuật toán tìm kiếm", now(), now(), 8);
-- Tạo khung chương trình Spring Boot
-- Tạo khung chương trình cho BA
-- Tạo môn học
insert into tbl_subject (name, number_lesson, description, created_at, updated_at, textbook_id) values
	("Java Core", 20, "Các kiến thức cơ bản về Java", now(), now(), 1),
    ("HTML", 15, "Học cách sử dụng HTML, CSS thiết kế web tĩnh", now(), now(), 2),
    ("Cấu trúc dữ liệu", 24, "Học cách viết code và sử dụng thuật toán", now(), now(), 3),
    ("Spring Boot", 40, "Học cách kết hợp fontend và backend tạo một trang web động", now(), now(), 4),
    ("BA", 30, "Học cách phân tích thiết kế yêu cầu phần mềm", now(), now(), 5);
-- Tạo học viên hoàn thành môn học môn học
insert into tbl_student_subject (student_id, subject_id, status, end_mark) values
	(25, 1, 'completed', 9),
    (25, 2, 'completed', 9),
    (25, 3, 'completed', 9),
    (26, 1, 'completed', 8),
    (26, 2, 'completed', 9),
    (26, 3, 'completed', 9),
    (27, 1, 'completed', 9),
    (27, 2, 'completed', 7),
    (27, 3, 'completed', 9),
    (28, 1, 'completed', 9),
    (28, 2, 'completed', 9),
    (28, 3, 'completed', 9),
    (28, 4, 'completed', 8),
    (29, 1, 'completed', 9),
    (29, 2, 'completed', 9),
    (29, 3, 'completed', 9),
    (29, 4, 'completed', 9),
    (30, 1, 'completed', 5),
    (30, 2, 'completed', 9),
    (30, 3, 'completed', 3.5),
    (30, 4, 'completed', 9),
    (31, 5, 'completed', 9),
    (32, 5, 'completed', 10);
-- Tạo học viên chưa hoàn thành môn học
insert into tbl_student_subject (student_id, subject_id) values
	(25, 4),
    (25, 5),
    (26, 4),
    (27, 4);
-- Tạo lớp học, môn học đã hoàn thành
insert into tbl_class_subject (class_id, subject_id, status, start_date, end_date) values
	(1, 1, 'completed', '2024-2-10', '2024-4-10'),
    (1, 2, 'completed', '2024-1-12', '2024-2-8'),
    (1, 3, 'completed', '2024-4-15', '2024-7-10'),
    (2, 2, 'completed', '2023-1-10', '2023-2-15'),
    (2, 1, 'completed', '2023-2-20', '2023-4-10'),
    (2, 3, 'completed', '2023-4-15', '2023-7-10'),
    (2, 4, 'completed', '2023-8-1', '2023-10-10'),
    (3, 5, 'completed', '2023-8-1', '2023-10-10');
-- Tạo giảng viên môn học
insert into tbl_teacher_subject (teacher_id, subject_id, created_at) values
	(1, 1, now()),
    (1, 4, now()),
    (1, 5, now()),
    (2, 1, now()),
    (2, 3, now()),
    (2, 4, now()),
    (2, 5, now()),
    (3, 1, now()),
    (3, 3, now()),
    (4, 2, now());
-- Tạo tiết học
insert into tbl_period (period_id, duration, start, end, created_at, updated_at) values
	(1, 0.75, '07:00:00', '07:45:00', now(), now()),
    (2, 0.75, '07:45:00', '08:30:00', now(), now()),
    (3, 0.75, '08:45:00', '09:30:00', now(), now()),
    (4, 0.75, '09:30:00', '10:15:00', now(), now()),
    (5, 0.75, '10:30:00', '11:15:00', now(), now()),
    (6, 0.75, '13:30:00', '14:15:00', now(), now()),
    (7, 0.75, '14:15:00', '15:00:00', now(), now()),
    (8, 0.75, '15:15:00', '16:00:00', now(), now()),
    (9, 0.75, '16:00:00', '16:45:00', now(), now());
-- Tạo phòng học
insert into tbl_room (code, number_slot, created_at, updated_at) values
	("P01", 30, now(), now()),
    ("P02", 30, now(), now()),
    ("P03", 30, now(), now()),
    ("P04", 30, now(), now()),
    ("P05", 30, now(), now());
-- Tạo buổi học





select * 
from tbl_student
	inner join tbl_teacher_student on tbl_student.student_id = tbl_teacher_student.student_id
    inner join tbl_teacher on tbl_teacher.teacher_id = tbl_teacher_student.teacher_id;
