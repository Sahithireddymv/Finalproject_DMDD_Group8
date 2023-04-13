USE RedEyeSys
GO

-- 1. Person --

--select * from Person;


INSERT INTO Person(PersonID,[Name], ContactInfo, DateOfBirth, SSN, PersonType, EmailID )
VALUES
(1,'Scott','1800800800','1999-03-13', 345672, 'NUPD', 'Scott@gmail.com'),
(2,'Justin','1800800810','1999-04-13', 345451, 'NUPD', 'Justin@gmail.com'),
(3,'Lawrence','1800800300','1999-05-13', 345632, 'NUPD', 'Lawrence@gmail.com'),
(4,'Neil','1800800804','1999-03-15', 345671, 'NUPD', 'Neil@gmail.com'),
(5,'John','1800800803','2000-03-13', 345670, 'NUPD', 'john@gmail.com'),
(6,'Calvin','1800800805','2000-07-23', 345679, 'NUPD', 'Calvin@gmail.com'),
(7,'Gerson','1800800806','2002-03-17', 345678, 'NUPD', 'Gerson@gmail.com'),
(8,'Cliff','1800800807','2003-06-14', 345676, 'NUPD', 'Cliff@gmail.com'),
(9,'Anderson','1800800808','2003-09-12', 345674, 'NUPD', 'Anderson@gmail.com'),
(10,'Shea','1800800890','2008-11-03', 345673, 'NUPD', 'Shea@gmail.com'),
(11,'Joe','1800800801','1999-03-11', 345111, 'Driver', 'Joe@gmail.com'),
(12,'Richard','1800800812','1999-06-13', 345112, 'Driver', 'Richard@gmail.com'),
(13,'Amy','1800800303','1998-05-13', 345113, 'Driver', 'Amy@gmail.com'),
(14,'Alex','1800800814','1995-03-15', 345114, 'Driver', 'Alex@gmail.com'),
(15,'Lucy','1800800815','2000-06-13', 345115, 'Driver', 'Lucy@gmail.com'),
(16,'Frank','180080086','2000-06-23', 345116, 'Driver', 'Frank@gmail.com'),
(17,'Noah','1800800817','2000-05-17', 345117, 'Driver', 'Noah@gmail.com'),
(18,'Sophia','1800800827','2000-06-14', 345118, 'Driver', 'Sophia@gmail.com'),
(19,'Andrew','1800800828','2000-09-12', 345119, 'Driver', 'Andrew@gmail.com'),
(20,'Taylor','1800800830','2008-11-03', 345120, 'Driver', 'Taylor@gmail.com'),
(21,'Emma','1800800816','1997-03-13', 345221, 'Passenger', 'Emma@gmail.com'),
(22,'Noah','1800800899','1997-04-13', 345222, 'Passenger', 'Noah@gmail.com'),
(23,'Liam','1800800392','1997-05-13', 345223, 'Passenger', 'Liam@gmail.com'),
(24,'Dylan','1800800896','1997-03-15', 345224, 'Passenger', 'Dylan@gmail.com'),
(25,'Gavin','180080087','2001-03-13', 345225, 'Passenger', 'Gavin@gmail.com'),
(26,'Iris','18008008058','2001-07-23', 345226, 'Passenger', 'Iris@gmail.com'),
(27,'Jamie','1800800865','2001-03-17', 345227, 'Passenger', 'Jamie@gmail.com'),
(28,'Mollie','1800800837','2001-06-14', 345228, 'Passenger', 'Mollie@gmail.com'),
(29,'Nina','1800800848','2003-05-12', 345229, 'Passenger', 'Nina@gmail.com'),
(30,'Betty','1800800877','2008-01-03', 345230, 'Passenger', 'Betty@gmail.com'),
(31,'Cara','1801800816','1996-03-13', 345321, 'Passenger', 'Cara@gmail.com'),
(32,'Regan','1801800899','1996-04-13', 345322, 'Passenger', 'Regan@gmail.com'),
(33,'Mia','1801800392','1997-05-13', 345323, 'Passenger', 'Mia@gmail.com'),
(34,'Danielle','1810800896','1996-03-15', 343224, 'Passenger', 'Danielle@gmail.com'),
(35,'Nick','181080087','2002-03-13', 345325, 'Passenger', 'Nick@gmail.com'),
(36,'Martin','18018008058','2002-07-23', 343226, 'Passenger', 'Martin@gmail.com'),
(37,'Jacob','1810800865','2002-03-17', 343227, 'Passenger', 'Jacon@gmail.com'),
(38,'Samson','1100800837','2002-06-14', 335228, 'Passenger', 'Samson@gmail.com'),
(39,'Kylee','1801800848','2004-05-12', 345329, 'Passenger', 'Kylee@gmail.com'),
(40,'Yetta','1810800877','2007-01-03', 343230, 'Passenger', 'Yetta@gmail.com'),
(41,'Ava','1801600816','1996-03-13', 335321, 'Passenger', 'Ava123@gmail.com'),
(42,'Henry','1801600899','1996-04-13', 335322, 'Passenger', 'Henry@gmail.com'),
(43,'Ethen','1801600392','1997-05-13', 335323, 'Passenger', 'Ethan@gmail.com'),
(44,'Benjamin','1810600896','1996-03-15', 333224, 'Passenger', 'Benjamin@gmail.com'),
(45,'Michael','181060087','2002-03-13', 335325, 'Passenger', 'Michael@gmail.com'),
(46,'William','18016008058','2002-07-23', 333226, 'Passenger', 'William@gmail.com'),
(47,'Olivia','1810600865','2002-03-17', 333227, 'Passenger', 'Jacon@gmail.com'),
(48,'Samson','1100600837','2002-06-14', 336228, 'Passenger', 'Olivia@gmail.com'),
(49,'Samuel','1801600848','2004-05-12', 335329, 'Passenger', 'Samuel@gmail.com'),
(50,'Charlotte','1810600877','2007-01-03', 333230, 'Passenger', 'Charlotte@gmail.com');


