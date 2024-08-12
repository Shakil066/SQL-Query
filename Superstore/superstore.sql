use Data;
SELECT * FROM `sample - superstore`;
-- What are total sales and total profits of each year?

SELECT 
    Year(STR_TO_DATE(`Order Date`, '%m/%d/%Y')) AS Year, 
    ROUND(SUM(Sales), 3) AS Sales, 
    
    ROUND(SUM(Profit), 3) AS Total_Profit
FROM 
    `sample - superstore` 
GROUP BY 
    Year
ORDER BY 
    Sales DESC 
LIMIT 
    0, 1000;
-- 2. What are the total profits and total sales per quarter?
select 
    concat('Q',quarter(str_to_date(`Order Date`,'%m/%d/%Y')))  As quarter,
     ROUND(SUM(Sales), 3) AS Total_Sales, 
    ROUND(SUM(Profit), 3) AS Total_Profit 
 FROM 
    `sample - superstore`
GROUP BY 
   1 ;  
   
-- 3. What region generates the highest sales and profits ?
select Region,
       ROUND(SUM(Sales), 3) AS Total_Sales, 
       ROUND(SUM(Profit), 3) AS Total_Profit 
from 
   `sample - superstore`
group by 1   
order by 3 desc
limit 1;

-- 4. What state and city brings in the highest sales and profits ?

select State,City,
       ROUND(SUM(Sales), 3) AS Total_Sales, 
       ROUND(SUM(Profit), 3) AS Total_Profit 
from 
   `sample - superstore`
group by 1 ,2  
order by 4 desc;

-- 5. The relationship between discount and sales and the total discount per category
select Discount, AVG(Sales) as avg_sales
from `sample - superstore`
group by 1
order by 1 asc;

select Category ,round(sum(Discount),2) as Total_discount
from  `sample - superstore`
group by 1
order by 2 desc;
-- include also sub category
select Category,Sub-Category,round(sum(Discount),2) as Total_discount
from  `sample - superstore`
group by 1,2
order by 3 desc;

-- 6. What category generates the highest sales and profits in each region and state ?
                  -- Categories with their total sales, total profits and profit margins
select Category, SUM(sales) AS total_sales, SUM(profit) AS total_profit,
      ROUND(SUM(profit)/SUM(sales)*100, 2) AS profit_margin
FROM `sample - superstore`
GROUP BY category
ORDER BY total_profit DESC;   
 --   Let’s observe the highest total sales and total profits per Category in each region
 SELECT region, category, round(SUM(sales),2) AS total_sales, round(SUM(profit),2) AS total_profit
FROM  `sample - superstore`
GROUP BY region, category
ORDER BY total_profit DESC;

  -- Now let’s see the highest total sales and total profits per Category in each state
  
SELECT state, category, SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM `sample - superstore`
GROUP BY state, category
ORDER BY total_profit DESC;
  
-- 7. What are the names of the products that are the most and least profitable to us? 
-- most
SELECT Product Name, SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM  `sample - superstore`
GROUP BY productname
ORDER BY total_profit DESC;
-- LEAST
SELECT Product Name, SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM superstore
GROUP BY `sample - superstore`
ORDER BY total_profit ASC;

-- 8. What segment makes the most of our profits and sales ?
SELECT Segment, SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM `sample - superstore`
GROUP BY segment
ORDER BY total_profit DESC;

-- 9. How many customers do we have (unique customer IDs) in total and 
-- how much per region and state?
SELECT COUNT(DISTINCT Customer ID) AS total_customers
FROM `sample - superstore`;

SELECT region, COUNT(DISTINCT customerid) AS total_customers
FROM superstore
GROUP BY region
ORDER BY total_customers DESC;

SELECT State, COUNT(DISTINCT customerid) AS total_customers
FROM superstore
GROUP BY State
ORDER BY total_customers DESC;













