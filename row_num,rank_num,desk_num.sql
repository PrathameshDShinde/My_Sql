use employees;
show tables;
select * from salaries;
select emp_no,salary,row_number() over() as row_num from salaries;
select emp_no,salary,row_number() over(partition by salary order by salary desc) as row_num from salaries;
select emp_no,max(salary) as max_salary from salaries group by emp_no order by emp_no ;
select emp_no,avg(salary) as avg_salary from salaries group by emp_no order by avg_salary desc limit 5;
select emp_no,count(salary) as count_salary from salaries where emp_no = 14121;
select emp_no,count(salary) as count_salary from salaries group by emp_no;

											-- Rank and Dense Rank --
select emp_no,salary,rank() over() as rank_ from salaries;
select emp_no,salary,rank() over(partition by emp_no order by salary) as rank_ from salaries where emp_no like 11839 ;
select emp_no,salary,dense_rank() over(partition by emp_no order by salary) as dense_ from salaries where emp_no like 11839 ;
	
#### Lag and Lead Functions #### Lag stands for previous and Lead stands for the next one.
select emp_no,salary,from_date,lag(salary,2) over(partition by from_date) as Lag_ from salaries;
select emp_no,salary,from_date,lead(salary,2) over(partition by from_date) as Lead_ from salaries;
select * from salaries;
show tables;

create table new_table as select * from salaries;
select * from new_table;

select count(gender) as count_gender from employees group by gender;
select count(last_name) as count_ln from employees where last_name like 'Facello' group by last_name ;
select Gender,count(hire_date) as count_hd from employees where hire_date like '1986-06-26' group by Gender;

#### Aggregte Functions ####
select *,max(salary) over(partition by emp_no) max_salary,
min(salary) over(partition by emp_no) min_Salary 
from salaries;

select *,avg(salary) over(partition by emp_no) avg_salary,sum(salary) over(partition by emp_no) sum_salary from salaries;
select * from salaries;

select count(emp_no) as count_emp from salaries;

select * from employees;

select first_name,last_name,emp_no,
if(gender = 'M','Male','Female') as Gender
from employees;

#### case statement ####
select emp_no,first_name,last_name,
case gender when 'M' then 'Male' 
else 'Female' end as gender from employees;

select * from salaries;
select emp_no,salary,
case when salary < 25000 then "Salary Less_than 25k"
when salary > 25000 then "Salary Greater_than 25k" end as salary_bracket
from salaries;
