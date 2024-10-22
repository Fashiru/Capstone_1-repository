Create Database DowntownHotel;

Create Table Customers(
CustomerID INTEGER (225)primary key,
FirstName VARCHAR(40),
LastName VARCHAR(40),
Address VARCHAR(40),
City VARCHAR(40),
ZipCode VARCHAR(40),
Phone INTEGER (20),
Email VARCHAR(40));

Create Table Rooms(
	RoomID INT(225) primary key,
	RoomNumber INT(40),
	RoomType VARCHAR(225),
	Amenities TEXT,
	Price Decimal(5,2));

Create Table Reservations(
	ReservationID VARCHAR(40)primary key,
	CustomerID INTEGER(40),
	RoomID INTEGER(40),
	CheckInDate DATE, 
	CheckOutDate DATE,
	StatusOfReservation VARCHAR(40),
    
CONSTRAINT fk_Customers foreign key (CustomerID) REFERENCES Customers(CustomerID),
CONSTRAINT fk_Rooms foreign key (RoomID) References Rooms(RoomID));

CREATE TABLE Payments(
PaymentID INT primary key,
ReservationID VARCHAR(40),
PaymentDate DATE,
Amount DECIMAL(5,2),
PaymentMethod VARCHAR(40),

CONSTRAINT fk_Reservations foreign key (ReservationID) REFERENCES Reservations(ReservationID));


CREATE TABLE Staffs(
	StaffID INT primary key,
	FirstName VARCHAR(40),
	LastName VARCHAR(40),
	StartDate DATE,
	Salary DECIMAL (5,2),
	BirthDate VARCHAR (40),
	Phone INTEGER,
	RoleOfStaff VARCHAR(40));
    
    
CREATE TABLE Services(
	ServiceID VARCHAR(225) primary key,
	ServiceName VARCHAR(225),
	DescriptionOfService TEXT,
	Price DECIMAL(5,2));

CREATE TABLE MenuItems(
	MenuItemID INTEGER primary key,
	NameOfItem VARCHAR(40),
	DescriptionOfItem TEXT,
	Price DECIMAL(5,2),
	Category VARCHAR(40),
    OrderID INT, 
    CONSTRAINT fk_orders FOREIGN KEY (OrderID) REFERENCES Orders(OrderID));
    
    
    
CREATE TABLE Orders(
		OrderID INT primary key,
        TableRoomNumber INT,
        OrderTime INT,
        TotalAmount DECIMAL(5,2),
        StatusOfOrder VARCHAR(225));
        
        
        
CREATE TABLE OrderDetail(
OrderDetailID INTEGER primary key,
MenuItemID INTEGER,
Quantity INTEGER,
CONSTRAINT fk_menuitem FOREIGN key (MenuItemID) REFERENCES MenuItems(MenuItemID));

