

create schema Vehicle_Subscription;



create table Subscribers
(
	Client_Id int not null,
	ClientName varchar (20) not null,
    Phone_No varchar (11),
    Address varchar (40) not null,
    Email varchar (20),
    National_Id int,
    Vehicle_Id int not null,
    Package_Id int,
    Payment_id int,
    LicenseExpiry_date date,
    
    Gender varchar (10)
);


drop table subscribers;

select * from Subscribers;


insert into Subscribers (Client_Id,ClientName, Phone_No, Address, Email,  National_Id , Vehicle_Id, Package_Id, Payment_id, LicenseExpiry_date,Gender)
values  (201,"Mahbub", "11111111111", "Dhamrai", "mahbub@gmail.com", 95047100000,  2, 101, 301, str_to_date('10-Jan-25','%d-%b-%y'), "Male"),
		(202,"Jamil", "22222222222", "Puthia", "jamil42@gmail.com", 35045600000,  6, 102, 302, str_to_date('22-Nov-24','%d-%b-%y'),"Male"),
		(203,"Tonni", "33333333333", "Habiganj", "kader01@gmail.com", 56847100000,  9, null, 303, str_to_date('15-Feb-26','%d-%b-%y'),"Female"),
		(204,"Tanvir", "44444444444", "Paikgachha", "tan506@gmail.com", 95047105600,  4, 104, 304, str_to_date('18-Dec-22','%d-%b-%y'),"Male"),
		(205,"Saif", "55555555555", "Kutubdia", "saif@gmail.com", 65047105600, 12, null, 305, str_to_date('27-Apr-25','%d-%b-%y'),"Male"),
		(206,"Manik", "66666666666", "Bandarban", "manik10@gmail.com", 23485105600, 5, 103, 306, str_to_date('30-Mar-24','%d-%b-%y'),"Male"),
		(207,"Adit", "77777777777", "Narayanganj", "adit@gmail.com", 23485102564,3 , null, 307, str_to_date('17-May-23','%d-%b-%y'),"Male"),
        (208,"Mostak", "88888888888", "Fullbaria", "mostak@gmail.com", 23924602564,1 , 105, 308, str_to_date('21-July-27','%d-%b-%y'),"Male"),
        (209,"Salmoon", "9999999999", "Banshkhali", "sal65@gmail.com", 4285102564,10 , 106, 309, str_to_date('11-Dec-25','%d-%b-%y'),"Male"),
        (210,"Tama", "10101010101", "Savar", "Tama101@gmail.com", 4528617564,4 , null, 310, str_to_date('14-Aug-24','%d-%b-%y'),"Female"),
        (211,"Pabel", "20202020202", "Dinajpur", "pabel@gmail.com", 4525672314,11 , 103, 311, str_to_date('26-Oct-22','%d-%b-%y'),"Male"),
		(212,"Samira", "30303030303", "Durgapur", "sam11@gmail.com", 4359672314,8 , null, 312, str_to_date('16-Mar-27','%d-%b-%y'),"Female"),
        (213,"Chung", "40404040404", "China", "chung@gmail.com", 4380497614,10 , null, 313, str_to_date('25-Sep-24','%d-%b-%y'),"Male"),
        (214,"Sam", "50505050505", "USA", "jhatla@gmail.com", 9460497614,7 , 102, 314, str_to_date('25-Sep-24','%d-%b-%y'),"Female"),
        (215,"Tuba", "60606060606", "Godagari", "tuba@gmail.com", 9480195714,1 , 102, 315, str_to_date('25-Sep-24','%d-%b-%y'),"Female");
        
        



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
        
        
        
   primary key (Client_Id),     
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
create schema  Vehicle_Subscription;

create table Vehicles (
	Vehicle_Id int(3) not null primary key auto_increment, 
	Vehicle_Name varchar(40) not null,
    Model int,
    Vehicle_Type varchar(30) not null,
    Seating_Capacity int not null,
    Vehicle_Features varchar(100),
    Registration_Number varchar(45) not null,
	Local_Cost int not null,
	Subscription_Fee int(10) not null
);

