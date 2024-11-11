CREATE DATABASE Hotel_Management_System;

CREATE TABLE User_Table
(
User_ID INT IDENTITY (1, 1) NOT NULL, 
User_Name VARCHAR(150) NOT NULL,
User_Password VARCHAR(150) NOT NULL,
CONSTRAINT User_Table_User_ID_PK PRIMARY KEY (User_ID)
);
INSERT INTO User_Table VALUES
('NTU', '1176');
DROP TABLE User_Table;
CREATE TABLE Client_Table
(
Client_ID INT IDENTITY(1,1) NOT NULL, 
Client_FirstName VARCHAR(150) NOT NULL, 
Client_LastName VARCHAR(150) NOT NULL, 
Client_Phone VARCHAR(15) UNIQUE NOT NULL, 
Client_Address VARCHAR(150) NOT NULL,
CONSTRAINT Client_Table_Client_ID_PK PRIMARY KEY (Client_ID)
);
INSERT INTO Client_Table VALUES
('Hoang Trong', 'Phu', '9995992886', 'Viet Nam'), 
('Do The', 'Toan', '9763289132', 'Lao Cai'),
('Nguyen Dai', 'Nghia', '8192837465', 'Ma Lai');

CREATE TABLE Room_Table
(
Room_Number INT IDENTITY(1,1) NOT NULL,
Room_Type VARCHAR(20) NOT NULL,
Room_Phone VARCHAR(15) NOT NULL,
Room_Free VARCHAR (3) NOT NULL,
CONSTRAINT Room_Table_Room_Number_PK PRIMARY KEY (Room_Number)
)
DROP TABLE Room_Table;

INSERT INTO Room_Table VALUES 
('Single', '12345678', 'Yes'), 
('Family', '6789012', 'No'), 
('Suite', '789321', 'Yes'), 
('Couple', '6453012', 'No'), 
('Couple', '4312341', 'Yes');
CREATE TABLE Reservation_Table
(
Reservation_ID INT IDENTITY(1,1) NOT NULL, 
Reservation_Room_Type VARCHAR(6) NOT NULL, 
Reservation_Room_Number INT NOT NULL, 
Reservation_Client_ID INT UNIQUE NOT NULL,
Reservation_In VARCHAR(32) NOT NULL,
Reservation_Out VARCHAR(32) NOT NULL,
CONSTRAINT Reservation_Table_Reservation_ID_PK Primary Key(Reservation_ID)
);