--SELECT * from NUPolice;


-- 2. NUPolice --
INSERT INTO NUPolice(OfficerID,Position)
VALUES
(1,'Manager'),
(2,'Officer'),
(3,'Officer'),
(4,'Officer'),
(5,'Officer'),
(6,'Officer'),
(7,'Officer'),
(8,'Officer'),
(9,'Officer'),
(10,'Manager'),
(11,'Officer'),
(12,'Officer'),
(13,'Officer'),
(14,'Officer'),
(15,'Manager'),
(16,'Officer'),
(17,'Officer');

--select * from Driver;

--3. Driver --
INSERT INTO Driver(DriverID)
Values
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25);

--select * from PassengerLocation

-- 4. PassengerLocation --
INSERT INTO PassengerLocation (PassengerLocationID, Address1, Address2, City, [State], ZipCode) VALUES 
(1,'50 East St','Apt 2','Boston','MA', 02118),
(2,'123 Main St','Unit 5','Boston','MA', 02115),
(3,'456 Elm St','Apt 3A','Boston','MA', 02120),
(4,'789 Oak St','Suite 4B','Boston','MA', 02130),
(5,'321 Maple St','Unit 2','Boston','MA', 02124),
(6,'654 Pine St','Apt 1B','Boston','MA', 02136),
(7,'987 Cedar St','Suite 3C','Boston','MA', 02131),
(8,'555 Oakdale St','Apt 5D','Boston','MA', 02116),
(9,'888 Commonwealth Ave','Unit 4','Boston','MA', 02215),
(10,'222 Boylston St','Apt 8C','Boston','MA', 02116),
(11,'333 Newbury St','Unit 3A','Boston','MA', 02115),
(12,'444 Huntington Ave','Apt 2B','Boston','MA', 02115),
(13,'777 Tremont St','Suite 6D','Boston','MA', 02118),
(14,'888 Beacon St','Apt 3C','Boston','MA', 02215),
(15,'999 Commonwealth Ave','Unit 2','Boston','MA', 02215),
(16, '123 Main St', 'Apt 4', 'Miami', 'FL', 33131),
(17, '456 Elm St', 'Unit 8', 'San Francisco', 'CA', 94107),
(18, '789 Oak St', 'Apt 2', 'Atlanta', 'GA', 30318),
(19, '555 Pine St', 'Apt 3C', 'Austin', 'TX', 78701),
(20, '444 Oak St', 'Unit 9', 'Seattle', 'WA', 98101),
(21, '666 Maple St', 'Suite 7', 'Boston', 'MA', 02210),
(22, '111 5th Ave', 'Apt 2A', 'Chicago', 'IL', 60602),
(23, '222 Broad St', 'Unit 5D', 'New Orleans', 'LA', 70112),
(24, '777 Main St', 'Apt 56', 'Houston', 'TX', 77002),
(25, '888 1st St', 'Apt 12', 'San Diego', 'CA', 92101),
(26, '333 2nd Ave', 'Apt 18', 'Portland', 'OR', 97204),
(27, '456 3rd St', 'Suite 6B', 'Dallas', 'TX', 75202),
(28, '999 Pine St', 'Apt 69', 'Denver', 'CO', 80202),
(29, '1220 W. Alameda Ave.', 'Apt 7', 'Denver', 'CO', '80223'),
(30, '1475 Lake Cook Rd', '', 'Northbrook', 'IL', '60062');

