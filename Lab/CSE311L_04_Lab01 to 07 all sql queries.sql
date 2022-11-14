select (Salary/30)*7 Weekly_Salary,First_Name from employees;

select concat(First_Name," ", Last_Name," ", Email) from employees;

select distinct Department_Id from employees;
select Department_Id from employees;

describe departments;
describe locations;

select concat(First_Name," ", Last_Name," gets ", Salary/30," dollars daily") as "Daily Wage"
from employees;

select distinct Job_Id from employees;

select last_name, (Salary/30)*7 "Weekly Salary", Department_Id from employees;

select concat(Last_Name,", ", Job_Id) as " Employee and Title" from employees;




-- Display the employee last name, job ID, and start date of employees hired between February 20, 1998, and May 1, 1998. Order the query in ascending order by start date.

select last_name "Last Name", Job_Id "Job Id", Hire_Date "Hire date"
from employees
where Hire_Date between str_to_date( "1998- February- 20"," %Y- %M- %e") 
					and str_to_date( "1998- May- 1"," %Y- %M- %e")
order by Hire_Date;


-- Display the last name and department number of all employees in departments 20 and 50 in alphabetical order by name.

select Last_Name "Last Name", Department_Id " Department Id"
from employees
where Department_Id in (20,50)
order by Last_Name;


-- Display the last name and hire date of every employee who was hired in 1994.

Select Last_Name "Last Name", Hire_Date "Hire Date" 
from employees
where Hire_Date between  str_to_date( "1994- January- 1"," %Y- %M- %e") 
					and str_to_date( "1994- December- 31"," %Y- %M- %e");

-- Display the last name, salary, and commission for all employees who earn commissions. Sort data in descending order of salary and commissions.Title.

select Last_Name "Last Name", Salary, Commission_PCT "Commission"
from employees
where Commission_PCT is not null
order by Salary desc, Commission_PCT desc;

-- Display the last name of all employees who have an a and an e in their last name.

select Last_Name "Last Name of those employee who has a and e"
from employees
where Last_Name like "%a%e%" or Last_Name like "%e%a%";


select Last_Name, First_Name
from employees
where Manager_id is null;
select manager_id from employees;

select last_name, department_id, salary
from employees
where Commission_PCT is null
order by Department_Id desc, Salary;

select last_name, Job_Id
from employees
where Job_Id like "%M__";


-- Activity 01: Write a query to display the last name, department number, and department name for all employees. 
select e.last_name "Last Name", e.department_id "Department Id", d.department_name "Department Name"
from employees e join departments d
on   e.department_id = d.department_id
order by d.Department_id, e.Last_Name;

-- Activity 02: Write a query to display the department name, location ID, and city of all departments.

select d.department_name "Department Name", l.location_id "Location Id", l.city "City"
from departments d join locations l
on d.Location_id = l.Location_id
order by d.Department_Name;


-- Activity 03: Write a query to display the last name, job, department number, and department name for all employees who work in Toronto.

select e.last_name "Last Name", e.job_id "Job Id", e.department_id "Department Id", d.department_name "Department Name"
from employees e
join departments d
on e.department_id= d.department_id
join locations l
on d.Location_id = l.Location_id and l.city = "Toronto";
 
 
 -- Activity 04 : Write a query to display the employee last name, department name, location ID, and city of all employees who earn a commission.

select e.last_name "Last Name", d.department_name "Department Name", d.location_id "Location Id", l.city "City"
from employees e
join departments d
on e.Manager_id = d.Manager_id and e.Commission_PCT is not null
join locations l
on d.Location_id= l.location_id; 

select Commission_PCT
from employees;


-- Activity 05: Display the employee last name and employee number along with their manager’s last
-- name and manager number. Label the columns Employee, Emp #, Manager, and Mgr #, respectively.

select emp.last_name "Employee" , emp.Employee_Id "Emp #", mgr.last_name "Manager", emp.Manager_id "Mgr #"
from employees emp 
join employees mgr
on emp.Manager_id = mgr.Employee_Id
order by emp.Manager_id;


