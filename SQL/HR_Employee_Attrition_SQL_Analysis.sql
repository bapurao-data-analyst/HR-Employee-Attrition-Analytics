CREATE DATABASE hr_analytics;
USE hr_analytics;

CREATE TABLE hr_attrition (
    Age INT,
    Attrition VARCHAR(10),
    BusinessTravel VARCHAR(30),
    DailyRate INT,
    Department VARCHAR(50),
    DistanceFromHome INT,
    Education INT,
    EducationField VARCHAR(50),
    EmployeeNumber INT,
    EnvironmentSatisfaction INT,
    Gender VARCHAR(10),
    HourlyRate INT,
    JobInvolvement INT,
    JobLevel INT,
    JobRole VARCHAR(50),
    JobSatisfaction INT,
    MaritalStatus VARCHAR(20),
    MonthlyIncome INT,
    MonthlyRate INT,
    NumCompaniesWorked INT,
    OverTime VARCHAR(10),
    PercentSalaryHike INT,
    PerformanceRating INT,
    RelationshipSatisfaction INT,
    StockOptionLevel INT,
    TotalWorkingYears INT,
    TrainingTimesLastYear INT,
    WorkLifeBalance INT,
    YearsAtCompany INT,
    YearsInCurrentRole INT,
    YearsSinceLastPromotion INT,
    YearsWithCurrManager INT
);
show tables ;
select count(*) from hr_attrition ;
select * from hr_attrition ;


-- HR Analytics SQL Project
-- 🟢 Basic Analysis

-- 1. Retrieve the total number of employees.
SELECT 
    COUNT(*) AS total_emp
FROM
    hr_attrition; 

-- 2. Calculate the total number of employees who left the organization.
SELECT 
    COUNT(*) AS left_emp
FROM
    hr_attrition
WHERE
    attrition = 'yes';

-- 3. Calculate the overall employee attrition rate.
SELECT 
    (SUM(CASE
        WHEN attrition = 'yes' THEN 1
        ELSE 0
    END) / COUNT(EmployeeNumber)) * 100 AS attrition_rate
FROM
    hr_attrition;

-- 4. Identify the department with the highest number of employees.
SELECT 
    department, COUNT(*) AS total_emp
FROM
    hr_attrition
GROUP BY department
ORDER BY total_emp DESC
LIMIT 1;

-- 5. Identify the job role with the highest number of employees.
SELECT 
    jobrole, COUNT(*) AS total_emp
FROM
    hr_attrition
GROUP BY JobRole
ORDER BY total_emp DESC
LIMIT 1;

-- ________________________________________
-- 🟡 Intermediate Analysis

-- 6. Analyze the total number of employees and attrition count for each department.
SELECT 
    department,
    SUM(CASE
        WHEN attrition = 'yes' THEN 1
        ELSE 0
    END) AS dept_attrition_count
FROM
    hr_attrition
GROUP BY department;

-- 7. Calculate the attrition rate for each department.
SELECT 
    department,
    (SUM(CASE
        WHEN attrition = 'yes' THEN 1
        ELSE 0
    END) / COUNT(*)) * 100 AS dept_attrition_rate
FROM
    hr_attrition
GROUP BY department;

-- 8. Calculate the attrition rate for each job role.
SELECT 
    jobrole,
    (SUM(CASE
        WHEN attrition = 'yes' THEN 1
        ELSE 0
    END) / COUNT(*)) * 100 AS attrition_by_role
FROM
    hr_attrition
GROUP BY JobRole
ORDER BY attrition_by_role DESC;

-- 9. Analyze the relationship between overtime and employee attrition.
-- Attrition_Count
SELECT 
    overtime,
    SUM(CASE
        WHEN attrition = 'yes' THEN 1
        ELSE 0
    END) AS attrition_count
FROM
    hr_attrition
GROUP BY OverTime;
-- Attrition_Rate
SELECT 
    overtime,
    SUM(CASE
        WHEN attrition = 'yes' THEN 1
        ELSE 0
    END) / COUNT(*) * 100 AS attrition_rate
FROM
    hr_attrition
GROUP BY OverTime;
 
-- 10. Analyze the average monthly income of employees based on their attrition status.
SELECT 
    attrition, AVG(monthlyincome) AS avg_salary
FROM
    hr_attrition
GROUP BY attrition;

-- 11. Analyze the distribution of employees and attrition across different age groups.
-- 1st method
SELECT 
    CASE
        WHEN age BETWEEN 18 AND 25 THEN '18-25'
        WHEN age BETWEEN 26 AND 35 THEN '26-35'
        WHEN age BETWEEN 36 AND 45 THEN '36-45'
        WHEN age BETWEEN 46 AND 55 THEN '46-55'
        ELSE '56+'
    END AS age_group,
    COUNT(*) AS total_employees,
    SUM(CASE
        WHEN attrition = 'Yes' THEN 1
        ELSE 0
    END) AS attrition_count
