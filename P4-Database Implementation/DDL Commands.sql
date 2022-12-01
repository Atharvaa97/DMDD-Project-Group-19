CREATE DATABASE EventManagementSystem;

-------------------Creating College Table--------------------------------------
CREATE Table College
	(
	CollegeID INT NOT NULL,
	CollegeName VARCHAR(50),
	CONSTRAINT College_PK PRIMARY KEY (CollegeID)
	);


-------------------Creating StudentClub Table-----------------------------------

CREATE Table StudentClub
	(
	ClubID INT NOT NULL,
	ClubName VARCHAR(50),
	TotalMembers INT,
	CollegeID INT,
	CONSTRAINT StudentClub_PK PRIMARY KEY (ClubID),
	CONSTRAINT StudentClub_FK FOREIGN KEY (CollegeID) REFERENCES College(CollegeID)
	);


-------------------Creating Students Table-------------------------------------

CREATE Table Students
	(
	StudentID INT NOT NULL,
	StudentName VARCHAR(25),
	StudentAddress VARCHAR(200),
	StudentPhone VARCHAR(10),
	StudentEmail VARCHAR(30),
	CONSTRAINT Students_PK PRIMARY KEY (StudentID)
	);

-------------------Creating Member Table--------------------------------------

Create Table Member
	(
	MemberID INT NOT NULL,
	StudentName VARCHAR(25),
	MembershipStartDate date,
	MembershipEndDate date,
	StudentID INT NOT NULL,
	ClubID INT NOT NULL,
	Password varchar(50),
	CONSTRAINT Member_PK PRIMARY KEY (MemberID),
	CONSTRAINT Member_FK1 FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
	CONSTRAINT Member_FK2 FOREIGN KEY (ClubID) REFERENCES StudentClub(ClubID)
	);


-------------------Creating Venue Table & Check Constraint--------------------------------------

CREATE Table Venue
	(
	VenueID INT NOT NULL,
	VenueName VARCHAR(50),
	VenueAddress VARCHAR(100),
	Capacity INT check(Capacity>100),
	CONSTRAINT Venue_PK PRIMARY KEY (VenueID)
	);

-------------------Creating Events Table--------------------------------------

CREATE Table [Events]
	(
	EventID INT NOT NULL,
	EventName VARCHAR(50),
	EventType VARCHAR(20),
	EventDescription VARCHAR(200),
	EventStartDateTime date,
	EventEndDateTime date,
	VenueID INT,
	CONSTRAINT Events_PK PRIMARY KEY (EventID),
	CONSTRAINT Events_FK FOREIGN KEY (VenueID) REFERENCES Venue(VenueID)
	);


-------------------Creating ClubEvents Table--------------------------------------

CREATE Table ClubEvents
	(
	ClubID INT NOT NULL,
	EventID INT NOT NULL,
	CE_Date Date,
	CONSTRAINT ClubEvents_PK PRIMARY KEY(ClubID, EventID),
	CONSTRAINT ClubEvents_FK1 FOREIGN KEY(EventID) REFERENCES [Events](EventID),
	CONSTRAINT ClubEvents_FK2 FOREIGN KEY(ClubID) REFERENCES StudentClub(ClubID)
	);

-------------------Creating Competition Table--------------------------------------

CREATE Table Competition
	(
	CompetitionID INT NOT NULL,
	CompetitionName VARCHAR(25),
	CompetitionDescription VARCHAR(200),
	CONSTRAINT Competition_PK PRIMARY KEY (CompetitionID)
	);

-------------------Creating Judge Table--------------------------------------

CREATE Table Judge
	(
	JudgeID INT NOT NULL,
	JudgeName VARCHAR(20),
	JudgeDescription VARCHAR(200),
	CONSTRAINT Judge_PK PRIMARY KEY(JudgeID)
	);

-------------------Creating CompetitionEvents Table--------------------------------------

CREATE Table CompetitionEvents
	(
	CompetitionEventsID INT NOT NULL,
	CompStartDate date,
	CompEndDate date,
	CompetitionID INT NOT NULL,
	JudgeID INT NOT NULL,
	EventID INT NOT NULL,
	CONSTRAINT CompetitionEvents_PK1 PRIMARY KEY (CompetitionEventsID),
	CONSTRAINT CompetitionEvents_FK1 FOREIGN KEY (CompetitionID) REFERENCES Competition(CompetitionID),
	CONSTRAINT CompetitionEvents_FK2 FOREIGN KEY (JudgeID) REFERENCES Judge(JudgeID),
	CONSTRAINT CompetitionEvents_FK3 FOREIGN KEY (EventID) REFERENCES [Events](EventID)
	);

