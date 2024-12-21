-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: library_manager
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `id` int NOT NULL,
  `name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `img` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'img/book/book27.jpg',
  `author` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `category` int NOT NULL,
  `publisher` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `language` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `total` int DEFAULT NULL,
  `current` int DEFAULT NULL,
  `position` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK__book__category__3A81B327` (`category`),
  CONSTRAINT `FK__book__category__3A81B327` FOREIGN KEY (`category`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (10001,'Code: The Hidden Language of Computer Hardware and Software','img/book/book1.jpg','Charles Petzold',1,'Microsoft Press; 1st edition (October 11, 2000)','english',5,4,'F34'),(10002,'The Self-Taught Computer Scientist ','img/book/book2.jpg','Cory Althoff ',1,'Wiley; 1st edition (October 1, 2021)','english',4,4,'F36'),(10003,'The Chip : How Two Americans Invented the Microchip and Launched a Revolution','img/book/book3.jpg','T. R. Reid',1,'Random House Trade Paperbacks; Revised edition (October 9, 2001)','english',3,3,'F35'),(10004,'The Second Machine Age: Work, Progress, and Prosperity in a Time of Brilliant Technologies','img/book/book4.jpg','Erik Brynjolfsson',1,'giáo dục','english',2,2,'A37'),(10005,'The Innovators: How a Group of Hackers, Geniuses, and Geeks Created the Digital Revolution','img/book/book5.jpg','Walter Isaacson',1,'Walter Isaacson','english',3,3,'E12'),(10006,'A Programmers Guide to Computer Science: A virtual degree for the self-taught developer','img/book/book6.jpg','Dr. William M Springer II',1,'Jaxson Media; Illustrated edition (July 28, 2019)','english',3,3,'E54'),(10007,'A handbook for teacher research : From design to implementation','img/book/book7.jpg','Colin Lankshear, Michele Knobel',2,'Open University Press','english',3,3,'B34'),(10008,'A course in phonetics','img/book/book8.jpg',' Ladefoged, Peter',2,'Cengage Learning, 2011','english',3,3,'G54'),(10009,'Language: Its structure and use','img/book/book9.jpg','Finegan, Edward',2,'Thomson Wadsworth, c2004,p','english',3,3,'S34'),(10010,'An introduction to linguistic theory and language acquisition','img/book/book10.jpg','Crain, Stephen; Lillo-Martin, Diane C. (Diane Carolyn)',2,'Wiley, 1999','english',3,3,'G54'),(10011,'An introduction to functional grammar','img/book/book11.jpg','Zoe Erotopoulos',2,'Arnold, 2004','english',3,3,'C54'),(10012,'An introduction to pragmatics: Social action for language teachers','img/book/book12.jpg','Halliday, M. A. K. (Michael Alexander Kirkwood)',2,'University of Michigan Press, 2003','english',4,4,'D31'),(10013,'500 Activities for the Primary Classroom','img/book/book13.jpg','LoCastro, Virginia.',3,'Macmillan Education','english',3,3,'D43'),(10014,'The Economics Book','img/book/book14.jpg','Carol Read',3,'Dorling Kindersley, 2012','english',3,3,'Q21'),(10015,'Principles for Dealing with the Changing World Order: Why Nations Succeed and Fail','img/book/book15.jpg','Dorling Kindersley',3,'Avid Reader Press / Simon & Schuster; 1st edition (November 30, 2021)','english',3,3,'A02'),(10016,'Business Valuation: The Most Complete Guide on How to Value a Business Through Updated Financial Valuation Methods','img/book/book16.jpg','Ray Dalio',3,'EquaMoney Press (February 17, 2023)','english',3,3,'D87'),(10017,'Financial Management Essentials You Always Wanted To Know (Color) (Self Learning Management)','img/book/book17.jpg','Nathan S. Goodwin',3,'Vibrant Publishers (September 19, 2019)','english',3,3,'N21'),(10018,'The Psychology of Money: Timeless lessons on wealth, greed, and happiness','img/book/book18.jpg','Kalpesh Ashar',3,'Harriman House (September 8, 2020)','english',3,3,'A44'),(10019,'Millionaire Mindset','img/book/book19.jpg','Paperback',3,'Get Rich Books (February 22, 2023)','english',4,3,'A34'),(10020,'English Grammar for Students of Spanish: The Study Guide for Those Learning Spanish, 7th edition','img/book/book20.jpg','Reveal Riches',4,'Olivia & Hill Press; 7th edition (December 18, 2012)','english',3,3,'J78'),(10021,'FRENCH, ENGLISH GRAMMAR FOR STUDENTS OF FRENCH, 7TH ED','img/book/book21.jpg','Emily Spinelli',4,'Olivia & Hill Press; 7th edition (July 17, 2013)','english',3,3,'K51'),(10022,'French All-in-One For Dummies','img/book/book22.jpg','Jacqueline Morton',4,'For Dummies; 1st edition (October 9, 2012)','english',3,3,'F23'),(10023,'Easy French Step-By-Step: Master High-Frequency Grammar for French Proficiency--Fast','img/book/book23.jpg','The Experts at Dummies',4,'McGraw Hill; 1st edition (December 1, 2008)','english',3,3,'L44'),(10024,'French For Dummies 2nd Edition','img/book/book24.jpg','Myrna Bell Rochester',4,'For Dummies; 2nd edition (August 30, 2011)','english',3,3,'M34'),(10025,'Tiếng Việt Văn Việt cho người Việt','img/book/book25.jpg','Cao Xuân Hạo',4,'Nhã Nam','vietnamese',3,3,'T34'),(10026,'Dẫn Luận Về Ngôn Ngữ Học','img/book/book26.jpg','Partha Dasgupta',4,'Nhà xuất bản Đồng Đức','vietnamese',3,3,'N34'),(10027,'The Power of Babel : A Natural History of Language','img/book/book27.jpg','John McWhorter',3,'DC Books','English',4,3,'g55');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrower`
--

DROP TABLE IF EXISTS `borrower`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `borrower` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `book_id` int DEFAULT NULL,
  `borrow_from` date DEFAULT NULL,
  `borrow_to` date DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK__borrower__userna__403A8C7D` (`username`),
  KEY `FK__borrower__book_i__412EB0B6` (`book_id`),
  CONSTRAINT `FK__borrower__book_i__412EB0B6` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`),
  CONSTRAINT `FK__borrower__userna__403A8C7D` FOREIGN KEY (`username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrower`
--

LOCK TABLES `borrower` WRITE;
/*!40000 ALTER TABLE `borrower` DISABLE KEYS */;
INSERT INTO `borrower` VALUES (1,'user1',10017,'2024-05-02','2024-05-24','Returned'),(2,'user2',10001,'2024-05-02','2024-05-24','Returned'),(3,'user1',10001,'2024-05-11','2024-05-31','Borrowed'),(4,'user1',10002,'2024-05-11','2024-05-24','Returned'),(5,'anagha',10008,'2024-05-11','2024-05-24','Returned'),(6,'anagha',10006,'2024-05-24','2024-05-24','Returned'),(7,'anagha',10027,'2024-05-24','2024-05-31','Borrowed'),(8,'anagha',10020,'2024-05-24','2024-05-25','Returned'),(39,'rohan',10019,'2024-05-26','2024-05-26','Returned');
/*!40000 ALTER TABLE `borrower` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Computer Science'),(2,'Math'),(3,'Language'),(4,'Economic');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `content` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK__feedback__user_i__440B1D61` (`user_id`),
  CONSTRAINT `FK__feedback__user_i__440B1D61` FOREIGN KEY (`user_id`) REFERENCES `user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'anagha','Excellent service','The service that you provided is mind blowing!'),(6,'rohan','About the Collection','   I loved it !                             ');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `role` tinyint(1) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `avt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'img/avt/avt.jpg',
  `sex` tinyint(1) DEFAULT NULL,
  `datebirth` date DEFAULT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `gmail` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('admin','admin',1,NULL,'img/avt/avt.jpg',NULL,NULL,NULL,NULL),('anagha','12345',0,'anagha','img/avt/F.png',0,'2024-05-07','7777777745','anaghas@gmail.com'),('anand','1234',0,'Anand','img/avt/M.jpg',1,'2002-05-23','1233334769','anand@gmail.com'),('risa','1234',0,'Risa','img/avt/F.png',0,'2002-05-23','1233334564','risa@gmail.com'),('rohan','12345',0,'Rohan','img/avt/roh.jpg',1,'2002-06-25','7510744859','rohan@gmail.com'),('user1','1234',0,'Aleena','img/avt/F.png',0,'2000-12-23','0123443789','aleenas@gmail.com'),('user2','1234',0,'Rohan','img/avt/roh.jpg',1,'2002-06-25','0195456789','user2@gmail.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-26 14:43:49
