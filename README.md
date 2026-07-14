# CareBridge Health Network Analytics

An end-to-end Excel, SQL, and Power BI project that analyzed hospital operations to evaluate financial performance, patient management, treatment utilization, and operational efficiency, providing actionable insights to support data-driven healthcare decision-making.

---

## ⚙️ Project Type Flags

✅ Microsoft Excel (Data Cleaning)

✅ SQL Analysis / Querying

✅ Dashboard / Data Visualization

✅ Healthcare Analytics

✅ End-to-End Analytics Project

---

## Table of Contents

1. Project Overview
2. Project Objectives
3. Project Scope & Tools
4. Dataset Overview
5. Project Workflow
6. Data Cleaning Process
7. SQL Analysis
8. Dashboard & Metrics
9. Key Insights
10. Strategic Recommendations
11. Assumptions & Limitations
12. Repository Structure
13. Author

## 1. Project Overview

Healthcare organizations generate vast amounts of operational data every day, ranging from patient registrations and appointments to treatments, billing, and payments. When effectively analyzed, this data provides valuable insights into operational efficiency, financial performance, and service utilization, enabling hospital management to make informed, data-driven decisions.

This project analyzes the operational performance of **CareBridge Health Network**, a fictional healthcare provider comprising three hospital branches: **Central Hospital**, **Westside Clinic**, and **Eastside Clinic**. The analysis covers the period **January 2023 to December 2023** and examines the complete patient journey, from registration and appointments to treatment delivery and billing.

Using **Microsoft Excel** for data cleaning, **MySQL** for data analysis, and **Power BI** for dashboard development, the project investigates key business questions surrounding revenue generation, appointment management, treatment utilization, payment performance, doctor workload, and patient demographics.

The objective extends beyond building dashboards. It focuses on identifying operational challenges, uncovering business opportunities, and delivering practical recommendations that can improve decision-making, optimize resource allocation, and support better healthcare service delivery.

## 2. Project Objectives

The primary objective of this project was to analyze CareBridge Health Network's operational and financial performance using healthcare data to uncover actionable business insights that support strategic decision-making.

The analysis specifically aimed to:

- Evaluate the hospital network's overall financial performance by analyzing revenue trends, pending payments, and payment methods.

- Assess appointment management by examining appointment statuses, completion rates, and potential operational bottlenecks affecting patient flow.

- Analyze treatment utilization and treatment-generated revenue to identify the services contributing most to the hospital's performance.

- Compare the operational performance of the three hospital branches to identify variations in revenue generation and service delivery.

- Examine patient demographics, including age groups and gender distribution, to better understand the hospital's patient population.

- Evaluate doctor workload by identifying appointment distribution across medical staff and highlighting potential capacity risks.

- Develop interactive Power BI dashboards that enable stakeholders to monitor key performance indicators and support data-driven decision-making.

- Provide practical recommendations to improve operational efficiency, revenue realization, patient management, and overall healthcare service delivery.

## 3. Project Scope & Tools

### Project Scope

This project covers the analysis of CareBridge Health Network's operational data for the period **January 2023 to December 2023**. The analysis spans the complete patient care and revenue cycle, including patient registration, appointment scheduling, treatment delivery, billing, and payment records across three hospital branches.

The project follows an end-to-end analytics workflow, beginning with data cleaning and validation in Microsoft Excel, followed by business analysis using MySQL, and concluding with interactive dashboard development in Microsoft Power BI.

---

### Tools Used

| Tool | Purpose |
|------|---------|
| **Microsoft Excel** | Cleaned and prepared the raw dataset by correcting data types, removing null records, standardizing formats, and ensuring data quality before analysis. |
| **MySQL** | Explored the cleaned dataset and answered business questions through SQL queries covering revenue, appointments, treatments, payments, hospital branches, and patient demographics. |
| **Microsoft Power BI** | Built interactive Executive, Operational, and Analytical dashboards to visualize KPIs, identify trends, and communicate business insights effectively. |
| **Git & GitHub** | Organized, documented, and version-controlled the complete analytics project for portfolio presentation and collaboration. |

## 4. Dataset Overview