create table Insurance(
	Insurance_No int(20)  not null primary key,
    Renewal_Fee int(6) not null,
    Ins_Company varchar(35) not null,
    Issue_Date date not null,
    Expiry_Date date not null
);

insert into Vehicles( Vehicle_Name, Model, Vehicle_Type, Seating_Capacity, Vehicle_Features, Registration_Number, Local_Cost, Subscription_Fee)
			values( "BMW X1", 2020, "SportX", 5, "panoramic sunroof, rain-sensing wipers", "Dhaka Metro-Mo-0001", 8000000, 60000),
				  ( "Audi Q2", 2020, "SUV", 5, "ambient lighting, digital instrument cluster, cruise control","Dhaka Metro-Mo-0002", 7500000,58000),
                  ( "Audi RS 7", 2020, "Sedan", 4, "Engine 3996 cc,Top Speed Upto 305kmph", "Dhaka Metro-Mo-0003", 17000000, 150000),
                  ( "Audi A4", 2019, "SUV", 5, "Engine 1998 cc,Top Speed Upto 215kmph", "Dhaka Metro-Mo-0004", 7000000, 52000),
				  ( "Audi A5", 2020, "SUV", 5, "Engine 2200 cc,Top Speed Upto 255kmph", "Dhaka Metro-Mo-0005", 90000000, 60000),
				  ( "Chevrolet RX5", 2019, "Sedan", 5, "Engine 2700 cc,Top Speed Upto 255kmph", "Dhaka Metro-Mo-0006",12000000, 70000),
				  ( "Toyota Corolla X", 2016, "Sedan", 4, "Engine 1500 cc,Top Speed Upto 195kmph", "Dhaka Metro-GHa-0007", 3500000, 30000),
                  ( "Toyota Corolla Xr", 2018, "Sedan", 4, "Engine 1650 cc,Top Speed Upto 205kmph", "Dhaka Metro-GHa-0008", 4000000, 35000),
                  ( "Toyota Allion ", 2016, "Sedan", 4, "Engine 1500 cc,Top Speed Upto 195kmph", "Dhaka Metro-GHa-0009", 3500000, 30000),
                  ( "Toyota Allion R", 2018, "Sedan", 4, "Engine 1650 cc,Top Speed Upto 205kmph", "Dhaka Metro-GHa-0010", 4000000, 35000),
                  ( "Toyota Premio Superior", 2016, "Sedan", 4, "Engine 1500 cc,Top Speed Upto 195kmph", "Dhaka Metro-GHa-0011", 3800000, 32000),
                  ( "Toyota Premio Superior", 2019, "Sedan", 4, "Engine 1650 cc,Top Speed Upto 220kmph", "Dhaka Metro-GHa-0012", 4500000, 40000),
                  ( "Huyndai CV R", 2019, "SUV", 5, "Engine 1650 cc,Top Speed Upto 220kmph", "Dhaka Metro-GHa-0013", 4500000, 40000),
                  ( "The New Royal Enfield Classic 350", 2019, "Bike", 2, "Engine 200 cc,Top Speed Upto 150kmph", "Dhaka Metro-La-0014", 180000, 8000),
                  ( "TVS Apache RTR 160 4V", 2018, "Bike", 2, "Engine 220 cc,Top Speed Upto 170kmph", "Dhaka Metro-La-0015", 200000, 10000),
                  ( "Honda CBR 250", 2020, "Bike", 2, "Engine 250 cc,Top Speed Upto 200kmph", "Dhaka Metro-La-0016", 300000, 12000),
                  ( "Yamaha Star VMAX", 2020, "Bike", 2, "Engine 1679 cc,Top Speed Upto 250kmph", "Dhaka Metro-La-0017", 1700000, 25000);

select * from Vehicles;
truncate table Vehicles;






