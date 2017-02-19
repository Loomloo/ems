DROP TABLE IF EXISTS	Call;
CREATE TABLE 		Call
(
  id	 		bigint 		PRIMARY KEY,
  createdWhen		timestamp	NOT NULL,
  finishedWhen		timestamp	NOT NULL,
  appeals	 	integer		NOT NULL,
  patient	 	bigint		NOT NULL,
  cause		 	integer		NOT NULL,
  state			varchar(120)	NOT NULL,
  description		text		NOT NULL,  
  notes			varchar(120)	NOT NULL,
  foreign key 		(appeals) 	references MedAction (call)
    
);


DROP TABLE IF EXISTS	MedAction;
CREATE TABLE 		MedAction
(
  call	 		bigint 		PRIMARY KEY,
  type			varchar(120)	NOT NULL,
  item			varchar(120),
  count		 	integer,
  createdWhen	 	timestamp	NOT NULL,
  createdBy	 	integer		NOT NULL
  
    
);