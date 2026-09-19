Create database hotel_aurora_db;

Create Table CustomerLevel
(CLevelID Varchar(15) Primary Key,
CLevel Varchar(20) Not Null,
Description Varchar(100) Not Null,
Discount Dec(8,2) Not Null);

Insert into CustomerLevel values
('CL01','Diamond','Over 20 visits','0.1'),
('CL02','Gold','Over 15 visits','0.08'),
('CL03','Platinum','Over 10 visits','0.05'),
('CL04','Silver','Over 5 visits','0.03'),
('CL05','Bronze','Less than 5 visits','0.01');

Create Table EmployeePosition
(EPositionID Varchar(15) Primary Key,
EPosition Varchar(20) Not Null,
Description Varchar(100) Not Null,
SalaryPerHourInEuro Int Not Null);

Insert into EmployeePosition values
('EP01','Manager','Responsible for managing hotel',20),
('EP02','Assistant Manager','Responsible for assisting managers',18),
('EP03','Supervisor','Responsible for managing staffs',20),
('EP04','Receptionist','Face of hotel front-desk',15),
('EP05','Concierge','Responsible for assisting guests',12);

Create Table ReservationType
(RTypeID Varchar(15) Primary Key,
RType Varchar(20) Not Null,
Description Varchar(100) Not Null);

Insert into ReservationType values
('RT01','In-person','Reservation in person'),
('RT02','Phone','Reservation via phone'),
('RT03','Chat box','Reservation via SMS chat box'),
('RT04','Agent','Reservation through local travel agents'),
('RT05','Email','Reservation via emails');

Create Table PaymentType
(PTypeID Varchar(15) Primary Key,
PType Varchar(20) Not Null,
Description Varchar(100) Not Null);

Insert into PaymentType values
('PT01','Cash','In-cash payment for total bill'),
('PT02','Cheque','Cheque payment with personal bank account'),
('PT03','e-Banking','Mobile banking payment or digital wallet'),
('PT04','Debit Card','Payment with debit card (Visa, Master)'),
('PT05','Email Card','Payment with credit card (Visa, Master)');

Create Table RoomCategory
(RCategoryID Varchar(15) Primary Key,
RCategory Varchar(30) Not Null,
Capacity Varchar(20) Not Null,
PricePerNightInEuro Int Not Null);

Insert into RoomCategory values
('RC01','Standard Single Bed','1 person',50),
('RC02','Standard Twin Bed','2 persons',100),
('RC03','Standard Quad Bed','4 persons',200),
('RC04','Deluxe Double (Queen Bed)','2 persons',130),
('RC05','Deluxe Double (King Bed)','2 persons',150),
('RC06','Deluxe Triple Room','3 persons',220),
('RC07','Deluxe Double-Double','4 persons',280),
('RC08','Deluxe Junior Suite','4 persons',550),
('RC09','Premium Honeymoon Suite','2 persons',400),
('RC10','Premium Business Suite','4 persons',700),
('RC11','Premium Executive Suite','5 persons',800),
('RC12','Premium Presidential Suite','6 persons',1000);

Create Table Service
(SID Varchar(15) Primary Key,
SName Varchar(20) Not Null);

Insert into Service values
('S01','Wi-Fi'),
('S02','Car Rental'),
('S03','Courier'),
('S04','On-call Doctor'),
('S05','Laundry'),
('S06','Room Service'),
('S07','Gym Fitness'),
('S08','Spa & Sauna'),
('S09','Bar & Restaurant'),
('S10','Pet Hotel');

Create Table Category_Service
(RCategoryID Varchar(15) Not Null, 
 Foreign Key (RCategoryID)References RoomCategory (RCategoryID),
 SID Varchar(15) Not Null, 
 Foreign Key (SID) References Service (SID),
 Primary Key (RCategoryID, SID));