INSERT INTO PassengerLocation (PassengerLocationID, Address1, Address2, City, [State], ZipCode) VALUES 
(31,'100 Tremont St','Apt 5A','Boston','MA', 02108),
(32,'200 Columbus Ave','Unit 3C','Boston','MA', 02116),
(33,'300 Huntington Ave','Apt 2B','Boston','MA', 02115),
(34,'400 Massachusetts Ave','Suite 6D','Boston','MA', 02115),
(35,'500 Boylston St','Apt 3C','Boston','MA', 02215),
(36,'600 Commonwealth Ave','Unit 2','Boston','MA', 02215),
(37,'700 Beacon St','Apt 4', 'Boston', 'MA', 02215),
(38,'800 Newbury St','Apt 2B', 'Boston', 'MA', 02115),
(39,'900 Commonwealth Ave','Suite 6D','Boston','MA', 02215),
(40,'1000 Huntington Ave','Apt 3C','Boston','MA', 02115),
(41,'200 Tremont St','Unit 2','Boston','MA', 02116),
(42,'300 Columbus Ave','Apt 3B','Boston','MA', 02116),
(43,'400 Huntington Ave','Apt 4A','Boston','MA', 02115),
(44,'500 Massachusetts Ave','Suite 5C','Boston','MA', 02115),
(45,'600 Boylston St','Apt 2B','Boston','MA', 02215),
(46,'700 Commonwealth Ave','Unit 3D','Boston','MA', 02215),
(47,'800 Beacon St','Apt 4B', 'Boston', 'MA', 02215),
(48,'900 Newbury St','Apt 5C', 'Boston', 'MA', 02115),
(49,'1000 Commonwealth Ave','Suite 6E','Boston','MA', 02215),
(50,'1100 Huntington Ave','Apt 3D','Boston','MA', 02115);


-- insert into PassengerLocation (PassengerLocationID, Address1, Address2, City, [State], ZipCode) values (31, '123 1st St', 'Apt 4', 'San Francisco', 'CA', '94105');

-- insert into PassengerLocation (PassengerLocationID, Address1, Address2, City, [State], ZipCode) values (32, '1899 Wynkoop St', '', 'Denver', 'CO', '80202');

-- insert into PassengerLocation (PassengerLocationID, Address1, Address2, City, [State], ZipCode) values (33, '800 N Michigan Ave', '', 'Chicago', 'IL', '60611');

-- insert into PassengerLocation (PassengerLocationID, Address1, Address2, City, [State], ZipCode) values (34, '100 E Pratt St', 'Apt 18', 'Baltimore', 'MD', '21202');

