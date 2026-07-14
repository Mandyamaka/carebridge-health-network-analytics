# Data Cleaning Summary

## Overview

The hospital management dataset was cleaned and validated using **Microsoft Excel** before being imported into MySQL for business analysis and Microsoft Power BI for dashboard development.

The objective of the cleaning process was to improve data quality, ensure consistency across all tables, and prepare the dataset for reliable analysis.

---

# Tables Cleaned

The following five tables were cleaned:

- Patients
- Appointments
- Doctors
- Treatments
- Billing

---

# Data Cleaning Activities

The following cleaning tasks were performed across the dataset.

## 1. Data Type Validation

Columns were reviewed to ensure each field contained the appropriate data type.

Examples include:

- Dates stored as Date format
- Times stored as Time format
- Costs and billing amounts stored as Numbers
- IDs stored as Text where appropriate

---

## 2. Date Standardization

Date columns were standardized into a consistent format across all tables to improve compatibility with SQL and Power BI.

Examples include:

- Registration Date
- Appointment Date
- Treatment Date
- Billing Date

---

## 3. Time Standardization

Appointment time values were formatted consistently to support scheduling analysis.

---

## 4. Removal of Blank Records

Blank rows and records containing no useful information were removed where necessary.

---

## 5. Removal of Unnecessary Columns

Columns that did not contribute to the business analysis or dashboard development were removed.

---

## 6. Missing Value Review

Each table was inspected for missing values.

Where necessary:

- Null records were reviewed.
- Incomplete records that could affect analysis were corrected or removed.

---

## 7. Duplicate Check

Primary identifier columns were reviewed to ensure duplicate IDs were not present.

Examples include:

- patient_id
- doctor_id
- appointment_id
- treatment_id
- bill_id

---

## 8. Data Consistency Check

Related tables were reviewed to ensure key relationships remained valid before importing into MySQL and Power BI.

This included validating relationships between:

- Patients and Appointments
- Doctors and Appointments
- Treatments and Appointments
- Billing and Patients

---

# Output

After cleaning, the dataset was exported as five cleaned CSV files:

- patients_cleaned.csv
- appointments_cleaned.csv
- doctors_cleaned.csv
- treatments_cleaned.csv
- billing_cleaned.csv

These cleaned datasets were used for all SQL queries, Power BI dashboards, and business analysis performed in this project.