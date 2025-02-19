--CREATE DATABASE DemoApplication;

--alter TABLE employee_data
--alter column
--designation VARCHAR(50)

--CREATE TABLE Employee_Data
--(Id int, Employee_Name varchar(50), Department varchar(50), Designation varchar(50));

--drop table employee_data;



--SELECT *FROM employee_data;


--CREATE TABLE Employee_Data
--(Id int, Employee_Name varchar(50), Department varchar(50), Designation varchar(50));

INSERT INTO Employee_Data
VALUES( 'Raghav', 'Automation', 'Intern'),
( 'Divyanshu', 'Automation', 'Intern'),
( 'Arnav', 'Mechanical', 'Intern'),
( 'Ganesh', 'Automation', 'Developer'),
( 'Giresh', 'Automation', 'Developer');


SELECT *FROM Employee_Data;

CREATE PROCEDURE SelectAllEmployees
@Department varchar(50)
AS
SELECT * FROM Employee_Data WHERE 
Department = @Department;

EXEC SelectAllEmployees @department = 'Automation';


CREATE PROCEDURE SelectAllEmployees2 
@Designation varchar(50)
AS
SELECT * FROM Employee_Data WHERE
Designation = @Designation;

EXEC SelectAllEmployees2 @Designation = 'Developer';

INSERT INTO Employee_Data
VALUES( 'Rahul', 'Automation', 'Senior Manager'),
('Manmeet Singh', 'Automation', 'HOD');


CREATE PROCEDURE SelectAllEmployees3 
@Employee_Name varchar(50)
AS
SELECT * FROM Employee_Data WHERE
Employee_Name = @Employee_Name;

EXEC SelectAllEmployees3 @Employee_Name = 'Raghav';


CREATE PROCEDURE SelectAllEmployees5
@Id INT
AS
SELECT * FROM Employee_Data WHERE
Id = @Id;

EXEC SelectAllEmployees5 @Id = '3';



CREATE PROCEDURE SelectAllEmployees6
AS
SELECT * FROM Employee_Data ;

EXEC SelectAllEmployees6;





CREATE PROCEDURE CreateButton  
    @Employee_Name NVARCHAR(50),  
    @Department NVARCHAR(50),  
    @Designation NVARCHAR(50)  
AS  
BEGIN   

    INSERT INTO Employee_Data   
    VALUES (@Employee_Name, @Department, @Designation);  
END;


EXEC CreateButton 
@Employee_Name = 'Aakash',
@Department = 'Mechanical', 
@Designation = 'Design Engineer';


SELECT * FROM Employee_Data;







EXEC CreateButton 
@Employee_Name = 'Aakash',
@Department = 'Mechanical', 
@Designation = 'Design Engineer';


SELECT * FROM Employee_Data;


CREATE PROCEDURE DeleteEmployee  
    @Employee_Name VARCHAR(50)  
AS  
BEGIN 
    DELETE FROM Employee_Data  
    WHERE Employee_Name = @Employee_Name;
END;


EXEC DeleteEmployee 
@Employee_Name = 'dfdfgdf';




CREATE PROCEDURE UpdateEmployee  
    @Employee_Name NVARCHAR(50),  
    @New_Department NVARCHAR(50),  
    @New_Designation NVARCHAR(50)  
AS  
BEGIN  
    SET NOCOUNT ON;  

    UPDATE Employee_Data  
    SET Department = @New_Department,  
        Designation = @New_Designation  
    WHERE Employee_Name = @Employee_Name;
END;


EXEC UpdateEmployee 
@Employee_Name = 'Raghav',
@New_Department = 'mechanical',
@New_Designation = 'intern';

select * from Employee_Data;