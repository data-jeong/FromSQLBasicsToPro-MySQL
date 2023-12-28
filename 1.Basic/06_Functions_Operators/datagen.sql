-- Table for String Functions
CREATE TABLE IF NOT EXISTS Employees (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);

INSERT INTO Employees (Name, Department) VALUES ('Bob', 'Sales');
INSERT INTO Employees (Name, Department) VALUES ('Hannah', 'Engineering');
INSERT INTO Employees (Name, Department) VALUES ('Bob', 'Sales');
INSERT INTO Employees (Name, Department) VALUES ('Bob', 'IT');
INSERT INTO Employees (Name, Department) VALUES ('Bob', 'Engineering');
INSERT INTO Employees (Name, Department) VALUES ('Alice', 'Marketing');
INSERT INTO Employees (Name, Department) VALUES ('Bob', 'Engineering');
INSERT INTO Employees (Name, Department) VALUES ('Ivy', 'IT');
INSERT INTO Employees (Name, Department) VALUES ('Grace', 'Sales');
INSERT INTO Employees (Name, Department) VALUES ('Bob', 'Marketing');

-- Table for Numeric Functions
INSERT INTO Employees (Name, Department, Salary) VALUES ('Bob', 'Sales', 59474.45);
INSERT INTO Employees (Name, Department, Salary) VALUES ('Hannah', 'Engineering', 114481.03);
INSERT INTO Employees (Name, Department, Salary) VALUES ('Bob', 'Sales', 63035.97);
INSERT INTO Employees (Name, Department, Salary) VALUES ('Bob', 'IT', 109346.65);
INSERT INTO Employees (Name, Department, Salary) VALUES ('Bob', 'Engineering', 114054.36);
INSERT INTO Employees (Name, Department, Salary) VALUES ('Alice', 'Marketing', 63242.79);
INSERT INTO Employees (Name, Department, Salary) VALUES ('Bob', 'Engineering', 106609.88);
INSERT INTO Employees (Name, Department, Salary) VALUES ('Ivy', 'IT', 119098.82);
INSERT INTO Employees (Name, Department, Salary) VALUES ('Grace', 'Sales', 68331.14);
INSERT INTO Employees (Name, Department, Salary) VALUES ('Bob', 'Marketing', 69934.08);