-- insert into PassengerLocation (PassengerLocationID, Address1, Address2, City, [State], ZipCode) values (35, '1020 Hull St', '', 'Richmond', 'VA', '23224');

-- insert into PassengerLocation (PassengerLocationID, Address1, Address2, City, [State], ZipCode) values (36, '345 Adams St', '', 'Brooklyn', 'NY', '11201');

-- insert into PassengerLocation (PassengerLocationID, Address1, Address2, City, [State], ZipCode) values (37, '500 8th Ave', '', 'New York', 'NY', '10018');

-- insert into PassengerLocation (PassengerLocationID, Address1, Address2, City, [State], ZipCode) values (38, '111 8th Ave', '', 'New York', 'NY', '10011');


-- insert into PassengerLocation (PassengerLocationID, Address1, Address2, City, [State], ZipCode) values (39, '1 East 161st St', 'Block 57', 'Bronx', 'NY', '10451');

-- insert into PassengerLocation (PassengerLocationID, Address1, Address2, City, [State], ZipCode) values (40, '1200 W Alameda Ave', '', 'Denver', 'CO', '80223');


-- insert into PassengerLocation (PassengerLocationID, Address1, Address2, City, [State], ZipCode) values (41, '1 Zoo Blvd', 'Apt 4', 'Oklahoma City', 'OK', '73111');


-- insert into PassengerLocation (PassengerLocationID, Address1, Address2, City, [State], ZipCode) values (42, '2232 S Martin Luther King Jr Blvd', '', 'Lansing', 'MI', '48910');

-- -- Sequence 43
-- INSERT INTO PassengerLocation (PassengerLocationID, Address1, Address2, City, [State], ZipCode) 
-- VALUES (43,'500 1st St','Apt 3B','Dallas','TX', 75201);

-- -- Sequence 44
-- INSERT INTO PassengerLocation (PassengerLocationID, Address1, Address2, City, [State], ZipCode) 
-- VALUES (44,'1500 2nd Ave','Unit 201','Seattle','WA', 98101);

-- -- Sequence 45
-- INSERT INTO PassengerLocation (PassengerLocationID, Address1, Address2, City, [State], ZipCode) 
-- VALUES (45,'1200 Elm St','Suite 400','Des Moines','IA', 50309);

-- -- Sequence 46
-- INSERT INTO PassengerLocation (PassengerLocationID, Address1, Address2, City, [State], ZipCode) 
-- VALUES (46,'700 Park Blvd','Apt 304','San Diego','CA', 92101);

-- -- Sequence 47
-- INSERT INTO PassengerLocation (PassengerLocationID, Address1, Address2, City, [State], ZipCode) 
-- VALUES (47,'400 3rd Ave','Apt 5F','Brooklyn','NY', 11215);

-- -- Sequence 48
-- INSERT INTO PassengerLocation (PassengerLocationID, Address1, Address2, City, [State], ZipCode) 
-- VALUES (48,'800 Market St','Suite 600','Philadelphia','PA', 19107);

-- -- Sequence 49
-- INSERT INTO PassengerLocation (PassengerLocationID, Address1, Address2, City, [State], ZipCode) 
-- VALUES (49,'250 2nd St','Apt 8D','San Francisco','CA', 94105);

-- -- Sequence 50
-- INSERT INTO PassengerLocation (PassengerLocationID, Address1, Address2, City, [State], ZipCode) 
-- VALUES (50,'100 Beacon St','Apt 5','Boston','MA', 02116);

--select * from Passenger;

