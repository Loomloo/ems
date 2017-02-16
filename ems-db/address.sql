DROP TABLE IF EXISTS	Region;
CREATE TABLE 		Region
(
  id 			bigint		PRIMARY KEY,
  region 		varchar(150)	NOT NULL
  );


DROP TABLE IF EXISTS	City;
CREATE TABLE 		City
(
  id 			bigint		PRIMARY KEY,
  City			varchar(150)	NOT NULL,
  regionid		bigint		NOT NULL,
  foreign key  		(regionid) 	references region(id)
  );


DROP TABLE IF EXISTS	Area;
CREATE TABLE 		Area
(
  id 			bigint		PRIMARY KEY,
  regionid 		bigint		NOT NULL,
  area	 		varchar(150)	NOT NULL,
  foreign key  		(regionid) 	references region(id)  
  );


DROP TABLE IF EXISTS	District;
CREATE TABLE 		District
(
  id 			bigint		PRIMARY KEY,
  cityid 		bigint		NOT NULL,
  district 		varchar(200)	NOT NULL,
  foreign key  		(cityid) 	references city(id)  
  );
DROP TABLE IF EXISTS	Village;
CREATE TABLE 		Village
(
  id 			bigint		PRIMARY KEY,
  areaid 		bigint		NOT NULL,
  village 		varchar(200)	NOT NULL,
  foreign key  		(areaid) 	references area(id)   
  );
DROP TABLE IF EXISTS	House;
CREATE TABLE 		House
(
  id 			bigint		PRIMARY KEY,
  streetid 		bigint		NOT NULL,
  house 		varchar(20)	NOT NULL
  /*foreign key  	(streetid) 	references house(id) */  
  );
DROP TABLE IF EXISTS	Room;
CREATE TABLE 		Room
(
  id 			bigint		PRIMARY KEY,
  houseid 		bigint		NOT NULL,
  room	 		integer		NOT NULL,
  foreign key  		(houseid) 	references house(id)   
  );
