

-- 1) Count of Employees in each Department :- 

select count(de.emp_no) as "Employees Count" ,d.dept_name as "Department Name"  -- selected required columns and gave alias 

from employees as e
inner join dept_emp as de using(emp_no)          -- performing inner join on employees and department_employees tables
inner join departments as d using(dept_no)       -- performing inner join with departments table

group by d.dept_name                             -- grouping by department_name column
order by count(de.emp_no) desc                   -- ordering by count of employees in each department 





-- 2) Average Salary of Employees in each Department :- 

select round(avg(s.salary)) as "Average Salary (USD)" ,d.dept_name as "Department Name"       -- selected required columns, rounded average salary and gave aliases

from employees as e
inner join dept_emp as de using(emp_no)           -- performing inner join on employees and department_employees tables
inner join departments as d using(dept_no)        -- performing inner join with departments table
inner join salaries as s on s.emp_no = de.emp_no  -- performing inner join with salaries table

group by d.dept_name                              -- grouping by department_name column
order by avg(s.salary) desc                       -- ordering by average salary in descending order







-- 3) Manager Names in different departments :- 


select  concat(e.first_name, ' ' ,e.last_name) as "Manager Name", d.dept_name as "Department Name"  -- selected columns, concatenated first, last names and gave aliases

from dept_manager as dm

inner join departments as d using(dept_no)          -- inner join between dept_manaeger and departments tables
inner join employees as e using(emp_no)             -- inner join with employees table

group by d.dept_name,e.first_name,e.last_name       -- grouping by department_name column





-- 4) Count of Manager per Department


select d.dept_name as "Department Name", count(dm.emp_no) as "Manager Count" -- selected needed columns, counted manager count and gave aliases

from dept_manager as dm 

inner join departments as d using(dept_no)   -- inner join between dept_manager and departments tables

 group by d.dept_name   -- grouped by department name





-- 5) Employees having more Salary than the Average Salary of Company 


select concat(e.first_name, ' ', e.last_name) as "Employee Name", s.salary as "Salary (USD)"   -- selected needed columns and gave aliases 

from salaries as s
inner join employees as e using(emp_no)  -- inner join between salaries and employees tables

group by s.salary, e.first_name, e.last_name             -- grouping by different required columns
having s.salary > (SELECT AVG(salary) FROM salaries)     -- used having clause and subquery as a filter to get salaries more than average

order by s.salary DESC;   -- ordering by salaries in descending order





-- 6) Employee count with different Job Titles across all the departments


select distinct d.dept_name as "Department Name", t.title as "Job Title" ,  
count(t.emp_no) over(partition by t.title, de.dept_no) 
as "Employees Count"                           -- selected columns, gave aliases, used window function to count employees in specific department by job title

from titles as t 

inner join dept_emp as de using(emp_no)       -- performed inner join between dept_emp and titles tables
inner join departments as d using(dept_no)    -- performed inner join with departments


order by t.title     -- ordering by the title





-- 7) All Employees having more than 1 Job Title

SELECT distinct concat(e.first_name, ' ' , e.last_name) as "Employee Name", t.emp_no as "Employee ID", COUNT(DISTINCT t.title) AS "Number of Titles"
FROM titles as t   -- selected columns and gave aliases 

inner join dept_emp as de using(emp_no)  -- inner join between titles and dept_emp tables
inner join departments as d using(dept_no)  -- inner join with departments tables
inner join employees as e using(emp_no)  -- inner join with employees table

GROUP BY t.emp_no, e.first_name, e.last_name -- grouped the data according to employee number, first name and last name

having count(DISTINCT t.title) > 1;  -- used having clause to filter employees having more than 1 distinct job title






-- 8) Average Salary of various Job Titles in 'Development' Department


select t.title as "Job Title",d.dept_name as "Department Name", -- selected columns and gave aliases

round(avg(s.salary)) as "Average Salary (USD)"  -- used average and round function to calculate average salary

from titles as t 

inner join dept_emp as de using(emp_no)  -- performed inner join between titles and dept_emp tables
inner join departments as d using(dept_no)  -- perfomed inner join with departments table
inner join salaries as s using(emp_no)  -- performed inner join with salaries table

group by de.dept_no, t.title,d.dept_name  -- grouped by deptartment no, job title and department name

having d.dept_name = 'Development'  -- used having clause to filter department name

order by round(avg(s.salary)) desc  -- ordered the result in descending order by average salary 






