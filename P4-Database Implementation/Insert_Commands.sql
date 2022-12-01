
-------------------------Inserting records into college table-------------------------------

insert into college (CollegeID, CollegeName)
values (101,'College of Arts, Media and Design'),
       (102,'D’Amore-McKim School of Business'),
	   (103,'Khoury College of Computer Sciences'),
	   (104,'College of Engineering'),
	   (105,'Bouvé College of Health Sciences'),
	   (106,'School of Law'),
	   (107,'College of Professional Studies'),
	   (108,'College of Science'),
	   (109,'College of Social Sciences and Humanities'),
	   (110,'School of System and Enterprises')


-------------------------Inserting records into StudentClub table-------------------------------

insert into StudentClub( ClubID,ClubName,TotalMembers,CollegeID)
values(201,'NU Sanskriti',7900,101),
      (202, 'NU Aaroh',5000,102),
	  (203,'NAAIS',1000,103),
	  (204,'Northeastern Sikh Student Association',500,104),
	  (205,'NU Entrepreneurs Club',1500,105),
	  (206,'NU Utsav',8000,106),
	  (207,'NU Student Alumni Ambassadors',20000,107),
	  (208,'Northeastern VSA', 800,108),
	  (209,'NU Stage Musical Theater Co.',6000,109),
	  (210,'NU Media',10000,110)


-------------------------Inserting records into Venue table----------------------------------

insert into Venue(VenueID,VenueName,VenueAddress,Capacity)
VALUES(301,'Ell Hall','NU Boston Campus',500),
      (402,'Richards Hall','NU Boston Campus',800),
	  (505,'Curry Centre','NU Boston Campus',1000),
	  (609,'Indian Community Centre','1126 Boylston Street',5000),
	  (115,'Gurudwara Sikh Sangat Boston','10 Thorndike St,Everett, MA 02149',2000),
	  (280,'Dodge Hall','NU Boston Campus',1500),
	  (900,'Shillman Hall','NU Boston Campus',1800),
	  (880,'Sheraton Hotel','39 Dalton St,Boston, MA 02199',1600),
	  (760,'Music Center','360 Hey Street,Boston,MA 02108', 2800),
	  (1120,'Behrakis Center','NU Boston Campus',4500)


-------------------------Inserting records into Events table-------------------------------


insert into [Events](EventID,EventName,EventType,EventDescription,EventStartDateTime,EventEndDateTime,VenueID)
values (1,'Diwali Party','Offline','Open for all. Please bring your husky card', '2022-11-22 14:30','2022-11-22 17:30',301),
	   (2,'Student Gathering','Offline','Open for Graduate Students.','2022-10-19 19:30','2022-10-19 21:30',402),
	   (3,'Visit to Gurudwara','Offline','Open for all','2022-10-10 11:30','2022-10-10 15:00',115),
	   (4,'Music Fest','Offline','Open for all','2022-09-10 13:00','2022-09-10 15:00',505),
	   (5,'BootCamp','Offline','Open for all','2022-08-10 16:00','2022-08-11 16:00',280),
	   (6,'Dance4Me','Offline','Open for only undergraduates ','2022-09-20 16:00','2022-09-20 18:00',900),
	   (7,'SAA Open House','Online', 'Open for only Alumni','2022-11-20 11:00','2022-11-20 13:00',Null),
	   (8,'Paint Night','Offline','Open for all','2022-10-15 11:30','2022-10-15 15:00',1120),
	   (9,'Singing idol','Offline','Open for all','2022-08-15 11:30','2022-08-15 15:00',880),
	   (10,'Shots Fired','Offline','Open for all','2022-07-14 11:00','2022-07-14 16:00',900)


-------------------------Inserting records into ClubEvents table---------------------------------

insert into ClubEvents(ClubID,EventID,CE_Date)
values(201,1,'2022-11-22 '),
      (203,2,'2022-10-19 '),
	  (204,3,'2022-10-10 '),
	  (202,4,'2022-09-10 '),
	  (205,5,'2022-08-10 '),
	  (206,6,'2022-09-20 '),
	  (207,7,'2022-11-20 '),
	  (208,8,'2022-10-15 '),
	  (209,9,'2022-08-15 '),
	  (210,10,'2022-07-14 ')


