create table patients(
	patient_id int primary key,
	patient_name VARCHAR,
	age INT,
	Gender VARCHAR,
	Department VARCHAR,
	Admission_date DATE,
	Discharge_date DATE,
	Bill_amount DECIMAL
)

insert into patients(patient_id,patient_name,age,gender,
	Department,Admission_date,Discharge_date,Bill_amount)
values('001','mr.samy',32,'female','gynic','12-12-2024','25-12-2024',2300.00)
select * from patients	
insert into patients(patient_id,patient_name,age,gender,
	Department,Admission_date,Discharge_date,Bill_amount)	
values
('002', 'Alice Johnson', 29, 'Female', 'Cardiology', '2024-01-15', '2024-01-20', 7500.00),
('003', 'Bob Smith', 35, 'Male', 'Neurology', '2024-02-01', '2024-02-10', 8500.00),
('004', 'Charlie Brown', 40, 'Male', 'Orthopedics', '2024-03-10', '2024-03-20', 6700.00),
('005', 'Diana Prince', 45, 'Female', 'Cardiology', '2024-04-01', '2024-04-15', 9200.00),
('006', 'Ethan Hunt', 50, 'Male', 'Neurology', '2024-05-05', '2024-05-15', 10500.00);
select * from patients

INSERT INTO Patients (patient_id, patient_name, age, gender, department, admission_date, discharge_date, bill_amount)
VALUES
(007, 'Alice Johnson', 29, 'Female', 'Cardiology', '2024-01-15', '2024-01-20', 7500.00),
(008, 'Bob Smith', 35, 'Male', 'Neurology', '2024-02-01', '2024-02-10', 8500.00),
(009, 'Charlie Brown', 40, 'Male', 'Orthopedics', '2024-03-10', '2024-03-20', 6700.00),
(0010, 'Diana Prince', 45, 'Female', 'Cardiology', '2024-04-01', '2024-04-15', 9200.00),
(0011,'Ethan Hunt', 50, 'Male', 'Neurology', '2024-05-05', '2024-05-15', 10500.00),
(0012, 'Fiona Green', 55, 'Female', 'Gastroenterology', '2024-06-01', '2024-06-10', 6000.00),
(0013, 'George Miller', 60, 'Male', 'Cardiology', '2024-07-10', '2024-07-20', 8000.00),
(0014, 'Hannah Lee', 33, 'Female', 'Orthopedics', '2024-08-01', '2024-08-15', 7200.00),
(0015, 'Isaac Newton', 67, 'Male', 'Neurology', '2024-09-05', '2024-09-12', 9500.00),
(0016, 'Jessica Jones', 28, 'Female', 'Cardiology', '2024-10-01', '2024-10-07', 5000.00),
(0017, 'Kevin Smith', 42, 'Male', 'Gastroenterology', '2024-11-01', '2024-11-10', 6900.00),
(0019, 'Laura Brown', 38, 'Female', 'Orthopedics', '2024-12-01', '2024-12-12', 8300.00),
(0020, 'Michael Johnson', 52, 'Male', 'Neurology', '2024-01-05', '2024-01-15', 11000.00),
(0021, 'Nina Patel', 46, 'Female', 'Cardiology', '2024-02-20', '2024-03-01', 7400.00),
(0022, 'Oliver Queen', 39, 'Male', 'Orthopedics', '2024-03-25', '2024-04-05', 6800.00),
(0023, 'Pamela Anderson', 48, 'Female', 'Gastroenterology', '2024-04-10', '2024-04-20', 6200.00),
(0024, 'Quentin Tarantino', 53, 'Male', 'Cardiology', '2024-05-15', '2024-05-25', 9100.00),
(0025, 'Rachel Green', 31, 'Female', 'Neurology', '2024-06-01', '2024-06-10', 8900.00),
(0026, 'Steve Rogers', 44, 'Male', 'Orthopedics', '2024-07-05', '2024-07-15', 7600.00),
(0027, 'Tina Turner', 59, 'Female', 'Gastroenterology', '2024-08-01', '2024-08-10', 6700.00);
select * from patients
--count of patients in each department--
	select department,COUNT(*)AS numpatients
	FROM patients
	GROUP BY department

--avg bill amount in each dept--
	select department,AVG(bill_amount)as avgbill
	FROM patients
	GROUP BY department

--	Total Bill Amount for Patients Aged Over 60--
	select sum(bill_amount)as totalbill
	from patients
	where age>30
	group by age

select * from patients

--Departments with More Than 100 Patients
select department as total_patients
from patients
group by department
having count(*)>60

--Maximum Bill Amount in Each Department--
select department,max(bill_amount)as maxbill
from patients
group by department





group by department