FROM
    hr_attrition
GROUP BY age_group
ORDER BY age_group;

-- 2nd method
SELECT
    age_group,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count
FROM (
    SELECT
        age,
        attrition,
        CASE
            WHEN age BETWEEN 18 AND 25 THEN '18-25'
            WHEN age BETWEEN 26 AND 35 THEN '26-35'
            WHEN age BETWEEN 36 AND 45 THEN '36-45'
            WHEN age BETWEEN 46 AND 55 THEN '46-55'
            WHEN age >= 56 THEN '56+'
        END AS age_group
    FROM hr_attrition
) AS t
GROUP BY age_group
ORDER BY age_group;

-- 12. Analyze the relationship between job satisfaction and employee attrition.
SELECT 
    jobsatisfaction,
    COUNT(*) AS total_employee,
    SUM(CASE
        WHEN attrition = 'yes' THEN 1
        ELSE 0
    END) AS attrition_count
FROM
    hr_attrition
GROUP BY jobsatisfaction
ORDER BY jobsatisfaction;

-- 13. Analyze the relationship between business travel and employee attrition.
SELECT 
    businesstravel,
    COUNT(*) AS total_employee,
    SUM(CASE
        WHEN attrition = 'yes' THEN 1
        ELSE 0
    END) AS total_attrition
FROM
    hr_attrition
GROUP BY businesstravel
ORDER BY total_attrition desc;

-- 14. Analyze the attrition rate based on marital status.
SELECT 
    maritalstatus,
    COUNT(*) AS total_employee,
    SUM(CASE 
        WHEN attrition = 'yes' THEN 1 
        ELSE 0 
    END) AS total_attrition,
    (SUM(CASE 
        WHEN attrition = 'yes' THEN 1 
        ELSE 0 
    END) / COUNT(*)) * 100 AS attrition_rate
FROM hr_attrition
GROUP BY maritalstatus;

-- 15. Analyze the attrition rate based on gender.
SELECT 
    gender,
    COUNT(*) AS total_employee,
    SUM(CASE
        WHEN attrition = 'yes' THEN 1
        ELSE 0
    END) AS attrition_count,
    (SUM(CASE
        WHEN attrition = 'yes' THEN 1
        ELSE 0
    END) / COUNT(*)) * 100 AS attrition_rate
FROM
    hr_attrition
GROUP BY gender;
-- ________________________________________

-- 🔴 Advanced Analysis

-- 16. Determine the top 3 job roles with the highest attrition rate.
SELECT 
    jobrole,
    COUNT(*) AS total_emp,
    (SUM(CASE
        WHEN attrition = 'yes' THEN 1
        ELSE 0
    END) / COUNT(*)) * 100.0 AS attrition_rate
FROM
    hr_attrition
GROUP BY JobRole
ORDER BY attrition_rate DESC
LIMIT 3;

    SELECT JobRole, COUNT(*) AS total_employees
FROM hr_attrition
GROUP BY JobRole;

-- 17. Determine the department with the highest attrition rate using a ranking function.
WITH t1 AS (
    SELECT 
        department,
        COUNT(*) AS total_employee,
        SUM(CASE 
            WHEN attrition = 'yes' THEN 1 
            ELSE 0 
        END) AS attrition_count,
        (SUM(CASE 
            WHEN attrition = 'yes' THEN 1 
            ELSE 0 
        END) / COUNT(*)) * 100 AS attrition_rate
    FROM hr_attrition
    GROUP BY department
),
t2 AS (
    SELECT *,
           RANK() OVER (ORDER BY attrition_rate DESC) AS rank_no
    FROM t1
)
SELECT *
FROM t2
WHERE rank_no = 1;

-- 18. Analyze the relationship between overtime and job satisfaction to identify high-risk employee groups.
SELECT 
    overtime,
    jobsatisfaction,
    COUNT(*) AS total_employee,
    SUM(CASE
        WHEN attrition = 'yes' THEN 1
        ELSE 0
    END) AS attrition_count,
    (SUM(CASE
        WHEN attrition = 'yes' THEN 1
        ELSE 0
    END) / COUNT(*)) * 100 AS attrition_rate
FROM
    hr_attrition
GROUP BY OverTime , JobSatisfaction
ORDER BY attrition_rate DESC; 