Insert Into Category_Service Values
('RC01','S01'),
('RC01','S02'),
('RC01','S03'),
('RC01','S05'),
('RC01','S06'),
('RC02','S01'),
('RC02','S02'),
('RC02','S03'),
('RC02','S05'),
('RC02','S06'),
('RC03','S01'),
('RC03','S02'),
('RC03','S03'),
('RC03','S05'),
('RC03','S06'),
('RC04','S01'),
('RC04','S02'),
('RC04','S03'),
('RC04','S04'),
('RC04','S05'),
('RC04','S06'),
('RC04','S07'),
('RC04','S09'),
('RC05','S01'),
('RC05','S02'),
('RC05','S03'),
('RC05','S04'),
('RC05','S05'),
('RC05','S06'),
('RC05','S07'),
('RC05','S09'),
('RC06','S01'),
('RC06','S02'),
('RC06','S03'),
('RC06','S04'),
('RC06','S05'),
('RC06','S06'),
('RC06','S07'),
('RC06','S09'),
('RC07','S01'),
('RC07','S02'),
('RC07','S03'),
('RC07','S04'),
('RC07','S05'),
('RC07','S06'),
('RC07','S07'),
('RC07','S09'),
('RC08','S01'),
('RC08','S02'),
('RC08','S03'),
('RC08','S04'),
('RC08','S05'),
('RC08','S06'),
('RC08','S07'),
('RC08','S09'),
('RC09','S01'),
('RC09','S02'),
('RC09','S03'),
('RC09','S04'),
('RC09','S05'),
('RC09','S06'),
('RC09','S07'),
('RC09','S08'),
('RC09','S09'),
('RC09','S10'),
('RC10','S01'),
('RC10','S02'),
('RC10','S03'),
('RC10','S04'),
('RC10','S05'),
('RC10','S06'),
('RC10','S07'),
('RC10','S08'),
('RC10','S09'),
('RC10','S10'),
('RC11','S01'),
('RC11','S02'),
('RC11','S03'),
('RC11','S04'),
('RC11','S05'),
('RC11','S06'),
('RC11','S07'),
('RC11','S08'),
('RC11','S09'),
('RC11','S10'),
('RC12','S01'),
('RC12','S02'),
('RC12','S03'),
('RC12','S04'),
('RC12','S05'),
('RC12','S06'),
('RC12','S07'),
('RC12','S08'),
('RC12','S09'),
('RC12','S10');

Create Table Customer
(CNumber Varchar(15) Primary Key,
FName Varchar(30) Not Null,
LName Varchar(30) Not Null,
Nationality Varchar(30) Null,
Email Varchar(50) Not Null,
Phone Varchar(30) Not Null,
IDProof Varchar(30) Not Null,
CLevelID Varchar(15) Not Null,
Foreign Key (CLevelID) References CustomerLevel(CLevelID));

Insert into Customer values
('CN1201','Angel','Bradford','Canadian','angelbradford@gmail.com','+16971364824','Passport NO: ER 439103','CL04'),
('CN1203','Yi Bo','Wang','Chinese','wangyibo9389@yahoo.com','+8613374492412','Passport NO: G 49520439','CL01'),
('CN1204','Alice','Baker','British','alicebaker@icloud.com','+447854798829','NINO: EE 78 19 35 P','CL03'),
('CN1205','Timmy','Brooks','British','timmybrooks@gmail.com','+447042652774','NINO: DE 86 53 21 K','CL03'),
('CN1206','Angelina','Pearls','American','angelinapearlsppt@icloud.com','+134987639392','Passport NO: 126310533','CL04'),
('CN1207','Sang Yee','Lee','Korean','leesangyeeseoul@hotmail.com','+822458582190','Passport NO: M 59206482','CL02'),
('CN1208','Mia','Zurich','Swiss','mia.zurich@gmail.com','+41746394321','Passport NO: C 2410197','CL01'),
('CN1210','Anne','Mason','British','masonanne@yahoo.com','+447934677343','NINO: PP 30 29 46 R','CL04'),
('CN1211','Mary','Cooper','British','maryacooper@icloud.com','+447051322022','NINO: AZ  51 37 25 T','CL05'),
('CN1212','Aung Ko','David','Burmese','htetaungkomin@gmail.com','+959261828960','Passport NO: MB 568964','CL05'),
('CN1214','Jake','Jonas','American','jjonasvenger@hotmail.com','+134874922742','Passport NO: 293389303','CL02'),
('CN1215','David','Hong','Vietnamese','davidhongvipe@gmail.com','+842835323213','Passport NO: B 9874024','CL05'),
('CN1216','Rakesh','Kapoor','Indian','rakeshkpbombay@hotmail.com','+913856383235','Passport NO: J 5452193','CL04'),
('CN1217','Christopher','Joseph','British','chrisjodan@icloud.com','+447941541568','NINO: AB 98 35 66 W','CL03'),
('CN1218','Ibrahim','Yilmaz','Turkish','ibrahim.yil786@yahoo.com','+906290456071','Passport NO: U 281197','CL02'),
('CN1220','Owen','Green','Scottish','princeowengreen@icloud.com','+442975296186','NINO: AX 10 52 41 P','CL03'),
('CN1221','Kevin','Jacob','Canadian','superkeven.j29@yahoo.com','+16998729231','Passport NO: DW 120401','CL04'),
('CN1222','Lisa','Diamond','American','lisadia47@gmail.com','+134876443232','Passport NO: 635384426','CL03'),
('CN1224','Andrey','Thomas','American','thomasandrey@gmail.com','+134487624521','Passport NO: 429580201','CL03'),
('CN1225','Mark','Prim','Thai','marktprimm@gmail.com','+66993957342','Passport NO: AA 9876613','CL05');