-------------------Creating Participates Table--------------------------------------

CREATE Table Participates
	(
	ParticipantID INT NOT NULL,
	Winner BIT,
	CompetitionEventsID INT,
	StudentID INT,
	CONSTRAINT Participates_PK PRIMARY KEY (ParticipantID),
	CONSTRAINT Participates_FK1 FOREIGN KEY (CompetitionEventsID) REFERENCES CompetitionEvents(CompetitionEventsID),
	CONSTRAINT Participates_FK2 FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
	);

-------------------Creating Equipment Table--------------------------------------

CREATE Table Equipment
	(
	EquipmentID INT NOT NULL,
	EquipmentName VARCHAR(40),
	[Availability] VARCHAR(30),
	EventID INT,
	CONSTRAINT Equipment_PK PRIMARY KEY (EquipmentID),
	CONSTRAINT Equipment_FK FOREIGN KEY (EventID) REFERENCES [Events](EventID)
	);

-------------------Creating EquipmentsRequired Table--------------------------------------

CREATE Table EquipmentsRequired
	(
	EquipmentID INT NOT NULL,
	EventID INT NOT NULL,
	Quantity INT,
	CONSTRAINT EquipmentRequired_PK PRIMARY KEY (EquipmentID, EventID),
	CONSTRAINT EquipmentRequired_FK1 FOREIGN KEY (EquipmentID) REFERENCES Equipment(EquipmentID),
	CONSTRAINT EquipmentRequired_FK2 FOREIGN KEY (EventID) REFERENCES [Events](EventID)
	);

-------------------Creating Sponsors Table--------------------------------------

CREATE Table Sponsors
	(
	SponsorID INT NOT NULL,
	SponsorName VARCHAR(25)
	CONSTRAINT Sponsors_PK PRIMARY KEY (SponsorID)
	);

-------------------Creating SponsoredBy Table and Check Constraint--------------------------------------

CREATE Table SponsoredBy
	(
	SponsorID INT NOT NULL,
	EventID INT NOT NULL,
	SponsorshipDateTime date,
    SponsoredAmount int Check (SponsoredAmount>100),
	CONSTRAINT SponsoredBy_PK PRIMARY KEY (SponsorID, EventID),
	CONSTRAINT SponsoredBy_FK FOREIGN KEY (SponsorID) REFERENCES Sponsors(SponsorID),
	CONSTRAINT SponsoredBy_FK1 FOREIGN KEY (EventID) REFERENCES [Events](EventID)
	);

-------------------Creating PaymentType Table--------------------------------------
CREATE Table PaymentType
	(
	PaymentTypeID INT NOT NULL,
	PaymentTypeName VARCHAR(25),
	PaymentDateTime date,
	CONSTRAINT PaymentType_PK PRIMARY KEY (PaymentTypeID)
	);

-------------------Creating Tickets Table and Check Constraint--------------------------------------

Create Table Tickets
	(
	TicketID INT NOT NULL,
	TicketCount INT Check (TicketCount>=1),
	PaidDate date,
	PricePerTicket INT,
	EventDate date,
	StudentID INT NOT NULL,
    EventID INT NOT NULL
	CONSTRAINT Tickets_PK PRIMARY KEY (TicketID),
	CONSTRAINT Tickets_FK FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    CONSTRAINT Tickets_FK1 FOREIGN KEY (EventID) REFERENCES Events(EventID)
	);
-------------------Creating Payments Table--------------------------------------
Create Table Payments
	(
	PaymentID INT NOT NULL,
	TotalAmount INT,
	BookingDateTime date,
	TicketID INT NOT NULL,
	PaymentTypeID INT NOT NULL,
	CONSTRAINT Payments_PK PRIMARY KEY (PaymentID),
	CONSTRAINT Payments_FK1 FOREIGN KEY (TicketID) REFERENCES Tickets(TicketID),
	CONSTRAINT Payments_FK2 FOREIGN KEY (PaymentTypeID) REFERENCES PaymentType(PaymentTypeID)
	);

