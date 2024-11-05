CREATE TABLE Students (
	Student_ID INT PRIMARY KEY,
	First_name VARCHAR (50),
	Last_name VARCHAR (50),
	Birth_date VARCHAR (50),
	Enrollment_year INT 
	);

	CREATE TABLE Professors (
	Professor_ID INT PRIMARY KEY,
	First_name VARCHAR (50),
	Last_name VARCHAR (50),
	Department VARCHAR (50),
	Hire_date VARCHAR (50)
	);

	CREATE TABLE Subjects (
	Subject_ID INT PRIMARY KEY,
	Subject_name VARCHAR (50),
	Professor_ID INT
	FOREIGN KEY(Professor_ID) REFERENCES Professors(Professor_ID)
	);

INSERT INTO Students (Student_ID, First_name, Last_name, Birth_date, Enrollment_year) VALUES
(1000, 'Stefan', 'Trajkov','2003', '2021'),
(1001, 'Filip', 'Kostov', '2004','2022'),
(1002, 'Maja', 'Kajganarova', '2002','2020'),
(1003, 'Tome', 'Trajkovski','2003', '2022'),
(1004, 'Elena', 'Miteva', '2002','2020'),
(1005, 'Vile', 'Boneva','2001', '2022'),
(1006, 'Aleksandra', 'Kostova', '2003', '2021'),
(1007, 'Sofija', 'Nikolova','2004' ,'2022');

	SELECT * FROM Students;

INSERT INTO Professors (Professor_ID, First_name, Last_name, Department, Hire_date) VALUES
(100, 'Nenad', 'Nikolovski', 'Economy', '01.11.2000'),
(101, 'Ile', 'Bonev', 'IT', '01.10.1980'),
(102, 'Marija', 'Trajkova', 'Marketing', '25.05.1990'),
(103, 'Angela', 'Taseva', 'Finance', '07.09.2000'),
(104, 'Makedonka', 'Gorgieva', 'English', '01.02.1998'),
(105, 'Daniel', 'Eftimov', 'Economy', '10.05.1985');


	SELECT * FROM Professors;

INSERT INTO Subjects (Subject_ID, Subject_name, Professor_ID) VALUES
(1, 'Counting' , 100),
(2, 'Math' , 103),
(3, 'English Language' , 104),
(4, 'Digital Marketing' , 102),
(5, 'Menagment', 105),
(6, 'Banking' , 105),
(7, 'Programing' , 101);

SELECT * FROM Subjects;

SELECT * FROM Students WHERE Enrollment_year = '2020';

SELECT * FROM Subjects WHERE Professor_ID = '105'; 




