
-- Tables for TechGuru Inc. SQL Game
CREATE TABLE IF NOT EXISTS Employees (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2),
    HireDate DATE
);

INSERT INTO Employees (EmployeeID, Name, Department, Salary, HireDate) VALUES (1, 'Alice', 'Sales', 94018.77, '2020-09-05');
INSERT INTO Employees (EmployeeID, Name, Department, Salary, HireDate) VALUES (2, 'Bob', 'Finance', 93894.0, '2020-02-29');
INSERT INTO Employees (EmployeeID, Name, Department, Salary, HireDate) VALUES (3, 'Charlie', 'HR', 132868.87, '2021-10-11');
INSERT INTO Employees (EmployeeID, Name, Department, Salary, HireDate) VALUES (4, 'David', 'Engineering', 109759.6, '2021-07-18');
INSERT INTO Employees (EmployeeID, Name, Department, Salary, HireDate) VALUES (5, 'Eve', 'Marketing', 127166.1, '2020-11-17');
INSERT INTO Employees (EmployeeID, Name, Department, Salary, HireDate) VALUES (6, 'Frank', 'Engineering', 61222.83, '2020-02-19');
INSERT INTO Employees (EmployeeID, Name, Department, Salary, HireDate) VALUES (7, 'Grace', 'IT', 71409.22, '2021-03-03');
INSERT INTO Employees (EmployeeID, Name, Department, Salary, HireDate) VALUES (8, 'Hannah', 'Finance', 72027.08, '2020-08-16');
INSERT INTO Employees (EmployeeID, Name, Department, Salary, HireDate) VALUES (9, 'Ivy', 'Finance', 102090.76, '2020-06-01');
INSERT INTO Employees (EmployeeID, Name, Department, Salary, HireDate) VALUES (10, 'Jack', 'Engineering', 109188.16, '2020-10-28');
INSERT INTO Employees (EmployeeID, Name, Department, Salary, HireDate) VALUES (11, 'Kim', 'Sales', 88545.99, '2021-02-16');
INSERT INTO Employees (EmployeeID, Name, Department, Salary, HireDate) VALUES (12, 'Liam', 'HR', 133595.39, '2020-11-22');
INSERT INTO Employees (EmployeeID, Name, Department, Salary, HireDate) VALUES (13, 'Mia', 'HR', 89098.16, '2021-09-02');
INSERT INTO Employees (EmployeeID, Name, Department, Salary, HireDate) VALUES (14, 'Noah', 'Marketing', 64389.1, '2021-02-26');
INSERT INTO Employees (EmployeeID, Name, Department, Salary, HireDate) VALUES (15, 'Olivia', 'Marketing', 104214.31, '2021-06-09');
INSERT INTO Employees (EmployeeID, Name, Department, Salary, HireDate) VALUES (16, 'Parker', 'IT', 98971.17, '2021-04-20');
INSERT INTO Employees (EmployeeID, Name, Department, Salary, HireDate) VALUES (17, 'Quinn', 'IT', 73589.98, '2021-11-18');
INSERT INTO Employees (EmployeeID, Name, Department, Salary, HireDate) VALUES (18, 'Ryan', 'Engineering', 111949.92, '2020-06-26');
INSERT INTO Employees (EmployeeID, Name, Department, Salary, HireDate) VALUES (19, 'Sophia', 'HR', 95371.14, '2021-10-26');
INSERT INTO Employees (EmployeeID, Name, Department, Salary, HireDate) VALUES (20, 'Tyler', 'Engineering', 96382.01, '2021-05-30');

CREATE TABLE IF NOT EXISTS Projects (
    ProjectID INT AUTO_INCREMENT PRIMARY KEY,
    ProjectName VARCHAR(100),
    Department VARCHAR(50),
    Budget DECIMAL(10, 2),
    StartDate DATE,
    EndDate DATE
);

