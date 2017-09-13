USE master;
GO

--Create learnchef database
CREATE DATABASE learnchef;
GO

USE learnchef;
GO

CREATE TABLE customers(
    id uniqueidentifier NOT NULL DEFAULT newid(),
    PRIMARY KEY(id),
    first_name VARCHAR(64),
    last_name VARCHAR(64),
    email VARCHAR(64)
);
GO

INSERT INTO customers(id, first_name, last_name,email) VALUES(newid(), 'Tony', 'Stark', 'ironman@la.la');
INSERT INTO customers(id, first_name, last_name,email) VALUES(newid(), 'Timur', 'Markunin', 'tmarkunin@la.la');
GO
