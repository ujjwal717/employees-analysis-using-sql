# employees-analysis-using-sql
It is a in-depth employees analysis using SQL. I have used PostsgreSQL as RDBMS.
The dataset used has around 3-4 Lakh rows and there are multiple datasets divided according to the purpose they serve such as 

1) "employees" dataset has employees names, employee no, birth date, hiring date
2) "dept_emp" has employee no and there respective dept_no(department no)
3) "departments" has dept_no and dept_name(department name)
4) "dept_manager" has details of employees that are manager
5) "salaries" table has salaries etc of employees
6) "titles" has tites and more details of employees

**Note :-** Check datasets to check for exact details of various columns.

**Different Analysis with screenshot and explanation given below :-**



1) **Average Salary in Different Departments**


![average salary in different departments](https://github.com/ujjwal717/employees-analysis-using-sql/assets/93403224/6987d2cb-429d-41ef-87eb-0b17eed2b918)


**Insight :-** I found out that the maximum average salary of employees is in "Sales" (80k USD) department followed by "Marketing"(71k USD) and then "Finance"(70k USD).




2) **Count of Employees in each Department**


![count of employees in each department](https://github.com/ujjwal717/employees-analysis-using-sql/assets/93403224/c87342f7-8b86-43bc-8853-dcf007e61113)


**Insight :-** I found out that "Development" department has most number of employees followed by "Production" and then "Sales"



3) **Employees having more than Average Salary**


![employees having more than average salary](https://github.com/ujjwal717/employees-analysis-using-sql/assets/93403224/cdce15cb-9d12-4404-a0c3-e6f78ad14424)


**Insight :-** I here analysed various employees who had more salary than the average salary and I have ordered it in descending order and found that 158k USD is the maximum salary given in the company.



4) **Count of Manager in each Department**


![count of mnagers per department](https://github.com/ujjwal717/employees-analysis-using-sql/assets/93403224/3a7a2561-330e-480f-9827-df8de8330a13)


**Insight :-** I found out that "Quality Management", "Customer Service" and "Production" has 4-4 managers and other departments include 2 managers each.





5) **Average Salary in Development Department for different Job Titles**


![average salary in DEVELOPMENT department in multiple job titles](https://github.com/ujjwal717/employees-analysis-using-sql/assets/93403224/74456399-3b8b-410e-98d8-1cc2b9ad4041)


**Insight :-** I found that Senior Engineer earns most in "Development" department and that is 60k+ USD average and staff earns least and that is around 56k USD average. Note that these average salaries are specific to "Development department".



6) **Employees count across different Departments by Job Title :-**


![employee count across different department by job title](https://github.com/ujjwal717/employees-analysis-using-sql/assets/93403224/ec005677-d08a-4c31-bb83-f0d72bd44305)


**Insight :-** This analysis includes count of employees according to their job title in different department which simply means if we consider "Assistant Engineer" as a Job title then the count of Assistant Engineers in different department will be shown. In this way, all the departments and job titles are covered. So this analysis has 45 rows and it can be seen in the screenshot of the analysis.













   
