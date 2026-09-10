# HR Employee Attrition Analytics – SQL Analysis

## 📌 Business Problem

Employee attrition is a major challenge for organizations because high employee turnover can increase recruitment costs, reduce productivity, and affect workforce stability.

The objective of this SQL analysis is to understand employee attrition patterns and identify departments, job roles, and employee characteristics associated with higher turnover.

---

## 🎯 Problem Statement

Analyze HR employee data using SQL to measure employee attrition, identify high-risk employee groups, compare attrition across departments and job roles, and generate business insights that can support employee retention strategies.

---

## 🔍 What Was Solved

The SQL analysis was used to:

- Measure total employee count
- Calculate total employee attrition
- Calculate overall attrition rate
- Compare attrition across departments
- Analyze attrition by job role
- Analyze age-group attrition
- Analyze gender-based attrition
- Analyze job satisfaction and attrition
- Analyze overtime and attrition
- Analyze business travel and attrition
- Compare employee characteristics between employees who stayed and employees who left
- Identify high-risk employee segments
- Rank departments and job roles based on attrition
- Generate business insights for employee retention

---

## 🛠️ Tools & Technologies

- **MySQL**
- SQL
- CTEs
- Window Functions
- Aggregate Functions
- CASE Statements
- GROUP BY
- HAVING
- Subqueries
- Joins
- Ranking Functions

---

## 📊 Analysis Approach

### 1. Basic Analysis

Calculated overall workforce metrics such as:

- Total employees
- Total employees who left
- Overall attrition rate
- Department workforce distribution
- Job-role workforce distribution

### 2. Intermediate Analysis

Analyzed employee attrition across important workforce dimensions:

- Department
- Job Role
- Age Group
- Gender
- Job Satisfaction
- Overtime
- Business Travel
- Marital Status

### 3. Advanced Analysis

Applied advanced SQL techniques to identify deeper patterns and high-risk employee segments.

Key techniques included:

- Common Table Expressions (CTEs)
- Window Functions
- Ranking
- Multi-factor analysis
- Department-wise comparisons
- Job-role ranking
- Conditional aggregation

---

## 💡 Key Findings

The SQL analysis identified several important attrition patterns:

- Overall employee attrition rate is **16.12%**
- **Sales** has the highest departmental attrition rate at **21%**
- **Sales Representatives** have the highest job-role attrition rate at **40%**
- Employees aged **18–25** have the highest age-group attrition rate at **36%**
- **Human Resources** has an attrition rate of **19%**
- Lower job satisfaction is associated with higher attrition
- Male employees show a moderately higher attrition rate than female employees

---

## 🎯 Business Insights

The analysis indicates that employee attrition is concentrated in specific departments, job roles, and employee segments rather than being evenly distributed across the organization.

The highest-risk areas include:

- Sales-related roles
- Early-career employees
- Employees with lower job satisfaction
- Selected high-risk job roles

These findings can help HR teams prioritize targeted employee retention strategies instead of applying the same approach across the entire workforce.

---

## 🚀 Business Recommendations

Based on the SQL analysis:

1. Strengthen retention strategies in the Sales department.
2. Focus on early-career employees through mentoring and career development programs.
3. Review workload, compensation, and growth opportunities for high-risk job roles.
4. Improve employee engagement and job satisfaction.
5. Regularly monitor attrition trends across departments, job roles, age groups, and other workforce characteristics.

---

## 📂 Project File

The complete SQL analysis is available in:

`HR_Employee_Attrition_SQL_Analysis.sql`

The SQL file contains the queries used to perform the employee attrition analysis in MySQL.

---

## 🔗 Analysis Workflow

```text
HR Dataset
    ↓
Data Cleaning using Python
    ↓
Cleaned HR Data
    ↓
MySQL
    ↓
Employee Attrition Analysis
    ↓
Business Insights
    ↓
Power BI Dashboard
