USE cs134136


\! echo "";
\! echo "  QUERY 1";
/* Retrieve information (SSN, first name and last name) about students who take the	
   course ‘Database Management Systems’ */

SELECT	SSN, FirstName, LastName
FROM	STUDENT
WHERE	SSN IN( 	
		 SELECT	SSN
		 FROM	ENROLLS
		 WHERE	CourseNo IN(
		 		SELECT	CourseNo
		 		FROM	COURSE
		 		WHERE	CourseName = "Database Management Systems"));

\! echo "  QUERY 2";
/* Courses with more than 2 sections (CourseName, Num)	*/

SELECT		CourseName, COUNT(*)
FROM 		COURSE, SECTION
WHERE		COURSE.CourseNo = SECTION.CourseNo
GROUP BY	SECTION.CourseNo
HAVING 		COUNT(*);  


\! echo "  QUERY 3";
/* List each course number, name, and section number which have 
   3 or more students in the section 	*/

SELECT		CourseNo, CourseName, SectionNo
FROM		((SECTION NATURAL JOIN ENROLLS) NATURAL JOIN COURSE)
GROUP BY	CourseNo, CourseName, SectionNo
HAVING		COUNT(SSN) >=3;

\! echo "  QUERY 4";
/* SSN, FNAME, LNAME of students with at least 3 A grades from Exams. */

SELECT		SSN, FirstName, LastName
FROM 		(STUDENT NATURAL JOIN TAKES)
WHERE		Result = 'A'
GROUP BY	SSN, FirstName, LastName
HAVING		COUNT(SSN) >=3;

\! echo "  QUERY 5";
/* Exam Number, Exam Date, Course Number, Section Number for Exams in building 
   RVR + Capacity */

SELECT		ExamNo, E_Date, CourseNo, SectionNo
FROM 		((EXAM NATURAL JOIN CONDUCTEDIN) NATURAL JOIN CLASSROOM)
WHERE		Building = 'RVR'
GROUP BY	ExamNo, E_Date, CourseNo, SectionNo;


\! echo "  QUERY 6";

/* SSN, FName, LName Students enrolled in BOTH CSC133 AND CSC137 */

SELECT SSN, FirstName, LastName
FROM (STUDENT NATURAL JOIN (SECTION NATURAL JOIN ENROLLS))
WHERE CourseNo = 'CSC137' AND SSN IN (SELECT	SSN
				      FROM	(STUDENT NATURAL JOIN (SECTION NATURAL JOIN ENROLLS))
				      WHERE	 CourseNo = 'CSC133');
			


\! echo "  QUERY 7";

/* SSN, FName, LastName, SectionNo, Instructor for Data Structure and Analysis*/

SELECT		SSN, FirstName, LastName, SectionNo, Instructor
FROM		(COURSE NATURAL JOIN (SECTION NATURAL JOIN (STUDENT NATURAL JOIN ENROLLS)))
WHERE		CourseName = 'Data Structures and Algorithms'
GROUP BY 	SSN, FirstName, LastName, SectionNo, Instructor;



			