-------------------Creating EventsAudit Table--------------------------------------

CREATE Table [EventsAudit]
	(
	EventID INT NOT NULL,
	EventName VARCHAR(50),
	EventType VARCHAR(20),
	EventDescription VARCHAR(200),
	EventStartDateTime date,
	EventEndDateTime date,
	VenueID INT,
	LastUpdateDate date,
	CONSTRAINT Events_PK1 PRIMARY KEY (EventID),
	CONSTRAINT Events_FK2 FOREIGN KEY (VenueID) REFERENCES Venue(VenueID)
	);

	
----------------- ADDING A NEW CLUB----------------------------------------------------------------

CREATE OR ALTER PROCEDURE ADD_NEW_CLUB @USER_NAME VARCHAR(100) ,@PASSWORD VARCHAR(100),@ClubID INT,@ClubName varchar(50),@TotalMembers int,@CollegeId int , @var VARCHAR(100) OUTPUT
AS
DECLARE @MEMBER INT;
BEGIN
OPEN SYMMETRIC KEY PERSONPASSWORDS_KEY  
DECRYPTION BY CERTIFICATE PASSWORDENCRYPT;
SET @MEMBER = (SELECT MemberID FROM MEMBER M WHERE M.StudentName = @USER_NAME AND CONVERT(VARCHAR, DECRYPTBYKEY(M.PASSWORD))=@PASSWORD );
If (@MEMBER = 0)
BEGIN
PRINT 'You are not a member, cannot add a club';
END
ELSE
BEGIN
IF @clubname not in (SELECT DISTINCT clubname FROM StudentClub)
BEGIN
INSERT INTO StudentClub VALUES (@ClubID,@ClubName,@TotalMembers,@CollegeId)
SET @VAR = @ClubID
SELECT 'New Club Added' as remark,* from StudentClub where ClubID = (SELECT max(ClubID) FROM StudentClub)
END

ELSE
BEGIN
PRINT 'Club already exists';
SET @VAR = @ClubID
END
END
END

--EXEC ADD_NEW_CLUB 211,'NU COE',100,101;


--------------------------- ADDING NEW Student-----------------------------------------------------

CREATE OR ALTER PROCEDURE [dbo].NEW_STUDENT
@StudentID int, @StudentName varchar(25), @StudentAddress varchar(200),@StudentPhone varchar(10), @StudentEmail varchar(30), @var1 VARCHAR(50) OUTPUT as
Begin
if (@StudentID not in (select distinct StudentID  from Students))
Begin
Insert into Students values
(@StudentID, @StudentName, @StudentAddress, @StudentPhone , @StudentEmail)
SET @var1 = @StudentID
Select 'New Student Added' as remark,* from Student where StudentID = (select max(StudentID) from Students)
End
else
Begin
--select 'Student Already Exists' as remark,* from Students where StudentID = @StudentID
PRINT 'Student Already Exists';
SET @var1 = @StudentID
End
End


--EXEC NEW_STUDENT 021390,'Davleen Kaur Matta','881 Huntington Ave', 8572501688,'matta.da@northeastern.edu';


--------------------------- ADDING NEW Member-----------------------------------------------------

CREATE OR ALTER PROCEDURE [dbo].ADD_NEW_MEMBER
@MemberID int, @StudentName varchar(25), @MembershipStartDate Date, @MembershipEndDate Date, @StudentID int, @ClubID int, @var2 VARCHAR(50) OUTPUT  as
Begin
if (@MemberID not in (select distinct MemberID  from Member))
Begin
Insert into Member values
(@MemberID, @StudentName, @MembershipStartDate, @MembershipEndDate , @StudentID, @ClubID)
SET @var2 = @StudentID
Select 'New Member Added' as remark,* from Member where MemberID = (select max(MemberID) from Member)
End
else
Begin
PRINT 'Member Already Exists';
SET @var2 = @StudentID
End
End


--------------------------- ADDING NEW Sponsor-----------------------------------------------------