Create Table Employee
(ENumber Varchar(15) Primary Key,
FName Varchar(30) Not Null,
LName Varchar(30) Not Null,
Address Varchar(200) Null,
Email Varchar(50) Not Null,
Phone Varchar(30) Not Null,
DOB Date Null,
IDProof Varchar(30) Not Null,
EPositionID Varchar(15) Not Null,
Foreign Key (EPositionID) References EmployeePosition(EPositionID));

Insert into Employee values
('EN001501','Ruth','Green','734 The Crescent London','hkennedy@yahoo.com','+447788555578','1986.02.04','NINO: LZ 27 47 80 B','EP01'),
('EN001504','Tina','Owen','78 Victoria Road London','karen.powell@butler.info','+447756060566','1992.06.09','NINO: BR 77 20 82 C','EP04'),
('EN001508','Alex','Cooper','87 Chester Road London','cooper.alexa@bailey.com','+447901690396','1989.04.04','NINO: GN 81 45 01 A','EP02'),
('EN001602','Murry','Jackson','41 Victoria Road London','emily.hunt@hunt.co','+447970904872','1990.10.19','NINO: ES 40 63 76 C','EP04'),
('EN001603','Ken','Saunders','87 School Lane London','josephward@campbell.net','+447797448198','1994.08.21','NINO: KG 85 65 91 C','EP04'),
('EN001605','Erin','Harding','369 Broadway London','erinharding@dayrep.com','+442079460399','1981.01.31','NINO: EP 05 52 05 D','EP03'),
('EN001607','Leah','Winter','9060 Mill Lane London','leahwinter@rhyta.com','+447745772016','1987.03.11','NINO: HA 58 03 38 B','EP02'),
('EN001608','John','Henderson','37 Springfield Road London','johnhenderson@teleworm.us','+442045773401','1977.09.17','NINO: XC 96 59 33 C','EP01'),
('EN001610','Tilly','Marshall','25 Grove Road London','tillymarshall@jourrapide.com','+447045771414','1996.11.08','NINO: SA 60 01 28 B','EP05'),
('EN001703','Samantha','Reeves','30 Mill Lane London','samanthareeves@gmail.com','+447745770967','1993.07.22','NINO: EW 54 86 24 D','EP04'),
('EN001704','Joseph','Black','1 West Street London','blackjoseph89@yahoo.com','+442045771450','1989.09.08','NINO: AP 99 74 28 C','EP02'),
('EN001705','Samuel','Smith','26 North Road London','samsmith2204@gmail.com','+447879460511','1989.04.22','NINO: SS 08 77 72 A','EP04'),
('EN001801','Luke','Gibson','228 Highfield Road London','lukegibson@gmail.com','+442079460882','1996.02.29','NINO: OA 62 88 98 D','EP05'),
('EN001802','Amber','Johnston','422 Queensway London','amberjs7399@yahoo.com','+442079460288','1999.03.07','NINO: HR 33 34 28 C','EP05'),
('EN001804','Gwen','Arthur','896 Grove Road London','lovelyarthur71@hotmail.com','+447972978921','1988.08.08','NINO: KN 89 28 62 J','EP02'),
('EN001902','Ginger','Oscar','70 Park Lane London','ggoscar.4love@gmail.com','+442078902874','1976.11.24','NINO: WC 90 38 99 Y','EP03'),
('EN001906','Mark','Johnson','369 Broadway London','spidermarkjs@yahoo.com','+442024097433','1995.03.04','NINO: AA 89 26 83 J','EP05'),
('EN002001','John','Whites','25 Richmond Road London','johnwhites25@icloud.com','+447798763321','1986.12.29','NINO: KR 78 90 44 D','EP03'),
('EN002002','Rose','Jenner','25 Grove Road London','rosejenner@icloud.com','+442079460799','1997.12.23','NINO: BD 93 85 24 L','EP05'),
('EN002003','Owen','Steve','47 Kingsway London','stevenpugu47@gmail.com','+447979460790','1996.07.04','NINO: AS 12 04 01 N','EP04');

