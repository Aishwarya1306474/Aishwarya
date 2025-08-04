Create database Hospital_mgt;
Use Hospital_mgt;
CREATE TABLE Patients (
    PatientID VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    Phone VARCHAR(20),
    Email VARCHAR(100),
    Department VARCHAR(50),
    Doctor VARCHAR(50)
);

INSERT INTO Patients VALUES ("PAT1000", "Joyce Price", 2, "Male", "(110) 624-2801", "brandon34@hotmail.com", "Pediatrics", "Dr. L. Khan");
INSERT INTO Patients VALUES ("PAT1001", "Carol Rivera", 53, "Male", "(370) 035-4881", "mkey@yahoo.com", "Cardiology", "Dr. S. Kapoor");
INSERT INTO Patients VALUES ("PAT1002", "Sonya Smith", 24, "Male", "(612) 122-8749", "brownjohnathan@yahoo.com", "Neurology", "Dr. R. Iyer");
INSERT INTO Patients VALUES ("PAT1003", "Brandon Pratt", 69, "Female", "(328) 952-0608", "hughesamy@hotmail.com", "Pediatrics", "Dr. M. Nair");
INSERT INTO Patients VALUES ("PAT1004", "Michael Rodriguez", 82, "Male", "(633) 009-0666", "yvonnecarpenter@lambert.com", "Pediatrics", "Dr. L. Khan");
INSERT INTO Patients VALUES ("PAT1005", "Madison Huang", 58, "Male", "(794) 021-6209", "brianwalter@gmail.com", "Cardiology", "Dr. A. Mehta");
INSERT INTO Patients VALUES ("PAT1006", "Joanna Peters", 81, "Female", "(718) 725-0642", "millssara@allen-reeves.info", "Cardiology", "Dr. A. Mehta");
INSERT INTO Patients VALUES ("PAT1007", "Brittany Taylor", 49, "Male", "(313) 180-5076", "garysingh@wiggins-ruiz.org", "Neurology", "Dr. T. Singh");
INSERT INTO Patients VALUES ("PAT1008", "Larry Graham", 7, "Female", "(982) 178-0493", "melissa05@gmail.com", "Pediatrics", "Dr. L. Khan");
INSERT INTO Patients VALUES ("PAT1009", "Valerie Walker", 8, "Male", "(595) 416-0600", "cgay@robbins.info", "Neurology", "Dr. R. Iyer");
INSERT INTO Patients VALUES ("PAT1010", "Daniel Young", 26, "Female", "(926) 366-6208", "aevans@manning.com", "Dermatology", "Dr. B. Patel");
INSERT INTO Patients VALUES ("PAT1011", "Willie Dodson", 23, "Male", "(155) 226-5443", "ryan02@gmail.com", "Cardiology", "Dr. S. Kapoor");
INSERT INTO Patients VALUES ("PAT1012", "Katrina Conrad", 18, "Male", "(428) 136-0699", "mbush@brown.org", "Dermatology", "Dr. G. Jain");
INSERT INTO Patients VALUES ("PAT1013", "Michael Bass", 50, "Male", "(873) 053-2060", "anthonysolomon@harper.com", "Cardiology", "Dr. A. Mehta");
INSERT INTO Patients VALUES ("PAT1014", "Paul Burgess", 19, "Female", "(801) 853-8626", "brenda16@yahoo.com", "Cardiology", "Dr. S. Kapoor");
INSERT INTO Patients VALUES ("PAT1015", "Christy Henderson", 15, "Female", "(702) 132-3226", "paulahamilton@hunt-myers.com", "Cardiology", "Dr. A. Mehta");
INSERT INTO Patients VALUES ("PAT1016", "Matthew Mccoy", 39, "Male", "(139) 841-6572", "duncanmelanie@hotmail.com", "Dermatology", "Dr. G. Jain");
INSERT INTO Patients VALUES ("PAT1017", "Sarah Brown", 67, "Male", "(196) 488-9671", "millerjanet@hotmail.com", "Dermatology", "Dr. G. Jain");
INSERT INTO Patients VALUES ("PAT1018", "Patrick Wright", 52, "Female", "(322) 572-9022", "derekpena@yahoo.com", "Dermatology", "Dr. B. Patel");
INSERT INTO Patients VALUES ("PAT1019", "Matthew Perez", 1, "Female", "(936) 142-8505", "yfoley@yahoo.com", "Neurology", "Dr. T. Singh");


SELECT Department, COUNT(*) AS Patient_Count
FROM Patients
GROUP BY Department;

SELECT Doctor, COUNT(*) AS Patient_Count
FROM Patients
GROUP BY Doctor
ORDER BY Patient_Count DESC
LIMIT 1;


SELECT Name, Age
FROM Patients
WHERE Gender = 'Female' AND Age > 50;

SELECT AVG(Age) AS Avg_Age
FROM Patients
WHERE Department = 'Neurology';

SELECT Name, Age, Department, Doctor
FROM Patients
ORDER BY Age ASC
LIMIT 1;

-- and

SELECT Name, Age, Department, Doctor
FROM Patients
ORDER BY Age DESC
LIMIT 1;


select * from patients; -- table a


drop table Doctors_Table; 
    
    
   create table Doctors(
    Doctor VARCHAR(20) PRIMARY KEY,
    department varchar(20),
    Years_Experience int,
    Contact_Number int);
    
    INSERT INTO Doctors VALUES("Dr.L.Khan", "Pediatrics", 15, 555-111-1000),
("Dr.S.Kapoor", "Cardiology", 20, 555-222-2000),
("Dr.R.Iyer", "Neurology", 12, 555-333-3000),
("Dr.A.Mehta", "Cardiology", 18, 555-444-4000),
("Dr. T. Singh", "Neurology", 22, 555-555-5000),
("Dr. G. Jain", "Dermatology", 16, 555-666-6000),
("Dr. B. Patel", "Dermatology", 10, 555-777-7000);


select * from doctors;  -- table b

  SELECT 
    p.`PatientID`, p.`Name`, p.`Gender`, p.`Doctor`, p.`Department`,
    d.`Department`,d.`Years_Experience`,d.`Contact_Number`
FROM  patients p INNER JOIN Doctors d ON p.`Doctor` = d.`Doctor`;