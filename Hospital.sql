/*
	Student Name: Priyam
	Date: 10/28/2022
	Assignment: 1
	Description of Assignment: Hospital Database
*/


select *
from Claim
select *
from Patient
--SCREEN 2
INSERT INTO Department(Department_Name,Office_Number,Telephone)
VALUES 
		('Urology',789,'+1-785-859-8579');


--SCREEN 3
INSERT INTO Doctor(Doctor_Number,Doctor_First_Name, Doctor_Last_Name,Telephone,Department_Number,Backup_Doctor_Number)
VALUES 
		(1111,'Dr. Aryan','Sharma','+1-874-785-8748',111,1012)


--SCREEN 4
INSERT INTO Nurse(Nurse_First_Name, Nurse_Last_Namr,Certification,Year_Hired,Department_Number)
VALUES 
		('Anubhav','Singh','Certified Ambulatory Perianesthesia NursE',1998,101)

--SCREEN 5
select *
from claim
	select c.claim_number, c.company_name, c.diagnosis, c.amount
from patient as p join claim as c on c.Patient_Number = p.Patient_Number
where p.Patient_First_Name = 'Rajni';
--DELETE
delete from claim
where claim_number = 5462;


select patient_number
from patient
where Patient_First_Name = 'Puneet';
-- UPDATE
update Claim
set Amount = 45000
where Patient_Number in (select patient_number
from patient
where Patient_First_Name = 'Puneet');

