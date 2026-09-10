# HR Employee Attrition Analytics – Power BI Dashboard

## 📊 Project Overview

The HR Employee Attrition Analytics dashboard is an interactive Power BI solution designed to analyze employee turnover and identify high-risk employee segments.

The dashboard transforms cleaned HR data and analytical findings into interactive visual insights that can help HR teams understand attrition patterns and support employee retention decisions.

---

## 🎯 Business Problem

High employee attrition can increase recruitment and training costs, reduce productivity, and affect workforce stability.

The objective of this dashboard is to identify where employee attrition is highest and understand the employee characteristics and workplace factors associated with higher turnover.

---

## 🔍 Analysis Objectives

- Measure overall employee attrition
- Identify departments with higher attrition
- Identify high-risk job roles
- Analyze attrition across different age groups
- Compare attrition by gender
- Analyze job satisfaction and employee attrition
- Analyze business travel patterns
- Analyze overtime and employee attrition
- Identify high-risk employee segments
- Provide actionable HR recommendations

---

## 🛠️ Tools & Technologies

- **Power BI**
- **Power Query**
- **DAX**
- **Data Modeling**
- **Interactive Slicers**
- **Data Visualization**

---

## 📑 Dashboard Pages

### 1. Executive Overview

Provides a high-level summary of the workforce and employee attrition using key performance indicators and visual analysis.

**Key Metrics:**

- Total Employees: **1,470**
- Total Attrition: **237**
- Overall Attrition Rate: **16.12%**
- Average Monthly Income: **6.50K**

![Executive Overview](Dashboard_Screenshots/Executive_Overview.png)

---

### 2. Attrition Insights

Provides detailed analysis of employee attrition across different employee and organizational characteristics.

**Key Analysis Areas:**

- Department
- Job Role
- Job Satisfaction
- Business Travel
- Marital Status
- Age Group
- Gender

![Attrition Insights](Dashboard_Screenshots/Attrition_Insights.png)

---

### 3. Key Insights & Recommendations

This page summarizes the major attrition patterns, high-risk employee segments, and recommended HR actions.

**Major Findings:**

- Sales department has the highest attrition rate at **21%**
- Sales Representative has the highest job-role attrition rate at **40%**
- Employees aged 18–25 have the highest age-group attrition rate at **36%**
- Human Resources has an attrition rate of **19%**
- Male employees have a higher attrition rate (**17%**) than female employees (**14.8%**)
- Lower job satisfaction is associated with higher employee attrition

![Key Insights & Recommendations](Dashboard_Screenshots/Recommendations.png)

---

## 💡 Key Business Insights

### Department

Sales has the highest attrition rate among departments, making it an important area for employee retention initiatives.

### Age Group

Employees aged **18–25** have the highest attrition rate at **36%**, indicating higher retention risk among early-career employees.

### Job Role

**Sales Representatives** have the highest job-role attrition rate at **40%**, followed by Laboratory Technicians and Human Resources roles.

### Job Satisfaction

Employees with lower job satisfaction show higher attrition, indicating that employee engagement and workplace satisfaction are important retention factors.

### Gender

Male employees show a moderately higher attrition rate compared with female employees.

---

## 🎯 High-Risk Employee Segments

- 18–25 age group – **36% attrition**
- Sales Representative – **40% attrition**
- Sales Department – **21% attrition**
- Human Resources Department – **19% attrition**
- Male employees – **17% attrition**
- Employees with lower job satisfaction

---

## ✅ Recommended Actions

1. **Strengthen retention initiatives in Sales**
   - Review workload and compensation
   - Improve career growth opportunities
   - Increase employee engagement

2. **Focus on early-career employees**
   - Introduce mentoring programs
   - Provide structured career development
   - Conduct regular feedback sessions

3. **Address high-risk job roles**
   - Perform role-specific attrition analysis
   - Review workload and working conditions

4. **Improve employee satisfaction**
   - Conduct employee engagement surveys
   - Identify causes of low job satisfaction
   - Implement targeted improvement initiatives

5. **Monitor attrition regularly**
   - Track attrition by department
   - Monitor job roles and age groups
   - Monitor satisfaction and overtime patterns

---

## 📂 Project Files

| File / Folder | Description |
|---|---|
| `HR Employee Attrition Analytics.pbix` | Interactive Power BI dashboard |
| `Dashboard_Screenshots/` | Dashboard page screenshots |
| `Dashboard_Screenshots/README.md` | Screenshot documentation |

---

## 🔗 Project Workflow

```text
Raw HR Dataset
      ↓
Python Data Cleaning
      ↓
MySQL Analysis
      ↓
Power BI Data Modeling
      ↓
DAX Measures
      ↓
Interactive Dashboard
      ↓
Business Insights & Recommendations
