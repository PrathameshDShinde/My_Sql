### Window Functions ###
### 1. row_number()  ### It will just assign some values over clause
use employees;
select * from employees;
### row_number
select emp_no,salary,row_number() over () as row_num from salaries;

select emp_no,salary,row_number() over(partition by emp_no order by salary desc) as row_num 
from salaries limit 2;

select emp_no, max(salary) as max_salary from (select emp_no,salary,row_number() over(partition by emp_no order by salary desc) 
as row_num from salaries;

select a.emp_no, max(salary) as max_salary from 
(select emp_no,salary from salaries) a group by emp_no;

### Rank and Dense Rank
select emp_no,salary,rank() over(order by salary desc) as Rank_ from salaries where emp_no = 11839;

select emp_no,salary,dense_rank() over(order by salary desc) as Rank_ from salaries where emp_no = 11839;

#### Lag and Lead Functions ### Lag stands for previous and Lead for the next one
select * from salaries;

select emp_no,salary,lag(salary) over(partition by emp_no) as Lag_ from salaries;

select emp_no,salary,lead(salary) over(partition by emp_no order by salary desc) as Lead_ from salaries;

select emp_no,salary,lead(salary,2) over(partition by emp_no order by salary desc) as Lead_ from salaries;

select emp_no,salary,lag(salary) over(partition by emp_no) as Lag_ from salaries;
select * from employees;
### Aggregate Function - Max,Min,Avg,Count
select *, max(salary) over(partition by emp_no) max_salary,
min(salary) over(partition by emp_no) min_salary
from salaries;

select *,sum(salary) over(partition by emp_no) sum_salary
from salaries;

select *,avg(salary) over(partition by emp_no) avg_salary
from salaries;

select * from employees;
select emp_no,first_name,last_name,
if(gender = 'M','Male','Female') as gender 
from employees;

#### case statement
select emp_no,first_name,last_name,
case gender when 'M' then 'Male' else 'Female' end as gender 
from employees;

select * from salaries;
select emp_no,salary,
case when salary < 65000 then 'Less than 65k'
when salary > 65000 then 'Greater than 65k' end as salary_bracket
from salaries;

