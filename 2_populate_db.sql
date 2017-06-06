/* INSERT INTO <TABLE> VALUES ('fields', 'filed2', ...); */

USE cs134136

/******************************************** COURSE TABLE DATA **********************************************/
INSERT INTO COURSE VALUES('CSC130','Data Structures and Algorithms','CompSci');
INSERT INTO COURSE VALUES('CSC133','Object-Oriented Computer Graphics','CompSci');
INSERT INTO COURSE VALUES('CSC134','Database Management Systems','CompSci');
INSERT INTO COURSE VALUES('CSC137','Computer Organization','CompSci');

/******************************************** SECTION TABLE DATA **********************************************/

/*CSC 130*/
INSERT INTO SECTION VALUES('CSC130','01','Dale Fletter');
INSERT INTO SECTION VALUES('CSC130','02','Roger Williams');
INSERT INTO SECTION VALUES('CSC130','03','Dale Fletter');
/*CSC 133*/
INSERT INTO SECTION VALUES('CSC133','01','Pinar Muyan-Ozcelik');
INSERT INTO SECTION VALUES('CSC133','02','Shaquel ONeil');
INSERT INTO SECTION VALUES('CSC133','03','Pinar Muyan-Ozcelik');
/*CSC 134*/
INSERT INTO SECTION VALUES('CSC134','01','Xiaoyan Sun');
INSERT INTO SECTION VALUES('CSC134','02','Don Ngyuen');
INSERT INTO SECTION VALUES('CSC134','03','Xiaoyan Sun');
/*CSC 137*/
INSERT INTO SECTION VALUES('CSC137','01','Wade Chang');
INSERT INTO SECTION VALUES('CSC137','02','Wade Chang');
INSERT INTO SECTION VALUES('CSC137','03','Nikrouz Faroughi');
INSERT INTO SECTION VALUES('CSC137','04','Nikrouz Faroughi');


/******************************************** STUDENT TABLE DATA **********************************************/
INSERT INTO STUDENT VALUES('010578934', 'Andrew', 'Peklar', '1600 Cantrell Lane', 'Placerville', 'CA', '95667');
INSERT INTO STUDENT VALUES('020563849', 'Megan', 'Fox', '916 Arden Way', 'Sacramento', 'CA', '95819');
INSERT INTO STUDENT VALUES('030674531', 'Eric', 'Peck', '408 La Riviera Drive', 'Lincoln', 'CA', '97456');
INSERT INTO STUDENT VALUES('040585736', 'Mike', 'Tyson', '134 Mission Blvd', 'Mountain View', 'CA', '95292');
INSERT INTO STUDENT VALUES('050545975', 'Hellen', 'Keller', '345 Blind Court', 'San Jose', 'CA', '95404');

/******************************************** ENROLLS TABLE DATA **********************************************/

INSERT INTO ENROLLS VALUES('010578934','CSC130','01');
INSERT INTO ENROLLS VALUES('010578934','CSC133','01');
INSERT INTO ENROLLS VALUES('010578934','CSC134','01');

INSERT INTO ENROLLS VALUES('020563849','CSC130','01');
INSERT INTO ENROLLS VALUES('020563849','CSC133','01');
INSERT INTO ENROLLS VALUES('020563849','CSC134','01');

INSERT INTO ENROLLS VALUES('030674531','CSC130','02');
INSERT INTO ENROLLS VALUES('030674531','CSC134','03');
INSERT INTO ENROLLS VALUES('030674531','CSC137','01');

INSERT INTO ENROLLS VALUES('040585736','CSC130','03');
INSERT INTO ENROLLS VALUES('040585736','CSC133','02');
INSERT INTO ENROLLS VALUES('040585736','CSC134','02');

INSERT INTO ENROLLS VALUES('050545975','CSC137','02');
INSERT INTO ENROLLS VALUES('050545975','CSC130','01');
INSERT INTO ENROLLS VALUES('050545975','CSC133','03');

/******************************************** EXAM TABLE DATA **********************************************/
INSERT INTO EXAM VALUES('CSC130','01','Exam_01','2016/11/01','12:00.00');
INSERT INTO EXAM VALUES('CSC130','02','Exam_01','2016/11/02','01:00.00');
INSERT INTO EXAM VALUES('CSC130','03','Exam_01','2016/11/03','02:00.00');

