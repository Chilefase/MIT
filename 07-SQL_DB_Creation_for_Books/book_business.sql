DROP DATABASE IF EXISTS `Book_business`;
CREATE DATABASE IF NOT EXISTS `Book_business`; 
USE `Book_business`;

SET NAMES UTF8MB4;
SET character_set_client = UTF8MB4;

-- --------------------------------------
--  TABLE AUTHORS
-- --------------------------------------

CREATE TABLE `Authors` (
	`AuthorID`				int NOT NULL AUTO_INCREMENT,
	`Author_FirstName`		varchar (60) NOT NULL,
	`Author_LastName` 		varchar (60) NULL,
	`Author_Country` 		varchar (60) NULL,
	`Author_Num_books` 		int NULL,
	`Author_Royalties` 		float NULL,
  	
	INDEX `AuthorID`		(`AuthorID` ASC),
	INDEX `Author_FirstName`(`Author_FirstName` ASC),
	INDEX `Author_LastName` (`Author_LastName` ASC),	
    
	PRIMARY KEY				(`AuthorID`)

) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  TABLE PUBLISHER
-- --------------------------------------

CREATE TABLE `Publisher` (
	`PublisherID`			int NOT NULL AUTO_INCREMENT,
	`Publisher_Name`		varchar (60) NOT NULL,
	`Publisher_Country` 	varchar (60) NULL,
	`Publisher_Num_books` 	int NULL,
	`Publisher_Royalties` 	float NULL,
  	
	INDEX `PublisherID`		(`PublisherID` ASC),
	INDEX `Publisher_Name`	(`Publisher_Name` ASC),
    
	PRIMARY KEY				(`PublisherID`)

) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  TABLE EDITOR
-- --------------------------------------

CREATE TABLE `Editor` (
	`EditorID`				int NOT NULL AUTO_INCREMENT,
	`Editor_Name`			varchar (60) NOT NULL,
	`Editor_Mail`			varchar (60) NULL,
	`Editor_Num_books`		int NULL,
	`Editor_Royalties`		float NULL,
  	
	INDEX `EditorID`		(`EditorID` ASC),
	INDEX `Editor_Name`		(`Editor_Name` ASC),
    
	PRIMARY KEY				(`EditorID`)

) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  TABLE CUSTOMER
-- --------------------------------------

CREATE TABLE `Customer` (
	`CustomerID`			int NOT NULL AUTO_INCREMENT,
	`Customer_FirstName`	varchar (60) NOT NULL,
	`Customer_LastName` 	varchar (60) NULL,
	`Customer_Email` 		varchar (60) NULL,
    `Customer_Phone` 		varchar (60) NULL,
	`Customer_Adress` 		varchar (60) NULL,
  	
	INDEX `CustomerID`		(`CustomerID` ASC),
	INDEX `Customer_FirstName`(`Customer_FirstName` ASC),
	INDEX `Customer_LastName` (`Customer_LastName` ASC),
    INDEX `Customer_Email`	(`Customer_Email` ASC),
    INDEX `Customer_Phone`	(`Customer_Phone` ASC),

    
	PRIMARY KEY				(`CustomerID`)

) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  TABLE BOOKS
-- --------------------------------------

CREATE TABLE `Books` (
	`BookID`				bigint NOT NULL AUTO_INCREMENT,
	`GenreID`				varchar (60) NULL,
	`AuthorID`				int NOT NULL,
	`PublisherID`			int NOT NULL,
	`EditorID` 				int NOT NULL,
	`CustomerID`			int NOT NULL,
    `Title`					varchar (60) NULL,
    `Pages`					int NULL,
    `Edition`				int NULL,
    `Price`					float NULL,
  	
	INDEX `BookID`			(`BookID` ASC),
	INDEX `GenreID`			(`GenreID` ASC),
    INDEX `AuthorID`		(`AuthorID` ASC),
    INDEX `PublisherID`		(`PublisherID` ASC),
    INDEX `EditorID`		(`EditorID` ASC),
    INDEX `CustomerID`		(`CustomerID` ASC),
	INDEX `Title`			(`Title` ASC),
	
	PRIMARY KEY				(`BookID`),
    
	FOREIGN KEY				(`AuthorID`) 
		REFERENCES 			`Authors` (`AuthorID`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	FOREIGN KEY				(`PublisherID`) 
		REFERENCES 			`Publisher` (`PublisherID`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	FOREIGN KEY				(`EditorID`) 
		REFERENCES			`Editor` (`EditorID`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	FOREIGN KEY				(`CustomerID`) 
		REFERENCES			`Customer` (`CustomerID`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION

) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  TABLE ORDER
-- --------------------------------------

CREATE TABLE `Orders` (
	`OrderID`				bigint NOT NULL AUTO_INCREMENT,
	`BookID`				bigint NOT NULL,
	`CustomerID`			int NOT NULL,
	`Order_Num_books`		int NOT NULL,
	`Order_Amount`			int NOT NULL,
	`Date`					varchar (60) NOT NULL,
  	
	INDEX `OrderID`			(`OrderID` ASC),
	INDEX `BookID`			(`BookID` ASC),
    INDEX `CustomerID`		(`CustomerID` ASC),
    INDEX `Order_Num_books`	(`Order_Num_books` ASC),
    INDEX `Order_Amount`	(`Order_Amount` ASC),
    INDEX `Date`			(`Date` ASC),

	
	PRIMARY KEY				(`OrderID`),
    
	FOREIGN KEY				(`BookID`) 
		REFERENCES 			`Books` (`BookID`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,

	FOREIGN KEY				(`CustomerID`) 
		REFERENCES			`Customer` (`CustomerID`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION

) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;