Create Table Invoice
(ICode Varchar(15) Primary Key,
IssueDate Date Not Null,
ChargesInEuro Dec(8,2) Not Null,
TaxesInEuro Int Not Null,
TotalAmountInEuro Dec(10,2) Not Null,
CardNo Varchar(100) Not Null,
CNumber Varchar(15) Not Null,
Foreign Key (CNumber) References Customer(CNumber),
PTypeID Varchar(15) Not Null,
Foreign Key (PTypeID) References PaymentType(PTypeID));

Insert into Invoice values
('IC20234001','2023.04.11','2990',10,'3000','Cheque No: 654567832 87632 C351','CN1218','PT02'),
('IC02234002','2023.04.11','552',10,'562','5478 6245 1956 4537','CN1214','PT04'),
('IC20234003','2023.04.17','2650',15,'2665','Cheque No: 496472854 57382 A852','CN1207','PT02'),
('IC20234004','2023.04.17','16560',15,'16575','4567 6496 1239 8079','CN1203','PT05'),
('IC20234005','2023.04.19','2823',15,'2838','2347 9769 2345 9876','CN1210','PT05'),
('IC20234007','2023.04.28','3600',10,'3610','Cheque No: 654567832 87632 C351','CN1203','PT02'),
('IC20234008','2023.04.29','3220',15,'3235','4469 6593 9027 9234','CN1218','PT04'),
('IC20235001','2023.05.01','1380',10,'1390','558 583 964 932','CN1207','PT03'),
('IC20235002','2023.05.02','15750',20,'15770','567 786 893 217','CN1208','PT03'),
('IC20235004','2023.05.07','1104',20,'1124','3734 1910 0727 0291','CN1214','PT05'),
('IC20235005','2023.05.09','2432',15,'2447','4867 6810 7492 5909','CN1222','PT04'),
('IC20235006','2023.05.10','970',10,'980','8738 7469 0984 6832','CN1206','PT05'),
('IC20235007','2023.05.13','11350',10,'11360','Cheque No: 943752468 75843 C803','CN1203','PT02'),
('IC20235008','2023.05.18','999',10,'1009','None','CN1208','PT01'),
('IC20235010','2023.05.23','594',10,'604','None','CN1212','PT01'),
('IC20235011','2023.05.25','10307',15,'10322','3774 5274 6422 0649','CN1205','PT05'),
('IC20235012','2023.05.30','990',10,'1000','None','CN1215','PT01'),
('IC20236001','2023.06.01','17100',20,'17120','381 950 738 269','CN1217','PT03'),
('IC20236003','2023.06.08','630',10,'640','None','CN1216','PT01'),
('IC20236004','2023.06.08','1330',20,'1350','4916 4267 0477 6733','CN1224','PT04'),
('IC20236005','2023.06.09','12880',20,'13000','Cheque No: 675876293 87620 D567','CN1218','PT02'),
('IC20236007','2023.06.18','14400',20,'14420','512 454 856 494','CN1218','PT03'),
('IC20236008','2023.06.18','2194',10,'2204','4748 3484 4854 9974','CN1204','PT04'),
('IC20236009','2023.06.20','2520',15,'2535','4539 0704 7910 5826','CN1203','PT05'),
('IC20237001','2023.07.02','5700',20,'5720','5396 7993 2891 0391','CN1220','PT04');

