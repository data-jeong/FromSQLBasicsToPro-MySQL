-- 데이터베이스 초기화
DROP DATABASE IF EXISTS SchoolSystem;
CREATE DATABASE SchoolSystem;
USE SchoolSystem;

-- 정규화된 테이블 생성
CREATE TABLE Majors (
    MajorID INT PRIMARY KEY,
    MajorName VARCHAR(100)
);

CREATE TABLE Professors (
    ProfessorID INT PRIMARY KEY,
    ProfessorName VARCHAR(100)
);

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    MajorID INT,
    ProfessorID INT,
    FOREIGN KEY (MajorID) REFERENCES Majors(MajorID),
    FOREIGN KEY (ProfessorID) REFERENCES Professors(ProfessorID)
);

-- 데이터 삽입
INSERT INTO Majors (MajorID, MajorName)
VALUES (101, 'Computer Science'), (102, 'Mathematics');

INSERT INTO Professors (ProfessorID, ProfessorName)
VALUES (501, 'Dr. Smith'), (502, 'Dr. Johnson');

INSERT INTO Students (StudentID, StudentName, MajorID, ProfessorID)
VALUES 
(1, 'John Doe', 101, 501),
(2, 'Jane Smith', 102, 502);

-- 비정규화 과정
-- Students 테이블에 MajorName과 ProfessorName 추가
ALTER TABLE Students
ADD COLUMN MajorName VARCHAR(100),
ADD COLUMN ProfessorName VARCHAR(100);

-- 데이터 통합
UPDATE Students S
JOIN Majors M ON S.MajorID = M.MajorID
JOIN Professors P ON S.ProfessorID = P.ProfessorID
SET S.MajorName = M.MajorName,
    S.ProfessorName = P.ProfessorName;

-- 필요에 따라 Majors와 Professors 테이블 삭제
-- DROP TABLE Majors, Professors;

-- 결과 확인
SELECT * FROM Students;