-- 19. Calculate the percentage contribution of each department to the total number of employees who left.
SELECT 
    Department,
    SUM(CASE 
        WHEN Attrition = 'Yes' THEN 1 
        ELSE 0 
    END) AS attrition_count,
    
    (SUM(CASE 
        WHEN Attrition = 'Yes' THEN 1 
        ELSE 0 
    END) / 
    (SELECT COUNT(*) 
     FROM hr_attrition 
     WHERE Attrition = 'Yes')) * 100 AS contribution_percentage

FROM hr_attrition
GROUP BY Department
ORDER BY contribution_percentage DESC;

-- 20. Rank job roles within each department based on their attrition rate.
WITH role_attrition AS (
    SELECT 
        department,
        JobRole,
        COUNT(*) AS total_employee,
        SUM(CASE
            WHEN attrition = 'yes' THEN 1
            ELSE 0
        END) AS attrition_count,
        (SUM(CASE
            WHEN attrition = 'yes' THEN 1
            ELSE 0
        END) / COUNT(*)) * 100 AS attrition_rate
    FROM hr_attrition
    GROUP BY department, JobRole
)
SELECT 
    department,
    JobRole,
    total_employee,
    attrition_count,
    attrition_rate,
    DENSE_RANK() OVER (
        PARTITION BY department 
        ORDER BY attrition_rate DESC
    ) AS d_rank
FROM role_attrition;

-- 21. Compare average salary, average age, and average years at company between employees who stayed and employees who left.
SELECT
    CASE
        WHEN attrition = 'yes' THEN 'Left'
        ELSE 'Stayed'
    END AS employee_status,
    
    ROUND(AVG(monthlyincome), 2) AS avg_salary,
    ROUND(AVG(age), 2) AS avg_age,
    ROUND(AVG(yearsatcompany), 2) AS avg_years_at_company

FROM hr_attrition

GROUP BY
    CASE
        WHEN attrition = 'yes' THEN 'Left'
        ELSE 'Stayed'
    END;
    
-- 22. Identify employee groups with high attrition based on multiple factors such as overtime, job satisfaction, age, and job role.
SELECT
    overtime,
    jobsatisfaction,

    CASE
        WHEN age < 25 THEN '18-24'
        WHEN age BETWEEN 25 AND 34 THEN '25-34'
        WHEN age BETWEEN 35 AND 44 THEN '35-44'
        ELSE '45+'
    END AS age_group,

    jobrole,

    COUNT(*) AS total_employee,

    SUM(
        CASE
            WHEN attrition = 'yes' THEN 1
            ELSE 0
        END
    ) AS attrition_count,

    ROUND(
        SUM(
            CASE
                WHEN attrition = 'yes' THEN 1
                ELSE 0
            END
        ) / COUNT(*) * 100,
        2
    ) AS attrition_rate

FROM hr_attrition

GROUP BY
    overtime,
    jobsatisfaction,
    age_group,
    jobrole

ORDER BY attrition_rate DESC;

-- 23. Use a CTE to calculate and compare department-wise attrition rates.
WITH department_attrition AS (
    SELECT
        department,
        COUNT(*) AS total_employee,
        SUM(
            CASE
                WHEN attrition = 'yes' THEN 1
                ELSE 0
            END
        ) AS attrition_count
    FROM hr_attrition
    GROUP BY department
)

SELECT
    department,
    total_employee,
    attrition_count,
    ROUND(
        (attrition_count / total_employee) * 100,
        2
    ) AS attrition_rate
FROM department_attrition
ORDER BY attrition_rate DESC;

-- 24. Use window functions to rank departments and job roles based on attrition.
WITH department_attrition AS (
    SELECT
        department,
        COUNT(*) AS total_employee,
        SUM(
            CASE
                WHEN attrition = 'yes' THEN 1
                ELSE 0
            END
        ) AS attrition_count,
        ROUND(
            SUM(CASE WHEN attrition = 'yes' THEN 1 ELSE 0 END)
            / COUNT(*) * 100,
            2
        ) AS attrition_rate
    FROM hr_attrition
    GROUP BY department
),

jobrole_attrition AS (
    SELECT
        jobrole,
        COUNT(*) AS total_employee,
        SUM(
            CASE
                WHEN attrition = 'yes' THEN 1
                ELSE 0
            END
        ) AS attrition_count,
        ROUND(
            SUM(CASE WHEN attrition = 'yes' THEN 1 ELSE 0 END)
            / COUNT(*) * 100,
            2
        ) AS attrition_rate
    FROM hr_attrition
    GROUP BY jobrole
)

SELECT
    department,
    total_employee,
    attrition_count,
    attrition_rate,
    DENSE_RANK() OVER (
        ORDER BY attrition_rate DESC
    ) AS department_rank
FROM department_attrition

ORDER BY department_rank;

-- 25. Identify the key factors associated with higher employee attrition and summarize the major business insights.