The analysis was conducted using a hospital management dataset obtained from Kaggle and adapted for this project. The dataset represents the daily operations of **CareBridge Health Network** and contains information on patients, appointments, treatments, billing transactions, and doctors across three hospital branches.

The data covers the period **January 2023 to December 2023** and consists of five related tables that capture different stages of the patient care and revenue cycle.

### Dataset Tables

| Table | Description |
|---------|-------------|
| **Patients** | Stores patient demographic and registration information, including gender, date of birth, insurance details, and registration dates. |
| **Appointments** | Contains appointment records, including appointment dates, times, attending doctors, reasons for visits, and appointment status. |
| **Doctors** | Holds information about healthcare professionals, including their specialization, years of experience, hospital branch, and contact details. |
| **Treatments** | Records treatments administered during appointments, including treatment type, treatment date, description, and associated costs. |
| **Billing** | Stores financial records for each patient, including billing amounts, payment methods, billing dates, and payment status. |

### Dataset Relationships

Although the dataset did not include an Entity Relationship Diagram (ERD), the tables are logically connected through unique identifiers:

- **Patients** are linked to **Appointments** using `patient_id`.
- **Doctors** are linked to **Appointments** using `doctor_id`.
- **Appointments** are linked to **Treatments** using `appointment_id`.
- **Patients** and **Treatments** are linked to **Billing** through `patient_id` and `treatment_id`.

These relationships enabled integrated analysis across operational, financial, and clinical activities, allowing the project to answer business questions spanning the entire patient journey—from registration to treatment and payment.

## 5. Project Workflow

This project followed a structured end-to-end analytics workflow, transforming raw hospital data into actionable business insights through a combination of Microsoft Excel, MySQL, and Power BI.

```text
Hospital Management Dataset (Raw Data)
                 │
                 ▼
      Microsoft Excel
(Data Cleaning & Preparation)
                 │
                 ▼
             MySQL
 (Business Analysis & Querying)
                 │
                 ▼
         Microsoft Power BI
 (Data Modeling & Visualization)
                 │
                 ▼
 Business Insights & Recommendations
```

### Workflow Summary

1. **Data Collection**
   - Obtained the Hospital Management Dataset from Kaggle.
   - Reviewed the dataset structure and identified the five related tables used throughout the analysis.

2. **Data Cleaning (Microsoft Excel)**
   - Standardized date and time formats.
   - Corrected inconsistent data types.
   - Removed unnecessary blank rows and columns.
   - Verified unique identifiers and data consistency.
   - Prepared clean datasets for SQL analysis.

3. **Business Analysis (MySQL)**
   - Imported the cleaned datasets into MySQL.
   - Executed SQL queries to answer key business questions.
   - Analyzed revenue, appointments, payments, treatments, patient demographics, hospital branch performance, and doctor workload.

4. **Dashboard Development (Power BI)**
   - Imported the cleaned SQL-ready datasets.
   - Built relationships between tables.
   - Created DAX measures and calculated KPIs.
   - Designed Executive, Operational, and Analytical dashboards.

5. **Business Reporting**
   - Interpreted analytical findings.
   - Developed actionable recommendations.
   - Produced a comprehensive project report and executive presentation.

   ## 6. Data Cleaning Process

Before performing any analysis, the raw hospital dataset was cleaned and validated using **Microsoft Excel** to ensure accuracy, consistency, and reliability. This process prepared the data for SQL analysis and Power BI visualization.

### Data Cleaning Activities

The following cleaning tasks were performed across the five dataset tables:

- Standardized date formats to ensure consistency across patient registration, appointments, treatments, and billing records.
- Standardized appointment time values into a uniform time format.
- Corrected inconsistent data types before importing the data into MySQL.
- Removed blank rows and unnecessary columns that contained no analytical value.
- Verified the uniqueness of primary key fields such as `patient_id`, `doctor_id`, `appointment_id`, `treatment_id`, and `bill_id`.
- Reviewed relationships between tables to ensure referential integrity before building the Power BI data model.
- Checked for missing values and validated records before analysis.
- Renamed the cleaned worksheets using the `_cleaned` naming convention for consistency throughout the project.

Following data cleaning, the dataset was imported into **MySQL** for business analysis and later into **Microsoft Power BI** for dashboard development.

