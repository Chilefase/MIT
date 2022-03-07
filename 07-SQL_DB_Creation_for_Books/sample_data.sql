-- --------------------------------------
--  POPULATE AUTHORS 	
-- --------------------------------------
INSERT INTO `Authors` VALUES(201,'Gabriel Garcia','Márquez','Colombia',40,0.5);
INSERT INTO `Authors` VALUES(202,'J.R.R.','Tolkien','Sudafrica',15,0.5);
INSERT INTO `Authors` VALUES(203,'Mario','Benedetti','Uruguay',22,0.5);
INSERT INTO `Authors` VALUES(204,'Miguel','de Cervantes','España',4,0.5);
INSERT INTO `Authors` VALUES(205,'Pablo','Neruda','Chile',13,0.5);
INSERT INTO `Authors` VALUES(206,'Gabriela','Mistral','Chile',6,0.5);
INSERT INTO `Authors` VALUES(207,'Julio','Verne','Francia',17,0.5);
-- --------------------------------------
--  POPULATE PUBLISHER
-- --------------------------------------
INSERT INTO `Publisher` VALUES(301,'Sterling Publishing','New York, USA',5000,0.3);
INSERT INTO `Publisher` VALUES(302,'Daw','New York, USA',80000,0.3);
INSERT INTO `Publisher` VALUES(303,'Chronicle Books','San Francisco, USA',2000,0.3);
INSERT INTO `Publisher` VALUES(304,'Baen','Wake Forest, USA',2000,0.3);
INSERT INTO `Publisher` VALUES(305,'Flashlight Press','New York, USA',5000,0.3);
INSERT INTO `Publisher` VALUES(306,'Beacon Press','Boston, USA',45000,0.3);
INSERT INTO `Publisher` VALUES(307,'Oneworld Publishing','London, UK',55000,0.3);
-- --------------------------------------
--  POPULATE EDITOR
-- --------------------------------------
INSERT INTO `Editor` VALUES(401,'Edioak','info@edioak.com',36,0.2);
INSERT INTO `Editor` VALUES(402,'Gamahouse','info@gamahouse.com',22,0.2);
INSERT INTO `Editor` VALUES(403,'Uriel Walder','urielwalder@gmail.com',12,0.2);
INSERT INTO `Editor` VALUES(404,'Aaratika Bawa','aaratikabawa@gmail.com',15,0.2);
INSERT INTO `Editor` VALUES(405,'ka-writing','info@ka-writing.com',67,0.2);
INSERT INTO `Editor` VALUES(406,'Erin Edits','erin@erinedits.com',45,0.2);
INSERT INTO `Editor` VALUES(407,'Book Baby','info@bookbaby.com',20,0.2);
-- --------------------------------------
--  POPULATE CUSTOMER
-- --------------------------------------
INSERT INTO `Customer` VALUES(501,'Ana','Trujillo','ana@gmail.com','(360) 457-2258','Seattle,WA,USA');
INSERT INTO `Customer` VALUES(502,'Thomas','Hardy','tom@yahoo.com',NULL,'Austin,TX,USA');
INSERT INTO `Customer` VALUES(503,'Antonio','Moreno','tony@hotmail.com',NULL,'Miami,FL,USA');
INSERT INTO `Customer` VALUES(504,'Elizabeth','Brown','beth@outlook.com','(480) 324-2178','Phoenix,AZ,USA');
INSERT INTO `Customer` VALUES(505,'Ann','Devon','ann@apple.com',NULL,'Denver,CO,USA');
INSERT INTO `Customer` VALUES(506,'Ariel','Cruz','ariel@icloud.com','(541) 652-4565','Portland,OR,USA');
INSERT INTO `Customer` VALUES(507,'Giovanni','Rovelli','gio@gmail.com','(415) 665-2255','San Francisco,CA,USA');
-- --------------------------------------
--  POPULATE BOOKS
-- --------------------------------------
INSERT INTO `Books` VALUES(101,'Novel',201,301,401,501,'Cien años de soledad',471,4,25.2);
INSERT INTO `Books` VALUES(102,'Adventure',202,302,402,502,'The Hobbit',335,5,30.8);
INSERT INTO `Books` VALUES(103,'Fiction',203,307,403,503,'The Truce: The Diary of Martín Santomé',520,3,36.2);
INSERT INTO `Books` VALUES(104,'Novel',204,300,400,504,'Don Quixote',280,3,25.39);
INSERT INTO `Books` VALUES(105,'Poems',205,306,406,504,'Cien sonetos de amor',150,2,18.2);
INSERT INTO `Books` VALUES(106,'Poems',206,303,407,505,'Poemas de Gabriela Mistral',370,4,22.29);
INSERT INTO `Books` VALUES(107,'Adventure',207,301,401,501,'Twenty Thousand Leagues Under the Seas',500,8,40.99);
-- --------------------------------------
--  POPULATE ORDERS
-- --------------------------------------
INSERT INTO `Orders` VALUES(901,101,501,1,25.2,2022-02-12);
INSERT INTO `Orders` VALUES(902,102,502,1,30.8,2022-01-06);
INSERT INTO `Orders` VALUES(903,103,502,1,36.2,2022-02-05);
INSERT INTO `Orders` VALUES(904,104,504,1,25.39,2022-05-08);
INSERT INTO `Orders` VALUES(905,105,505,1,18.2,2022-08-11);
INSERT INTO `Orders` VALUES(906,106,506,1,25.2,2022-10-11);
INSERT INTO `Orders` VALUES(907,107,507,1,40.99,2022-02-03);
INSERT INTO `Orders` VALUES(908,103,501,1,36.2,2022-10-24);
INSERT INTO `Orders` VALUES(909,103,502,1,36.2,2022-07-07);
INSERT INTO `Orders` VALUES(910,104,506,1,25.39,2022-02-15);
INSERT INTO `Orders` VALUES(911,105,507,1,40.99,2022-10-26);