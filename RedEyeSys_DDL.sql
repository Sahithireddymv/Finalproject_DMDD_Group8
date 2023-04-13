CREATE DATABASE RedEyeSys
GO
USE RedEyeSys
GO

-------------------------------  CREATE TABLE --------------------------------------

-- Person --
Create table Person (
PersonID int NOT NULL,
[Name] varchar(25) NOT NULL,
ContactInfo VARCHAR(20) NOT NULL,
DateOfBirth date NOT NULL,
SSN int NOT NULL,
PersonType varchar(10) NOT NULL ,/*PersonType can only have three options 1.'NUPD', 2.'Driver', 3.'Passenger'*/
EmailID varchar(25) NOT NULL 
CONSTRAINT Person_pk PRIMARY KEY (PersonID)
);
-- NUPolice --
Create table NUPolice (
OfficerID int NOT NULL,
Position varchar(10) NOT NULL,
CONSTRAINT NUPolice_pk PRIMARY KEY (OfficerID)
);

-- Driver --
Create Table Driver(
DriverID int NOT NULL
CONSTRAINT Driver_pk PRIMARY KEY (DriverID)
);

-- PassengerLocation --
CREATE TABLE PassengerLocation(
 [PassengerLocationID] [int] NOT NULL,
 [Address1] [varchar](255) NOT NULL,
 [Address2] [varchar](255) NOT NULL,
 [City] [varchar](100) NOT NULL,
 [State] [varchar](25) NOT NULL,
 [ZipCode] [int] NOT NULL,
 CONSTRAINT [PassengerLocation_PK] PRIMARY KEY CLUSTERED
(
 [PassengerLocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

-- Passenger --
CREATE TABLE Passenger(
[PassengerID] [int] NOT NULL,
[PassengerType] [varchar](25) NOT NULL,
[PassengerLocationID] [int] NOT NULL,
CONSTRAINT [Passenger_PK] PRIMARY KEY CLUSTERED
(
[PassengerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE Passenger WITH CHECK ADD CONSTRAINT [Passenger_FK] FOREIGN KEY([PassengerLocationID])
REFERENCES PassengerLocation ([PassengerLocationID])
GO

ALTER TABLE Passenger CHECK CONSTRAINT [Passenger_FK]



-- Vehicle --
CREATE TABLE Vehicle (
    VehicleID INT NOT NULL,
    VehicleNumber VARCHAR(10) NOT NULL,
    Capacity INT NOT NULL,
    VehicleType VARCHAR(20) NOT NULL,
    MaintenanceHistory TEXT NOT NULL,
    CONSTRAINT Vehicle_pk PRIMARY KEY (VehicleID)
);

-- Route --
CREATE TABLE Route (
    RouteID INT NOT NULL,
    StartingPoint VARCHAR(20) NOT NULL,
    [EndPoint] VARCHAR(20) NOT NULL,
    CONSTRAINT Route_pk PRIMARY KEY(RouteID)
);


--  Schedule --
Create TABLE Schedule(
    ScheduleID int not null,
    DriverID int not null,
    ScheduleTime time not null,
    ScheduleDate DATE not null,
    RouteID int not null,
    VehicleID int not null/*Remove bookingID*/
    CONSTRAINT Schedule_pk PRIMARY KEY (ScheduleID),
    CONSTRAINT Schedule_fk1 FOREIGN KEY (DriverID) REFERENCES Driver(DriverID),
    CONSTRAINT Schedule_fk2 FOREIGN KEY (RouteID) REFERENCES Route(RouteID),
    CONSTRAINT Schedule_fk3 FOREIGN KEY (VehicleID) REFERENCES Vehicle(VehicleID)
);

-- DelayMonitor --
Create table DelayMonitor(
    DelayID int not null,
    ScheduleID int not null,
    [Action] varchar(30) not null,
    [Date] date not null,
    UpdatedTime TIME not NULL
    CONSTRAINT DelayMonitor_pk PRIMARY KEY (DelayID),
    CONSTRAINT DelayMonitor_fk FOREIGN KEY (ScheduleID) REFERENCES Schedule(ScheduleID)
);
 


-- Query --
CREATE TABLE Query (
    QueryID INT IDENTITY(1, 1),
    Descriptions VARCHAR(400) NULL,
    OfficerID INT NOT NULL,
    PassengerID INT NOT NULL,
    CONSTRAINT Query_PK PRIMARY KEY (QueryID),
    CONSTRAINT Query_FK1 FOREIGN KEY (OfficerID) REFERENCES NUPolice(OfficerID),
    CONSTRAINT Query_FK2 FOREIGN KEY (PassengerID) REFERENCES Passenger(PassengerID)
);

-- Booking --
CREATE TABLE Booking(
    BookingID INT IDENTITY(1, 1),
    -- [Status] VARCHAR(10) DEFAULT('Ongoing') CHECK([Status] IN ('Ongoing','Cancelled')),/*status can only have two options 1.ongoing 2. cancelled*/
    ScheduleID INT NOT NULL,
    PassengerID INT NOT NULL,
    CONSTRAINT Booking_PK PRIMARY KEY (BookingID),
    CONSTRAINT Booking_FK1 FOREIGN KEY (ScheduleID) REFERENCES Schedule(ScheduleID),
    CONSTRAINT Booking_FK2 FOREIGN KEY (PassengerID) REFERENCES Passenger(PassengerID)
);





-------------------------------  STORE PROCEDURE --------------------------------------


----- 1.	Procedure to add Passenger details in Passenger and PassengerLocation----
CREATE PROCEDURE AddPassenger
    @PassengerID int,
    @PassengerType varchar(25),
    @PassengerLocationID int,
    @Address1 varchar(255),
    @Address2 varchar(255),
    @City varchar(100),
    @State varchar(25),
    @ZipCode int
AS
BEGIN
    SET NOCOUNT ON;
 
    BEGIN TRY
        -- Check if the PassengerLocationID exists in the PassengerLocation table
        IF EXISTS (SELECT PassengerLocationID FROM PassengerLocation WHERE PassengerLocationID = @PassengerLocationID)
        BEGIN
            -- If the PassengerLocationID already exists, raise an error
            RAISERROR ('The PassengerLocationID already exists in the PassengerLocation table.', 16, 1);
            RETURN;
        END

        -- Add the new passenger details
        INSERT INTO PassengerLocation (PassengerLocationID, [Address1], [Address2], [City], [State], ZipCode) 
        VALUES (@PassengerLocationID, @Address1, @Address2, @City, @State, @ZipCode);
        
        INSERT INTO Passenger (PassengerID, PassengerType, PassengerLocationID)
        VALUES (@PassengerID, @PassengerType, @PassengerLocationID);
        
    END TRY
    BEGIN CATCH
        -- Log the error
        PRINT 'Error: ' + ERROR_MESSAGE();
        -- Raise an error
        THROW;
    END CATCH;
END
----------------------------------------------------------------------------------------- 
-----  Run below query to check the result of above procedure----
-- EXECUTE AddPassenger
--    @PassengerID = 80,
--    @PassengerType = 'Student',
--    @PassengerLocationID = 60,
--    @Address1 = '90 North',
--    @Address2 = 'Apt 12',
--    @City = 'Boston',
--    @State = 'MA',
--    @ZipCode = 02190;
-- PRINT('The new passenger has been added.')
-- GO


-------- 2.	To get the schedule details of a driver---------
CREATE PROCEDURE DriverSchedule 
@DriverID INT
AS
BEGIN
    BEGIN TRY
        SELECT Driver.DriverID, Schedule.ScheduleID, Schedule.RouteID, Schedule.VehicleID, Schedule.[ScheduleDate], Schedule.[ScheduleTime]
        FROM Driver INNER JOIN Schedule ON Schedule.DriverID = Driver.DriverID 
        WHERE Driver.DriverID = @DriverID
    END TRY
    BEGIN CATCH
        PRINT 'Error occurred while retrieving the driver schedule.'
        PRINT 'Error Number: ' + CAST(ERROR_NUMBER() AS VARCHAR(10))
        PRINT 'Error Message: ' + ERROR_MESSAGE()
    END CATCH
END
-------------------------------------------------------------------------------------- 
-----  Run below query to check the result of above procedure----
-- EXECUTE DriverSchedule
-- @DriverID  = 17
-- GO

--------- 3.	To get the details of Passenger’s booking ------
CREATE PROCEDURE Psngr_BookingSchedule 
    @PassengerID INT
AS
BEGIN
    BEGIN TRY
        SELECT 
            Passenger.PassengerID, 
            Passenger.PassengerType, 
            Person.[Name] AS PassengerName, 
            Person.EmailID, 
            Person.PersonType, 
            Booking.BookingID, 
            Schedule.ScheduleID, 
            Schedule.ScheduleDate, 
            Schedule.ScheduleTime, 
            Schedule.DriverID,
            Vehicle.VehicleID, 
            Vehicle.VehicleNumber, 
            Vehicle.VehicleType
        FROM 
            Passenger
            INNER JOIN Booking ON Booking.PassengerID = Passenger.PassengerID 
            INNER JOIN Schedule ON Schedule.ScheduleID = Booking.ScheduleID
            INNER JOIN Vehicle ON Vehicle.VehicleID = Schedule.VehicleID
            INNER JOIN Person ON Person.PersonID = Passenger.PassengerID AND Person.PersonType = 'Passenger'
        WHERE 
            Passenger.PassengerID = @PassengerID 
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred: ' + ERROR_MESSAGE();
    END CATCH;
END

-------------------------------------------------------------------------------------- 
-----  Run below query to check the result of above procedure----
-- EXECUTE Psngr_BookingSchedule
-- @PassengerID  = 21
-- GO


-------- 4.	To get the next available Vehicle ---------

CREATE PROCEDURE GetNextVehicle
    @RouteID INT,
    @VehicleID INT OUTPUT,
    @VehicleNumber VARCHAR(10) OUTPUT,
    @VehicleType VARCHAR(20) OUTPUT,
    @ScheduleDate DATE OUTPUT,
    @ScheduleTime TIME(7) OUTPUT
AS
BEGIN
    BEGIN TRY
        DECLARE @VehicleIDTemp INT
        DECLARE @VehicleNumberTemp VARCHAR(10)
        DECLARE @VehicleTypeTemp VARCHAR(20)
        DECLARE @ScheduleDateTemp DATE
        DECLARE @ScheduleTimeTemp TIME(7)

        SELECT TOP 1 @VehicleIDTemp = v.VehicleID,
                     @VehicleNumberTemp = v.VehicleNumber,
                     @VehicleTypeTemp = v.VehicleType,
                     @ScheduleDateTemp = s.ScheduleDate,
                     @ScheduleTimeTemp = s.ScheduleTime
        FROM Vehicle v
        JOIN Schedule s ON v.VehicleID = s.VehicleID
        WHERE s.RouteID = @RouteID
        AND s.ScheduleDate > GETDATE()
        ORDER BY s.ScheduleTime

        SET @VehicleID = @VehicleIDTemp
        SET @VehicleNumber = @VehicleNumberTemp
        SET @VehicleType = @VehicleTypeTemp
        SET @ScheduleDate = @ScheduleDateTemp
        SET @ScheduleTime = @ScheduleTimeTemp
    END TRY
    BEGIN CATCH
        -- handle the exception, such as logging it and/or raising a custom error
        PRINT ERROR_MESSAGE()
    END CATCH
END

-----------------------------------------------------------------------------------------  
-----  Run below query to check the result of above procedure----
-- DECLARE @VehicleID INT
-- DECLARE @VehicleNumber VARCHAR(10)
-- DECLARE @VehicleType VARCHAR(20)
-- DECLARE @ScheduleDate DATE
-- DECLARE @ScheduleTime TIME(7)

-- EXEC GetNextVehicle 
--     @RouteID = 1, 
--     @VehicleID = @VehicleID OUTPUT, 
--     @VehicleNumber = @VehicleNumber OUTPUT, 
--     @VehicleType = @VehicleType OUTPUT, 
--     @ScheduleDate = @ScheduleDate OUTPUT, 

--     @ScheduleTime = @ScheduleTime OUTPUT

-- SELECT @VehicleID AS VehicleID, @VehicleNumber AS VehicleNumber, @VehicleType AS VehicleType, @ScheduleDate AS ScheduleDate, @ScheduleTime AS ScheduleTime


----- 5.	To get the vehicle schedule for specific source and destination within specific time period ----
CREATE PROCEDURE VehicleScheduleOutbound
@Source VARCHAR(25), 
@Destination VARCHAR(25), 
@StartTime TIME, 
@EndTime TIME
AS
BEGIN
    BEGIN TRY
        SELECT  s1.VehicleID, v.VehicleNumber, v.VehicleType, s1.[ScheduleDate], s1.ScheduleTime, r.StartingPoint as [Source], r.[EndPoint] as [Destination]
        FROM Schedule s1 
        INNER JOIN Route r on s1.RouteID=r.RouteID
        INNER JOIN Vehicle v on v.VehicleID = s1.VehicleID
        where (s1.ScheduleTime between @StartTime and @EndTime) and r.StartingPoint = @Source and r.[EndPoint]=@Destination 
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while executing the procedure.'
        PRINT ERROR_MESSAGE()
    END CATCH
END

--------------------------------------------------------------------------------------  
-----  Run below query to check the result of above procedure----
-- EXECUTE VehicleScheduleOutbound
-- @Source = 'SnellLibrary'
-- , @Destination = 'Quincy'
-- , @StartTime = '10:00'
-- , @EndTime = '19:00'
-- GO


-------------------------------  VIEWS --------------------------------------

-- 1. view for NumberOfPassager_BySchedule --
CREATE VIEW [NumberOfPassager_BySchedule] AS
SELECT B.ScheduleID,S.ScheduleTime,S.ScheduleDate, Count(B.PassengerID) AS NumOfPassager
FROM Booking B
INNER JOIN Schedule S
ON B.ScheduleID = S.ScheduleID
GROUP BY B.ScheduleID, S.ScheduleTime, S.ScheduleDate;

-- SELECT * from [NumberOfPassager_BySchedule];


-- 2. view for DelayMonitor --
CREATE VIEW [LatestDelayMessage] AS
WITH LatestDelays AS (
    SELECT D.ScheduleID, MAX(D.[Date]) AS LatestDate, MAX(D.UpdatedTime) AS LatestTime
    FROM DelayMonitor D
    GROUP BY D.ScheduleID
)
SELECT LD.ScheduleID, D.[Action], LD.LatestDate, S.RouteID, LD.LatestTime
FROM LatestDelays LD
INNER JOIN DelayMonitor D ON LD.ScheduleID = D.ScheduleID AND LD.LatestDate = D.[Date] AND LD.LatestTime = D.UpdatedTime
INNER JOIN Schedule S ON D.ScheduleID = S.ScheduleID;

-- SELECT * from [LatestDelayMessage];

-- 3. view for OfficerQueryAssignment --
CREATE VIEW [Query_V] AS
SELECT OfficerID, COUNT(*) AS HandleQueryNum
FROM Query Q
GROUP BY OfficerID;

-- SELECT * from [Query_V];

-------------------------------  TRIGGERS --------------------------------------

----------- 1。 Trigger for Cancellation ----------------
CREATE TABLE Cancellation(
    CancellationID INT identity(1,1),
    BookingID INT NOT NULL,
    ScheduleID INT NOT NULL,
    RoutID INT NOT NULL,
    PassangerID INT NOT NULL,
    CancellTime DATETIME,
    [State] char(17)
)
GO

CREATE TRIGGER BookingCancellation 
ON Booking
FOR DELETE
AS
BEGIN
INSERT INTO Cancellation(
    BookingID,
    ScheduleID,
    RoutID,
    PassangerID,
    CancellTime,
    [State]
)
SELECT 
    d.BookingID,
    d.ScheduleID,
    S.RouteID,
    d.PassengerID,
    GETDATE(),
    'Booking Cancelled'
FROM deleted d
INNER JOIN Schedule S
ON d.ScheduleID = S.ScheduleID;

END



-- DELETE from Booking WHERE PassengerID = 22 AND ScheduleID =1;
-- SELECT * from Cancellation;


----------- 2. Trigger for QuerySolved ----------------
CREATE TABLE SolvedQuery(
    SolvedQueryID INT identity(1,1),
    QueryID INT ,
    Descriptions VARCHAR(350) NULL,
    OfficerID INT NOT NULL,
    PassengerID INT NOT NULL,
    SolvedTime DATETIME,
    [State] CHAR(20)
)
GO

CREATE TRIGGER QuerySolved
ON Query
FOR DELETE
AS
BEGIN
INSERT INTO SolvedQuery(
    QueryID,
    Descriptions,
    OfficerID,
    PassengerID,
    SolvedTime,
    [State]
)
SELECT
    d.QueryID,
    d.Descriptions,
    d.OfficerID,
    d.PassengerID,
    GETDATE(),
    'Query Solved'
FROM deleted d

END

-- DELETE from Query WHERE PassengerID = 22 AND OfficerID =1;
-- SELECT * from SolvedQuery;

-------------------------------  CHECK CONSTRAINT --------------------------------------

----- 1. Constraint for PersonType -----
ALTER TABLE Person
ADD CONSTRAINT CHK_PersonType
CHECK( PersonType IN ('NUPD','Driver','Passenger'));

-----  Run below query to check the result of above constraint----
INSERT INTO Person VALUES(61,'Scott',1800800800,'1999-03-13', 345672, 'Teacher', 'Scott@gmail.com');

----- 2. Constraint for VehicleType -----
ALTER TABLE Vehicle
ADD CONSTRAINT CHK_VehicleType
CHECK(VehicleType IN ('SUV','Bus'));

-----  Run below query to check the result of above constraint----
INSERT INTO Vehicle VALUES(13, 'IMA1186',20 , 'Van', 'Scheduled maintenance due in 3 months.');

----- 3. Constraint for Capacity -----
ALTER TABLE Vehicle
ADD CONSTRAINT CHK_Capacity
CHECK(Capacity > 5 and Capacity <= 40);

-----  Run below query to check the result of above constraint----
INSERT INTO Vehicle VALUES(11, 'IMA1186', 5 , 'Car', 'Scheduled maintenance due in 3 months.');
INSERT INTO Vehicle VALUES(12, 'IMA1186', 50 , 'Bus', 'Scheduled maintenance due in 3 months.');


-------------------------------  UDF --------------------------------------


---- 1. UDF for calculate the age of a person ----
CREATE FUNCTION dbo.udf_CalculateAge(@DateOfBirth DATE)
RETURNS INT
AS
BEGIN
    DECLARE @CurrentDate DATE = GETDATE()
    DECLARE @Age INT = DATEDIFF(YEAR, @DateOfBirth, @CurrentDate) -
                      IIF(MONTH(@DateOfBirth) > MONTH(@CurrentDate) OR
                         (MONTH(@DateOfBirth) = MONTH(@CurrentDate) AND DAY(@DateOfBirth) > DAY(@CurrentDate)), 1, 0)
    RETURN @Age
END


-- compute column --

ALTER TABLE Person
ADD Age AS dbo.udf_CalculateAge(DateOfBirth);

-- SELECT * from Person;


---- 2. UDF for generate a full address ----
CREATE FUNCTION dbo.udf_GetFullAddress(@PassengerLocationID INT)
RETURNS VARCHAR(MAX)
AS
BEGIN
    DECLARE @FullAddress VARCHAR(MAX)
    SELECT @FullAddress = CONCAT(Address1, ', ', Address2, ', ', City, ', ', State, ' ', ZipCode)
    FROM PassengerLocation WHERE PassengerLocationID = @PassengerLocationID
    RETURN @FullAddress
END

-- compute column --
ALTER TABLE PassengerLocation
ADD FullAddress AS dbo.udf_GetFullAddress(PassengerLocationID);

-- SELECT * from PassengerLocation;


---- 3. Calculate Vehicle Usage  ----
CREATE FUNCTION dbo.udf_CalculateVehicleUsage(@VehicleID INT)
RETURNS INT
AS
BEGIN
    DECLARE @UsageCount INT
    SELECT @UsageCount = COUNT(*)
    FROM Schedule
    WHERE VehicleID = @VehicleID
    RETURN @UsageCount
END

-- compute column --
ALTER TABLE Vehicle
ADD VehicleUsage AS dbo.udf_CalculateVehicleUsage(VehicleID);

-- SELECT * from Vehicle;

---- 4. Route Popularity: Calculate the number of bookings for a specific route  ----
CREATE FUNCTION dbo.udf_CalculateRoutePopularity(@RouteID INT)
RETURNS INT
AS
BEGIN
    DECLARE @BookingCount INT
    SELECT @BookingCount = COUNT(*)
    FROM Schedule S JOIN Booking B ON S.ScheduleID = B.ScheduleID
    WHERE S.RouteID = @RouteID
    RETURN @BookingCount
END

-- compute column --
ALTER TABLE Route
ADD RoutePopularity AS dbo.udf_CalculateRoutePopularity(RouteID);

-- SELECT * from Route;



-------------------------------  ENCRYPTION --------------------------------------
---- Encryption for SSN ----------------------------------------------------------
USE RedEyeSys;
GO

CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'StrongPassword!'
CREATE CERTIFICATE MyCertificate
WITH SUBJECT = 'Certificate for encrypting SSN';
GO

CREATE SYMMETRIC KEY SSNSymmetricKey
   WITH ALGORITHM = AES_256
   ENCRYPTION BY CERTIFICATE MyCertificate;
GO


OPEN SYMMETRIC KEY SSNSymmetricKey
DECRYPTION BY CERTIFICATE MyCertificate;
GO

ALTER TABLE Person
ADD SSN_Encrypted varbinary(max);

UPDATE Person
SET SSN_Encrypted = EncryptByKey(Key_GUID('SSNSymmetricKey'), CAST(SSN AS varchar(11)));

-- Drop the original SSN column
ALTER TABLE Person
DROP COLUMN SSN;

-- Rename the encrypted SSN column to SSN
EXEC sp_rename 'Person.SSN_Encrypted', 'SSN', 'COLUMN';

-- Select * from Person


-------------------------------  INDEX --------------------------------------

--- non-clustered index for DateOfBirth ---
--- use for filter or sort by DateOfBirth column ---
CREATE NONCLUSTERED INDEX idx_Person_DateOfBirth ON Person(DateOfBirth);

--- non-clustered index for Booking.ScheduleID ---
--- use for join Booking and Schedule tables on ScheduleID column ---
CREATE NONCLUSTERED INDEX idx_Booking_ScheduleID ON Booking(ScheduleID);

--- non-clustered index for ScheduleDate and ScheduleTime ---
--- use for filter or sort by ScheduleDate and ScheduleTime columns ---
CREATE NONCLUSTERED INDEX idx_Schedule_ScheduleDateTime ON Schedule(ScheduleDate, ScheduleTime);



