-- Used to work with columns and select what columns you want to bring out
-- we add a semi colon to let SQL know that's the end of the query (;)
-- you can also select specific columns  by their names. and separated by a comma. 
-- you can also have each column in a new row. 
-- also calculations are possible using (PEMDAS)
-- When you use DISTINCT, it gives all the unique values in the columns

SELECT *
FROM employee_demographics;

SELECT first_name, 
last_name, 
birth_date,
age,
age + 10
FROM employee_demographics;

Select Distinct first_name, gender
From employee_demographics;