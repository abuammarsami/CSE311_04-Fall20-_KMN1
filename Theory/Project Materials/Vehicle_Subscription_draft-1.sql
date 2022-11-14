create schema Vehicle_Subscription;





create schema Vehicle_Subscription;



create table Subscribers
(
	Client_Id int primary key not null,
	ClientName varchar (20) not null,
    Phone_No varchar (11),
    Address varchar (40) not null,
    Email varchar (20),
    National_Id int8,
    Vehicle_Id int (5) not null,
    Package_Id int (5),
    Payment_id int (5),
    LicenseExpiry_date date,
    Location_Id int (4),
    
    Gender varchar (10)
);






drop table subscribers;

select * from Subscribers;


insert into Subscribers (Client_Id,ClientName, Phone_No, Address, Email,  National_Id , Vehicle_Id, Package_Id, Payment_id, LicenseExpiry_date,Gender,Location_Id )
values  (201,"Mahbub","11111111111", "Dhamrai", "mahbub@gmail.com", 95047100000,  2, 101, 301, str_to_date('10-Jan-25','%d-%b-%y'), "Male",1006),
		(202,"Jamil", "22222222222", "Puthia", "jamil42@gmail.com", 35045600000,  6, 102, 302, str_to_date('22-Nov-24','%d-%b-%y'),"Male",1002),
		(203,"Tonni", "33333333333", "Habiganj", "kader01@gmail.com", 56847100000,  9, null, 303, str_to_date('15-Feb-26','%d-%b-%y'),"Female",1001),
		(204,"Tanvir","44444444444", "Paikgachha", "tan506@gmail.com", 95047105600,  4, 104, 304, str_to_date('18-Dec-22','%d-%b-%y'),"Male",1004),
		(205,"Saif", "55555555555", "Kutubdia", "saif@gmail.com", 65047105600, 12, null, 305, str_to_date('27-Apr-25','%d-%b-%y'),"Male",1005),
		(206,"Manik", "66666666666", "Bandarban", "manik10@gmail.com", 23485105600, 5, 103, 306, str_to_date('30-Mar-24','%d-%b-%y'),"Male",1006),
		(207,"Adit", "77777777777", "Narayanganj", "adit@gmail.com", 23485102564,3 , null, 307, str_to_date('17-May-23','%d-%b-%y'),"Male",1007),
        (208,"Mostak", "88888888888", "Fullbaria", "mostak@gmail.com", 23924602564,1 , 105, 308, str_to_date('21-Jul-27','%d-%b-%y'),"Male",1001),
        (209,"Salmoon", "9999999999", "Banshkhali", "sal65@gmail.com", 4285102564,10 , 106, 309, str_to_date('11-Dec-25','%d-%b-%y'),"Male",1008),
        (210,"Tama", "10101010101", "Savar", "Tama101@gmail.com", 4528617564,4 , null, 310, str_to_date('14-Aug-24','%d-%b-%y'),"Female",1009),
        (211,"Pabel", "20202020202", "Dinajpur", "pabel@gmail.com", 4525672314,11 , 103, 311, str_to_date('26-Oct-22','%d-%b-%y'),"Male",1001),
		(212,"Samira", "30303030303", "Durgapur", "sam11@gmail.com", 4359672314,8 , null, 312, str_to_date('16-Mar-27','%d-%b-%y'),"Female",1006),
        (213,"Chung", "40404040404", "China", "chung@gmail.com", 4380497614,10 , null, 313, str_to_date('25-Sep-24','%d-%b-%y'),"Male",1001),
        (214,"Sam", "50505050505", "USA", "jhatla@gmail.com", 9460497614,7 , 102, 314, str_to_date('25-Sep-24','%d-%b-%y'),"Female",1002),
        (215,"Tuba", "60606060606", "Godagari", "tuba@gmail.com", 9480195714,1 , 102, 315, str_to_date('25-Sep-24','%d-%b-%y'),"Female",1010);
        
        



create table Subscription_Package
(
	Package_Id int,
    packageName varchar (20),
    Duration_In_Days int (10),
    Discount_in_percentage int (5),
    primary key (Package_Id)
);




select * from subscription_package;
drop table subscription_package;


insert into subscription_package(Package_Id, packageName, Duration_In_Days, Discount_in_percentage)
values  (101, "Championship", 60, 5),
		(102, "Tokkor", 90, 10),
        (103, "Race", 105, 15),
        (104, "Rider", 120, 20),
        (105, "vikings", 135, 25),
        (106, "SuperRider", 150, 30);
        
        
        
	