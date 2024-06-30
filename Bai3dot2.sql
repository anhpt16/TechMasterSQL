use person;

-- Câu 1:
select distinct(job) from person;
-- Câu 2:
select * from person where job = 'Manager' and salary > 70000;
-- Câu 3:
select * from person where (year(curdate()) - year(birthday) between 25 and 35);
-- Câu 4:
select country, count(id)  from person group by country order by country;
-- Câu 5:
select count(id), gender from person group by gender;
-- Câu 6:
select count(id), job, country from person group by job, country;
-- Câu 7:
select * from person order by day(birthday) desc;
-- Câu 8:
select count(id) as number, job from person group by job having number >= 3;