/*	Author :	Andrew Peklar
	Teacher:	Prof. Sun
	Class  :	CSC 134
	Assign :	Homework 2
	Date   :	18 November, 2016	
*/

USE cs134136
CREATE TABLE COURSE(
	CourseNo	VARCHAR(52),
	CourseName	VARCHAR(52),
	Department	VARCHAR(52),
	PRIMARY KEY(CourseNo)
	); 

CREATE TABLE SECTION(
	CourseNo	VARCHAR(52),
	SectionNo	VARCHAR(52),
	Instructor	VARCHAR(52),
	PRIMARY KEY(CourseNo, SectionNo),
	FOREIGN KEY(CourseNo) 
			REFERENCES COURSE(CourseNo)
	);

CREATE TABLE STUDENT(
	SSN			VARCHAR(52),
	FirstName	VARCHAR(52),
	LastName	VARCHAR(52),
	Street		VARCHAR(52),
	City		VARCHAR(52),
	State		VARCHAR(52),
	ZIP			VARCHAR(52),
	PRIMARY KEY(SSN)
	);

CREATE TABLE ENROLLS(
	SSN			VARCHAR(52),
	CourseNo	VARCHAR(52),
	SectionNo	VARCHAR(52),
	PRIMARY KEY(SSN, CourseNo, SectionNo),
	FOREIGN KEY(SSN)	
			REFERENCES	STUDENT(SSN),
	FOREIGN KEY(CourseNo, SectionNo)	
			REFERENCES	SECTION(CourseNo, SectionNo)
	);

CREATE TABLE EXAM(
	CourseNo	VARCHAR(52),
	SectionNo	VARCHAR(52),
	ExamNo		VARCHAR(52),
	E_Date		VARCHAR(52),
	E_Time		VARCHAR(52),
	PRIMARY KEY(CourseNo, SectionNo, ExamNo),
	FOREIGN	KEY(CourseNo, SectionNo) 
			REFERENCES SECTION(CourseNo, SectionNo)
	);

CREATE	TABLE TAKES(
	SSN			VARCHAR(52),
	CourseNo	VARCHAR(52),
	SectionNo	VARCHAR(52),
	ExamNo		VARCHAR(52),
	Result		VARCHAR(52),
	PRIMARY KEY(SSN, CourseNo, SectionNo, ExamNo),
	FOREIGN	KEY(SSN)	
			REFERENCES	STUDENT(SSN),
	FOREIGN	KEY(CourseNo, SectionNo, ExamNo)	
			REFERENCES EXAM(CourseNo, SectionNo, ExamNo)
	);

CREATE TABLE CLASSROOM(
	RoomNo		VARCHAR(52),
	Building	VARCHAR(52),
	Capacity	VARCHAR(52),
	PRIMARY	KEY(RoomNo, Building)
	);

CREATE TABLE CONDUCTEDIN(
	RoomNo		VARCHAR(52),
	Building	VARCHAR(52),
	CourseNo	VARCHAR(52),
	SectionNo	VARCHAR(52),
	ExamNo		VARCHAR(52),
	PRIMARY	KEY(RoomNo, Building, CourseNo, SectionNo, ExamNo),
	FOREIGN	KEY(RoomNo, Building)	
			REFERENCES	CLASSROOM(RoomNo, Building),
	FOREIGN	Key(CourseNo, SectionNo, ExamNo)	
			REFERENCES EXAM(CourseNo, SectionNo, ExamNo)
	);