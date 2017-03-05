DROP TABLE IF EXISTS	Appeal;
CREATE TABLE 		Appeal
(
  appealId	 		bigint 		PRIMARY KEY,
  source		integer		NOT NULL,
  phoneNumber		varchar(120)	NOT NULL,
  resuit		integer		NOT NULL,
  technical	 	boolean		NOT NULL,
  calls	 	integer		NOT NULL,
  createdWhen		timestamp	NOT NULL,
  createdBy		integer		NOT NULL
    
);

Create table call_appeal 
(
	callId 		bigint		NOT NULL,
	appealId 	bigint		NOT NULL,
	primary key 	(callId, appealId),
	foreign key 	(callId) 	references call (callId), 
	foreign key 	(appealId) 	references appeal (appealId)
);

DROP TABLE IF EXISTS	CallState;
CREATE TABLE 		CallState
(
  Id	 		bigint 		PRIMARY KEY,
  call			varchar(120)	NOT NULL,
  state			integer		NOT NULL,
  prevState		varchar(120)	NOT NULL,
  createdBy	 	integer		NOT NULL,
  createdWhen		timestamp	NOT NULL   
);
