-- Microsoft SQL Server - MSSM Studio
-- T-SQL 
-- "Execute" button in GUI after highlight to run code.

-- Creating a Database
-- CREATE Database <name>;

CREATE DATABASE restaurants;
-- execute in GUI after highlight to create DB

CREATE DATABASE computers;

USE restaurants;
--Using Databases.  MSSM Studio will update accordingly.

DROP Database computers;
-- delete the BD


-- SQL use to communicate with the RDMS DB.

CREATE DATABASE pets;
USE pets;

CREATE TABLE dogs(
    name VARCHAR(30),
    age INT
);

-- CREATE TABLE tablename(
--     column_name follow by data_type, name of dog could not be larger then 20 character.
--     column_name follow by data_type, age is a whole number.
-- );

CREATE TABLE cats(
    name VARCHAR(30),
    age INT,
    color VARCHAR(30)
):

INSERT INTO dogs(name, age) 
VALUES('bella', 4);

-- INSERT INTO table_name(col1, col2) VALUES('value1', 'value2');

INSERT INTO cats(name, age, color) 
VALUES('cindy', 4, 'brown');

--Insert many data at the same time

INSERT INTO dogs(name, age) 
VALUES('tom', 6), ('ryu', 5), ('max', 3);

SELECT * FROM cats
SELECT * FROM dogs
-- SELECT * FROM table_name;

DROP TABLE cats;
-- DROP TABLE table_name; 


-- SQL COMMANDS CATEGORIZATION
-- *****************************
-- Data Definition Language(DDL) - SQL commands to create and modify stucture of the database object
-- CREATE - DROP - **ALTER(use to alter the structure of a database: SYNTAX - ALTER TABLE table_name ADD column_name column-data_type)
ALTER TABLE dogs 
    ADD color VARCHAR(30);

INSERT INTO dogs(name, age, color) 
VALUES('sean', 3, 'grey')

ALTER TABLE dogs
    DROP COLUMN age;

-- Data Query Language(DQL)
-- Data Manipulation Language(DML)



-- SQL Constraints - NULL and DEFAULT(no-NULL)

CREATE TABLE customers(
    Username VARCHAR(20),
    Password VARCHAR(20),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(20),
    TelephoneNo INT
);

SELECT * FROM customers;

INSERT INTO customers(FirstName, LastName) VALUES('alex', 'martins');

-- Adding NULL Constraints "NOT NULL" as this is required.
CREATE TABLE customers(
    Username VARCHAR(20) NOT NULL,
    Password VARCHAR(20) NOT NULL,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(20),
    TelephoneNo INT
);
-- Email and TelephoneNo could be empty with the above schema


CREATE TABLE voters(
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    city VARCHAR(20) DEFAULT 'Chicago',
    TelephoneNo INT
);

INSERT INTO voters(FirstName, LastName) VALUES('kenny', 'smith'), ('tomo', 'power');
-- dafault value will be Chicago for kenny and tomo.

SELECT * FROM voters

-- this will override Chicago
INSERT INTO voters(FirstName, LastName, city) VALUES('kenny', 'smith', 'france');
