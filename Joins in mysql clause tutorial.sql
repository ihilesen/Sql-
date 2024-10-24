-- Joins
-- by default, join represents an inner join
-- you can replace long names with Aliases using AS
SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS asl
     ON dem.employee_id = asl.employee_id
;
-- the inner join brings over the rows that have the same values in both
SELECT dem.employee_id, age, salary
FROM employee_demographics AS dem
INNER JOIN employee_salary AS asl
     ON dem.employee_id = asl.employee_id
;

-- Left Join, Takes everything from the left table
SELECT *
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS asl
     ON dem.employee_id = asl.employee_id
;
-- Right Join, Takes everything from the right table and if there is no match, it inputs null values
SELECT *
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS asl
     ON dem.employee_id = asl.employee_id
;

-- Self Join
SELECT emp1.employee_id AS emp_santa,
emp1.first_name As first_name_santa,
emp1.last_name As last,name,santa,
emp2.employee_id As emp_santa,
emp2.first_name As first_nme_santa,
emp2.last_name As last_name_santa
FROM employee_salary emp1
JOIN employee_salary emp2
     ON emp1.employee_id + 1 = emp2.employee_id
;

-- Joining multiple tables
Select *
From employee_demographics As dem
INNER JOIN employee_salary AS sal
     ON dem.employee_id = sal.employee_id
Inner Join parks_departments As pd
	 ON sal.dept_id = pd.department_id
;