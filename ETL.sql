insert into dimbooking(booking_id,passenger_name,BOOKING_DATE,from_station,to_station,seat,coach)
select booking_id,passanger_name
from PASSENGER_BOOKING, dimbooking
where passenger_booking.booking_id = dimbooking.BOOKING_ID;

select * from PASSENGER_BOOKING;
insert into dimtrain(train_id,train_name)
select train_id,train_name from TRAIN;
insert into dimstation(station_id,station_name)
select station_id,station_name from STATION;

insert into booking_fact(booking_id,station_id,train_id)
select p.booking_id,s.station_id,t.train_id from PASSENGER_BOOKING p,station s, train t
where p.train_id = t.train_id and p.from_station=s.station_id;

update booking_fact
set cost = 15,no_of_passengers =1
where booking_id = 4;
update booking_fact
set cost = 30,no_of_passengers =1
where booking_id = 5;
update booking_fact
set cost = 10,no_of_passengers =1
where booking_id = 6;
update booking_fact
set cost = 40,no_of_passengers =1
where booking_id = 7;
update booking_fact
set cost = 20,no_of_passengers =1
where booking_id = 8;
update booking_fact
set cost =50,no_of_passengers =1
where booking_id = 9;
update booking_fact
set cost = 5,no_of_passengers =1
where booking_id = 10;
update booking_fact
set cost = 15,no_of_passengers =1
where booking_id = 11;
update booking_fact
set cost = 25,no_of_passengers =1
where booking_id = 12;
update booking_fact
set cost = 20,no_of_passengers =1
where booking_id = 13;
update booking_fact
set cost = 15,no_of_passengers =1
where booking_id = 14;

select * from booking_fact;