-------------------------Inserting records into Competition table---------------------------------
      
      
insert into Competition (CompetitionID,CompetitionName,CompetitionDescription)
values (901, 'Dance','Solo or group of max 5 ( time limit-2 mins)'),
	   (902,'Hackathon','24 hours hackathon. Form a group of max 6'),
	   (903,'Singing','Solo performance ( time limit-2 mins)'),
	   (904,'Cooking','Cook any dish of your choice ( time limit-30 mins)'),
	   (905,'Blind Coding','Any coding language of your choice'),
	   (906,'Trivia','A fun game which is like a quiz'),
	   (907,'Essay writing','Write an essay for about 1000 words( time limit-2 mins)'),
	   (908,'Speech Competition','Prepare a speech on the topic given on the spot(time limit-2 to 3 mins)'),
	   (909,'Poster Making', 'Prepare a poster on the topic given on the spot(time limit-60 mins). Stationary will be provided.'),
	   (910,'Fashion Show','Solo or group of max 10( time limit-2 mins)')


-------------------------Inserting records into Judge table---------------------------------

insert into Judge(JudgeID,JudgeName,JudgeDescription)
values (2001,'Shrey Dey','PhD in Arts'),
       (2002,'Ayush Lokhande', 'Masters in BA and a fashionista'),
	   (2003,'Chinmay Yadav','PhD in English'),
	   (2004,'Usashi Roy','Doctrate in English'),
	   (2005,'Shruti Randive','PhD in Music'),
	   (2006,'Sakshi Gujarathi','PhD in Maths'),
	   (2007,'Kirti Kshirsagar','Dance Master'),
	   (2008,'Aryak Bhodke','Masters in DAE'),
	   (2009,'Siddharth Banyal','Masters in MIS'),
	   (2010,'Anjali Shenoy','Philosopher')


-------------------------Inserting records into CompetitionEvents table---------------------------------

insert into CompetitionEvents(CompetitionEventsID,CompStartDate,CompEndDate,CompetitionID,JudgeID,EventID)
values (21,'2022-09-20','2022-09-20',901,2007,6),
(22,'2022-08-10','2022-08-11',902,2008,5),
(23,'2022-09-10','2022-09-10',903,2005,4),
(24,'2022-11-22','2022-11-22',904,2001,1),
(25,'2022-09-20','2022-09-20',905,2009,5),
(26,'2022-11-20','2022-11-20',906,2001,7),
(27,'2022-10-19','2022-10-19',907,2004,2),
(28,'2022-10-10','2022-10-10',908,2010,2),
(29,'2022-10-15','2022-10-15',909,2001,8),
(30,'2022-11-22','2022-11-22',910,2002,1)



-------------------------Inserting records into Students table------------------------------------------

insert into Students(StudentID,StudentName,StudentAddress,StudentPhone,StudentEmail)
values (021390,'Davleen Kaur Matta','881 Huntington Ave', 8572501688,'matta.da@northeastern.edu'),
	   (024560,'Anshul Singh','883 Huntington Ave', 8572561798,'singh.an@northeastern.edu'),
	   (023579,'Atharva Danke','791 Jvue',8572901690,'danke.at@northeastern.edu'),
	   (024675,'Ayush Dodal', '24 Brook Street', 8573761814, 'dodal.a@northeastern.edu'),
	   (021876,'Ishan Lokhande', '25 Brook Street', 8578320497, 'lokhande.i@northeastern.edu'),
	   (023915,'Manasi Karpe', '1126 Boylston Street',8573132601, 'karpe.m@northeastern.edu'),
	   (022681,'Badreesh Shetty', '24 Brook Street', 6179717369, 'shetty.b@northeastern.edu'),
	   (021709,'Sakhsi Patil', '1126 Boylston Street', 8573132597, 'patil.s@northeastern.edu'),
	   (027892,'Yash Luharuka', '29 Brook Street', 6179137362, 'luharuka.y@northeastern.edu'),
	   (026354,'Abhishek Ramchandani', '30 Brook Street', 6179369228, 'ramchandani.a@northeastern.edu')


