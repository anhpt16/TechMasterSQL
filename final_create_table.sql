create schema quanlytrungtam;

use quanlytrungtam;

-- Tạo bảng:
create table tbl_role (
	role_id int primary key,
    name varchar(50),
    description text,
    created_at datetime,
    updated_at datetime
);

create table tbl_account (
	account_id bigint primary key auto_increment,
    username varchar(50) not null unique,
    password varchar(50) not null,
    status varchar(30) default 'active',
    created_at datetime,
    updated_at datetime
);

create table tbl_permission (
	role_id int not null,
    account_id bigint not null,
    created_at datetime,
    foreign key (role_id) references tbl_role(role_id),
    foreign key (account_id) references tbl_account(account_id),
    unique (role_id, account_id)
);

create table tbl_bank (
	bank_id bigint primary key auto_increment,
    bank_name varchar(100) not null,
    bank_number bigint not null,
    created_at datetime,
    updated_at datetime
);

create table tbl_media (
	media_id bigint primary key auto_increment,
    media_type varchar(100) not null,
    file_name text not null,
    file_path text not null,
    created_at datetime,
    updated_at datetime,
    account_id bigint not null,
    foreign key (account_id) references tbl_account(account_id)
);

create table tbl_manager (
	manager_id int primary key auto_increment,
    name varchar(50) not null,
    dob date,
    email varchar(100) not null,
    phone bigint not null,
    address text,
    introduce text,
    created_at datetime,
    updated_at datetime,
    account_id bigint not null,
    cv_id bigint,
    avatar_id bigint,
    bank_id bigint,
    foreign key (account_id) references tbl_account(account_id),
    foreign key (cv_id) references tbl_media(media_id),
    foreign key (avatar_id) references tbl_media(media_id),
    foreign key (bank_id) references tbl_bank(bank_id)
);

create table tbl_student (
	student_id bigint primary key auto_increment,
    name varchar(50) not null,
    dob date,
    email varchar(100) not null,
    phone bigint not null,
    address text,
    introduce text,
    created_at datetime,
    updated_at datetime,
    account_id bigint not null,
    cv_id bigint,
    avatar_id bigint,
    manager_id int,
    foreign key (account_id) references tbl_account(account_id),
    foreign key (cv_id) references tbl_media(media_id),
    foreign key (avatar_id) references tbl_media(media_id),
    foreign key (manager_id) references tbl_manager(manager_id)
);

create table tbl_teacher (
	teacher_id bigint primary key auto_increment,
    name varchar(50) not null,
    dob date,
    email varchar(100) not null,
    phone bigint not null,
    address text,
    introduce text,
    created_at datetime,
    updated_at datetime,
    account_id bigint not null,
    cv_id bigint,
    avatar_id bigint,
    manager_id int,
    bank_id bigint,
    foreign key (account_id) references tbl_account(account_id),
    foreign key (cv_id) references tbl_media(media_id),
    foreign key (avatar_id) references tbl_media(media_id),
    foreign key (manager_id) references tbl_manager(manager_id),
    foreign key (bank_id) references tbl_bank(bank_id)
);

create table tbl_teacher_student (
	student_id bigint not null,
    teacher_id bigint not null,
    created_at datetime,
    foreign key (student_id) references tbl_student(student_id),
    foreign key (teacher_id) references tbl_teacher(teacher_id)
);

create table tbl_register (
	form_id bigint primary key auto_increment,
    student_name varchar(50) not null,
    student_email varchar(100) not null,
    student_phone bigint not null,
    status varchar(50) default 'waiting',
    created_at datetime,
    student_id bigint not null,
    manager_id int,
    foreign key (student_id) references tbl_student(student_id),
    foreign key (manager_id) references tbl_manager(manager_id)
);

create table tbl_textbook (
	textbook_id int primary key auto_increment,
    name varchar(100) not null,
    content text,
    file_id text,
    created_at datetime,
    updated_at datetime
);

create table tbl_section (
	section_id bigint primary key auto_increment,
    title varchar(100) not null,
    content text,
    number int not null,
    created_at datetime,
    updated_at datetime
);