> 📄 **Detailed Data Cleaning Documentation:**  
> See **`excel/Data_Cleaning_Summary.md`** for a comprehensive description of the cleaning process performed on each table.

## 7. Business Analysis (SQL)

After cleaning the dataset in Microsoft Excel, the data was imported into **MySQL** to perform business-focused analysis. SQL was used to answer operational and financial questions that could support management decision-making.

The SQL analysis was organised into two categories:

### Exploratory Analysis

Exploratory queries were used to understand the structure and distribution of the dataset before conducting deeper analysis. These queries helped verify data quality, inspect records, and summarize key operational metrics.

Examples include:

- Viewing patient records
- Reviewing appointment statuses
- Exploring treatment records
- Understanding data distribution across the hospital network

---

### Business Analysis

Business analysis queries were designed to answer specific questions relevant to hospital operations and financial performance, including:

- What is the total revenue generated by the hospital network?
- Which payment methods generated the highest revenue?
- Which treatments contributed the most revenue?
- Which treatments were performed most frequently?
- Which doctor handled the highest number of appointments?
- How are appointments distributed by status?
- Which hospital branch generated the highest revenue?
- What is the gender distribution of registered patients?
- How much revenue remains pending?
- What is the average treatment cost?

These analyses formed the foundation for the KPIs, visualizations, and business insights presented in the Power BI dashboards.

> 📄 **SQL Scripts:**  
> - `sql/exploratory_queries.sql`  
> - `sql/business_analysis.sql`

## 8. Dashboard Development (Power BI)

Following the SQL analysis, the cleaned datasets were imported into **Microsoft Power BI** to build three interactive dashboards that present the hospital's financial, operational, and patient analytics.

Each dashboard was designed to answer a different set of business questions while providing stakeholders with clear, actionable insights.

### Executive Dashboard

The Executive Dashboard provides a high-level overview of CareBridge Health Network's overall performance during the analysis period.

**Key metrics include:**

- Total Revenue
- Total Patients
- Total Appointments
- Total Doctors
- Monthly Revenue Trend
- Revenue by Hospital Branch
- Patient Registration Trend

**Primary audience:** Hospital executives and senior management.

---

### Operational Dashboard (Financial & Operational Analytics)

The Operational Dashboard focuses on the hospital's financial performance and treatment operations, helping management monitor revenue generation and service delivery.

**Key metrics include:**

- Average Treatment Cost
- Total Treatments
- Revenue by Treatment Type
- Payment Status Analysis
- Revenue by Payment Method
- Most Common Treatments

**Primary audience:** Finance managers, operations managers, and departmental supervisors.

---

### Analytical Dashboard (Patient & Doctor Analytics)

The Analytical Dashboard provides deeper insights into patient demographics, workforce composition, and healthcare resource utilization.

**Key metrics include:**

- Patient Gender Distribution
- Patient Age Distribution
- Doctor Experience Distribution
- Doctor Specialization Analysis
- Insurance Provider Analysis
- Top Doctors by Appointment Volume

**Primary audience:** Hospital management, HR teams, and healthcare analysts.

---

Together, these three dashboards provide a comprehensive view of CareBridge Health Network's financial performance, operational efficiency, patient demographics, and workforce analytics, enabling stakeholders to make informed, data-driven decisions.

📊 **Power BI Files**

- `powerbi/CareBridge_Health_Network_Dashboard.pbix`
- Dashboard screenshots are available in the `powerbi` folder.

## 9. Key Insights

The analysis uncovered several important operational and financial insights across CareBridge Health Network during the 2023 reporting period.

### Financial Performance

- The hospital network generated **$551,250** in total revenue during the analysis period.
- Revenue performance varied across the three hospital branches, with **Central Hospital** generating the highest revenue, followed by **Westside Clinic** and **Eastside Clinic**.
- Payment analysis revealed a significant proportion of **pending payments**, highlighting opportunities to improve revenue collection and cash flow management.

### Operational Performance

- Appointment outcomes showed that completed appointments represented only a small proportion of total scheduled appointments, indicating operational inefficiencies that could affect both patient care and revenue generation.
- Doctor workloads were unevenly distributed, with a small number of doctors handling considerably more appointments than others, creating potential capacity and scheduling challenges.

### Treatment Performance