-- 5. Passenger --
INSERT INTO Passenger (PassengerID, PassengerLocationID, PassengerType) values 
(21,1,'Student'),
(22,2,'Faculty'),
(23,3,'Student'),
(24,4,'Faculty'),
(25,5,'Student'),
(26,6,'Faculty'),
(27,7,'Student'),
(28,8,'Faculty'),
(29,9,'Student'),
(30,10,'Faculty'),
(31,11,'Student'),
(32,12,'Faculty'),
(33,13,'Student'),
(34,14,'Faculty'),
(35,15,'Student'),
(36,16,'Faculty'),
(37,17,'Student'),
(38,18,'Faculty'),
(39,19,'Student'),
(40,20,'Faculty'),
(41,21,'Student'),
(42,22,'Faculty'),
(43,23,'Student'),
(44,24,'Faculty'),
(45,25,'Student'),
(46,26,'Faculty'),
(47,27,'Student'),
(48,28,'Faculty'),
(49,29,'Student'),
(50,30,'Faculty'),
(51,31,'Student'),
(52,32,'Faculty'),
(53,33,'Student'),
(54,34,'Faculty'),
(55,35,'Student'),
(56,36,'Faculty'),
(57,37,'Student'),
(58,38,'Faculty'),
(59,39,'Student'),
(60,40,'Faculty'),
(61,41,'Student'),
(62,42,'Faculty'),
(63,43,'Student'),
(64,44,'Faculty'),
(65,45,'Student'),
(66,46,'Faculty'),
(67,47,'Student'),
(68,48,'Faculty'),
(69,49,'Student'),
(70,50,'Faculty');
-- INSERT INTO Passenger (PassengerID, PassengerLocationID, PassengerType) values (51,31,'Student')
-- INSERT INTO Passenger (PassengerID, PassengerLocationID, PassengerType) values (52,32,'Faculty')
-- INSERT INTO Passenger (PassengerID, PassengerLocationID, PassengerType) values (53,33,'Student')
-- INSERT INTO Passenger (PassengerID, PassengerLocationID, PassengerType) values (54,34,'Faculty')
-- INSERT INTO Passenger (PassengerID, PassengerLocationID, PassengerType) values (55,35,'Student')
-- INSERT INTO Passenger (PassengerID, PassengerLocationID, PassengerType) values (56,36,'Faculty')
-- INSERT INTO Passenger (PassengerID, PassengerLocationID, PassengerType) values (57,37,'Student')
-- INSERT INTO Passenger (PassengerID, PassengerLocationID, PassengerType) values (58,38,'Faculty')
-- INSERT INTO Passenger (PassengerID, PassengerLocationID, PassengerType) values (59,39,'Student')
-- INSERT INTO Passenger (PassengerID, PassengerLocationID, PassengerType) values (60,40,'Faculty')
-- INSERT INTO Passenger (PassengerID, PassengerLocationID, PassengerType) values (61,41,'Student')
-- INSERT INTO Passenger (PassengerID, PassengerLocationID, PassengerType) values (62,42,'Faculty')
-- INSERT INTO Passenger (PassengerID, PassengerLocationID, PassengerType) values (63,43,'Student')
-- INSERT INTO Passenger (PassengerID, PassengerLocationID, PassengerType) values (64,44,'Faculty')
-- INSERT INTO Passenger (PassengerID, PassengerLocationID, PassengerType) values (65,45,'Student')
-- INSERT INTO Passenger (PassengerID, PassengerLocationID, PassengerType) values (66,46,'Faculty')
-- INSERT INTO Passenger (PassengerID, PassengerLocationID, PassengerType) values (67,47,'Student')
-- INSERT INTO Passenger (PassengerID, PassengerLocationID, PassengerType) values (68,48,'Faculty')
-- INSERT INTO Passenger (PassengerID, PassengerLocationID, PassengerType) values (69,49,'Student')
-- INSERT INTO Passenger (PassengerID, PassengerLocationID, PassengerType) values (70,50,'Faculty')

--select * from Vehicle;

