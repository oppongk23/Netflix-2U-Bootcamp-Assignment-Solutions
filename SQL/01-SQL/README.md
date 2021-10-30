# 6.1 Skill Drill: SQL

Given an employee database, write some queries to do some analysis.

## Instructions

1. In pgAdmin create a new database called `employees_db`.

2. Open the [schema.sql](Unsolved/schema.sql) file and paste it into a Query Tool window in pgAdmin. Execute the code to create the tables.

3. Import data from each of the CSV files in the [Resources](Resources) folder into the corresponding table in pgAdmin.

4. Write a query that selects all the employees who were born between January 1, 1952 and December 31, 1955 (the employees that are about to retire) and their titles and title date ranges. Order the results by `emp_no`.
  
   ![employees_and_titles](../../../02-Assignments/06-SQL/01-SQL/Images/employees_and_titles.png)

   - **Note:** There are duplicate entries in the `titles` table for some employees because they have switched titles over the years.

5. Write another query that builds off of the previous query, but selects only the current title for each employee.

   ![employees_and_current_titles](../../../02-Assignments/06-SQL/01-SQL/Images/employees_and_current_titles.png)

6. Write a query that counts the total number of employees about to retire by their current job title.

   ![retirees_by_title](../../../02-Assignments/06-SQL/01-SQL/Images/retirees_by_title.png)

7. Write a query to count the total number of employees per department.

   ![employees_per_dept](../../../02-Assignments/06-SQL/01-SQL/Images/employees_per_dept.png)

8. **Bonus**: Find the highest salary per department and department manager.
   
   ![highest_salary_per_dept](../../../02-Assignments/06-SQL/01-SQL/Images/highest_salary_per_dept.png)

Data Source: https://github.com/vrajmohan/pgsql-sample-data/tree/master/employee

---

© 2021 Trilogy Education Services, a 2U, Inc. brand. All Rights Reserved.
