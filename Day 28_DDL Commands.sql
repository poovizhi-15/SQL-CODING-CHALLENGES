CREATE DATABASE CityHospital;
USE CityHospital;
CREATE TABLE Patients(
PatientID INT,
PatientName VARCHAR(25),
Age INT,
Gender ENUM('M','F'),
AdmissionDate DATE);
ALTER TABLE Patients ADD DoctorAssigned VARCHAR(50);
ALTER TABLE Patients MODIFY PatientName VARCHAR(100);
RENAME TABLE Patients to Patient_Info;
INSERT INTO Patient_Info
(PatientID, PatientName, Age, Gender, AdmissionDate)
VALUES
(1, 'Poovizhi', 33, 'f', '2025-01-15'),
(2, 'Mathan', 32, 'M', '2025-04-20'),
(3, 'Ramya', 28, 'F', '2025-08-06'),
(4, 'Ravi', 45, 'M', '2025-07-12'),
(5, 'Tharani', 52, 'F', '2025-02-20');
SELECT * FROM Patient_Info;
TRUNCATE Table Patient_Info;
DROP TABLE Patient_Info;





