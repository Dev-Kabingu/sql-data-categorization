select count(patient_id) AS total_patients FROM admissions ;
select AVG(DATEDIFF(discharge_date,admission_date)) AS length_of_stay FROM admissions;
select count(patient_id) AS total_admissions from admissions GROUP BY primary_diagnosis;
select service,avg(discharge_date-admission_date) AS length_of_stay from admissions GROUP BY service;
select discharge_disposition,count(discharge_id) AS number_of_discharge FROM discharges GROUP BY discharge_disposition;
select service ,count(admission_id)AS total_admissions FROM admissions  GROUP BY service HAVING count(admission_id)>5 ;
select primary_diagnosis,avg(discharge_date-admission_date) AS length_of_stay FROM admissions where primary_diagnosis='stroke';
SELECT YEAR(admission_date) AS years,Month(admission_date) AS months,COUNT(*) AS total_admissions FROM admissions
GROUP BY YEAR(admission_date),MONTH(admission_date) ORDER BY years,months;
SELECT primary_diagnosis,MAX(DATEDIFF(discharge_date, admission_date)) AS max_length_of_stay FROM admissions GROUP BY primary_diagnosis ORDER BY primary_diagnosis;
SELECT AVG(DATEDIFF(discharge_date, admission_date)) AS average_length_of_stay FROM admissions;