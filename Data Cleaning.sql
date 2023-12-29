CREATE DATABASE projects;
USE hr;
SELECT * FROM hr;
DESC hr;

#From the starting set it could be seen that some columns need
#name and data type change for them to be used properly going forward

#First one to be altered is the employee id 
ALTER TABLE hr
CHANGE COLUMN ï»¿id emp_id varchar(20) NULL;

#In the case of birthdate, the format of the date needed to be changed to one 
#uniformal type and then the data type of the column is changed to date
UPDATE hr
SET birthdate = CASE
		WHEN birthdate LIKE '%/%' THEN date_format(str_to_date(birthdate, '%m/%d/%Y'), '%Y-%m-%d')
        WHEN birthdate LIKE '%-%' THEN date_format(str_to_date(birthdate, '%m-%d-%Y'), '%Y-%m-%d')
        ELSE NULL
        END;

ALTER TABLE hr
MODIFY COLUMN birthdate date;

#Just like in the case of birthdate, regarding the column hire_date
#the format of the date needed to be changed to one 
#uniformal type and then the data type of the column is changed to date
UPDATE hr
set hire_date = case
		WHEN hire_date LIKE '%/%' THEN date_format(str_to_date(hire_date, '%m/%d/%Y'), '%Y-%m-%d')
        WHEN hire_date LIKE '%-%' THEN date_format(str_to_date(hire_date, '%m-%d-%Y'), '%Y-%m-%d')
         ELSE NULL
        END;

ALTER TABLE hr
MODIFY COLUMN hire_date date;

#In the column termdate were a lot of missing values and with date there was time in
#the rows so that was changed using the if statement and the data type 
#was changed after taht
UPDATE hr
SET termdate = IF(termdate IS NOT NULL AND termdate != '', date(str_to_date(termdate, '%Y-%m-%d %H:%i:%s UTC')), '0000-00-00')
WHERE true;

SELECT termdate FROM hr;

SET sql_mode = 'ALLOW_INVALID_DATES';

ALTER TABLE hr
MODIFY COLUMN termdate date;

#Column age was added for better analysis and it was created 
#using the birthdate column
ALTER TABLE hr ADD COLUMN age int;
SELECT * FROM hr;

UPDATE hr
SET age = timestampdiff(YEAR, birthdate, CURDATE());
SELECT birthdate, age FROM hr;

#One thing to notice is the outlayers that exist in the data set, 
#like negative values for age, so that is something to pay attention to
#Going forward we will be looking only at people older than 18
SELECT 
	min(age) AS youngest,
    max(age) AS oldest
FROM hr;

SELECT count(*) FROM hr
WHERE age < 18;



