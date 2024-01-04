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

**Various Analysis done :-**
1) Average Salary in Different Departments
2) Count of Employees in each Department
3) Employees having more than Average Salary
4) Count of Manager in each Department
5) Average Salary in Development Department for different Job Titles
6) Employees count across different Departments by Job Title
7) Employees count according to gender across various Departments
8) Employees count hired across Years
9) Manager Names in different Departments
10) Number of Promotion employee got and Title after Promotion
11) Number of Raises and Maximum Salary of each Employee
12) Years took Employee to get the First Promotion
13) Salary Percentage Increase from Joined Salary and Final Salary in Company






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



7) **Employees count according to gender across various Departments**


![employees count according to gender across different departments](https://github.com/ujjwal717/employees-analysis-using-sql/assets/93403224/7ea77311-1647-45aa-8d7b-36662cad310a)



**Insight :-** I found out that count of female employees in each and every department is less than the male employees. The exact employees count can be seen in the screenshot of the analysis.



8) **Employees count hired across Years**


![employees hired across years](https://github.com/ujjwal717/employees-analysis-using-sql/assets/93403224/2a03f678-96e9-4c87-82b7-9655f7f2c045)


**Insight :-** I found that the hiring count has decreased over the years and also, I have considered the batch of 5 years such as 1985 to 1990 and so on. Exact figures can be checked in the screenshot.


9) **Manager Names in different Departments**

![manager names in different departments](https://github.com/ujjwal717/employees-analysis-using-sql/assets/93403224/bae64022-4e9c-4327-9ac4-8933bada2d6a)


**Insight :-** It basically shows the manager names of various department. It is useful if we need to contact the manager of certain department to check for project updates and other such things



10) **Number of Promotion employee got and Title after Promotion**

![promotion count and title after promotion](https://github.com/ujjwal717/employees-analysis-using-sql/assets/93403224/0073d7d4-afe8-403d-b483-399da436b193)


**Insight :-** It shows count of promotion and I noticed that there are few employees that never got promotion and there are many employees who got promotion. Also, by checking the count of promotion, we can estimate how well an employee performed as generally, the count of promotion is or atleast should be dependent upon the hardwork and effectiveness of employee in the company as if employee is good, only then manager would promote or give the name of that particular employee for promotion. It also shows the Job Title after receiving the promotion or the title of the employee if he/she was not promoted.



11) **Number of Raises and Maximum Salary of each Employee**


![raises count and maximum salary of each employee](https://github.com/ujjwal717/employees-analysis-using-sql/assets/93403224/04d3dadd-144a-40c5-b462-2e824dab7988)


**Insight :-** It shows the count of raises that each employee received in his/her entire career in the particular company. It also shows the maximum salary of the employee and it is in variety of ranges such as 78k USD, 52k USD, 94k USD, 80k USD and many more. We have already checked average salary according to various categories.



12) **Years took Employee to get the First Promotion**


![years took to get 1st promotion](https://github.com/ujjwal717/employees-analysis-using-sql/assets/93403224/f72e4b06-0d62-4321-bf43-a3c2fe3d2513)



**Insight :-** It shows the time period in years that an employee took in order to get the first promotion. I noticed that the years for the first promotion varies according to different employees as every employee has different amount of efficiency and working mechanism, the time taken to get the promotion is also different.



13) **Salary Percentage Increase from Joined Salary and the Final Salary from Company**


    ![salary percentage 2](https://github.com/ujjwal717/employees-analysis-using-sql/assets/93403224/cecb437e-9da8-4ac9-a635-b796a0919da5)



**Insight :-** Here, we have analysed the overall salary percentage increase since the employee joined the company and his/her final salary in the company. This allowed us to understand the overall increase and growth of the employee in the company atleast in terms of salary and financial state.
    




















   
