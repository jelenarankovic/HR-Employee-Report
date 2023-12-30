# HR Employee Report
## Project Overview
This data analysis project aims to provide insight into the structure and different trends regarding job fluctuation in a company over a period of 20 years. By analyzing various aspects of the HR data, we seek to identify trends, make data-driven recommendations, and gain a deeper understanding of the company's working culture. The dashboard can be viewed in pdf file in this repository.
### Data Used
- *Data - HR Data with over 2200 rows from the year 2000 to the year 2020.
- *Data Cleaning & Analysis - MySQL
- *Data Transformation & Visualization - Power BI
### Questions
-  1. What is the gender distribution in the company?
-  2. What is the ethnicity breakdown of employees in the company?
-  3. What is the age distribution of employees in the company?
-  4. How many employees work in the office versus the remote location?
-  5. What is the average length of employment for employees who have been terminated?
-  6. How does gender distribution vary across departments and jobs?
-  7. What is the distribution of job titles across the company?
-  8. Which department has the highest turnover rate?
-  9. What is the distribution of employees across locations by state?
-  10. How has the company's employee count changed over time based on hire and term dates?
-  11. What is the tenure distribution for each department?

### Summary of Findings
- -There are more male employees.
- -White race is most dominant while Native Havaiian And American Indian are the least dominant.
- -The youngest employee is 21 years old, and oldest is 58 years old.
- -Five age groups were created(18-24, 25-34, 35-44, 45-54, 55-64), the groups 25-34 and 35-44 have equal number of employees and they are dominant, while the least number of employees are in groups 18-24 and 55-    64, they have 1.9k and 1.0k employees respectively.
- -More employees work at the headquarters(74,97%) versus remotely.
- -The average length of employment is 8 years.
- -The gender distribution across departments is fairly balanced but there are generally more male employees.
- -A large number of employees comes from Ohio.
- -The net change in employees has increased over the years.
- -Job title with the most employees is Research Assistant II with 608 employees, while Assistant Professor only has one person on that position.
- -The highest turnover rate is in Auditing, whiile the lowest is in the Marketing(the Business Development is secon do last but it does have a similar turnover rate as Marketing).

  ### Limitations
  - -Some records had negative ages and these were excluded during querying(967 records). Ages used were 18 years and above.
  - Some termdates were far into the future and were not included in the analysis. The only termdates used were those less than or equal to the current date.
