******* TO WORK IN A PARTICULAR DATABASE (e.g MODULE1) ********
USE MODULE1

*********** TO CREATE TABLE **************

CREATE TABLE Planets(
			PlanetID INT NOT NULL PRIMARY KEY,
			PlanetName varchar(15) NULL,
			Diameter   varchar(50) NULL,
			Orbit		varchar(20) NULL,
			DayDuration	varchar(20) NULL);

******* TO POPULATE TABEL WITH DATA *********

INSERT INTO Planets( PlanetID, PlanetName, Diameter, Orbit, DayDuration)
			VALUES ( 100,'Mercury','4,878 Km','88 Earth days','58.6 Earth days'),
					(200,'Venus','12,104 Km','225 Earth days','241 Earth days'),
					(300,'Earth','12,760 Km','365.24 days','23 hours, 56 minutes'),
					(400,'Mars','6,787 Km','687 days','24 hours, 37 minutes'),
					(500,'Jupiter','139,822 Km','11.9 Earth years','9.8 Earth hours'),
					(600,'Saturn','120,500 Km','29.5 Earth years','10.5 Earth hours'),
					(700,'Uranus','51,120 Km','84 Earth years','18 Earth hours'),
					(800,'Neptune','49,530 Km','165 Earth years','19 Earth hours'),
					(900,'Pluto','2,301 Km','248 Earth years','6.4 Earth days');


CREATE TABLE Employee(
			EmployeeID INT NOT NULL PRIMARY KEY,
			FirstName varchar(15),
			LastName varchar(15),
			Position varchar(25),
			Department varchar(20));
		

INSERT INTO Employee( EmployeeID, FirstName, lastName, Position, Department)
			VALUES ( 3010,'Robert','Ficek','Jr. Project Mngr','Project Mgmt'),
					(3005,'Jeremy','Khoo','Sr. Project Mngr','Project Mgmt'),
					(3001,'Greg','Pulum','Chief Executive','Executive Mgmt'),
					(3002,'Ryan','McLeod','Sr. Project Mngr','Executive Mgmt'),
					(3003,'John','Pod','Sales Mngr','Executive Mgmt'),
					(3006,'Nalini','Roy','Design Mngr','Design Office'),
					(3009,'Arhad','Khan','Project Mngr','Project Mgmt'),
					(3015,'Nathan','Smith','Draftsman','Design Office'),
					(3020,'Chris','McLean','Sr. Supervisor','Fabrication'),
					(3021,'David','Garaham','Sr. Fabricator','Fabrication'),
					(3025,'Mike','Mohan','Shipper','Shipping'),
					(3027,'John','Wright','Driver','Shipping'),
					(3028,'Sarah','Flores','Receptionist','Admin'),
					(3029,'Shelby','Troy','Accountant','Admin'),
					(3030,'Judy','Nelson','Sales officer','Admin');

********* TO ALTER A TABLE (e.g adding a new Column, named SALARY and datatype Money ***********

ALTER TABLE Employee
ADD SALARY Money;

******** TO SHOW THE CREATED TABLE WITH ALL ROWS AND COLUMNS *********

Select * from Employee;

********* UPDATING records in the table ******

UPDATE Employee
SET SALARY = 10000 WHERE EmployeeID = 3001;

******** CREATING A VIEW ***********

CREATE VIEW EmployeeInfo As
SELECT EmployeeID, FirstName, LastName, Position
FROM Employee;

******** CREATING A VIEW WITH CONDITION ***********

CREATE VIEW EmployeeInfo As
SELECT EmployeeID, FirstName, LastName, Position, SALARY
FROM Employee
WHERE SALARY=10000;