-- 6. Vehicle --
INSERT INTO Vehicle (VehicleID, VehicleNumber, Capacity, VehicleType, MaintenanceHistory)
VALUES 
(1, 'MVR723', 6, 'SUV', 'Scheduled maintenance due in 3 months.'),
(2, 'MAB456', 6, 'SUV', 'Scheduled maintenance due in 3 months.'),
(3, 'TXD980', 6, 'SUV', 'Scheduled maintenance due in 2 months.'),
(4, 'CAS3500',30 , 'BUS', 'Scheduled maintenance due in 1 month.'),
(5, 'TAS2060',6 , 'SUV', 'Scheduled maintenance due in 15 days.'),
(6, 'TDS2060',6 , 'SUV', 'Scheduled maintenance due in 10 days.'),
(7, 'APH1620',6 , 'SUV', 'Scheduled maintenance due in 4 months.'),
(8, 'LMA1943',6 , 'SUV', 'Scheduled maintenance due in 25 days.'),
(9, 'MLA2010',6 , 'SUV', 'Scheduled maintenance due in 2 months.'),
(10, 'IMA1186',30 , 'BUS', 'Scheduled maintenance due in 3 months.'),
(11, 'KGA3087', 6, 'SUV', 'Scheduled maintenance due in 2 months.'),
(12, 'FGH876', 6, 'SUV', 'Scheduled maintenance due in 1 month.'),
(13, 'PLO342', 6, 'SUV', 'Scheduled maintenance due in 3 months.'),
(14, 'JHU222', 30, 'BUS', 'Scheduled maintenance due in 2 months.'),
(15, 'QWE091', 6, 'SUV', 'Scheduled maintenance due in 1 month.'),
(16, 'MNB190', 6, 'SUV', 'Scheduled maintenance due in 2 months.'),
(17, 'YTR432', 6, 'SUV', 'Scheduled maintenance due in 3 months.'),
(18, 'LKJ987', 6, 'SUV', 'Scheduled maintenance due in 4 months.'),
(19, 'HGF234', 6, 'SUV', 'Scheduled maintenance due in 2 months.'),
(20, 'POI123', 30, 'BUS', 'Scheduled maintenance due in 1 month.'),
(21, 'WER897', 6, 'SUV', 'Scheduled maintenance due in 3 months.'),
(22, 'BNM765', 6, 'SUV', 'Scheduled maintenance due in 2 months.'),
(23, 'RTY345', 6, 'SUV', 'Scheduled maintenance due in 4 months.'),
(24, 'XCV678', 30, 'BUS', 'Scheduled maintenance due in 2 months.'),
(25, 'UIO543', 6, 'SUV', 'Scheduled maintenance due in 1 month.'),
(26, 'QAZ765', 6, 'SUV', 'Scheduled maintenance due in 3 months.'),
(27, 'YHN210', 6, 'SUV', 'Scheduled maintenance due in 2 months.'),
(28, 'JMK097', 6, 'SUV', 'Scheduled maintenance due in 4 months.'),
(29, 'RDC875', 30, 'BUS', 'Scheduled maintenance due in 2 months.'),
(30, 'KIU546', 6, 'SUV', 'Scheduled maintenance due in 1 month.');

--SELECT * FROM Route;

-- 7. Route --
INSERT INTO Route (RouteID, StartingPoint, EndPoint)
VALUES
(1, 'SnellLibrary', 'MissionHill'),
(2, 'Ruggles', 'JamaicaPlain'),
(3, 'SnellLibrary', '75AlphonsusST'),
(4, 'Ruggles', 'Roxbury'),
(5, 'SnellLibrary', 'SouthEnd'),
(6, 'SnellLibrary', 'ChesnutAve'),
(7, 'SnellLibrary', 'Boylyston'),
(8,'SnellLibrary','GovermentCenter'),
(9,'SnellLibrary','Quincy'),
(10,'Ruggles','Seaport'),
(11, 'Ruggles', 'Cambridge'),
(12, 'SnellLibrary', 'Fenway'),
(13, 'SnellLibrary', 'DowntownCrossing'),
(14, 'Ruggles', 'BackBay'),
(15, 'Ruggles', 'Kenmore');

--Select * from Driver;


--select * from Schedule;