-------------------------Inserting records into Students table------------------------------------------

INSERT INTO STUDENTS VALUES (021681,'Harkirat Singh','Kingston st',8573132900,'singh.har@northeastern.edu');
INSERT INTO STUDENTS VALUES (023680,'Siddharth Nambiar' ,'Longwoods apt',7439883900,'nambi.s@northeastern.edu');
INSERT INTO STUDENTS VALUES (022581,'Chetan Chauhan','Quincy st',8573132900,'chauhan.c@northeastern.edu');
INSERT INTO STUDENTS VALUES (022590,'Varun Khatri' ,'Quincy st',7439383901,'khatri.v@northeastern.edu');
INSERT INTO STUDENTS VALUES (022909,'Eric Huber','Chauncy st',8573132999,'huber.eric@northeastern.edu');
INSERT INTO STUDENTS VALUES (020731,'Jacob Xiping' ,'Tremont st',7439383902,'xiping.j@northeastern.edu');
INSERT INTO STUDENTS VALUES (022582,'Paplu Roy','Atlanta st',8567132900,'roy.p@northeastern.edu');
INSERT INTO STUDENTS VALUES (022591,'Stuti Gupta' ,'Walnut st',7439494901,'gupta.s@northeastern.edu');
INSERT INTO STUDENTS VALUES (022910,'Sneha Subrmanian','Allston st',8573132100,'subrmanian.s@northeastern.edu');
INSERT INTO STUDENTS VALUES (020732,'Merick George' ,'Allston st',7439300002,'george.m@northeastern.edu');




-------------------------Inserting records into Participates table------------------------------------------


INSERT INTO Participates(ParticipantID,Winner,CompetitionEventsID,StudentID)
VALUES (101,0,21,021390),
        (102,0,21,024560),
        (103,0,22,023579),
        (104,0,22,024675),
        (105,0,23,021876),
        (106,0,23,023915),
        (107,0,24,022681),
        (108,0,24,021709),
        (109,0,24,027892),
        (110,1,21,026354),
        (111,1,22,024560),
        (112,1,23,022681)


-------------------------Inserting records into Equipment table------------------------------------------

INSERT INTO Equipment(EquipmentID,EquipmentName,[Availability],EventID)
VALUES (2301,'Projector','Available',null)
INSERT INTO Equipment(EquipmentID,EquipmentName,[Availability],EventID)
VALUES (2302,'Projector','Not Available',1)
INSERT INTO Equipment(EquipmentID,EquipmentName,[Availability],EventID)
VALUES (2303,'Projector','Available',22)
INSERT INTO Equipment(EquipmentID,EquipmentName,[Availability],EventID)
VALUES (2401,'Camera','Available',null)
INSERT INTO Equipment(EquipmentID,EquipmentName,[Availability],EventID)
VALUES (2402,'Camera','Not Available',2)
INSERT INTO Equipment(EquipmentID,EquipmentName,[Availability],EventID)
VALUES (2403,'Camera','Available',null)
INSERT INTO Equipment(EquipmentID,EquipmentName,[Availability],EventID)
VALUES (2501,'MacBook','Out Of Order',null)
INSERT INTO Equipment(EquipmentID,EquipmentName,[Availability],EventID)
VALUES (2502,'MacBook','Not Available',4)
INSERT INTO Equipment(EquipmentID,EquipmentName,[Availability],EventID)
VALUES (2503,'MacBook','Available',null)
INSERT INTO Equipment(EquipmentID,EquipmentName,[Availability],EventID)
VALUES (2601,'Speaker','Not Available',4)
INSERT INTO Equipment(EquipmentID,EquipmentName,[Availability],EventID)
VALUES (2602,'Speaker','Not Available',2)
INSERT INTO Equipment(EquipmentID,EquipmentName,[Availability],EventID)
VALUES (2603,'Speaker','Available',null)
INSERT INTO Equipment(EquipmentID,EquipmentName,[Availability],EventID)
VALUES (2604,'Speaker','Available',null)
INSERT INTO Equipment(EquipmentID,EquipmentName,[Availability],EventID)
VALUES (2701,'Charging Port','Not Available',4)
INSERT INTO Equipment(EquipmentID,EquipmentName,[Availability],EventID)
VALUES (2702,'Charging Port','Available',null)
INSERT INTO Equipment(EquipmentID,EquipmentName,[Availability],EventID)
VALUES (2801,'Tripod','Not Available',2)
INSERT INTO Equipment(EquipmentID,EquipmentName,[Availability],EventID)
VALUES (2802,'Tripod','Available',null)