CREATE PROCEDURE [dbo].ADD_NEW_Sponsor
(@SponsorID int, @SponsorName varchar(25)) as
Begin
if (@SponsorID not in (select distinct SponsorID  from Sponsors))
Begin
Insert into Sponsors values
(@SponsorID,@SponsorName )
Select 'New Sponsor Added' as remark,* from Sponsors where SponsorID = (select max(SponsorID) from Sponsors)
End
else
Begin
select 'Sponsor Already Exists' as remark,* from Sponsors where SponsorID = @SponsorID
End
End

--------------------------- ADDING NEW EVENT-----------------------------------------------------

CREATE PROCEDURE [dbo].ADD_NEW_EVENT
(@EventID int, @EventName varchar(50), @EventType varchar(20), @EventDescription varchar(200), @EventStartDateTime date , @EventEndDateTime date, @VenueID int) as
Begin
if (@EventID not in (select distinct EventID  from Events))
Begin
Insert into Events values
(@EventID,@EventName, @EventType, @EventDescription, @EventStartDateTime,@EventEndDateTime, @VenueID)
Select 'New Event Added' as remark,* from Events where EventID = (select max(EventID) from Events)
End
else
Begin
select 'Event Already Exists' as remark,* from Events where EventID = @EventID
End
End


--------------------------- ADDING NEW JUDGE-----------------------------------------------------

CREATE PROCEDURE [dbo].ADD_NEW_JUDGE
(@JudgeID int, @JudgeName varchar(20), @JudgeDescription varchar(200)) as
Begin
if (@JudgeID not in (select distinct JudgeID  from Judge))
Begin
Insert into Judge values
(@JudgeID,@JudgeName, @JudgeDescription)
Select 'New Judge Added' as remark,* from Judge where JudgeID = (select max(JudgeID) from Judge)
End
else
Begin
select 'Judge Already Exists' as remark,* from Judge where JudgeID = @JudgeID
End
End


------------------------BUY NEW TICKET----------------------------------------------------------

CREATE or ALTER PROCEDURE [dbo].BUY_NEW_TICKET
@TicketCount int, @StudentID int, @EventID int,@PricePerTicket int,@PaymentTypeName varchar(25), @Var4 int OUTPUT as
Declare @TicketID int,
@PaymentTypeID int;
Begin
if (@PaymentTypeName in (select distinct PaymentTypeName from PaymentType))
Begin
SET @TicketId = (select max(TicketID) from Tickets)+1;
SET @Var4 = @TicketID;
Insert into Tickets values
(@TicketID,@TicketCount,getdate(),@StudentID,@EventID,@PricePerTicket)
Select 'New Ticket Purchased' as remark,* from Tickets where TicketID in (select max(TicketID) from Tickets)
PRINT 'EXECUTE UPDATE_PAYMENTS PROC TO UPDATE PAYMENTS'
END
else
Begin
PRINT 'Enter Valid Details';
SET @Var4 = @TicketID;
End
End


DECLARE @VAR4 int
Exec [dbo].BUY_NEW_TICKET 2,20732,1,10,'Debit', @VAR4 OUTPUT;


-----------------------------------UPDATE PAYMENTS-------------------------------------------------------------


CREATE or ALTER PROCEDURE [dbo].UPDATE_PAYMENTS
@TicketID int,@PaymentTypeName varchar(25), @Var5 int OUTPUT as
Declare @Total int,
@PaymentTypeID int,
@PaymentID int,
@Sum int;
PRINT @TicketID
if (@PaymentTypeName='Credit')
BEGIN
SET @PaymentTypeID=12301;
END
Else IF (@PaymentTypeName='Debit')
BEGIN
SET @PaymentTypeID=12302;
END
ELSE 
BEGIN
PRINT 'Enter Valid PaymentTypeName';
END
Begin
if(@TicketID in (select distinct TicketID from Tickets))
BEGIN
Set @Total=1;
Set @Sum=@Total;
Set @PaymentID=(select max(PaymentID) from Payments)+1;

DECLARE
@Total1 int =(SELECT dbo.[TotalAmount] (@TicketID) AS TotalAmount );
Set @Var5=@PaymentID;
INSERT into Payments VALUES
(@PaymentID,@Total1,GETDATE(),@TicketID,@PaymentTypeID);
Update Payments set TotalAmount=@Total1 where TicketID=@TicketID;
Select 'Payment Updated' as remark,* from Payments where TicketID in (select TicketID from Payments where TicketID=@TicketID );
PRINT 'PAYMENT SUCCESSFULLY UPDATED';
END
ELSE 
Begin
PRINT 'ENTER VALID DETAILS';
SET @Var5 = @PaymentID;
End
End

