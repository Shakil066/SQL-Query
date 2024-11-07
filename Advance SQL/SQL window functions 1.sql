create table employee
( emp_ID int
, emp_NAME varchar(50)
, DEPT_NAME varchar(50)
, SALARY int);

SET AUTOCOMMIT = 1;
insert into employee values(101, 'Mohan', 'Admin', 4000);
insert into employee values(102, 'Rajkumar', 'HR', 3000);
insert into employee values(103, 'Akbar', 'IT', 4000);
insert into employee values(104, 'Dorvin', 'Finance', 6500);
insert into employee values(105, 'Rohit', 'HR', 3000);
insert into employee values(106, 'Rajesh',  'Finance', 5000);
insert into employee values(107, 'Preet', 'HR', 7000);
insert into employee values(108, 'Maryam', 'Admin', 4000);
insert into employee values(109, 'Sanjay', 'IT', 6500);
insert into employee values(110, 'Vasudha', 'IT', 7000);
insert into employee values(111, 'Melinda', 'IT', 8000);
insert into employee values(112, 'Komal', 'IT', 10000);
insert into employee values(113, 'Gautham', 'Admin', 2000);
insert into employee values(114, 'Manisha', 'HR', 3000);
insert into employee values(115, 'Chandni', 'IT', 4500);
insert into employee values(116, 'Satya', 'Finance', 6500);
insert into employee values(117, 'Adarsh', 'HR', 3500);
insert into employee values(118, 'Tejaswi', 'Finance', 5500);
insert into employee values(119, 'Cory', 'HR', 8000);
insert into employee values(120, 'Monica', 'Admin', 5000);
insert into employee values(121, 'Rosalin', 'IT', 6000);
insert into employee values(122, 'Ibrahim', 'IT', 8000);
insert into employee values(123, 'Vikram', 'IT', 8000);
insert into employee values(124, 'Dheeraj', 'IT', 11000);

select * from employee;

select *, 
max(salary) over(partition by DEPT_NAME ) as max_salary
from employee;

-- row_ number(), dense_rank(),rank()

select *, 
row_number() over(partition by DEPT_NAME) as row_n
from employee;
--- fetch  first 2 employee from eatch departmenmt
select * from(
select *, 
row_number() over(partition by DEPT_NAME order by emp_ID) as row_n
from employee) x
where row_n <3;

-- fetch  first 3 employee from eatch departmenmt earning the max salary
select * from
(select *, 
rank() over(partition by DEPT_NAME order by SALARY desc) as row_n
from employee) x
where row_n<4;
-- rank vs dense
select *, 
rank() over(partition by DEPT_NAME order by SALARY desc) as row_n,
dense_rank() over(partition by DEPT_NAME order by SALARY desc) as dense_row_n
from employee;

-- lead and lag
-- fetch a query to display if the salary of an employee is higher, lower or equal to the previous employee.
select e.*,
lag(salary) over(partition by dept_name order by emp_id) as prev_empl_sal,
case when e.salary > lag(salary) over(partition by dept_name order by emp_id) then 'Higher than previous employee'
     when e.salary < lag(salary) over(partition by dept_name order by emp_id) then 'Lower than previous employee'
	 when e.salary = lag(salary) over(partition by dept_name order by emp_id) then 'Same than previous employee' end as sal_range
from employee e;

----

select *, 
lag(SALARY) over(partition by DEPT_NAME order by emp_ID asc) as p_s,
lead(SALARY) over(partition by DEPT_NAME order by emp_ID asc) as n_xs
from employee; 