Create Table Room
(RID Varchar(15) Primary Key,
RNumber Varchar(15) Not Null,
RStatus Varchar(20) Not Null,
Floor Varchar(15) Not Null,
RCategoryID Varchar(15) Not Null,
Foreign Key (RCategoryID) References RoomCategory(RCategoryID));

Insert into Room values
('R01','RN-1001','Occupy','1st Floor','RC01'),
('R02','RN-1002','Vacant','1st Floor','RC02'),
('R03','RN-1003','Occupy','1st Floor','RC03'),
('R04','RN-1004','Occupy','1st Floor','RC02'),
('R05','RN-1005','Occupy','1st Floor','RC03'),
('R06','RN-1006','Occupy','1st Floor','RC01'),
('R07','RN-2001','Occupy','2nd Floor','RC04'),
('R08','RN-2002','Vacant','2nd Floor','RC07'),
('R09','RN-2003','Occupy','2nd Floor','RC05'),
('R10','RN-2004','Occupy','2nd Floor','RC06'),
('R11','RN-2005','Occupy','2nd Floor','RC04'),
('R12','RN-3001','Occupy','3rd Floor','RC09'),
('R13','RN-3002','Occupy','3rd Floor','RC07'),
('R14','RN-3003','Vacant','3rd Floor','RC05'),
('R15','RN-3004','Occupy','3rd Floor','RC09'),
('R16','RN-3005','Occupy','3rd Floor','RC06'),
('R17','RN-4001','Occupy','4th Floor','RC08'),
('R18','RN-4002','Occupy','4th Floor','RC10'),
('R19','RN-4003','Occupy','4th Floor','RC08'),
('R20','RN-4004','Vacant','4th Floor','RC08'),
('R21','RN-4005','Occupy','4th Floor','RC10'),
('R22','RN-5001','Occupy','5th Floor','RC12'),
('R23','RN-5002','Occupy','5th Floor','RC11'),
('R24','RN-5003','Occupy','5th Floor','RC11'),
('R25','RN-5004','Occupy','5th Floor','RC12');

Create Table Reservation
(RCode Varchar(15) Primary Key,
RDate Date Not Null,
TotalRoom Int Not Null,
Duration Varchar(15) Not Null,
CInDate Date Not Null,
COutDate Date Not Null,
CNumber Varchar(15) Not Null,
Foreign Key (CNumber) References Customer(CNumber),
ENumber Varchar(15) Not Null,
Foreign Key (ENumber) References Employee(ENumber),
RTypeID Varchar(15) Not Null,
Foreign Key (RTypeID) References ReservationType(RTypeID));