-------------------------Inserting records into EquipmentsRequired table------------------------------------------

INSERT INTO EquipmentsRequired(EquipmentID,EventID,Quantity)
VALUES (2302,1,2)
INSERT INTO EquipmentsRequired(EquipmentID,EventID,Quantity)
VALUES (2402,2,3)
INSERT INTO EquipmentsRequired(EquipmentID,EventID,Quantity)
VALUES (2502,4,1)
INSERT INTO EquipmentsRequired(EquipmentID,EventID,Quantity)
VALUES (2601,4,2)
INSERT INTO EquipmentsRequired(EquipmentID,EventID,Quantity)
VALUES (2602,2,3)
INSERT INTO EquipmentsRequired(EquipmentID,EventID,Quantity)
VALUES (2701,4,2)
INSERT INTO EquipmentsRequired(EquipmentID,EventID,Quantity)
VALUES (2301,1,0)
INSERT INTO EquipmentsRequired(EquipmentID,EventID,Quantity)
VALUES (2401,1,0)
INSERT INTO EquipmentsRequired(EquipmentID,EventID,Quantity)
VALUES (2503,1,0)
INSERT INTO EquipmentsRequired(EquipmentID,EventID,Quantity)
VALUES (2702,1,0)


-------------------------Inserting records into Sponsors table------------------------------------------

INSERT INTO Sponsors(SponsorID,SponsorName)
VALUES (13001,'PopEyes')
INSERT INTO Sponsors(SponsorID,SponsorName)
VALUES (13002,'DunkinDonuts')
INSERT INTO Sponsors(SponsorID,SponsorName)
VALUES (13003,'StarBucks')
INSERT INTO Sponsors(SponsorID,SponsorName)
VALUES (13004,'Wollaston')
INSERT INTO Sponsors(SponsorID,SponsorName)
VALUES (13005,'Tatte')
INSERT INTO Sponsors(SponsorID,SponsorName)
VALUES (13006,'Mckinsey')
INSERT INTO Sponsors(SponsorID,SponsorName)
VALUES (13007,'Amazon')
INSERT INTO Sponsors(SponsorID,SponsorName)
VALUES (13008,'Fidelity')
INSERT INTO Sponsors(SponsorID,SponsorName)
VALUES (13009,'Xfinity')
INSERT INTO Sponsors(SponsorID,SponsorName)
VALUES (13010,'Meta')



-------------------------Inserting records into Sponsoredby table------------------------------------------


