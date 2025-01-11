--CREATE DATABASE HOTELROOMMANAGEMENT
USE HotelRoomManagement
/*
CREATE TABLE CUSTOMER 
(
CustomerId int IDENTITY(1,1) PRIMARY KEY,
CName varchar(50) NOT NULL ,
CGender varchar(10) NOT NULL 

)
*/
/*
CREATE TABLE ROOM
(
RoomNo int IDENTITY(1,1) PRIMARY KEY,
FloorNo int  ,
Roomtype varchar(10) NOT NULL 

)
*/
/*
CREATE TABLE STAFFDETAILS
(
StaffId int IDENTITY(1,1) PRIMARY KEY,
EducationQ varchar(50) NOT NULL,
ShiftTime varchar(50) NOT NULL,
Sage int NOT NULL,
SGender varchar(10) NOT NULL 

)
*/
/*
CREATE TABLE SWITCHBOARD
(
CustomerList varchar(50) NOT NULL,
RoomList varchar(50) NOT NULL,
RoomAvailability varchar(50) NOT NULL,
Payment varchar(50) NOT NULL,
CheckInOut varchar(50) NOT NULL,
Totalcost varchar(50) NOT NULL,
TotalOnlinepayment varchar(50) NOT NULL
)
*/
/*
CREATE TABLE PAYMENTMETHOD
(
cash varchar(20) ,
vatdiscountoffer varchar(20),
card varchar(30) ,
onlinesystem varchar(20)
)

*/
CREATE TABLE ADMINPANEL 
(
StaffId int IDENTITY(1,1) FOREIGN KEY REFERENCES STAFFDETAILS(StaffId),
CustomerId int IDENTITY(1,1) FOREIGN KEY REFERENCES CUSTOMER(CustomerId),
RoomNo int IDENTITY(1,1) FOREIGN KEY REFERENCES ROOM(RoomNo)
)