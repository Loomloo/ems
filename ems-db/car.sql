DROP TABLE IF EXISTS	Car;
CREATE TABLE 		Car
(
  id 			bigint		PRIMARY KEY ,
  model		 	varchar(120)	NOT NULL,
  number		varchar(120)	NOT NULL,
  govNumber	 	varchar(120)	NOT NULL
   
);


DROP TABLE IF EXISTS	Crew;
CREATE TABLE 		Crew
(
  id 		bigint		PRIMARY KEY,
  car		 	integer		NOT NULL,
  stage		 	text		NOT NULL,
  currentCall	 	integer		NOT NULL,
  assignedCalls		integer 	NOT NULL,
  areaStatus		text		NOT NULL
    
);

DROP TABLE IF EXISTS	Employee;
CREATE TABLE	 	Employee
(
  id 			bigint 		PRIMARY KEY,
  lastName 		varchar(120)	NOT NULL,
  firstName 		varchar(120) 	NOT NULL,
  fatherName 		varchar(120)	NOT NULL,
  birthdate		date		NOT NULL,
  pasitions		integer		NOT NULL
);


DROP TABLE IF EXISTS	Patient;
CREATE TABLE 		Patient
(
  id 			bigint  	PRIMARY KEY ,
  lastName 		varchar(120)	NOT NULL,
  firstName 		varchar(120)	NOT NULL,
  fatherName 		varchar(120)	NOT NULL,
  birthdate		date 		NOT NULL
       
);

DROP TABLE IF EXISTS	Shift;
CREATE TABLE 		Shift
(
  id 			bigint   	PRIMARY KEY,
  createdWhen 		timestamp	NOT NULL,
  createdBy 		bigint		NOT NULL,
  closedWhen 		timestamp	NOT NULL,
  closedBy		bigint		NOT NULL,
  position		integer		NOT NULL,
  employeeid		bigint		NOT NULL,
  foreign key 		(employeeid) references Employee(id) /*on delete cascade on update cascade*/     
);

SELECT 			*
FROM 			Crew
INNER JOIN 		Car
ON 			Crew.car=car.id;
