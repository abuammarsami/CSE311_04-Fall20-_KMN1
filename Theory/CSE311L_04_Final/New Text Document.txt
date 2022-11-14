create schema CSE311L_04_Final_Exam;
-- 01
create table Riders(
	rdr_id int primary key,
    rname varchar(35),
    vehicle varchar(40),
    vtype varchar(2),
    join_date date,
    total_rides int,
    income decimal,
    distance decimal
);
create table Passengers(
	pid int primary key,
    pname varchar(35),
    join_date date
);
create table Rides_Today(
	rd_id int primary key,
    rdr_id int,
    pid int,
    distance decimal(6,2),
    bill decimal
);

insert into riders (rdr_id, rname,  vehicle, vtype, join_date, total_rides, income, distance)
			values( 1, "Abrar Fahim", "Honda Civic", "C", str_to_date("20-03-2020","%d-%c-%Y"), 75, 87000, 1200),
            ( 2, "Jafar Ahmed", "Yamaha R15", "B", str_to_date("12-01-2020","%d-%c-%Y"), 55, 60000, 900),
            ( 3, "Jannatul Lamia", "Toyota Prius", "C", str_to_date("04-04-2020","%d-%c-%Y"), 30, 33000, 350),
            ( 4, "Tanvir Ahmed", "Yamaha Pulsar", "B", str_to_date("01-12-2019","%d-%c-%Y"), 105, 100000, 1370),
            ( 5, "Shahriar Alam", "Bajaj Discover", "B", str_to_date("25-01-2020","%d-%c-%Y"), 5, 1000, 80),
            ( 6, "Ashfaq Nabid", "UM Sprt", "B", str_to_date("28-09-2020","%d-%c-%Y"), 1, 350, 22),
            ( 7, "SM Sayem", "Toyota Corolla", "C", str_to_date("08-08-2020","%d-%c-%Y"), 15, 5200, 190),
            ( 8, "Golam Haider", "Vespa", "B", str_to_date("16-03-2020","%d-%c-%Y"), 45, 52000, 650);
            
insert into passengers( pid, pname, join_date)
			values( 1, "Shahriar Chowdhury", str_to_date("02-01-2020","%d-%c-%Y")),
            ( 2, "Jamal E Mollah", str_to_date("21-10-2019","%d-%c-%Y")),
            ( 3, "Alvi Hossain", str_to_date("12-11-2020","%d-%c-%Y")),
            ( 4, "Tonmoy Jaman", str_to_date("27-01-2020","%d-%c-%Y")),
            ( 5, "Toukir Munshi", str_to_date("02-12-2019","%d-%c-%Y")),
            ( 6, "Yakub Noby", str_to_date("24-12-2019","%d-%c-%Y")),
            ( 7, "Mithila Rahman", str_to_date("27-02-2020","%d-%c-%Y")),
            ( 8, "Jobbar Sheikh", str_to_date("14-03-2020","%d-%c-%Y")),
            ( 9, "Chunnu Wahidul", str_to_date("07-06-2020","%d-%c-%Y")),
            ( 10, "Rakib Hasan", str_to_date("29-08-2020","%d-%c-%Y"));
            
insert into rides_today( rd_id, rdr_id, pid, distance, bill)
			values( 1, 1, 7, 14.3, 480),
            ( 2, 2, 10, 1.3, 40),
            ( 3, 4, 2, 8.9, 110),
            ( 4, 5, 4, 15.5, 260),
            ( 5, 7, 3, 5.1, 250),
            ( 6, 1, 7, 14.3, 510),
            ( 7, 1, 1, 9.5, 330),
            ( 8, 7, 6, 5.5, 280),
            ( 9, 8, 10, 8.2, 140),
            ( 10, 4, 8, 5.7, 90),
            ( 11, 2, 2, 3.4, 90),
            ( 12, 8, 6, 12.5, 165),
            ( 13, 4, 8, 15.6, 250),
            ( 14, 3, 6, 8.5, 290),
            ( 15, 4, 2, 5.1, 70);
            
select * from riders;
select * from passengers;
select * from rides_today;

-- 02
describe passengers;
describe riders;
describe rides_today;

select * from riders;
select * from passengers;
select * from rides_today;


-- 03
select  rdr_id, rname
from riders
where rdr_id not in( select distinct rdr_id from rides_today);

-- 04
select r.rdr_id "Rider's ID", r.rname "Rider's Name", p.pid "Passenger's Id", p.pname "Passenger's Name"
from riders r
join rides_today rd
on r.rdr_id = rd.rdr_id
join passengers p
on rd.pid = p.pid;

-- 05
select SUM(bill) "Toay's Revenue From Bikes"
from rides_today rd
join riders r
on rd.rdr_id = r.rdr_id
where r.vtype = "B";

-- 06
select r.rname "Rider's Name", r.vehicle, rd. distance "Shortest Distance Travelled by Bike"
from riders r
join rides_today rd
on r.rdr_id = rd.rdr_id
where r.vtype = "B" and rd.distance = (select min(rd.distance) 
									   from rides_today rd 
                                       join riders r 
                                       on rd.rdr_id = r.rdr_id
                                       where r.vtype = "B"); 
                                       

-- 07
select r.rname "Car Rider's Name", r.vehicle, rd. distance " Distance Travelled by Car"
from riders r
join rides_today rd
on r.rdr_id = rd.rdr_id
where r.vtype = "C" and rd.distance <10;

-- 08
select r.rname "Rider's Name", r.vehicle, sum(rd.bill) "Earned Today"
from riders r
join rides_today rd
on r.rdr_id = rd.rdr_id
group by rd.rdr_id;


-- 09
alter table riders
add (rlevel int);

-- 10
update riders
set rlevel = 1
where total_rides <30;

update riders
set rlevel = 2
where total_rides <70;

update riders
set rlevel = 3
where total_rides >70 ;

 

  
  