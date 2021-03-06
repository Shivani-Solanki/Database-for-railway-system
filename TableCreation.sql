CREATE TABLE TRAIN (
TRAIN_ID INT(10) NOT NULL,
TRAIN_NAME VARCHAR(50) NOT NULL,
PRIMARY KEY (TRAIN_ID)
);

CREATE TABLE STATION (
STATION_ID INT(10) NOT NULL,
STATION_NAME VARCHAR(50) NOT NULL,
PRIMARY KEY(STATION_ID)
);

CREATE TABLE TRAIN_SCHEDULE (
TRAIN_ID INT(10) NOT NULL REFERENCES TRAIN(TRAIN_ID),
STATION_ID INT(10) NOT NULL REFERENCES STATION(STATION_ID),
IN_TIME TIME NOT NULL, 
OUT_TIME TIME NOT NULL,
SEQUENCE INT(4),
PRIMARY KEY(TRAIN_ID,STATION_ID)
);

CREATE TABLE PASSENGER_BOOKING(
BOOKING_ID INT UNSIGNED NOT NULL AUTO_INCREMENT,
TRAIN_ID INT(10) NOT NULL REFERENCES TRAIN(TRAIN_ID),
PASSANGER_NAME VARCHAR(50) NOT NULL,
BOOKING_DATE timestamp default now(),
FROM_STATION INT(10) NOT NULL,
TO_STATION INT(10) NOT NULL,
SEAT INT(5) NOT NULL,
COACH VARCHAR(2) NOT NULL,
PRIMARY KEY(BOOKING_ID)
);

