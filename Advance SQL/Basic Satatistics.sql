use data;

-- basic Statistic
select * from company_divisions
limit 5;

select * from company_regions
limit 5;
/* How many total employees in this company */
select count(*) as total_employee from staff;
/* What about gender distribution? */
select gender, count(*) as total_employee
from staff
group by 1
order by 2 desc;

/* How many employees in each department */
select department, count(*) as total_employee
from staff
group by 1
order by 2 desc;

/* How many distinct departments ? */

select count(distinct(department)) as total_department
from staff;
/* What is the highest and lowest salary of employees? */
select max(salary) as highest_salary, min(salary) as lowest_salary
from staff;
/* what about salary distribution by gender group? */
/* Data Interpretation: It seems like the average between male and female group is pretty close,
--  with slighly higher average salary for Female group*/
SELECT gender, MIN(salary) As Min_Salary, MAX(salary) AS Max_Salary, AVG(salary) AS Average_Salary
FROM staff
GROUP BY gender;

/* How much total salary company is spending each year? */
SELECT SUM(salary) as total_salary
FROM staff;
/* want to know distribution of min, max average salary by department */
SELECT
	department, 
	MIN(salary) As Min_Salary, 
	MAX(salary) AS Max_Salary, 
	AVG(salary) AS Average_Salary, 
	COUNT(*) AS total_employees
FROM staff
GROUP BY department
ORDER BY 4 DESC;

/* how spread out those salary around the average salary in each department ? */
/* Data Interpretation: Although average salary for Outdoors is highest among deparment, it seems like data points
are pretty close to average salary compared to other departments. */
SELECT 
	department, 
	MIN(salary) As Min_Salary, 
	MAX(salary) AS Max_Salary, 
	round(AVG(salary),2) AS Average_Salary,
	round(VAR_POP(salary),2) AS Variance_Salary,
	round(STDDEV_POP(salary),2)AS StandardDev_Salary,
	COUNT(*) AS total_employees
FROM staff
GROUP BY department
ORDER BY 4 DESC;

/* which department has the highest salary spread out ? */
SELECT 
	department, 
	MIN(salary) As Min_Salary, 
	MAX(salary) AS Max_Salary, 
	ROUND(AVG(salary),2) AS Average_Salary,
	ROUND(VAR_POP(salary),2) AS Variance_Salary,
	ROUND(STDDEV_POP(salary),2) AS StandardDev_Salary,
	COUNT(*) AS total_employees
FROM staff
GROUP BY department
ORDER BY 6 DESC;

/* Let's see Health department salary */
SELECT department, salary
FROM staff
WHERE department LIKE 'Health'
ORDER BY 2 ASC;

/* we will make 3 buckets to see the salary earning status for Health Department */

CREATE VIEW health_dept_earning_status
AS 
select salary,
	case 
		when salary >= 100000 then 'Higher Salary'
        when salary>=50000 and salary < 100000 then 'middle earn'
        else 'lower earn' end earning_status
	from 
		staff
    where department like 'Health';
    
    
SELECT earning_status, COUNT(*)
FROM health_dept_earning_status
GROUP BY 1;    

/* Let's find out about Outdoors department salary */
SELECT department, salary
FROM staff
WHERE department LIKE 'Outdoors'
ORDER BY 2 ASC;


CREATE VIEW outdoors_dept_earning_status
AS 
	SELECT 
		CASE
			WHEN salary >= 100000 THEN 'high earner'
			WHEN salary >= 50000 AND salary < 100000 THEN 'middle earner'
			ELSE 'low earner'
		END AS earning_status
	FROM staff
	WHERE department LIKE 'Outdoors';
	
/* we can see that there are 34 high earners, 12 middle earners and 2 low earners */
SELECT earning_status, COUNT(*)
FROM outdoors_dept_earning_status
GROUP BY 1;

-- drop the unused views
DROP VIEW health_dept_earning_status;
DROP VIEW outdoors_dept_earning_status;
    
/* What are the deparment start with B */
SELECT
	DISTINCT(department)
FROM staff
WHERE department LIKE 'B%';   


   












