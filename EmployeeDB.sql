DROP TABLE IF EXISTS EmployeeTitle;
DROP TABLE IF EXISTS EmployeeSalary;
DROP TABLE IF EXISTS EmployeeDepartment;
DROP TABLE IF EXISTS ManagerDepartment;
DROP TABLE IF EXISTS Departments;
DROP TABLE IF EXISTS Employees;


CREATE TABLE Departments(
	DeptNumber VARCHAR(5) UNIQUE,
	DeptName VARCHAR(20),
	PRIMARY KEY (DeptNumber, DeptName)
);

CREATE TABLE Employees(
	EmployeeNumber INT UNIQUE,
	BirthDate DATE,
	FirstName VARCHAR(15),
	LastName VARCHAR(15),
	Gender VARCHAR(1),
	HireDate DATE,
	PRIMARY KEY (EmployeeNumber, FirstName, LastName)
);

CREATE TABLE EmployeeDepartment(
	EmployeeNumber INT REFERENCES Employees(EmployeeNumber),
	DeptNumber VARCHAR(5) REFERENCES Departments(DeptNumber),
	FromDate DATE,
	ToDate DATE,
	PRIMARY KEY (EmployeeNumber, DeptNumber)
);

CREATE TABLE ManagerDepartment(
	EmployeeNumber INT REFERENCES Employees(EmployeeNumber),
	DeptNumber VARCHAR(5) REFERENCES Departments(DeptNumber),
	FromDate DATE,
	ToDate DATE,
	PRIMARY KEY (EmployeeNumber, DeptNumber)
);

CREATE TABLE EmployeeTitle(
	EmployeeNumber INT REFERENCES Employees(EmployeeNumber),
	Title VARCHAR,
	FromDate DATE,
	ToDate DATE,
	PRIMARY KEY (EmployeeNumber, Title, FromDate)
);

CREATE TABLE EmployeeSalary(
	EmployeeNumber INT REFERENCES Employees(EmployeeNumber),
	Salary INT,
	FromDate DATE,
	ToDate DATE,
	PRIMARY KEY (EmployeeNumber, Salary)
);