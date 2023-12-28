use  interview_questions;
show tables;
create table employees (
Employee_id int ,
name text ,
salary int
);

INSERT INTO EMPLOYEES(EMPLOYEE_ID,NAME,SALARY) VALUES(100,'Jennifer',4400);
INSERT INTO EMPLOYEES(EMPLOYEE_ID,NAME,SALARY) VALUES(101,'Michael',13000);
INSERT INTO EMPLOYEES(EMPLOYEE_ID,NAME,SALARY) VALUES(102,'Pat',6000);
INSERT INTO EMPLOYEES(EMPLOYEE_ID,NAME,SALARY) VALUES(103,'Den', 11000);
INSERT INTO EMPLOYEES(EMPLOYEE_ID,NAME,SALARY) VALUES(104,'Alexander',3100);
INSERT INTO EMPLOYEES(EMPLOYEE_ID,NAME,SALARY) VALUES(105,'Shelli',2900);
INSERT INTO EMPLOYEES(EMPLOYEE_ID,NAME,SALARY) VALUES(106,'Sigal',2800);
INSERT INTO EMPLOYEES(EMPLOYEE_ID,NAME,SALARY) VALUES(107,'Guy',2600);
INSERT INTO EMPLOYEES(EMPLOYEE_ID,NAME,SALARY) VALUES(108,'Karen',2500);
select * from employees;

select max(salary),salary from employees group by salary order by salary desc limit 1 offset 1 ;
select *,dense_rank() over(order by salary desc) as salary_rank from employees;
select * from (select *,dense_rank() over(order by salary desc) as salary_rank from employees) as max_salary where salary_rank = 2;

select * from employees order by salary desc limit 1 offset 2;
select *,dense_rank() over(order by salary desc) as salary_rank from employees;
select * from (select *,dense_rank() over(order by salary desc) as salary_rank from employees) salary limit 1 offset 2;