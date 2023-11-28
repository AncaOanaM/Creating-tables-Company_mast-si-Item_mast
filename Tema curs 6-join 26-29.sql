----26. From the following tables write a SQL query to display all the data of employees including their 
--department.

select 
	ed.EMP_FNAME FirstName,
	ed.EMP_LNAME LastName,
	ed.EMP_IDNO,
	edm.DPT_NAME DepartmantName,
	edm.DPT_ALLOTMENT
from emp_details ed
join emp_department edm
	on edm.DPT_CODE=ed.EMP_DEPT

--27. From the following tables write a SQL query to display the first and last names of each employee, 
--as well as the department name and sanction amount.
select 
	ed.EMP_FNAME FirstName,
	ed.EMP_LNAME LastName,
	edm.DPT_NAME DepartmantName,
	edm.DPT_ALLOTMENT SanctionAmount
from emp_details ed
join emp_department edm
	on edm.DPT_CODE=ed.EMP_DEPT

--28.From the following tables write a SQL query to find the departments with budgets more than Rs. 50000 
--and display the first name and last name of employees.
select 
	ed.EMP_FNAME FirstName,
	ed.EMP_LNAME LastName,
	edm.DPT_NAME DepartmantName,
	edm.DPT_ALLOTMENT
from emp_details ed
join emp_department edm
	on edm.DPT_CODE=ed.EMP_DEPT
where edm.DPT_ALLOTMENT>50000

--29. From the following tables write a SQL query to find the names of departments where more than two 
--employees are employed. Return dpt_name.
with NmbEmpl as
(select 
	count(*) nmbEmployees,
	edm.DPT_NAME DepartmentName
from emp_details ed
join emp_department edm
on edm.DPT_CODE=ed.EMP_DEPT
group by edm.DPT_CODE,edm.DPT_NAME)
select
DepartmentName
from NmbEmpl
where nmbEmployees>2


SELECT emp_department.dpt_name
  FROM emp_details 
INNER JOIN emp_department
  ON emp_dept =dpt_code
GROUP BY emp_department.dpt_name
HAVING COUNT(*) > 2