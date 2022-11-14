if (total_rides <30) then
 insert into riders(rlevel) values(1);
elseif (total_rides<70) and (total_rides>30) then
 insert into riders(rlevel) values(2);
 else
	insert into riders(rlevel) values(3);
end if;




select p.pname "Pessenger's Name", sum(rd.distance) "Distance travelled today", sum(rd.bill) "Paid today"
from  rides_today rd
join passengers p
on rd.pid = p.pid
group by rd.pid; 

select r.rname "Rider's Name", p.pname "Passenger's Name"
from  rides_today rd
join riders r
on rd.rdr_id = r.rdr_id
join passengers p
on rd.pid = p.pid;  

-- 15
select distinct Riders.Riders_Name, Riders.Distance_travelled_today , Riders.Todays_Income, Passengers.Pessengers_Name from
(select r.rname "Riders_Name", sum(rd.distance) "Distance_travelled_today", sum(rd.bill) "Todays_Income"
from  rides_today rd
join riders r
on rd.rdr_id = r.rdr_id
group by rd.rdr_id
) Riders
 ,

(select p.pname "Pessengers_Name", sum(rd.distance) "Distance travelled today", sum(rd.bill) "Paid today"
from  rides_today rd
join passengers p
on rd.pid = p.pid
group by rd.pid) Passengers;

CREATE DEFINER=`root`@`localhost` TRIGGER `riders_BEFORE_INSERT` BEFORE INSERT ON `riders` FOR EACH ROW BEGIN
if (new.total_rides <30) and  new.rdr_id then
  insert into riders (rdr_id, rname,  vehicle, vtype, join_date, total_rides, income, distance, rlevel)
  values(new.rdr_id, new.rname,  new.vehicle, new.vtype, new.join_date, new.total_rides, new.income, new.distance, 1);
 
elseif (new.total_rides<70) and (new.total_rides>30) and  new.rdr_id then
  insert into riders (rdr_id, rname,  vehicle, vtype, join_date, total_rides, income, distance, rlevel)
  values(new.rdr_id, new.rname,  new.vehicle, new.vtype, new.join_date, new.total_rides, new.income, new.distance, 2);
 elseif (total_rides >70) and (rdr_id <> new.rdr_id)  and new.rdr_id then
  insert into riders (rdr_id, rname,  vehicle, vtype, join_date, total_rides, income, distance, rlevel)
  values(new.rdr_id, new.rname,  new.vehicle, new.vtype, new.join_date, new.total_rides, new.income, new.distance, 3);
end if;
END  