-- ghorar dim
select e.last_name, e.department_id, d.department_id, d.department_name, d.location_id, l.location_id, l.city
from employees e
join departments d
on e.Manager_id = d.Manager_id and e.Commission_PCT is not null
join locations l
on d.Location_id= l.location_id; 


select d.department_name, l.state_province, e.employee_id
from employees e 
right join departments d
on  e.Department_id = d.Department_id
left join locations l
on d.location_id = l.location_id
where d.department_name <> "Administration" and d.Department_Name <> "Accounting" and l.State_Province = "Washington";

select department_name
from departments; 


select state_province
from locations; 
select * from employees;

select d.department_name, l.state_province, e.employee_id
from departments d 
join locations l
on   d.location_id = l.location_id
right join employees e
on d.Department_id = e.Department_id 
where  e.Commission_PCT is not null or d.Department_Name = "Sales";

select * from employees where Last_Name= "Ernst";

SELECT employee_id, last_name, Salary, Department_Id
FROM employees
WHERE salary in	(SELECT MIN(salary)
				FROM employees
				GROUP BY department_id);

-- Week 07, Lab Manual 05
-- Activity 01:
-- Display the highest, lowest, sum, and average salary of all employees. Label the columns
-- Maximum, Minimum, Sum, and Average, respectively. Round your results to the nearest whole number.

select round(max(Salary)) "Maximum", round(min(Salary)) "Minimum", round(sum(Salary)) "Sum", round(avg(Salary)) "Averge"
from employees;

-- Activity 02:
-- display the minimum, maximum, sum, and average salary for each job type.

select Job_Id, round(max(Salary)) "Maximum", round(min(Salary)) "Minimum", round(sum(Salary)) "Sum", round(avg(Salary)) "Averge"
from employees
group by Job_Id
order by Job_Id;

-- Activity 03:
-- Write a query to display the number of people with the same job.

select distinct Job_Id, count(Job_Id)
from employees
group by Job_Id
order by Job_Id;

-- Activity 04:
-- Display the manager number and the salary of the lowest paid employee for that manager.
-- Exclude anyone whose manager is not known. Exclude any groups where the minimum
-- salary is $6,000 or less. Sort the output in descending order of salary.

select Manager_Id "MANAGER_ID", min(Salary) "MIN(SALARY)"
from employees
group by Manager_id
having Manager_Id is not null and min(Salary) > 6000
order by  min(Salary) desc;

--  Activity 05 and Home Work:
-- Write a query to display each department’s name, location, number of employees, and the
-- average salary for all employees in that department. Label the columns Name, Location,
-- Number of People, and Salary, respectively. Round the average salary to two decimal places.
select d.department_name "Name", l.Street_Address "Location", Count(e.Employee_Id) "Number Of People", round(avg(e.salary), 2) "Salary"
from departments d 
join locations l
on d.Location_id =l.Location_id
join employees e 
on d.Department_id = e.Department_Id
group by d.Department_Name
order by d.Department_Name;
 
select * from locations;

-- Week 07, Lab Manual 6 

-- Activity 01:
-- Write a query to display the last name and hire date of any employee in the same
-- department as Zlotkey. Exclude Zlotkey.

select last_name, Hire_Date
from employees
where Department_Id = ( select department_id
						from employees
                        where Last_Name = "Zlotkey"
                        )
and Last_Name <> "Zlotkey";

-- Activity 02:
-- Create a query to display the employee numbers and last names of all employees who earn more
-- than the average salary. Sort the results in ascending order of salary.

select employee_id, Last_name, round(salary) "Salary"
from employees
where salary > ( select avg(salary)
				 from employees
                 )
order by salary;


-- Activity 03:
-- Display the last name and salary of every employee who reports to King.

select last_name, round(salary) "Salary"
from employees
where Manager_id = ( select Employee_Id
					 from employees
					 where Last_Name = "King"
					);
                      
-- Activity 04:
-- Write a query to display the employee numbers, last names, and salaries of all employees who
-- earn more than the average salary and who work in a department with any employee with a u in
-- their name.
select Employee_id , Last_Name, round(Salary) "Salary" 
from employees
where Salary > ( select avg(Salary)
				 from employees
                )