--  8. Schedule --
INSERT INTO Schedule (ScheduleID, DriverID, ScheduleTime, ScheduleDate, RouteID, VehicleID) 
VALUES 
(1, 11, '08:00:00', '2023-04-15', 1, 1),
(2, 12, '09:30:00', '2023-05-15', 2, 2),
(3, 13, '10:45:00', '2023-05-13', 3, 3),
(4, 14, '11:15:00', '2023-07-12', 4, 4),
(5, 15, '12:30:00', '2023-06-13', 5, 5),
(6, 16, '13:45:00', '2023-03-11', 6, 6),
(7, 17, '14:30:00', '2023-04-11', 7, 7),
(8, 18, '15:15:00', '2023-06-09', 8, 8),
(9, 19, '16:00:00', '2023-06-05', 9, 9),
(10, 20, '17:30:00', '2023-04-04', 10, 10),
(11, 11, '08:00:00', '2023-04-03', 1, 1),
(12, 12, '09:30:00', '2023-07-04', 2, 2),
(13, 13, '10:45:00', '2023-07-05', 3, 3),
(14, 14, '11:15:00', '2023-04-05', 4, 4),
(15, 15, '12:30:00', '2023-05-08', 5, 5),
(16, 16, '13:45:00', '2023-07-11', 6, 6),
(17, 17, '14:30:00', '2023-06-11', 7, 7),
(18, 18, '15:15:00', '2023-04-10', 8, 8),
(19, 19, '16:00:00', '2023-05-12', 9, 9),
(20, 20, '17:30:00', '2023-06-12', 10, 10),
(21, 11, '08:00:00', '2023-05-10', 1, 1),
(22, 12, '09:30:00', '2023-06-12', 2, 2),
(23, 13, '10:45:00', '2023-05-14', 3, 3),
(24, 14, '11:15:00', '2023-08-23', 4, 4),
(25, 15, '12:30:00', '2023-06-15', 5, 5),
(26, 16, '13:45:00', '2023-04-11', 6, 6),
(27, 17, '14:30:00', '2023-07-11', 7, 7),
(28, 18, '15:15:00', '2023-08-09', 8, 8),
(29, 19, '16:00:00', '2023-05-05', 9, 9),
(30, 20, '17:30:00', '2023-06-04', 10, 10),
(31, 11, '08:00:00', '2023-05-03', 1, 1),
(32, 12, '09:30:00', '2023-08-04', 2, 2),
(33, 13, '10:45:00', '2023-08-05', 3, 3),
(34, 14, '11:15:00', '2023-05-05', 4, 4),
(35, 15, '12:30:00', '2023-06-08', 5, 5),
(36, 16, '13:45:00', '2023-08-11', 6, 6),
(37, 17, '14:30:00', '2023-07-11', 7, 7),
(38, 18, '15:15:00', '2023-05-10', 8, 8),
(39, 19, '16:00:00', '2023-06-12', 9, 9),
(40, 20, '17:30:00', '2023-07-12', 10, 10)
;


--SELECT * from DelayMonitor;


