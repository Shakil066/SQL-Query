-- SELECT * FROM data.staff;

/**************** Data Wrangling / Data Munging *************/
SELECT DISTINCT(department)
FROM staff
ORDER BY department; 

/********* Reformatting Characters Data *********/
Select distinct(upper(department))
from staff;   

use data;
Select distinct(upper(department))
from staff;

/*** Concatetation ***/

select last_name, concat(job_title, " - " , department)  as dept_job_title
from staff;

/*** Trim ***/
SELECT
	TRIM('    data sciece rocks !    ');

-- with trim is 19 characters
SELECT
	LENGTH(TRIM('    data sciece rocks !    '));
	
-- without trim is 27 characters
SELECT
	LENGTH('    data sciece rocks !    ');
    
/* What are those Assistant roles? */

  select last_name, job_title  from staff where job_title Like 'Assistant%';  
  
  
  /* We want to extract job category from the assistant position which starts with word Assisant */
SELECT 
	SUBSTRING(job_title FROM LENGTH('Assistant')+1) AS job_category,
	job_title
FROM staff
WHERE job_title LIKE 'Assistant%';


---------------------- Replacing words ----------------------------------------------------

/* we want to replace word Assistant with Asst.  */
SELECT 
    CONCAT('Asst.', SUBSTRING(job_title, LENGTH('Assistant') + 1)) AS shorten_job_title
FROM staff
WHERE job_title LIKE 'Assistant%';



/********* Filtering with Regualar Expressions *********/

SELECT job_title 
FROM staff 
WHERE job_title REGEXP 'Assistant.*(III|IV)';



/* As there are several duplicated ones, we want to know only unique ones */
SELECT 
	DISTINCT(SUBSTRING(job_title FROM LENGTH('Assistant')+1)) AS job_category,
	job_title
FROM staff
WHERE job_title LIKE 'Assistant%';

/* now we want to know job title with Assistant, started with roman numerial I, follwed by 1 character
it can be II,IV, etc.. as long as it starts with character I 

underscore _ : for one character */

SELECT
	DISTINCT(job_title)
FROM staff
WHERE job_title REGEXP '%Assistant I_';

/* job title starts with either E, P or S character , followed by any characters*/
SELECT job_title
FROM staff
WHERE job_title regexp '[EPS]%';


/********* Reformatting Numerics Data *********/
-- TRUNC() Truncate values Note: trunc just truncate value, not rounding value.
-- CEIL
-- FLOOR
-- ROUND

SELECT
    department,
    AVG(salary) AS avg_salary,
    ROUND(AVG(salary)) AS truncated_salary,
    ROUND(AVG(salary), 2) AS truncated_salary_2_decimal,
    ROUND(AVG(salary), 2) AS rounded_salary,
    CEIL(AVG(salary)) AS ceiling_salary,
    FLOOR(AVG(salary)) AS floor_salary
FROM staff
GROUP BY department
LIMIT 0, 1000;

  
  

