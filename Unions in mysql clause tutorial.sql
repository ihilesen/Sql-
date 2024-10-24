-- unions
Select first_name, last_name
From employee_demographics
UNION
Select first_name, last_name
From employee_salary
;

-- can use union distince, which doesnt show all, and union all
Select first_name, last_name, 'Old Man' As Label
From employee_demographics
where age > 40 and gender = 'Male'
Union All
Select first_name, last_name, 'Old Lady' As Label
From employee_demographics
where age > 40 and gender = 'Femalee'
Union All
Select first_name, last_name, 'Highly Paid employee' As Label
From employee_salary
where salary > 70000
Order by first_name, last_name
;