    CREATE TABLE Clients (
	Client_ID INT PRIMARY KEY,
	First_name VARCHAR (50),
	Last_name VARCHAR (50),
	Birth_date VARCHAR (50),
	Adress VARCHAR (50) 
	);

	INSERT INTO Clients(Client_ID,First_name,Last_name,Birth_date,Adress) VALUES
(1000, 'Stefan', 'Trajkov','10.02.1995', 'Address1'),
(1001, 'Filip', 'Kostov', '05.11.2000','Address2'),
(1002, 'Maja', 'Kajganarova', '31.05.1990','Address3'),
(1003, 'Tome', 'Trajkovski','10.08.2002', 'Address4'),
(1004, 'Elena', 'Miteva', '08.07.1998','Address5'),
(1005, 'Vile', 'Boneva','17.11.1994', 'Address6'),
(1006, 'Aleksandra', 'Kostova', '31.08.1997', 'Address7'),
(1007, 'Sofija', 'Nikolova','01.05.1996' ,'Address8');

SELECT * FROM Clients;

	CREATE TABLE Accounts (
	Account_ID INT PRIMARY KEY,
	Client_ID INT, 
	Start_date VARCHAR (50)
	FOREIGN KEY(Client_ID) REFERENCES Clients(Client_id)
	);

	INSERT INTO Accounts(Account_ID, Client_ID,Start_date) VALUES
(100, 1000, '11.08.2023'),
(101, 1001, '01.06.2020'),
(102, 1002, '01.05.2005'),
(103, 1003, '15.06.2004'),
(104, 1004, '17.10.2003'),
(105, 1005, '06.08.2000'),
(106, 1006, '28.03.2010'),
(107, 1007, '10.03.2007');

SELECT * FROM Accounts;

	CREATE TABLE Savings (
	Saving_ID INT PRIMARY KEY,
	Client_ID INT,
	Sum_saving INT,
	Period_saving INT,
	Interest INT
	FOREIGN KEY(Client_ID) REFERENCES Clients(Client_id)
	);

	INSERT INTO Savings(Saving_ID, Client_ID, Sum_saving, Period_saving, Interest) VALUES
(10, 1000, null, null, null),
(11, 1001, 10000, 24, 2),
(12, 1002, 15000, 36, 2.5),
(13, 1003, NULL, NULL, NULL),
(14, 1004, 20000, 24, 3),
(15, 1005, 100000, 240, 5),
(16, 1006, 10000, 12,4),
(17, 1007, 18000, 10, 3);

SELECT * FROM Savings;

	CREATE TABLE Debit_Cards (
	Debit_card_ID INT PRIMARY KEY,
	Client_ID INT, 
	Start_date VARCHAR (50),
	Expirition_date VARCHAR (50)
	FOREIGN KEY(Client_ID) REFERENCES Clients(Client_id)
	);

INSERT INTO Debit_Cards(Debit_card_ID, Client_ID,Start_date,Expirition_date) VALUES
(1,1000, '05/2020', '05/2025'),
(2,1001, '01/2023', '01/2029'),
(3,1002, '08/2024', '08/2030'),
(4,1003, '01/2020','01/2024'),
(5,1004, '07/2023', '07/2030'),
(6,1005, '06/2021', '07/2025'),
(7,1006, '08/2020', '08/2024'),
(8,1007, '10/2019', '10/2023');

SELECT * FROM Debit_Cards;



	CREATE TABLE Credits (
	Credit_ID INT PRIMARY KEY,
	Client_ID INT, 
	Start_credit VARCHAR (50),
	End_credit VARCHAR (50),
	Month_loan INT,
	Interest INT
	FOREIGN KEY(Client_ID) REFERENCES Clients(Client_id)
	);


	INSERT INTO Credits(Credit_ID,Client_ID,Start_credit,End_credit,Month_loan,Interest ) VALUES
(10000,1000, '01.01.2000', '01.01.2025', 1500, 3),
(20000,1001, '01.03.2023', '01.03.2030', 1000, 12),
(30000,1002, '01.06.2020', '01.06.2025' , 850,15),
(40000,1003, '01.07.2019','01.07.2024', 550, 5),
(50000,1004, '01.03.2018', '01.03.2024', 400, 8),
(60000,1005, '01.09.2017', '01.09.2030', 750, 9),
(70000,1006, '01.04.2023', '01.04.2033', 340, 4),
(80000,1007, '01.05.2022', '01.05.2025', 2500, 10);



SELECT * fROM Savings WHERE Sum_saving >10000; 

SELECT * FROM Debit_Cards WHERE Expirition_date 08/2024; 

SELECT * fROM Credits;
