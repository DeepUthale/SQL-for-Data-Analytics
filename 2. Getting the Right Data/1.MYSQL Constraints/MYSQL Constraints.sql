# DataTypes in SQL
# char(6) -- London
# varchar(255) -- London, London24, Delhi*@
# More DataTypes in Strings : BINARY, VARBINARY, BLOB, TEXT, ENUM, SET
# More DataTypes in Int : TINYINT, SMALLINT, MEDIUMINT, INT, BIGINT
# Fixed Point DataType : DECIMAL(5,2) (where 5 is precision and 2 is the scale : store 5 digits and 2 decimals)
# Floating - Point : does not reserve a specific number of bits for integer part/ fractional part. Reserves certain-
# -number of bits for the number. FLOAT(8,5) - -999.99999
# DATE : YYYY-MM-DD # DATETIME(fsp) : YYYY-MM-DD hh:mm:ss
# YEAR : YYYY

create table London (
	CustomerID int,
    FirstName varchar(255),
    LastName varchar(255),
    Address varchar(255)
);

select * from london;

create table USA (
	ID int Not NULL,
    FirstName varchar(255) Not NULL,
    Age int,
    PRIMARY KEY(ID)
);

select * from usa;

create table orders (
	OrderID int not NULL,
    OrderNum int not NULL,
    ID int,
    PRIMARY KEY(OrderID),
    FOREIGN KEY (ID) references USA(ID)
);

select * from orders;

create table Person (
	ID int Not NULL,
    FirstName varchar(255) Not NULL,
    LastName varchar(255),
    age int,
    UNIQUE (ID),
    UNIQUE (age)
);

select * from person;

create table Colleges (
	college_id INT PRIMARY KEY,
    college_code VARCHAR(20),
    college_country VARCHAR(20) default 'USA'
);

INSERT INTO Colleges (college_id, college_code)
VALUES (1, 'APR76');

INSERT INTO Colleges (college_id, college_code, college_country)
VALUES (2, 'JWS89', 'UAE');

INSERT INTO Colleges (college_id, college_code)
VALUES (3, 'MAR7T');

select * from colleges;

-- create table with NOT NULL constraint
create table College (
	college_id INT NOT NULL,
    college_code VARCHAR(20),
    college_name VARCHAR(20)
);

-- gives error due to NOT NULL constraint
INSERT INTO College (college_id, college_code, college_name)
VALUES (NULL, 'NYC76', "US");

select * from college;