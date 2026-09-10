# HR Employee Attrition Analytics – SQL Analysis

## 📌 Business Problem

Employee attrition is a major challenge for organizations because high employee turnover can increase recruitment costs, reduce productivity, and affect team performance.

The objective of this analysis was to understand **why employees are leaving the organization and which employee groups, departments, and job roles have higher attrition risk.**

---

## 🎯 Problem Statement

The HR team needs data-driven insights to identify:

- Departments with higher employee attrition
- Job roles with higher attrition rates
- Employee demographic groups at higher risk
- The impact of overtime and job satisfaction on attrition
- Differences between employees who stayed and those who left
- Key factors associated with employee turnover

The analysis was performed to help HR teams identify potential risk areas and support better employee retention strategies.

---

## 🔍 What We Solved

Using SQL analysis, we transformed the raw HR employee data into meaningful business insights.

The analysis focused on:

- Overall employee attrition
- Department-wise attrition
- Job role-wise attrition
- Age-group patterns
- Gender and marital status
- Overtime and job satisfaction
- Business travel
- Monthly income
- Years at company
- High-risk employee groups
- Ranking departments and job roles based on attrition

Advanced SQL techniques were also used to compare and rank employee groups and departments.

---

## 🛠️ Tools & Technologies

- **MySQL** – Data analysis and business queries
- **SQL** – Data aggregation, filtering, comparison and ranking
- **CTEs** – Structured and reusable analysis
- **Window Functions** – Ranking departments and job roles
- **Python** – Data cleaning and preprocessing
- **Power BI** – Interactive dashboard and visualization
- **DAX** – Business metrics and calculations
- **Power Query** – Data transformation

---

## 📊 Dataset

- **Dataset:** HR Employee Attrition
- **Total Employees:** 1,470
- **Employees Who Left:** 237
- **Overall Attrition Rate:** 16.12%
- **Source:** Kaggle

---

## 💡 Key Findings

### Overall Attrition

The organization had **237 employees who left out of 1,470 employees**, resulting in an overall attrition rate of **16.12%**.

### Department-Level Risk

The **Sales department** showed the highest attrition rate among the major departments, making it an important area for HR attention.

### Age-Based Risk

Employees in the **18–25 age group** had the highest attrition rate, indicating that younger employees may require stronger retention and career-development strategies.

### Job Role Risk

Some job roles showed significantly higher attrition rates.

The **Sales Representative** role had one of the highest attrition rates, making it a key role for further investigation.

### Overtime

Employees working overtime showed a stronger association with employee attrition, indicating that workload and work-life balance may be important factors in employee retention.

### Job Satisfaction

The analysis also examined the relationship between job satisfaction and attrition to identify employee groups that may require additional HR attention.

### Employee Characteristics

Attrition patterns were further analyzed across factors such as:

- Gender
- Marital Status
- Business Travel
- Monthly Income
- Age
- Years at Company

---

## 📈 Business Insights

The analysis indicates that employee attrition is not driven by a single factor.

Higher attrition was particularly visible among certain:

- Departments
- Job roles
- Younger employees
- Overtime groups
- Employee satisfaction segments

These patterns can help HR teams prioritize retention efforts instead of applying the same strategy to all employees.

---

## 🔄 Analysis Workflow

```text
HR Employee Attrition Dataset
            ↓
     Python Data Cleaning
            ↓
       MySQL Analysis
            ↓
   Business Insights
            ↓
      Power BI Dashboard
            ↓
 Recommendations for HR