INSERT INTO Projects (ProjectID, ProjectName, Department, Budget, StartDate, EndDate) VALUES (1, 'Project Alpha', 'Marketing', 43327.73, '2021-05-14', '2021-03-13');
INSERT INTO Projects (ProjectID, ProjectName, Department, Budget, StartDate, EndDate) VALUES (2, 'Project Beta', 'Marketing', 18069.99, '2021-10-10', '2021-03-20');
INSERT INTO Projects (ProjectID, ProjectName, Department, Budget, StartDate, EndDate) VALUES (3, 'Project Gamma', 'Marketing', 35232.26, '2021-12-10', '2021-03-28');
INSERT INTO Projects (ProjectID, ProjectName, Department, Budget, StartDate, EndDate) VALUES (4, 'Project Delta', 'HR', 23677.83, '2021-12-18', '2021-03-27');
INSERT INTO Projects (ProjectID, ProjectName, Department, Budget, StartDate, EndDate) VALUES (5, 'Project Epsilon', 'Engineering', 25041.04, '2021-01-02', '2021-05-05');
INSERT INTO Projects (ProjectID, ProjectName, Department, Budget, StartDate, EndDate) VALUES (6, 'Project Zeta', 'Sales', 41544.01, '2021-11-27', '2021-07-07');
INSERT INTO Projects (ProjectID, ProjectName, Department, Budget, StartDate, EndDate) VALUES (7, 'Project Eta', 'Finance', 31491.19, '2021-01-21', '2021-03-30');
INSERT INTO Projects (ProjectID, ProjectName, Department, Budget, StartDate, EndDate) VALUES (8, 'Project Theta', 'HR', 38259.35, '2021-06-07', '2021-05-29');
INSERT INTO Projects (ProjectID, ProjectName, Department, Budget, StartDate, EndDate) VALUES (9, 'Project Iota', 'IT', 22447.48, '2021-03-28', '2021-07-18');
INSERT INTO Projects (ProjectID, ProjectName, Department, Budget, StartDate, EndDate) VALUES (10, 'Project Kappa', 'Marketing', 45188.72, '2021-12-11', '2021-07-13');
INSERT INTO Projects (ProjectID, ProjectName, Department, Budget, StartDate, EndDate) VALUES (11, 'Project Lambda', 'HR', 41372.76, '2021-07-21', '2021-03-17');
INSERT INTO Projects (ProjectID, ProjectName, Department, Budget, StartDate, EndDate) VALUES (12, 'Project Mu', 'Engineering', 16750.23, '2021-03-03', '2021-03-25');
INSERT INTO Projects (ProjectID, ProjectName, Department, Budget, StartDate, EndDate) VALUES (13, 'Project Nu', 'Engineering', 14623.59, '2021-07-25', '2021-06-07');
INSERT INTO Projects (ProjectID, ProjectName, Department, Budget, StartDate, EndDate) VALUES (14, 'Project Xi', 'Marketing', 32847.02, '2021-09-13', '2021-04-07');
INSERT INTO Projects (ProjectID, ProjectName, Department, Budget, StartDate, EndDate) VALUES (15, 'Project Omicron', 'Marketing', 15269.37, '2021-10-16', '2021-03-26');

CREATE TABLE IF NOT EXISTS EmployeeProjects (
    EmployeeID INT,
    ProjectID INT,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);

INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (19, 8);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (18, 2);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (6, 12);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (3, 4);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (8, 10);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (8, 2);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (17, 6);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (14, 7);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (17, 8);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (3, 5);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (12, 4);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (2, 11);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (2, 8);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (11, 15);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (15, 4);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (14, 6);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (7, 8);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (17, 1);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (1, 13);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (5, 10);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (2, 15);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (11, 11);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (15, 13);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (3, 10);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (10, 10);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (13, 14);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (6, 6);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (10, 6);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (13, 4);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (3, 5);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (1, 14);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (7, 5);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (6, 6);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (9, 1);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (20, 9);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (3, 8);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (19, 10);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (14, 12);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (1, 4);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES (20, 7);
