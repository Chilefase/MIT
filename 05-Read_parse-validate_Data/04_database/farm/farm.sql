DROP DATABASE IF EXISTS `Farm`;
CREATE DATABASE IF NOT EXISTS `Farm`;
USE `Farm`;

-- create a table

CREATE TABLE `Customers` (
    `FirstName` varchar (20) NULL,
    `LastName`  varchar (20) NULL,
    `Email`     varchar (30) NULL
);

-- Sample

INSERT INTO `Customers` VALUES
    ('Kara', 'Mila', 'kara@mit.edu'),
    ('Francisco', 'Sep', 'fcosep@mit.edu')