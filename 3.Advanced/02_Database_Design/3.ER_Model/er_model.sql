-- 데이터베이스 초기화
DROP DATABASE IF EXISTS HospitalManagement;
CREATE DATABASE HospitalManagement;
USE HospitalManagement;

-- 환자 테이블 생성
CREATE TABLE Patients (
    PatientID INT AUTO_INCREMENT PRIMARY KEY,
    PatientName VARCHAR(100),
    DateOfBirth DATE
);

-- 의사 테이블 생성
CREATE TABLE Doctors (
    DoctorID INT AUTO_INCREMENT PRIMARY KEY,
    DoctorName VARCHAR(100),
    Specialization VARCHAR(100)
);

-- 진료 기록 테이블 생성
CREATE TABLE Appointments (
    AppointmentID INT AUTO_INCREMENT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    AppointmentDate DATE,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

-- 임시 데이터 삽입
INSERT INTO Patients (PatientName, DateOfBirth)
VALUES ('John Doe', '1980-01-01'), ('Jane Smith', '1990-02-02');

INSERT INTO Doctors (DoctorName, Specialization)
VALUES ('Dr. Brown', 'Cardiology'), ('Dr. Green', 'Neurology');

INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate)
VALUES (1, 1, '2023-01-10'), (2, 2, '2023-01-15');

-- 결과 확인
SELECT * FROM Patients;
SELECT * FROM Doctors;
SELECT * FROM Appointments;

