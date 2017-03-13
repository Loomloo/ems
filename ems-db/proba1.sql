CREATE TABLE 		Region
(
	id 			bigint		PRIMARY KEY,
	region 			varchar(150)	NOT NULL,
	City			varchar(150)	NOT NULL
);

CREATE TABLE 		Area
(
	area	 		varchar(150)	NOT NULL,
	dtype  integer CONSTRAINT  positive_dtype CHECK (dtype = 1)
)INHERITS (Region);

CREATE TABLE 		District
(
	district	 	varchar(150)	NOT NULL,
	dtype  integer CONSTRAINT  positive_dtype CHECK (dtype = 2)
)INHERITS (Region);
