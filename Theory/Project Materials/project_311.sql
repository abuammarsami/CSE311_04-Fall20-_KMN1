create schema Vehicle_Subscription;
CREATE TABLE Employees(
Employee_Id int not null,
E_Name VARCHAR(20) not null,
Job_Id VARCHAR(10) NOT NULL,
Salary_ID int NOT NULL,
Phone_Number INT(11),
Email VARCHAR(25),
location_id NUMERIC(6)NOT NULL);
select *from employees;
insert into Employees(Employee_Id,E_Name,Job_Id,Salary_ID,Phone_Number,Email,Location_id)
 values
 ( 551,'KALAM','VEH_ASSO',881,0154298745,'klm@mail.com',1005),
 (552,'ASIF KARIM','AD_ASSI',882,014799648,'arif@yahoo.com',1001),
 (553,'ALI MAHIN','ASS_MANGER',883,01687495,'mahi@gmail.com',1002),
 (554,'ARNOB ROY','ACC_SUPER',884,0178954661,NULL,1001),
 (555,'SIAM HOSSIAN','CUS_AD',885,014569875,'siam@gmail.com',1002),
 (556,'FAZLA RABY','AD_ASSI',886,0169745899,'rabby@yahoo.com',1003),
 (557,'SAMIN YESAR','VEH_ASSO','887',0165478895,'Yes@mail.com',1001),
 (558,'MEHEDI IVN','ACC_SUPER',888,0198756478,'ivn@gmil.com',1004),
 (559,'ROHAN ISLAM','CUS_SUP',889,0148796145,'roh@mail.com',1005),
 (560,'FARDIN','IT_DEVP',890,0145878566,'nill@mail.com',1007),
 (561,'RAFIN SAMS','ASS_MANGER',891,016254977,'sam@mail.com',1007),
 (562,'HAMZA','DAM_TRAINE',892,012457855,'hzd@gamil.com',1008),
 (563,'AYON BISWAS','VEH_ASSO',893,014789654,'noyon@yahoo.com',1004),
 (564,'PALASH HQE','ASS_MENGER',894,017596455,'hqe@mail.comm',1005),
 (565,'KOWSHIK BOSH','ACC_SUPER',895,017854662,'bose@yahoo.com',1008),
 (566,'SUSMITA','CUS_SUPPER',896,NULL,NULL,1009),
 (567,'AMITAB BACH','ASS_MENGER',897,NULL,'abu@gnail.com',1009),
 (568,'SUFIA TAMANA','VEH_ASSO',898,015498762,NULL,1010),
 (579,'DEPIKA MIR','ASS_MENGER',899,NULL,NULL,1010),
 (580,'SIRAZ UDDIN','ACC_SUPER',900,0178946654,NULL,1006);
 

CREATE TABLE Warehouse_Locations(
Location_id NUMERIC(4) PRIMARY KEY,
Division VARCHAR(25),
City VARCHAR(30) NOT NULL,
Street_Address VARCHAR(40));
insert into warehouse_locations (Location_id,Division,City,Street_Address)
values(1001,'DHAKA','GAZIPUR','Bipsot training Area'),
(1002,'CHITTAGONG','RANGMATI','4A Kaptai Lake Road'),
(1003,'KHULNA','LOCKPUR','M/S Lata Enterprise street'),
(1004,'SYLHET','GOWAINGAT','Jaflong Station'),
(1005,'SYLHET','MOULVIBAZAR','Lawachara National Park Road'),
(1006,'CHITTAGONG','COX.S BAZAR','Laboni Ponit,Beach Road'),
(1007,'DHAKA',"NAWABGANJ",'KOLATOLI SHAIKA Residential Area'),
(1008,'DHAKA','DHAKA','CENTRAL Road Uttara'),
(1009,'RANGPUR','RANGPUR','Police Line Road,569'),
(1010,'BARISHAL','PATUAKHALI','PATUAKHALI sador Road , Risen Hotel');
select *from warehouse_locations;
TRUNCATE TABLE warehouse_locations;
drop table warehouse_locations;
drop table employees;