select * from departments
select * from dept_emp
select * from dept_manager
select * from employees
select * from salaries
select * from titles

-- Select all the employees who were born between January 1, 1952 and December 31, 1955 and their titles and title date ranges
-- Order the results by emp_no

select employees.birth_date, employees.emp_no, employees.first_name, employees.last_name, titles.title, titles.from_date, titles.to_date 
from employees
right join titles on employees.emp_no = titles.emp_no
where employees.birth_date between '1952-01-01' and '1955-12-31'
order by employees.emp_no;

-- Select only the current title for each employee
with emp_hist as (select employees.birth_date, employees.emp_no, employees.first_name, employees.last_name, titles.title, titles.from_date, titles.to_date 
from employees
right join titles on employees.emp_no = titles.emp_no
where employees.birth_date between '1952-01-01' and '1955-12-31'
order by employees.emp_no),

recent_title as (select emp_no, max(from_date) as most_recent from titles group by emp_no)
select emp_hist.emp_no, emp_hist.first_name, emp_hist.last_name, emp_hist.title as current_title from emp_hist join recent_title on ((emp_hist.emp_no=recent_title.emp_no) and (emp_hist.from_date=recent_title.most_recent));

-- Count the total number of employees about to retire by their current job title

with recent_title as (with emp_hist as (select employees.birth_date, employees.emp_no, employees.first_name, employees.last_name, titles.title, titles.from_date, titles.to_date 
from employees
right join titles on employees.emp_no = titles.emp_no
where employees.birth_date between '1952-01-01' and '1955-12-31'
order by employees.emp_no),

recent_title as (select emp_no, max(from_date) as most_recent from titles group by emp_no)
select emp_hist.emp_no, emp_hist.first_name, emp_hist.last_name, emp_hist.title as current_title from emp_hist join recent_title on ((emp_hist.emp_no=recent_title.emp_no) and (emp_hist.from_date=recent_title.most_recent))
)

select current_title, count(*) as no_of_employees from recent_title group by current_title

-- Count the total number of employees per department
with emps_per_dept as (
select dept_no, count(emp_no) as employee_count from dept_emp group by dept_no)
select dept_name, emps_per_dept.employee_count from departments join emps_per_dept on (departments.dept_no=emps_per_dept.dept_no);

-- Bonus: Find the highest salary per department and department manager
with recent_manager_salaries as (
with recent_salaries as (
with recent_emp as( 
select emp_no,
		max(from_date) as recent_appt 
		from salaries group by emp_no)
select recent_emp.*, 
		salaries.salary 
		from salaries join recent_emp 
		on salaries.emp_no=recent_emp.emp_no 
		and salaries.from_date=recent_emp.recent_appt
		order by emp_no),

current_managers as(
select dept_no, emp_no, from_date from dept_manager where to_date= '9999-01-01')
	
select current_managers.dept_no, 
		recent_salaries.emp_no, 
		recent_salaries.salary 
		from current_managers join
		recent_salaries on current_managers.emp_no=recent_salaries.emp_no)
select max(salary) from recent_manager_salaries


--Highest salary per department
with recent_emp_salaries as (
with recent_emp_date as(
with recent_emp as (select emp_no, max(from_date) as from_date from dept_emp group by emp_no)
select recent_emp.emp_no, 
		recent_emp.from_date, 
		dept_emp.dept_no
		from recent_emp join dept_emp 
		on recent_emp.emp_no=dept_emp.emp_no
			and dept_emp.from_date=recent_emp.from_date)
			select recent_emp_date.emp_no,
					recent_emp_date.dept_no,
					salaries.salary
					from recent_emp_date join salaries
					on recent_emp_date.emp_no=salaries.emp_no
					and recent_emp_date.from_date=salaries.from_date
					order by emp_no)
		select dept_no, 
				max(salary) as highest_salary from
				recent_emp_salaries
				group by dept_no
				order by dept_no