- Treatment revenue was concentrated among a few high-performing services, making them major contributors to the hospital's overall financial performance.
- Treatment utilization patterns closely aligned with revenue generation, demonstrating which services experienced the highest patient demand.

### Patient & Workforce Analytics

- Male patients represented the majority of registered patients, accounting for **62%** of the patient population.
- Patients aged **51 years and above** formed the largest age group, indicating a higher demand for chronic disease management and age-related healthcare services.
- The patient population was highly concentrated among a small number of insurance providers, creating potential reimbursement dependency risks.

## 10. Strategic Recommendations

Based on the findings from this analysis, the following recommendations are proposed to improve CareBridge Health Network's operational efficiency and financial performance.

### Improve Appointment Completion

Implement automated appointment reminders through SMS and email, together with simplified rescheduling options, to reduce cancellations and no-shows while improving patient attendance.

### Strengthen Revenue Collection

Introduce structured payment follow-up processes, digital payment options, and automated billing reminders to reduce pending payments and improve cash flow.

### Optimize Doctor Workload

Monitor appointment allocation regularly and distribute workloads more evenly across medical staff to reduce scheduling bottlenecks and improve service availability.

### Prioritize High-Performing Services

Continue investing in high-demand treatments by ensuring adequate staffing, equipment availability, and scheduling capacity for services that contribute significantly to hospital revenue.

### Expand Preventive Healthcare Programs

Develop targeted wellness programs and preventive care initiatives for the hospital's largest patient demographic to encourage recurring visits and improve long-term patient engagement.

### Reduce Operational Risks

Diversify insurance partnerships and continuously monitor branch-level performance to reduce dependency on a small number of insurance providers while supporting balanced growth across all hospital branches.

## 11. Assumptions & Limitations

### Assumptions

The following assumptions were made during this analysis:

- The dataset accurately represents the operational activities of CareBridge Health Network for the period **January to December 2023**.
- All patient, appointment, treatment, billing, and doctor records are assumed to be complete and reliable after the data cleaning process.
- Revenue analysis is based on the billing amounts provided in the dataset.
- Hospital branch performance is determined using the relationships between doctors, appointments, and billing records.

### Limitations

The analysis was subject to the following limitations:

- The dataset is a publicly available sample dataset and may not fully reflect real-world hospital operations.
- Some operational metrics, such as patient satisfaction, waiting times, treatment outcomes, and staff scheduling, were not available for analysis.
- Revenue was analyzed using billing records provided in the dataset and does not account for external financial factors such as operational costs, insurance reimbursements, or budget allocations.
- Findings and recommendations are limited to the available data and should be interpreted within the context of the dataset.

## 12. Repository Structure

```text
carebridge-health-network-analytics
│
├── data
│   ├── raw-data
│   └── cleaned-data
│
├── documentation
│   ├── CareBridge_Health_Network_Project_Report.pdf
│   └── CareBridge_Health_Network_Executive_Presentation.pdf
│
├── excel
│   ├── CareBridge_Data_Cleaning.xlsx
│   └── Data_Cleaning_Summary.md
│
├── powerbi
│   ├── CareBridge_Health_Network_Dashboard.pbix
│   ├── Executive_Dashboard.png
│   ├── Operational_Dashboard.png
│   ├── Analytical_Dashboard.png
│   └── DAX_Measures.md
│
├── sql
│   ├── exploratory_queries.sql
│   └── business_analysis.sql
│
├── .gitignore
└── README.md
```

### Folder Description

| Folder | Description |
|---------|-------------|
| **data/** | Contains the raw dataset and the cleaned datasets used throughout the project. |
| **documentation/** | Contains the detailed project report and executive presentation. |
| **excel/** | Contains the Excel workbook used for data cleaning and the data cleaning documentation. |
| **powerbi/** | Contains the Power BI dashboard, dashboard screenshots, and DAX measures documentation. |
| **sql/** | Contains exploratory SQL queries and business analysis queries used during the project. |

## 13. Author

**Blessing Chiamaka Ogomegbulam**

**Junior Data Analyst**

### Connect with Me

- **LinkedIn:**  www.linkedin.com/in/blessingogomegbulam
- **GitHub:** https://github.com/Mandyamaka
- 📧 mandyamaka2@gmail.com

---
