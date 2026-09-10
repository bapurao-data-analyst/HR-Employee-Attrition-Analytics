# HR Employee Attrition Analytics – Power BI Dashboard

## Project Overview

This Power BI dashboard provides an interactive analysis of employee attrition to identify high-risk employee groups and understand the key factors associated with employee turnover.

The dashboard transforms cleaned HR employee data into meaningful business insights using interactive visualizations, KPIs, filters, and analytical views.

## Business Problem

Employee attrition can increase recruitment costs, reduce workforce stability, and impact overall business performance.

The objective of this analysis is to identify:

- Overall employee attrition rate
- Departments with higher attrition
- Job roles with higher attrition risk
- High-risk age groups
- Relationship between job satisfaction and attrition
- Attrition patterns by gender, marital status, overtime, and business travel
- Employee segments that require retention-focused actions

## Key Findings

- Overall attrition rate is **16.12%**
- **237 employees** have left the organization
- **Sales** has the highest department-level attrition rate at **21%**
- **Sales Representative** has the highest job-role attrition rate at **40%**
- Employees aged **18–25** have the highest age-group attrition rate at **36%**
- **Male employees** have a higher attrition rate (**17%**) compared with female employees (**14.8%**)
- Lower job satisfaction is associated with higher employee attrition

## Dashboard Pages

### 1. Executive Overview

Provides a high-level view of employee attrition using key KPIs and visualizations.

Key metrics include:

- Total Employees
- Total Attrition
- Overall Attrition Rate
- Average Monthly Income
- Attrition by Department
- Attrition by Job Role
- Attrition by Education Field
- Attrition by Overtime
- Attrition by Age Group
- Attrition by Gender

### 2. Attrition Insights

Provides detailed analysis of attrition patterns across:

- Department
- Job Role
- Job Satisfaction
- Business Travel
- Marital Status
- Age Group
- Gender

Interactive slicers allow users to filter the analysis by different employee attributes.

### 3. Key Insights & Recommendations

Summarizes the major findings and translates analytical results into actionable business recommendations.

Focus areas include:

- Sales employee retention
- Early-career employee retention
- High-risk job roles
- Employee job satisfaction
- Regular attrition monitoring

## Tools & Technologies

- **Power BI** – Dashboard development and visualization
- **DAX** – KPI calculations and analytical measures
- **Power Query** – Data transformation and preparation
- **Data Modeling** – Building relationships and analytical structure
- **SQL** – Data analysis and business-focused queries
- **Python** – Data cleaning and preprocessing

## Interactive Features

- Department filter
- Job Role filter
- Gender filter
- Overtime filter
- Business Travel filter
- Employee Age filter
- Interactive dashboard navigation
- KPI cards
- Dynamic charts and visualizations

## Project Workflow

```text
Raw HR Dataset
      ↓
Python Data Cleaning
      ↓
SQL Data Analysis
      ↓
Power BI Data Modeling
      ↓
DAX Measures
      ↓
Interactive Dashboard
      ↓
Business Insights & Recommendations