INSERT INTO Sponsoredby (SponsorID,EventID,SponsorshipDateTime,SponsoredAmount)
VALUES (13001,1,'2022-11-22 14:30',2000)
INSERT INTO Sponsoredby (SponsorID,EventID,SponsorshipDateTime,SponsoredAmount)
VALUES (13002,2,'2022-10-19 19:30',2000)
INSERT INTO Sponsoredby (SponsorID,EventID,SponsorshipDateTime,SponsoredAmount)
VALUES (13003,2,'2022-10-19 19:30',2000)
INSERT INTO Sponsoredby (SponsorID,EventID,SponsorshipDateTime,SponsoredAmount)
VALUES (13005,5,'2022-08-10 16:00',2000)
INSERT INTO Sponsoredby (SponsorID,EventID,SponsorshipDateTime,SponsoredAmount)
VALUES (13005,3,'2022-10-10 11:30',2000)
INSERT INTO Sponsoredby (SponsorID,EventID,SponsorshipDateTime,SponsoredAmount)
VALUES (13006,6,'2022-09-20 16:00',2000)
INSERT INTO Sponsoredby (SponsorID,EventID,SponsorshipDateTime,SponsoredAmount)
VALUES (13006,7,'2022-11-20 11:00',2000)
INSERT INTO Sponsoredby (SponsorID,EventID,SponsorshipDateTime,SponsoredAmount)
VALUES (13009,4,'2022-09-10 13:00',2000)
INSERT INTO Sponsoredby (SponsorID,EventID,SponsorshipDateTime,SponsoredAmount)
VALUES (13008,9,'2022-08-15 11:30',2000)
INSERT INTO Sponsoredby (SponsorID,EventID,SponsorshipDateTime,SponsoredAmount)
VALUES (13001,10,'2022-07-14 11:00',2000)



-------------------------Inserting records into PaymentType table------------------------------------------

INSERT INTO PaymentType(PaymentTypeID,PaymentTypeName,PaymentDateTime)
VALUES (12301,'Credit','2022-07-14 11:00')
INSERT INTO PaymentType(PaymentTypeID,PaymentTypeName,PaymentDateTime)
VALUES (12302,'Debit','2022-07-14 09:09')



-------------------------Inserting records into Tickets table------------------------------------------

INSERT INTO Tickets(TicketID,TicketCount,PaidDate,StudentID,EventID,PricePerTicket)
VALUES (1101,2,'2022-07-14 11:00',021390,1,10)
INSERT INTO Tickets (TicketID,TicketCount,PaidDate,StudentID,EventID,PricePerTicket)
VALUES (1102,1,'2022-06-13 10:10',024560,2,10)
INSERT INTO Tickets (TicketID,TicketCount,PaidDate,StudentID,EventID,PricePerTicket)
VALUES (1103,3,'2022-05-02 06:05',022681,1,10)
INSERT INTO Tickets (TicketID,TicketCount,PaidDate,StudentID,EventID,PricePerTicket)
VALUES (1104,1,'2022-09-13 04:31',023579,3,10)
INSERT INTO Tickets (TicketID,TicketCount,PaidDate,StudentID,EventID,PricePerTicket)
VALUES (1105,4,'2022-07-14 11:00',021390,3,10)
INSERT INTO Tickets (TicketID,TicketCount,PaidDate,StudentID,EventID,PricePerTicket)
VALUES (1106,2,'2022-07-27 11:30',021876,4,10)
INSERT INTO Tickets (TicketID,TicketCount,PaidDate,StudentID,EventID,PricePerTicket)
VALUES (1107,2,'2022-09-13 04:31',023915,2,10)
INSERT INTO Tickets (TicketID,TicketCount,PaidDate,StudentID,EventID,PricePerTicket)
VALUES (1108,1,'2022-05-02 06:05',024560,3,10)
INSERT INTO Tickets (TicketID,TicketCount,PaidDate,StudentID,EventID,PricePerTicket)
VALUES (1109,3,'2022-07-14 09:09',023915,8,10)
INSERT INTO Tickets (TicketID,TicketCount,PaidDate,StudentID,EventID,PricePerTicket)
VALUES (1110,3,'2022-07-14 11:00',022681,9,10)
INSERT INTO Tickets (TicketID,TicketCount,PaidDate,StudentID,EventID,PricePerTicket)
VALUES (1111,1,'2022-09-13 04:31',026354,9,10)



-------------------------Inserting records into Payments table------------------------------------------