-- 9) Count of Employees according to gender in different Departments


select d.dept_name as "Department Name",       -- select dept_name column and gave alias

sum(case when e.gender = 'M' then 1 else 0 end) as "Count of Male employees",  -- used 'CASE' statement to get only male employees
sum(case when e.gender = 'F' then 1 else 0 end) as "Count of Female Employees"  -- used "CASE" statement to get only female employees

from employees as e 

inner join dept_emp as de using(emp_no)       -- inner join between employees and dept_emp tables
inner join departments as d using(dept_no)    -- inner join with departments table

group by d.dept_name     -- grouped by the department name

having (sum(case when e.gender = 'M' then 1 else 0 end) > 0) or 
(sum(case when e.gender = 'F' then 1 else 0 end) > 0)            -- used having clause to remove rows having 0 values from both the 'CASE' statements above






--10) Count of Employees hired across range of years in various Departments


SELECT distinct d.dept_name AS "Department Name",  -- selected department name column and gave aliases
  
  sum(case when e.hire_date > '1985-01-01' and e.hire_date <= '1990-01-01' then 1 else 0 end) AS "Hiring (1985-90)",  -- counted hiring from 1985-1990
  
  sum(case when e.hire_date > '1990-01-01' and e.hire_date <= '1995-01-01' then 1 else 0 end) AS "Hiring (1990-95)",  -- counted hiring from 1990-1995
  
  sum(case when e.hire_date > '1995-01-01' AND e.hire_date <= '2000-01-01' then 1 else 0 end) AS "Hiring (1995-2000)"   -- counted hiring from 1995-2000
  
from employees as e

inner join dept_emp as de using(emp_no)  -- performed inner join between employees and dept_emp tables
inner join departments as d using(dept_no) -- perfomed inner join with departments tabble

group by d.dept_name  -- grouped according to department name




-- 11) Number of raises and maximum salary of each employee


select distinct e.emp_no as "Employee ID", concat(e.first_name, ' ' , e.last_name) as "Employee Name",  -- selected columns and gave aliases

count(s.salary) over(partition by s.emp_no) as "Count of Raises",   -- used window function to count number of raises

max(s.salary) over(partition by s.emp_no) as "Maximum Salary"  -- window function to calculate maximum salary


from salaries as s

inner join employees as e using(emp_no)  -- inner join between salaries and employees tables

order by e.emp_no asc  -- ordered result by employees number in ascending order




-- 12) Years tooks employee to get the 1st promotion

select distinct concat(e.first_name , ' ' , e.last_name) as "Employee Name",    -- Concatenated and selected first name and last name of employees

e.emp_no as "Employee ID", e.gender as "Employee Gender",      -- selected emp_no and gender of employees

(extract(year from t.to_date) - extract(year from e.hire_date)) as "Years Took"     -- extracted years took to get first promotion

from employees as e 

inner join titles as t using(emp_no)    -- performed inner join between employees and titles table
inner join salaries as s using(emp_no)  -- performed inner join with salaries table

where ((t.to_date = t.from_date) or (e.hire_date = t.from_date))    -- filtered to ensure we get only first promotion

and t.to_date not in ('9999-01-01')     -- filtered to remove employee who did not received promotion(or filter 2nd , 3rd or subsequent promotions)

AND (extrcat (year from t.from_date) != extract(year from t.to_date))    -- filtered employee who were removed in same year as hired and didn't' received any promotion

order by e.emp_no asc    -- ordered by employee number in ascending order 




-- 13) Number of promotion employee got and title after promotion

select distinct e.emp_no as "Employee ID",     -- selected employee id column and gave alias

concat(e.first_name, ' ' , e.last_name) as "Employee Name",      -- concatenated and selected first and last name of employees

(count(t.title) - 1) as "Promotion Count",            -- calculated and selected the Title increase of employees that is promotion

   (select t2.title from titles AS t2      -- subquery to consider and show latest title after promotion   
    where t2.emp_no = e.emp_no             -- established correlation between inner query and outer query to ensure subquery operation for all the employees    
    order by t2.to_date desc               -- ordered the subquery result by to_date in descending order    
    limit 1) as "Title After Promotion"    -- limited the output by 1 result only for 1 employee id and gave alias

from titles as t 

inner join employees as e using(emp_no)     -- performed inner join between titles and employees tables in the outer query

group by e.emp_no       -- grouped outer query by employee id

order by e.emp_no asc   -- ordered outer query by employee id in ascending order










