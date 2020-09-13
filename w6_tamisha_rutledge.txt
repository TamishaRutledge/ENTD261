/*
Creating a table with 5 fields
*/
CREATE TABLE "students"
(
    "Id"	INTEGER NOT NULL,
	"Age"	INTEGER,
	"lname"	TEXT,
	"fname"	TEXT,
	"Grade"	INTEGER
);

/*
Creating insert script with 10 inserts
*/
INSERT INTO students (Id, Age, lname, fname, Grade)
VALUES (001, 15, 'Graham', 'Benjamin', 10),
(002, 16, 'Dunbar', 'Erica', 11),
(003, 14, 'Cole', 'Alyssa', 9),
(004, 16, 'Alexander', 'Michelle', 11),
(005, 17, 'Washington', 'Harriet', 12),
(006, 15, 'Davis', 'Angela', 10),
(007, 17, 'Rothstein', 'Richard', 12),
(008, 14, 'Lopez', 'Ian', 9),
(009, 15, 'Wilkerson', 'Isabel', 10),
(010, 16, 'Bennett', 'Brit', 11);

/*
Creating update script with 10 updates
*/
UPDATE students
SET
Age = 17,
Grade = 12
WHERE
Id = 001;

UPDATE students
SET
lname = 'Smith'
WHERE
Id = 002;

UPDATE students
SET
fname = 'Nicole'
WHERE
Id = 003;

UPDATE students
SET
Age = 17
WHERE
Id = 004;

UPDATE students
SET
Age = 16,
Grade = 11
WHERE
Id = 005;

UPDATE students
SET
lname = 'Judge'
WHERE
Id = 006;

UPDATE students
SET
fname = 'Chase'
WHERE
Id = 007;

UPDATE students
SET
Age = 13,
Grade = 9
WHERE
Id = 008;

UPDATE students
SET
Grade = 12
WHERE
Id = 009;

UPDATE students
SET
Age = 17,
Grade = 12,
fname = 'Brittnay'
WHERE
Id = 010;

/*
Selecting all records
*/
SELECT * FROM students
/*
Selecting all records sorted desc
*/
SELECT * FROM students ORDER BY lname DESC
/*
Selecting all records sorted asc
*/
SELECT * FROM students ORDER BY lname ASC
/*
Select all records with WHERE cond
*/
SELECT * FROM students WHERE Grade = 11
/*
Count all records
*/
SELECT count(*) from students
/*
Count all records with cond
*/
SELECT count(*) from students WHERE Age = 16

/*
Create 3 delete scripts
delete all fname starts with b
*/
DELETE from students Where fname like 'b%'
/*
Delete all lname start with l
*/
DELETE from students Where lname like 'l%'
/*
Delete all grade 10
*/
DELETE from students Where Grade = 10