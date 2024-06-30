use person;

-- Câu 1:
select distinct(country) from person;
-- Câu 2:
select fullname from person order by fullname;
-- Câu 3:
select fullname, job from person order by job;
-- Câu 4:
select distinct(job) from person;
-- Câu 5:
select count(id) as number, country from person group by country order by number desc;
-- Câu 6:
select sum(salary) from person;
-- Câu 7:
select sum(salary)/count(id) as tb, job from person group by job order by tb;
-- Câu 8:
select * from person where salary > 5000 and birthday between "1990-01-01" and "1995-12-31";
-- Câu 9:
select * from person where salary > 60000 and (job = "Developer" or job = "Engineer");
-- Câu 10:
select count(id) as number, job from person group by job having number >= 3;
-- Câu 11:
select max(salary) from person where gender = "M";
-- Câu 12:
select min(salary) from person where gender = "F";
-- Câu 13:
select distinct(fullname) from person order by fullname;
-- Câu 14:
select month(birthday) as mon, count(*) from person group by mon order by mon desc;
-- Câu 15 ~ Câu 6