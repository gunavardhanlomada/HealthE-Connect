create database hospital;

use hospital;

CREATE TABLE specialist (
id int NOT NULL AUTO_INCREMENT,
specialist_name varchar(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE doctor (
id int NOT NULL AUTO_INCREMENT,
FullName varchar(255) NOT NULL,
DateOfBirth date DEFAULT NULL,
Qualification varchar(255) DEFAULT NULL,
Specialist varchar(255) DEFAULT NULL,
Email varchar(255) NOT NULL,
Phone varchar(20) DEFAULT NULL,
Password varchar(255) NOT NULL,
PRIMARY KEY (id),
UNIQUE KEY email (Email)
);

CREATE TABLE user_details (
id int NOT NULL AUTO_INCREMENT,
full_name varchar(255) NOT NULL,
email varchar(255) NOT NULL,
password varchar(255) NOT NULL,
PRIMARY KEY (id),
UNIQUE KEY email (email)
);

CREATE TABLE patients (
PatientID int NOT NULL,
First_Name varchar(30) DEFAULT NULL,
Last_Name varchar(30) DEFAULT NULL,
Gender varchar(5) DEFAULT NULL,
ContactNumber varchar(11) DEFAULT NULL,
Age int DEFAULT NULL,
EmailID varchar(30) DEFAULT NULL,
BloodGroup varchar(5) DEFAULT NULL,
Address varchar(50) DEFAULT NULL,
PRIMARY KEY (PatientID)
);

CREATE TABLE appointment(
id int NOT NULL AUTO_INCREMENT,
UserId int DEFAULT NULL,
FullName varchar(255) NOT NULL,
gender varchar(10) DEFAULT NULL,
age varchar(10) DEFAULT NULL,
AppointmentDate date DEFAULT NULL,
email varchar(255) NOT NULL,
phone varchar(20) DEFAULT NULL,
diseases varchar(255) DEFAULT NULL,
DoctorId int DEFAULT NULL,
address varchar(255) DEFAULT NULL,
status varchar(20) DEFAULT NULL,
PRIMARY KEY (id),
KEY user_id (UserId),
KEY doctor_id (DoctorId),
FOREIGN KEY (UserId) REFERENCES user_details (id),
FOREIGN KEY (DoctorId) REFERENCES doctor (id)
);