-- 9. DelayMonitor --
INSERT INTO DelayMonitor (DelayID, ScheduleID, Action, Date, UpdatedTime) 
VALUES 
(1, 1, 'delayed', '2023-04-09', '10:30:00'),
(2, 1, 'rescheduled', '2023-04-09', '14:00:00'),
(3, 3, 'cancelled', '2023-04-09', '09:45:00'),
(4, 3, 'rescheduled', '2023-04-09', '09:55:00'),
(5, 5, 'rescheduled', '2023-04-09', '11:00:00'),
(6, 12, 'delayed', '2023-04-10', '17:30:00'),
(7, 14, 'delayed', '2023-04-10', '10:45:00'),
(8, 18, 'delayed', '2023-04-10', '15:10:00'),
(9, 20, 'rescheduled', '2023-04-10', '14:30:00'),
(10, 20, 'delayed', '2023-04-10', '16:45:00'),
(11, 21, 'cancelled', '2023-04-11', '13:15:00'),
(12, 22, 'delayed', '2023-04-11', '09:30:00'),
(13, 22, 'rescheduled', '2023-04-11', '11:45:00'),
(14, 23, 'delayed', '2023-04-11', '14:20:00'),
(15, 24, 'rescheduled', '2023-04-11', '10:00:00'),
(16, 25, 'delayed', '2023-04-12', '08:45:00'),
(17, 26, 'cancelled', '2023-04-12', '13:30:00'),
(18, 27, 'rescheduled', '2023-04-12', '12:15:00'),
(19, 28, 'delayed', '2023-04-12', '16:00:00'),
(20, 29, 'delayed', '2023-04-12', '09:00:00'),
(21, 30, 'rescheduled', '2023-04-13', '14:30:00'),
(22, 31, 'cancelled', '2023-04-13', '11:00:00'),
(23, 32, 'rescheduled', '2023-04-13', '09:45:00'),
(24, 33, 'delayed', '2023-04-13', '10:15:00'),
(25, 34, 'delayed', '2023-04-13', '15:00:00'),
(26, 35, 'rescheduled', '2023-04-14', '13:00:00'),
(27, 36, 'rescheduled', '2023-04-14', '10:30:00'),
(28, 37, 'delayed', '2023-04-14', '11:45:00'),
(29, 38, 'cancelled', '2023-04-14', '16:30:00'),
(30, 39, 'delayed', '2023-04-15', '09:15:00'),
(31, 40, 'delayed', '2023-04-15', '14:00:00'),
(32, 40, 'rescheduled', '2023-04-16', '09:30:00'),
(33, 37, 'rescheduled', '2023-04-16', '11:00:00'),
(34, 36, 'cancelled', '2023-04-16', '10:15:00'),
(35, 32, 'delayed', '2023-04-16', '12:45:00'),
(36, 24, 'rescheduled', '2023-04-17', '13:30:00'),
(37, 35, 'delayed', '2023-04-17', '10:00:00'),
(38, 36, 'rescheduled', '2023-04-17', '16:15:00'),
(39, 27, 'cancelled', '2023-04-18', '14:30:00'),
(40, 38, 'delayed', '2023-04-18', '11:15:00');





-- 10. Query --
INSERT INTO Query (Descriptions,OfficerID,PassengerID) 
VALUES 
('Broken',1,22),
('Car Crush',2,23),
('Driver did not show up',2,21),
('Car Crush',3,44),
('Car Crush',4,35),
('Account issue',5,46),
('Car Crush',6,27),
('Car Crush',7,48),
('Car Crush',9,29),
('Car Crush',1,50),
('Driver was rude', 2, 24),
('Late pickup', 3, 25),
('Wrong address', 4, 26),
('Car smells bad', 5, 27),
('Route was too long', 6, 28),
('Lost item', 7, 29),
('Car was dirty', 8, 30),
('Driver took a wrong turn', 9, 31),
('No AC in car', 10, 32),
('Driver was on phone', 11, 33),
('Car broke down', 12, 34),
('Driver did not follow instructions', 13, 35),
('Overcharged for the trip', 14, 36),
('Driver took a longer route', 15, 37),
('Passenger was late', 1, 38);


-- 11. Booking --
-- INSERT INTO Booking ([Status],ShceduleID,PassangerID) 
-- VALUES 
-- ('Cancelled',2,21);

--SELECT * FROM Booking;

INSERT INTO Booking (ScheduleID,PassengerID) 
VALUES
(1,21), 
(1,22),
(1,23), 
(1,24),
(2,25),
(2,26),
(2,27),
(3,28),
(3,29),
(3,30),
(4,31),
(4,32),
(4,33),
(4,34),
(4,35),
(5,36),
(5,37),
(6,38),
(6,39),
(7,40),
(7,41),
(8,42),
(8,43),
(9,44),
(10,45),
(10,46),
(10,47),
(10,48),
(10,49),
(10,50),
(10,21),
(10,22),
(10,25),
(10,26),
(11,25), 
(11,26),
(11,23), 
(12,21),
(12,22),
(12,26),
(12,27),
(13,28),
(13,29),
(13,30),
(14,31),
(14,32),
(14,33),
(14,34),
(14,35),
(15,36),
(15,37),
(16,38),
(16,39),
(17,40),
(17,41),
(18,42),
(18,43),
(19,44),
(20,45),
(20,46),
(20,47),
(20,48),
(20,49),
(20,50),
(20,21),
(20,22),
(20,26)
;



