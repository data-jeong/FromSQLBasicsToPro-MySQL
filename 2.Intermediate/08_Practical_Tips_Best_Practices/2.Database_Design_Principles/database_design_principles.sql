-- 데이터베이스 설계 원칙 예제

-- 예제 1: 정규화를 통한 데이터 중복 최소화
-- 나쁜 예: 직원과 부서 정보를 하나의 테이블에 저장
CREATE TABLE EmployeesBad (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    DepartmentName VARCHAR(100),
    DepartmentLocation VARCHAR(100)
);

-- 좋은 예: 직원과 부서 정보를 별도의 테이블로 분리
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100),
    DepartmentLocation VARCHAR(100)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- 예제 2: 데이터 무결성 및 일관성 유지
-- 외래 키 제약조건을 사용하여 무결성 보장
ALTER TABLE Employees
ADD CONSTRAINT FK_Department
FOREIGN KEY (DepartmentID)
REFERENCES Departments(DepartmentID);

-- 예제 3: 확장 가능하고 유연한 설계 고려
-- 사용자 테이블에 확장 가능한 속성 추가
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Username VARCHAR(100),
    Email VARCHAR(100),
    CreatedAt DATETIME
);

-- 확장을 위해 프로필 테이블 생성
CREATE TABLE UserProfiles (
    UserID INT,
    ProfileKey VARCHAR(100),
    ProfileValue TEXT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

