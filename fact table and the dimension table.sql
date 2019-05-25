create table dimbooking (
booking_id INT,
passenger_name VARCHAR(50) NOT NULL,
seat INT(5) NOT NULL,
COACH VARCHAR(2) NOT NULL,
BOOKING_DATE timestamp default now(),
from_station INT(10) NOT NULL,
to_station VARCHAR(50) NOT NULL,
PRIMARY KEY(BOOKING_ID)
);

create table dimtrain(
TRAIN_ID INT(10) NOT NULL,
TRAIN_NAME VARCHAR(50) NOT NULL,
PRIMARY KEY (TRAIN_ID)
);

create table dimstation(
STATION_ID INT(10) NOT NULL,
STATION_NAME VARCHAR(50) NOT NULL,
PRIMARY KEY(STATION_ID)
);

create table booking_fact(
STATION_ID INT(10) NOT NULL REFERENCES DIMSTATION(STATION_ID),
booking_id INT REFERENCES dimbooking(booking_id),
TRAIN_ID INT(10) NOT NULL REFERENCES DIMTRAIN(TRAIN_ID),
cost INT(10),
No_of_passengers INT(10),
PRIMARY KEY(BOOKING_ID)
);
