select * from empdb;
drop database empdb;
show tables;
show tables;
show full tables;
drop database emp;
drop database employeedb;
show tables;


CREATE DATABASE employeesdb;
USE employeesdb;
Select * from addressbookservice.addressbook;
Select * from address_book_service_database.addressbook_name;
select database();
create table employee_data 
     (
       id             INT unsigned NOT NULL AUTO_INCREMENT,
       name           VARCHAR(150) NOT NULL,
       salary         Double NOT NULL,
       start          DATE NOT NULL,
       PRIMARY KEY    (id)
     );
     DESCRIBE employee_data;
     INSERT INTO employee_data (name, salary, start) VALUES
              ( 'Sujya', 1000000.00, '2019-01-03' ),
              ( 'Anurag', 2000000.00, '2020-11-13' ),
              ( 'chulbul', 3000000.00, '2021-05-21' );
SELECT * FROM employee_data;
SELECT salary FROM employee_data WHERE name = 'Anurag';
SELECT * FROM employee_data WHERE start BETWEEN CAST('2020-01-01' AS DATE) AND DATE(NOW());
CREATE TABLE employee_table(  
    id int NOT NULL AUTO_INCREMENT,  
    name varchar(45) NOT NULL,  
    occupation varchar(35) NOT NULL,  
    age int NOT NULL,  
    PRIMARY KEY (id)  
);
desc employee_table;
drop table employee_table;
CREATE TABLE customer_table(  
    cus_id int AUTO_INCREMENT PRIMARY KEY,  
    cus_name varchar(45) NOT NULL,  
    cus_lastname varchar(35) NOT NULL,  
    cus_age int NOT NULL  
);
desc customer_table;
ALTER TABLE customer_table  
ADD cus_number varchar(40) NOT NULL;
desc customer_table;
ALTER TABLE customer_table
ADD cus_address varchar(100) NOT NULL  
AFTER cus_lastname,  
ADD cus_salary int(100) NOT NULL  
AFTER cus_age;
desc customer_table;
ALTER TABLE customer_table  
MODIFY cus_lastname varchar(40) NULL;
ALTER TABLE customer_table 
DROP COLUMN cus_address;
ALTER TABLE customer_table  
RENAME TO cus_table;
CREATE TABLE customer (    
    Id int PRIMARY KEY NOT NULL,     
    Name varchar(45) NOT NULL,     
    Product varchar(45) DEFAULT NULL,     
    Country varchar(25) DEFAULT NULL,     
    Year int NOT NULL    
);

INSERT INTO customer ( Id, Name, Product, Country, Year)     
VALUES (1, 'Stephen', 'Computer', 'USA', 2015),     
(2, 'Joseph', 'Laptop', 'India', 2016),     
(3, 'John', 'TV', 'USA', 2016),    
(4, 'Donald', 'Laptop', 'England', 2015),    
(5, 'Joseph', 'Mobile', 'India', 2015),    
(6, 'Peter', 'Mouse', 'England', 2016);
select * from customer;
desc customer;
truncate table customer;
CREATE TABLE Persons (  
    ID int NOT NULL,  
    Name varchar(45) NOT NULL,  
    Age int CHECK (Age>=18)  
);
drop table Persons;
