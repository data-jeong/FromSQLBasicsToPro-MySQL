-- 학교 시스템 데이터베이스 생성 및 사용
CREATE DATABASE IF NOT EXISTS SchoolSystem;
USE SchoolSystem;

-- Students 테이블 생성
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    MajorID INT,
    MajorName VARCHAR(100),
    ProfessorID INT,
    ProfessorName VARCHAR(100)
);

-- 임시 데이터 삽입
INSERT INTO Students (StudentID, StudentName, MajorID, MajorName, ProfessorID, ProfessorName)
VALUES 
(1, 'John Doe', 101, 'Computer Science', 501, 'Dr. Smith'),
(2, 'Jane Smith', 102, 'Mathematics', 502, 'Dr. Johnson');

-- 1NF 확인
-- 이미 1NF를 만족함 (원자적인 컬럼, 키로 구분된 행)

-- 2NF로 전환
CREATE TABLE Majors (
    MajorID INT PRIMARY KEY,
    MajorName VARCHAR(100)
);

CREATE TABLE Professors (
    ProfessorID INT PRIMARY KEY,
    ProfessorName VARCHAR(100)
);

INSERT INTO Majors (MajorID, MajorName)
VALUES (101, 'Computer Science'), (102, 'Mathematics');

INSERT INTO Professors (ProfessorID, ProfessorName)
VALUES (501, 'Dr. Smith'), (502, 'Dr. Johnson');

-- Students 테이블에서 MajorName과 ProfessorName 제거
ALTER TABLE Students
DROP COLUMN MajorName,
DROP COLUMN ProfessorName;

-- 3NF 확인
-- Students 테이블은 이제 외래키로 MajorID와 ProfessorID만 가지며, 
-- 각각 Majors와 Professors 테이블에 종속됨