create table tbl_exercise (
	exercise_id bigint primary key auto_increment,
    title varchar(100),
    content text,
    type varchar(100) default 'diary',
    created_at datetime,
    updated_at datetime,
    section_id bigint not null,
    foreign key (section_id) references tbl_section(section_id)
);

create table tbl_subject (
	subject_id int primary key auto_increment,
    name varchar(100) not null,
    number_lesson int not null,
    description text,
    created_at datetime,
    updated_at datetime,
    textbook_id int not null,
    foreign key (textbook_id) references tbl_textbook(textbook_id)
);

create table tbl_teacher_subject (
	teacher_id bigint not null,
    subject_id int not null,
    created_at datetime,
    foreign key (teacher_id) references tbl_teacher(teacher_id)
);

create table tbl_register_subject (
	form_id bigint not null,
    subject_id int not null,
    foreign key (form_id) references tbl_register(form_id),
    foreign key (subject_id) references tbl_subject(subject_id)
);

create table tbl_student_subject (
	student_id bigint not null,
    subject_id int not null,
    status varchar(100),
    end_mark double,
    foreign key (student_id) references tbl_student(student_id),
    foreign key (subject_id) references tbl_subject(subject_id)
);

create table tbl_student_exercise (
	student_id bigint not null,
    exercise_id bigint not null,
    mark double,
    link text,
    status_mark varchar(100) default 'not scored',
    status_submit varchar(100) default 'not submit',
    created_at datetime,
    updated_at datetime,
    foreign key (student_id) references tbl_student(student_id),
    foreign key (exercise_id) references tbl_exercise(exercise_id)
);

create table tbl_period (
	period_id int primary key,
    duration double not null,
    start time not null,
    end time not null,
    status varchar(50) default 'active',
    created_at datetime,
    updated_at datetime
);

create table tbl_room (
	room_id int primary key auto_increment,
    code varchar(30) not null,
    number_slot int not null,
    status varchar(50) default 'active',
    created_at datetime,
    updated_at datetime
);

create table tbl_class (
	class_id bigint primary key auto_increment,
    class_code varchar(50) not null,
    class_name varchar(50) not null,
    number_student int,
    status varchar(50) default 'active',
    start_date date not null,
    end_date date,
    created_at datetime,
    updated_at datetime,
    manager_id int not null,
    foreign key (manager_id) references tbl_manager(manager_id)
);

create table tbl_lesson (
	lesson_id bigint primary key auto_increment,
    class_id bigint not null,
    subject_id int not null,
    room_id int not null,
    created_at datetime,
    updated_at datetime,
    foreign key (class_id) references tbl_class(class_id),
    foreign key (subject_id) references tbl_subject(subject_id),
    foreign key (room_id) references tbl_room(room_id)
);

create table tbl_lesson_period (
	lesson_id bigint not null auto_increment,
    period_id int not null,
    time_start date not null,
    created_at datetime,
    updated_at datetime,
    foreign key (lesson_id) references tbl_lesson(lesson_id),
    foreign key (period_id) references tbl_period(period_id),
    unique (period_id, time_start)
);

create table tbl_class_student (
	student_id bigint not null,
    class_id bigint not null,
    status varchar(50) default 'active',
    note text,
	created_at datetime,
    updated_at datetime,
    foreign key (class_id) references tbl_class(class_id),
    foreign key (student_id) references tbl_student(student_id)
);

create table tbl_class_teacher (
	class_id bigint not null,
    teacher_id bigint not null,
    created_at datetime,
    foreign key (class_id) references tbl_class(class_id),
    foreign key (teacher_id) references tbl_teacher(teacher_id)
);

create table tbl_class_subject (
	class_id bigint not null,
    subject_id int not null,
    status varchar(50) default 'unfinished',
    start_date date,
    end_date date,
    foreign key (class_id) references tbl_class(class_id),
    foreign key (subject_id) references tbl_subject(subject_id)
);

create table tbl_student_lesson (
	lesson_id bigint not null,
    student_id bigint not null,
    status varchar(50),
    note text,
    created_at datetime,
    updated_at datetime,
    foreign key (lesson_id) references tbl_lesson(lesson_id),
    foreign key (student_id) references tbl_student(student_id)
);