Insert Into Reservation Values
('RC20234001','2023.04.02',2,'7 nights','2023.04.10','2023.04.17','CN1207','EN001704','RT03'),
('RC20234003','2023.04.05',2,'5 nights','2023.04.06','2023.04.11','CN1218','EN001504','RT02'),
('RC20234004','2023.04.06',1,'3 nights','2023.04.08','2023.04.11','CN1214','EN001804','RT03'),
('RC20234005','2023.04.07',3,'8 nights','2023.04.09','2023.04.17','CN1203','EN001801','RT01'),
('RC20234006','2023.04.10',2,'7 nights','2023.04.12','2023.04.19','CN1210','EN002002','RT01'),
('RC20234008','2023.04.15',2,'14 nights','2023.04.18','2023.05.02','CN1208','EN001504','RT02'),
('RC20234009','2023.04.18',3,'7 nights','2023.04.22','2023.04.29','CN1218','EN001610','RT01'),
('RC20234010','2023.04.21',2,'12 nights','2023.04.25','2023.05.07','CN1214','EN002003','RT02'),
('RC20234012','2023.04.22',1,'4 nights','2023.04.24','2023.04.28','CN1203','EN001705','RT02'),
('RC20234014','2023.04.25',2,'5 nights','2023.04.26','2023.05.01','CN1207','EN002003','RT02'),
('RC20234015','2023.04.28',2,'8 nights','2023.05.01','2023.05.09','CN1222','EN001508','RT03'),
('RC20235001','2023.05.01',1,'5 nights','2023.05.05','2023.05.10','CN1206','EN001607','RT03'),
('RC20235002','2023.05.02',2,'3 nights','2023.05.15','2023.05.18','CN1208','EN002002','RT01'),
('RC20235003','2023.05.06',3,'5 nights','2023.05.08','2023.05.13','CN1203','EN002001','RT05'),
('RC20235004','2023.05.12',2,'7 nights','2023.05.18','2023.05.25','CN1205','EN001508','RT03'),
('RC20235005','2023.05.17',1,'3 nights','2023.05.20','2023.05.23','CN1212','EN001906','RT01'),
('RC20235008','2023.05.19',3,'10 nights','2023.05.22','2023.06.01','CN1217','EN001610','RT01'),
('RC20235010','2023.05.20',2,'14 nights','2023.05.25','2023.06.08','CN1224','EN001602','RT02'),
('RC20235011','2023.05.23',2,'5 nights','2023.05.25','2023.05.30','CN1215','EN001802','RT01'),
('RC20235012','2023.05.27',2,'10 nights','2023.05.30','2023.06.09','CN1218','EN001501','RT04'),
('RC20236001','2023.06.01',1,'5 nights','2023.06.03','2023.06.08','CN1216','EN001603','RT02'),
('RC20236003','2023.05.04',2,'10 nights','2023.06.08','2023.06.18','CN1208','EN001605','RT05'),
('RC20236004','2023.05.08',2,'3 nights','2023.06.15','2023.06.18','CN1204','EN001703','RT02'),
('RC20236005','2023.05.11',1,'8 nights','2023.06.12','2023.06.20','CN1203','EN001902','RT05'),
('RC20236007','2023.05.14',1,'15 nights','2023.06.17','2023.07.02','CN1220','EN001608','RT04');

Create Table Room_Reservation
(RCode Varchar(15) Not Null, 
 Foreign Key (RCode)References Reservation (RCode),
 RID Varchar(15) Not Null, 
 Foreign Key (RID) References Room (RID),
 Primary Key (RCode, RID));

Insert Into Room_Reservation Values
('RC20234001','R07'),
('RC20234001','R13'),
('RC20234003','R14'),
('RC20234003','R17'),
('RC20234004','R05'),
('RC20234005','R21'),
('RC20234005','R23'),
('RC20234005','R24'),
('RC20234006','R08'),
('RC20234006','R09'),
('RC20234008','R18'),
('RC20234008','R19'),
('RC20234009','R09'),
('RC20234009','R14'),
('RC20234009','R15'),
('RC20234010','R01'),
('RC20234010','R06'),
('RC20234012','R25'),
('RC20234014','R02'),
('RC20234014','R05'),
('RC20234015','R04'),
('RC20234015','R10'),
('RC20235001','R05'),
('RC20235002','R09'),
('RC20235002','R10'),
('RC20235003','R21'),
('RC20235003','R23'),
('RC20235003','R24'),
('RC20235004','R20'),
('RC20235004','R22'),
('RC20235005','R03'),
('RC20235008','R17'),
('RC20235008','R19'),
('RC20235008','R21'),
('RC20235010','R01'),
('RC20235010','R06'),
('RC20235011','R02'),
('RC20235011','R04'),
('RC20235012','R18'),
('RC20235012','R21'),
('RC20236001','R11'),
('RC20236003','R23'),
('RC20236003','R24'),
('RC20236004','R16'),
('RC20236004','R17'),
('RC20236005','R12'),
('RC20236007','R15');