INSERT INTO EXAM VALUES('CSC133','01','Exam_02','2016/10/04','03:00.00');
INSERT INTO EXAM VALUES('CSC133','02','Exam_02','2016/10/05','04:00.00');
INSERT INTO EXAM VALUES('CSC133','03','Exam_02','2016/10/06','05:00.00');

INSERT INTO EXAM VALUES('CSC134','01','Exam_03','2016/09/07','12:00.00');
INSERT INTO EXAM VALUES('CSC134','02','Exam_03','2016/09/08','01:00.00');
INSERT INTO EXAM VALUES('CSC134','03','Exam_03','2016/09/09','02:00.00');

INSERT INTO EXAM VALUES('CSC137','01','Exam_04','2016/08/10','03:00.00');
INSERT INTO EXAM VALUES('CSC137','02','Exam_04','2016/08/11','04:00.00');
INSERT INTO EXAM VALUES('CSC137','03','Exam_04','2016/08/12','05:00.00');


/******************************************** TAKES TABLE DATA **********************************************/

INSERT INTO TAKES VALUES('010578934','CSC130','01','Exam_01','A');
INSERT INTO TAKES VALUES('010578934','CSC133','01','Exam_02','A');
INSERT INTO TAKES VALUES('010578934','CSC134','01','Exam_03','A');

INSERT INTO TAKES VALUES('020563849','CSC130','01','Exam_01','A');
INSERT INTO TAKES VALUES('020563849','CSC133','01','Exam_02','C');
INSERT INTO TAKES VALUES('020563849','CSC134','01','Exam_03','D');

INSERT INTO TAKES VALUES('030674531','CSC130','02','Exam_01','A');
INSERT INTO TAKES VALUES('030674531','CSC134','03','Exam_03','C');
INSERT INTO TAKES VALUES('030674531','CSC137','01','Exam_04','F');

INSERT INTO TAKES VALUES('040585736','CSC130','03','Exam_01','A');
INSERT INTO TAKES VALUES('040585736','CSC133','02','Exam_02','A');
INSERT INTO TAKES VALUES('040585736','CSC134','02','Exam_03','B');

INSERT INTO TAKES VALUES('050545975','CSC137','02','Exam_04','C');
INSERT INTO TAKES VALUES('050545975','CSC130','01','Exam_01','A');
INSERT INTO TAKES VALUES('050545975','CSC133','03','Exam_02','D');


/******************************************** CLASSROOM TABLE DATA **********************************************/
INSERT INTO CLASSROOM VALUES('1013','RVR','45');
INSERT INTO CLASSROOM VALUES('2012','RVR','39');
INSERT INTO CLASSROOM VALUES('5050','RVR','28');


/******************************************** CONDUCTEDIN TABLE DATA **********************************************/
INSERT INTO CONDUCTEDIN VALUES('1013','RVR','CSC130','01','Exam_01');
INSERT INTO CONDUCTEDIN VALUES('1013','RVR','CSC130','02','Exam_01');
INSERT INTO CONDUCTEDIN VALUES('1013','RVR','CSC130','03','Exam_01');

INSERT INTO CONDUCTEDIN VALUES('2012','RVR','CSC133','01','Exam_02');
INSERT INTO CONDUCTEDIN VALUES('2012','RVR','CSC133','02','Exam_02');
INSERT INTO CONDUCTEDIN VALUES('2012','RVR','CSC133','03','Exam_02');

INSERT INTO CONDUCTEDIN VALUES('5050','RVR','CSC134','01','Exam_03');
INSERT INTO CONDUCTEDIN VALUES('5050','RVR','CSC134','02','Exam_03');
INSERT INTO CONDUCTEDIN VALUES('5050','RVR','CSC134','03','Exam_03');

INSERT INTO CONDUCTEDIN VALUES('1013','RVR','CSC137','01','Exam_04');
INSERT INTO CONDUCTEDIN VALUES('1013','RVR','CSC137','02','Exam_04');
INSERT INTO CONDUCTEDIN VALUES('1013','RVR','CSC137','03','Exam_04');