use  SaintClaraServices 

create table CustomerDetails( 
Customer_ID int primary key, 
Client_ID int,
FatherName char(225),
MotherName char(225),
Amount bigint,
Period int,
Premimum bigint,
NomineeName char(225),
Dates date,
Times time,
Constraint FK_CatID FOREIGN KEY(Client_ID) references CustomerHeader(Client_ID)
)

select * from CustomerDetails

-- Modify --
Alter table CustomerDetails  MODIFY Period bigint
-- Add column --
Alter table CustomerDetails  Add Plan varchar(225)
-- drop column --
Alter table CustomerDetails  drop column Times


insert into CustomerDetails(Customer_ID,Client_ID,FatherName,MotherName,Amount,Period,Plan,Premimum,NomineeName,Dates) values (1,1,'Fahad','Naheed',400000, '4 year','Car Insurance',20000,'Brother',"2012-06-20")
insert into CustomerDetails(Customer_ID,Client_ID,FatherName,MotherName,Amount,Period,Plan,Premimum,NomineeName,Dates) values (2,2,'Naeem','Seema',300000, 3 ,'Health Insurance',30000,'Wife',"2009-01-15")
insert into CustomerDetails(Customer_ID,Client_ID,FatherName,MotherName,Amount,Period,Plan,Premimum,NomineeName,Dates) values (3,3,'Nasir','Zahida',100000, 3 ,'Health Insurance',10000,'Brother',"2014-12-30")
insert into CustomerDetails(Customer_ID,Client_ID,FatherName,MotherName,Amount,Period,Plan,Premimum,NomineeName,Dates) values (4,4,'Rehman','Sadia',300000, 2.5 ,'Home Insurance',30000,'Sister',"2013-08-05")
insert into CustomerDetails(Customer_ID,Client_ID,FatherName,MotherName,Amount,Period,Plan,Premimum,NomineeName,Dates) values (5,5,'Malik','Ashna',100000, 4 ,'Car Insurance',10000,'Wife',"2010-02-16")
insert into CustomerDetails(Customer_ID,Client_ID,FatherName,MotherName,Amount,Period,Plan,Premimum,NomineeName,Dates) values (6,6,'Fahad','Soha',350000, 2.5 ,'Home Insurance',35000,'Brother',"2022-01-15")
insert into CustomerDetails(Customer_ID,Client_ID,FatherName,MotherName,Amount,Period,Plan,Premimum,NomineeName,Dates) values (7,7,'Malik','Romana',400000, 5 ,'Life Insurance',40000,'Sister',"2011-03-21")
insert into CustomerDetails(Customer_ID,Client_ID,FatherName,MotherName,Amount,Period,Plan,Premimum,NomineeName,Dates) values (8,8,'Hussain','Fariha',200000, 2 ,'Car Insurance',20000,'Brother',"2012-06-20")
insert into CustomerDetails(Customer_ID,Client_ID,FatherName,MotherName,Amount,Period,Plan,Premimum,NomineeName,Dates) values (9,9,'Asif','Nadia',45000, 3 ,'Health Insurance',45000,'Brother',"2019-07-25")
insert into CustomerDetails(Customer_ID,Client_ID,FatherName,MotherName,Amount,Period,Plan,Premimum,NomineeName,Dates) values (10,10,'Hussain','Shumaila',250000, 2 ,'Car Insurance',25000,'Son',"2017-01-09")


Update CustomerDetails Set Plan = 'Home Insurance' where Customer_ID = 9 