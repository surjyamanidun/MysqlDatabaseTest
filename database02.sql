show databases ;
USE employeesdb;
select database();
CREATE TABLE Personsdata (  
    ID int NOT NULL,  
    Name varchar(45) NOT NULL,  
    Age int,
    City varchar(25) default 'New York' 
);
INSERT INTO Personsdata(Id, Name, Age, City)   
VALUES (1,'Robert', 15, 'Florida'),   
(2, 'Joseph', 35, 'California'),   
(3, 'Peter', 40, 'Alaska');
select * from Personsdata;
INSERT INTO Personsdata(Id, Name, Age) VALUES (1,'Brayan', 15);
select * from Personsdata;

CREATE TABLE Persons (  
    ID int NOT NULL PRIMARY KEY,   
    Name varchar(45) NOT NULL,   
    Age int,   
    City varchar(25));
    INSERT INTO Persons(Id, Name, Age, City)   
VALUES (1,'Robert', 15, 'Florida') ,   
(2, 'Joseph', 35, 'California'),   
(3, 'Peter', 40, 'Alaska');
INSERT INTO Persons(Id, Name, Age, City)   
VALUES (1,'Stephen', 15, 'Florida');
INSERT INTO Persons(Id, Name) VALUES (4,'sammy');
INSERT INTO Persons(Id, Name, city) VALUES (5,'samm','');
INSERT INTO Persons(Id, Name, Age) VALUES (1,'Brayan', 15);
select * from Persons;
CREATE TABLE Animals(  
id int NOT NULL AUTO_INCREMENT,   
name CHAR(30) NOT NULL,   
PRIMARY KEY (id));
INSERT INTO Animals (name) VALUES   
('Tiger'),('Dog'),('Penguin'),   
('Camel'),('Cat'),('Ostrich');
SELECT * FROM Animals;
CREATE TABLE Shirts (    
    id INT PRIMARY KEY AUTO_INCREMENT,     
    name VARCHAR(35),     
    size ENUM('small', 'medium', 'large', 'x-large')    
);
INSERT INTO Shirts(id, name, size)     
VALUES (1,'t-shirt', 'medium'),     
(2, 'casual-shirt', 'small'),     
(3, 'formal-shirt', 'large');
SELECT * FROM Shirts;
CREATE INDEX idx_name ON Shirts(name);
SELECT * FROM Shirts USE INDEX(idx_name);
CREATE TABLE Persons2 (Person_ID int PRIMARY KEY,   
Name varchar(45) NOT NULL,   
Age int,   
City varchar(25)  
);
CREATE TABLE Orders (  
    Order_ID int NOT NULL PRIMARY KEY,  
    Order_Num int NOT NULL,  
    Person_ID int,  
    FOREIGN KEY (Person_ID) REFERENCES Persons2(Person_ID)  
);
INSERT INTO Persons2 values(1,'john',30,'london'),
                          (2,'david',35,'paris'),
                          (3,'roman',40,'tokiyo');
INSERT INTO Orders values(4, 555, 1),
                         (5, 666, 2),
                         (6, 777, 3);
INSERT INTO Orders(Order_ID,Order_Num) values (8, 1522);  
 SELECT * from Persons2;
 SELECT * from Orders;
 UPDATE Orders set Person_ID = 9 where Order_ID=4;
 UPDATE update Orders set Person_ID = 3, Order_Num =777 where Order_ID=4;
UPDATE Orders set Person_ID = 9 where Order_ID=4;
UPDATE update Orders set Person_ID = 3, Order_Num =777 where Order_ID=4;
UPDATE update Orders set Person_ID = 3, Order_Num =777 where Order_ID=4;
SELECT * from Orders;
DELETE from Orders where Order_ID=4;
DELETE from Orders where Person_ID=1;
DELETE from Orders order by Order_ID Desc limit 2;
SELECT Order_ID,Order_Num,Person_ID from Orders;
SELECT Order_ID,Order_Num,Person_ID from Orders where Order_ID=5
SELECT * from Orders where Person_ID in(1,1);
SELECT * from Orders Group by Person_ID;