-- Select all employees' information whose employment position is Receptionist (EPositionID - EP04).
Select E.ENumber, E.FName, E.LName, E.Address, E.Email, E.IDProof, EP.EPosition, EP.SalaryPerHourInEuro
from employee As E, employeeposition As EP
where E.EPositionID=EP.EPositionID AND EP.EPosition='Receptionist';

-- Select all vacant rooms and their category info.
Select R.RID, R.RNumber, R.RStatus, R.Floor, RC.RCategory, RC.Capacity, RC.PricePerNightInEuro
from room As R, roomcategory As RC
where R.RCategoryID=RC.RCategoryID AND R.RStatus='Vacant';

-- Select all customers' information whose level is Platinum (CLevelID - CL03).
Select C.CNumber, C.FName, C.LName, C.Email, C.IDProof, CL.CLevel, CL.Discount
from customer As C, customerlevel As CL
where C.CLevelID=CL.CLevelID AND CL.CLevel='Platinum';

-- Count employees of same employment position.
Select Count(E.ENumber) as NoOfEmployee, EP.EPosition, EP.SalaryPerHourInEuro
From employee As E, employeeposition As EP
where E.EPositionID=EP.EPositionID
Group By EP.EPosition;

-- List all reservations made in April 2023 in ascending order of their check-in dates with reservation types info and
-- info of employees handling the reservation.
Select R.RCode, R.RDate,R.CInDate, R.COutDate, E.FName, E.LName, E.EPositionID, RT.RType
From reservation As R, employee As E, reservationtype As RT
Where R.ENumber=E.ENumber AND R.RTypeID=RT.RTypeID AND R.RDate BETWEEN '2023/04/01' AND '2023/04/30'
Order By R.CInDate ASC;

-- List all invoices in descending order of their paid amounts with payment types info and
-- info of customers.
Select I.ICode, I.IssueDate, I.TotalAmountInEuro, I.CardNo, C.CNumber, C.CLevelID, PT.PType
From invoice As I, customer As C, paymenttype As PT
where I.CNumber=C.CNumber AND I.PTypeID=PT.PTypeID AND I.TotalAmountInEuro>1000
Order By I.TotalAmountInEuro DESC;

-- List of room categories where Bar & Restaurant service is available.
Select RC.RCategoryID, RC.RCategory, RC.PricePerNightInEuro, S.SName
From roomcategory As RC, category_service As CS, service AS S
Where RC.RCategoryID=CS.RCategoryID AND CS.SID=S.SID AND S.SName='Bar & Restaurant';

-- Select all vacant rooms where on call doctor service is available.(FOR TASK-3)
Select R.RID, R.RNumber, R.Floor, RC.RCategory, RC.Capacity, RC.PricePerNightInEuro, S.SName
From room As R, roomcategory As RC, category_service As CS, service As S
Where R.RCategoryID=RC.RCategoryID AND RC.RCategoryID=CS.RCategoryID AND CS.SID=S.SID AND R.RStatus='Vacant' AND S.SName='On-call Doctor';

-- Update the room status of room-number 1006 from 'Occupy' to 'Vacant'.
Update room
Set RStatus='Vacant'
where RNumber='RN-1006';

-- Update the email address of the customer with customer-number CN1215.
Update customer
Set Email='david0213vhong@yahoo.com'
where CNumber='CN1215';

-- Change reservation info of reservation with reservation-code RC20235005 at check-out date to 2023.05.25 and duration to 5 nights. 
Update reservation
Set Duration='5 Nights', COutDate='2023.05.25'
Where RCode='RC20235005';

-- Delete employee with employee-number EN001610.
Delete 
From employee
where ENumber='EN001610';

-- Deleting additional reservations related to employee-number EN001610.
Delete
From reservation
where ENumber='EN001610';

Delete
from room_reservation
where RCode='RC20234009';

Delete
from room_reservation
where RCode='RC20235008';

-- Delete Pet Hotel Service.
Delete 
from service
where SName='Pet Hotel';

-- Deleting additional data related to SID S10.
Delete
from category_service
where SID='S10';