-- Group by groups together rows that have the same values, once you group the rows together, you can perform an aggregate function
Select *
FROM employee_demographics;

Select gender, AVG(age)
FROM employee_demographics
Group by gender;