INSERT INTO Payments(PaymentID,TotalAmount,BookingDateTime,TicketID,PaymentTypeID)
VALUES (1201,20,'2022-07-14 11:00',1101,12301)
INSERT INTO Payments(PaymentID,TotalAmount,BookingDateTime,TicketID,PaymentTypeID)
VALUES (1202,10,'2022-06-13 10:10',1102,12302)
INSERT INTO Payments(PaymentID,TotalAmount,BookingDateTime,TicketID,PaymentTypeID)
VALUES (1203,30,'2022-05-02 06:05',1103,12303)
INSERT INTO Payments(PaymentID,TotalAmount,BookingDateTime,TicketID,PaymentTypeID)
VALUES (1204,10,'2022-09-13 04:31',1104,12304)
INSERT INTO Payments(PaymentID,TotalAmount,BookingDateTime,TicketID,PaymentTypeID)
VALUES (1205,40,'2022-07-14 11:00',1105,12305)
INSERT INTO Payments(PaymentID,TotalAmount,BookingDateTime,TicketID,PaymentTypeID)
VALUES (1206,20,'2022-07-27 11:30',1106,12306)
INSERT INTO Payments(PaymentID,TotalAmount,BookingDateTime,TicketID,PaymentTypeID)
VALUES (1207,20,'2022-09-13 04:31',1107,12307)
INSERT INTO Payments(PaymentID,TotalAmount,BookingDateTime,TicketID,PaymentTypeID)
VALUES (1208,10,'2022-05-02 06:05',1108,12308)
INSERT INTO Payments(PaymentID,TotalAmount,BookingDateTime,TicketID,PaymentTypeID)
VALUES (1209,30,'2022-07-14 09:09',1109,12309)
INSERT INTO Payments(PaymentID,TotalAmount,BookingDateTime,TicketID,PaymentTypeID)
VALUES (1210,30,'2022-07-14 11:00',1110,12310)


-------------------------Inserting records into Member table------------------------------------------

INSERT INTO Member(MemberID,StudentName,MembershipStartDate,MembershipEndDate,StudentID,ClubID,Password)
VALUES (301,'Chetan Chauhan','2022-08-01 12:00','2022-07-31 12:00',022581,201,'chauhan')
INSERT INTO Member(MemberID,StudentName,MembershipStartDate,MembershipEndDate,StudentID,ClubID,Password)
VALUES (302,'Varun Khatri','2022-08-01 12:00','2022-07-31 12:00',022590,202,'khatri')
INSERT INTO Member(MemberID,StudentName,MembershipStartDate,MembershipEndDate,StudentID,ClubID,Password)
VALUES (303,'Harkirat Singh','2022-08-01 12:00','2022-07-31 12:00',021681,203,'singh')
INSERT INTO Member(MemberID,StudentName,MembershipStartDate,MembershipEndDate,StudentID,ClubID,Password)
VALUES (304,'Siddharth Nambiar','2022-08-01 12:00','2022-07-31 12:00',023680,204,'nambiar')
INSERT INTO Member(MemberID,StudentName,MembershipStartDate,MembershipEndDate,StudentID,ClubID,Password)
VALUES (305,'Paplu Roy','2022-08-01 12:00','2022-07-31 12:00',022582,205, 'roy')
INSERT INTO Member(MemberID,StudentName,MembershipStartDate,MembershipEndDate,StudentID,ClubID,Password)
VALUES (306,'Sneha Subrmanian','2022-08-01 12:00','2022-07-31 12:00',022910,206, 'subrmanian')
INSERT INTO Member(MemberID,StudentName,MembershipStartDate,MembershipEndDate,StudentID,ClubID,Password)
VALUES (307,'Merick George','2022-08-01 12:00','2022-07-31 12:00',020732,207, 'george')
INSERT INTO Member(MemberID,StudentName,MembershipStartDate,MembershipEndDate,StudentID,ClubID,Password)
VALUES (308,'Stuti Gupta','2022-08-01 12:00','2022-07-31 12:00',022591,208, 'gupta')
INSERT INTO Member(MemberID,StudentName,MembershipStartDate,MembershipEndDate,StudentID,ClubID,Password)
VALUES (309,'Eric Huber','2022-08-01 12:00','2022-07-31 12:00',022909,209, 'huber')
INSERT INTO Member(MemberID,StudentName,MembershipStartDate,MembershipEndDate,StudentID,ClubID,Password)
VALUES (310,'Jacob Xiping','2022-08-01 12:00','2022-07-31 12:00',020731,210, 'xiping')