—-DECLARE @VAR5 int
—-Exec [dbo].UPDATE_PAYMENTS 1154, 'Debit', @Var5 OUTPUT;

--------------------------- NON CLUSTERED INDEX-----------------------------------------------------

CREATE NONCLUSTERED INDEX ticket_non_cluster
ON [TICKETS] (PAIDDATE ASC);

CREATE NONCLUSTERED INDEX payment_non_cluster
ON [PAYMENTS] (BOOKINGDATETIME DESC);

CREATE NONCLUSTERED INDEX student_non_cluster
ON [STUDENTS] (STUDENTNAME DESC);

CREATE NONCLUSTERED INDEX member_non_cluster
ON [MEMBER] (STUDENTNAME DESC);

CREATE NONCLUSTERED INDEX events_non_cluster
ON [EVENTS] (EVENTSTARTDATETIME ASC);


-------------------------------------------User Defined Fucntion-------------------------------------------------
CREATE or ALTER function [dbo].[TotalAmount] (@TICKETID int)
RETURNS int
AS BEGIN
   declare @TotalAmount int

SELECT @TotalAmount = 
(SELECT TicketCount*PricePerTicket TotalAmount FROM Tickets T where TicketID=@TICKETID)

RETURN @TotalAmount
END



—-SELECT dbo.[TotalAmount] (1102) AS TotalAmount;


-----------------------------------------------EVENT TRIGGER---------------------------------------------------------------------

CREATE TRIGGER UPDATE_SPONSOR ON [Sponsors]
FOR UPDATE 
AS
BEGIN
  INSERT INTO SponsoredBy
  SELECT SponsorID,GETDATE()
  FROM DELETED
END;



--------------------------------ENCRYPTION——————————————————————————————————————————————————————————————————————————————————————

CREATE MASTER KEY ENCRYPTION BY   
PASSWORD = 'EMS@3000';  
GO

CREATE CERTIFICATE PasswordEncrypt  
   WITH SUBJECT = 'Admin Passwords';  
GO  

CREATE SYMMETRIC KEY Admin_Keys
    WITH ALGORITHM = AES_256  
    ENCRYPTION BY CERTIFICATE PasswordEncrypt;  
GO  

-- Open the symmetric key with which to encrypt the data.  
OPEN SYMMETRIC KEY Admin_Keys  
   DECRYPTION BY CERTIFICATE PasswordEncrypt;  

-- Encrypt the value in column Password using the  
-- symmetric key PersonPasswords_Key.  
-- Save the result in column Password_Encrypted.    
UPDATE Member set PASSWORD = EncryptByKey(Key_GUID('Admin_Keys'),password);
GO

-- Verify the encryption.  
-- First, open the symmetric key with which to decrypt the data.  
OPEN SYMMETRIC KEY Admin_Keys  
   DECRYPTION BY CERTIFICATE PasswordEncrypt;  
GO  

-- Now list the original passowrd, the encrypted password,  
-- and the decrypted ciphertext. If the decryption worked,  
-- the original password will match the decrypted password.  
SELECT StudentName, CONVERT(varchar, DecryptByKey(PASSWORD))   
    AS 'Decrypted password'  
    FROM Member;  


-----------------------------Views-------------------------------------------

Create view NU_Events
AS 
SELECT EventName,EventType,EventDescription,EventStartDateTime,EventEndDateTime
FROM [Events]

select * from NU_Events


Create view Sponsors_Data_View
AS 
Select s.SponsorName,sp.SponsoredAmount,e.EventName
from ((SponsoredBy sp
join
Sponsors s
on
s.SponsorID=sp.SponsorID)
join
[Events] e
on
e.EventID=sp.EventID);


select * from Sponsors_Data_View

create view CompetitionWinner
as
select s.StudentName,cp.CompetitionName,EventName
from Participates p
join
Students s
on
p.studentid= s.studentid
join
CompetitionEvents c
on
c.CompetitionEventsID=p.CompetitionEventsID
join
Competition cp
on
cp.CompetitionId=c.CompetitionId
join
[Events] ev
on
ev.EventID=c.EventID
where winner=1


select * from CompetitionWinner