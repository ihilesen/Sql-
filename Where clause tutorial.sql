-- WHERE Clause
-- The where clause is used to filter records or rows of data 
-- whereas the select statement is used to filter columns**
-- when we are using the where clause, we will only return the rows that fulfill specific conditions
-- uses =, ≠, >, ≥, <, ≤
-- Logical operators
-- AND, OR, NOT
-- Like statement looks for a specific statement within that  clause
-- %a% shows all that have a
-- a% shows all that start with a**
-- Always put names and texts in quotes.

SELECT *
FROM employee_salary
where first_name = 'Leslie'
;

SELECT *
FROM employee_salary
where salary > 50000
;

-- if we want to include salaries that are exactly 50k, we must use >=
SELECT *
FROM employee_salary
where salary >= 50000
;

SELECT *
FROM employee_demographics
where gender = 'Female'
;

-- We also nave not equal to (!=)
-- we can also filter birthdate in quotation marks

SELECT *
FROM employee_demographics
where birth_date > '1977-07-30'
;

-- the Where clause can also be used along with logical operators such as And, Or, OR NOT
-- we don't need quotes for numbers
SELECT *
FROM employee_demographics
where birth_date > '1977-07-30'
AND age <= 40
;

-- parenthesis can also be used
-- Like statement is unique and allows us look for specific patterns
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'Jer'
;
-- % sign means anything and the _ means a specific values
SELECT *
FROM employee_demographics
WHERE first_name LIKE '%er%'
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__'
;

-- it gives a first name that starts with a and has exactly 2 characters after 