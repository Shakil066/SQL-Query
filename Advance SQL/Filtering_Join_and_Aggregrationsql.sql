use data;
/********** Filterig, Join and Aggregration ************/

/* we want to know person's salary comparing to his/her department average salary */
CREATE TEMPORARY TABLE temp AS
select e.last_name,e.salary,d.department,d.avg_salary,
case
WHEN e.salary > d.avg_salary THEN 'Above Average'
WHEN e.salary = d.avg_salary THEN 'Average'
        ELSE 'Below Average' end as salary_comparison
 from       
(select department, avg(salary) as avg_salary
from staff
group by 1) d
join
staff e 
on e.department = d.department;

select * from  temp;


/* how many people are earning above/below the average salary of his/her department ? */

select  department, salary_comparison , count(salary_comparison) as number
from temp
group by 1,2;

/* Assume that people who earn at latest 100,000 salary is Executive.
-- We want to know the average salary for executives for each department.*/

SELECT department, ROUND(AVG(salary),2) AS average_salary
FROM staff
WHERE salary >= 100000
GROUP BY department
ORDER BY 2 DESC;
/* who earn the most in the company? 
It seems like Stanley Grocery earns the most.
*/
select last_name, department,salary
from staff
where salary =
(select max(salary) as highest
from staff);

/* who earn the most in his/her own department */
SELECT s.department, s.last_name, s.salary
FROM staff s
WHERE s.salary = (
	SELECT MAX(s2.salary)
	FROM staff s2
	WHERE s2.department = s.department
)
ORDER BY 1;

SELECT * FROM company_divisions;

/* full details info of employees with company division
Based on the results, we see that there are only 953 rows returns. We know that there are 1000 staffs.
*/
SELECT s.last_name, s.department, cd.company_division
FROM staff s
JOIN company_divisions cd
	ON cd.department = s.department;
/* now all 1000 staffs are returned, but some 47 people have missing company - division.*/
SELECT s.last_name, s.department, cd.company_division
FROM staff s
LEFT JOIN company_divisions cd
	ON cd.department = s.department;
    
SELECT s.last_name, s.department, cd.company_division
FROM staff s
LEFT JOIN company_divisions cd
	ON cd.department = s.department
WHERE company_division IS NULL  ;  



CREATE VIEW vw_staff_div_reg AS
	SELECT s.*, cd.company_division, cr.company_regions
	FROM staff s
	LEFT JOIN company_divisions cd ON s.department = cd.department
	LEFT JOIN company_regions cr ON s.region_id = cr.region_id;
SELECT * FROM vw_staff_div_reg;

SELECT COUNT(*)
FROM vw_staff_div_reg;


/* How many staffs are in each company regions */
SELECT company_regions, COUNT(*) AS total_employees
FROM vw_staff_div_reg
GROUP BY 1
ORDER BY 1;

SELECT company_regions, company_division, COUNT(*) AS total_employees
FROM vw_staff_div_reg
GROUP BY 1,2
ORDER BY 1,2;


-- 2 groupings
SELECT company_regions, company_division, COUNT(*) AS total_employees
FROM vw_staff_div_reg
GROUP BY 
	GROUPING SETS(company_regions, company_division)
ORDER BY 1,2;

-- 3 groupings
SELECT company_regions, company_division, gender, COUNT(*) AS total_employees
FROM vw_staff_div_reg
GROUP BY 
	GROUPING SETS(company_regions, company_division, gender)
ORDER BY 1, 2;


CREATE OR REPLACE VIEW vw_staff_div_reg_country AS
	SELECT s.*, cd.company_division, cr.company_regions, cr.country
	FROM staff s
	LEFT JOIN company_divisions cd ON s.department = cd.department
	LEFT JOIN company_regions cr ON s.region_id = cr.region_id;
    
    
    select * from vw_staff_div_reg_country ;
    
    /* employees per regions and country */
SELECT company_regions, country, COUNT(*) AS total_employees
FROM vw_staff_div_reg_country
GROUP BY 
	company_regions, country
ORDER BY country, company_regions;

SELECT company_division, company_regions, COUNT(*) AS total_employees
FROM vw_staff_div_reg_country
GROUP BY 
	CUBE(company_division, company_regions)
ORDER BY company_division, company_regions;


SELECT last_name, salary
FROM staff
ORDER BY salary DESC
limit 10 ;

/* Top 5 division with highest number of employees*/
SELECT
	company_division,
	COUNT(*) AS total_employees
FROM vw_staff_div_reg_country
GROUP BY company_division
ORDER BY company_division
limit 5 ;