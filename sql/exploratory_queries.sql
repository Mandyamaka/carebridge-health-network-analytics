/*
===========================================================
EXPLORATORY DATA ANALYSIS
Project: CareBridge Health Network Analytics
Description:
These queries were used to inspect, validate and understand
the dataset before conducting business analysis.
===========================================================
*/

-- Preview the Patients table to verify that the data was imported correctly.
SELECT *
FROM patients_cleaned;

-- Count the total number of patients in the dataset.
SELECT COUNT(*) AS total_patients
FROM patients_cleaned;

-- Count the total number of doctors.
SELECT COUNT(*) AS total_doctors
FROM doctors_cleaned;

-- Count the total number of appointments.
SELECT COUNT(*) AS total_appointments
FROM appointments_cleaned;

-- Count the total number of treatments.
SELECT COUNT(*) AS total_treatments
FROM treatments_cleaned;

-- Count the total number of billing records.
SELECT COUNT(*) AS total_bills
FROM billing_cleaned;

-- Explore how doctors are distributed across hospital branches.
SELECT hospital_branch,
       COUNT(*) AS doctors
FROM doctors_cleaned
GROUP BY hospital_branch;

-- Calculate the average cost of treatments.
SELECT ROUND(AVG(cost),2) AS average_treatment_cost
FROM treatments_cleaned;

-- Identify the different appointment statuses recorded.
SELECT DISTINCT status
FROM appointments_cleaned;

-- Identify the different payment methods available.
SELECT DISTINCT payment_method
FROM billing_cleaned;

-- Identify the different payment statuses available.
SELECT DISTINCT payment_status
FROM billing_cleaned;