and Department_Id is not null 
and Last_Name like "%u%";




-- 5.1
select max(salary)-min(salary) "Difference Between Maximum and Minimum Salary"
from employees;

-- 5.2. Write SQL to show the highest-paid employees of each department with their department id and name.

select d.Department_Id, d.Department_Name , e.Last_Name "Name", max(e.Salary) "Salary"
from employees e
left join departments d
on e.Department_id = d.Department_id
group by d.Department_id
order by d.Department_Id;

-- 5.3. Write SQL to show the department and job position of the oldest employee and the newest employee with their joining date.

select department_id, Job_Id, Last_Name, Hire_Date
from employees
where Hire_Date = ( select max(Hire_Date)
					 from employees
                     )
or hire_date = ( select min(Hire_Date)
					 from employees
                     );
                     



-- 6.1. Consider question 5.1. Now write SQL to show the employees who earn the more than that difference.

select Employee_id, Last_Name, Salary
from employees
where Salary > ( select max(salary)-min(salary) "Difference Between Maximum and Minimum Salary"
				 from employees
                 );
                 
-- 6.2. Write SQL to show the departments who allocate more than 20000 dollars monthly for their employees' salaries.

select Department_id, Salary
from employees
group by Department_Id
having sum(salary) > 20000;

-- Lab-07
-- Activity 01

create table EMP 
(
	ID int (7),
    Last_Name varchar(25),
    First_Name varchar(25),
    Dept_Id int (7)
);


-- A 
alter table EMP
modify Last_Name varchar(35);
describe emp;
-- B 
create table EMPLOYEES2 
as select Employee_Id ID, First_Name FIRST_NAME, Last_Name LAST_NAME, Salary SALARY, Department_Id DEPT_ID
from Employees;


-- C 
Drop table EMP;

-- D
rename table employees2 to EMP;

-- E 
alter table EMP 
drop column FIRST_NAME;  
describe  emp;





create view empl
as select Last_Name, First_Name, Salary/30 as "Daily Salary", Job_Id
from employees;
select * from empl;

create table AD_Vp
as select * from employees
where Job_Id like "%VP%";
select * from AD_Vp;

-- Triiger-Function-Store Procedure
-- Example 1
CREATE TABLE salaries (
 id INT PRIMARY KEY,
 valid_from DATE NOT NULL,
 amount DECIMAL(12 , 2 ) NOT NULL DEFAULT 0
);
INSERT INTO salaries(id,valid_from,amount)
VALUES
 (1002,'2000-01-01',50000),
 (1056,'2000-01-01',60000),
 (1076,'2000-01-01',70000);
CREATE TABLE salary_archives (
 id INT PRIMARY KEY AUTO_INCREMENT,
 employee_id INT,
 valid_from DATE NOT NULL,
 amount DECIMAL(12 , 2 ) NOT NULL DEFAULT 0,
 deleted_at TIMESTAMP DEFAULT NOW()
 );
 select * from salary_archives;
DELETE FROM salaries
WHERE ID = 1002;

-- Example 02:

CREATE TABLE salary_budgets(
 total DECIMAL(15,2) NOT NULL
);

INSERT INTO salary_budgets(total)
SELECT SUM(amount)
FROM salaries;
 
select * from salary_budgets;



























-- Store Procedure Example

CREATE TABLE BOOKSHELF (
Title Varchar(100) Primary Key,
Publisher Varchar(20),
CategoryName Varchar(20),
Rating Varchar(2)
);
insert into BOOK_ORDER values
('HP Part 1');
insert into BOOK_ORDER values
('HP Part 2');
insert into BOOK_ORDER values
('LOTR');
insert into BOOK_ORDER values
('Narnia');

call NEW_BOOK('Narnia', 'Mcmillan','Fantasy');




-- Quesition 01

select * from employees;

create table Employee_Archives(
emp_id decimal(6,0) not null,
Last_name varchar(25),
job_id varchar(10)
);






-- Question- 02

call show_all_table_info;
















