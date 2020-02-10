SELECT Employees.EmployeeNumber, 
LastName, 
FirstName,
Gender,
salary
FROM employees
INNER JOIN EmployeeSalary ON EmployeeSalary.EmployeeNumber = employees.EmployeeNumber;

SELECT *
FROM Employees
WHERE HireDate >='1/1/1986'AND HireDate <'1/1/1987';

SELECT departments.DeptNumber, 
DeptName, 
Employees.EmployeeNumber, 
LastName, 
FirstName, 
FromDate, 
ToDate
FROM employees
INNER JOIN ManagerDepartment ON ManagerDepartment.EmployeeNumber = Employees.EmployeeNumber
INNER JOIN departments ON departments.DeptNumber = ManagerDepartment.DeptNumber
WHERE ToDate ='1/1/9999';

SELECT Employees.EmployeeNumber,
LastName, 
FirstName, 
DeptName
FROM Employees
INNER JOIN EmployeeDepartment ON EmployeeDepartment.EmployeeNumber = Employees.EmployeeNumber
INNER JOIN departments ON departments.DeptNumber = EmployeeDepartment.DeptNumber;

SELECT *
FROM Employees
WHERE FirstName ='Hercules'
AND LastName LIKE 'B%';

SELECT Employees.EmployeeNumber, 
LastName, 
FirstName,
DeptName
FROM Employees
INNER JOIN EmployeeDepartment ON EmployeeDepartment.EmployeeNumber = Employees.EmployeeNumber
INNER JOIN departments ON departments.DeptNumber = EmployeeDepartment.DeptNumber
WHERE DeptName ='Sales';

SELECT Employees.EmployeeNumber, 
LastName, 
FirstName,
DeptName
FROM Employees
INNER JOIN EmployeeDepartment ON EmployeeDepartment.EmployeeNumber = Employees.EmployeeNumber
INNER JOIN departments ON departments.DeptNumber = EmployeeDepartment.DeptNumber
WHERE DeptName ='Sales' OR DeptName = 'Development';

SELECT LastName,
Count(LastName) AS "Name Frequency"
FROM Employees
GROUP BY LastName
ORDER BY "Name Frequency" DESC;