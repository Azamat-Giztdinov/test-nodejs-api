-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: nodejsapi
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` enum('Male','Female') DEFAULT 'Male',
  `photo` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'tester1',NULL,'tester1@mail.ru','$2b$10$uJR4Kte6drudCRv.UgYRaOVKL0QD0PdiIHzyM1JWn0tEOUFuoN7Z2','Male',NULL,'2024-06-08 23:31:08'),(2,'tester2',NULL,'tester2@mail.ru','$2b$10$K1VJhb7SrBKrPT1MtESDYOwfPTSu16KSeryCjIY8LrMqJzdEsPEVS','Male',NULL,'2024-06-08 23:31:10'),(3,'tester3',NULL,'tester3@mail.ru','$2b$10$pISJ2NHltTgQt7fjgrQnu.x5LWwspg3qJUi9s/h1XnDWMfL2BBaqe','Male',NULL,'2024-06-08 23:31:10'),(4,'tester4',NULL,'tester4@mail.ru','$2b$10$mqi5GdHzFjgBe/uWg0d0Ye1QP1cRTNYTYQhUMF4ah2XdBn.s/t7Yq','Male',NULL,'2024-06-08 23:31:11'),(5,'tester5',NULL,'tester5@mail.ru','$2b$10$PUT2lurLcx5DG.dS6laWd.oaT0T4.hrB8ipy93HrgUETAtYibAxA6','Male',NULL,'2024-06-08 23:31:14'),(6,'tester6',NULL,'tester6@mail.ru','$2b$10$lCuDzm9Whh7I06Cdtwr6meuQfHCxF5IBURFqCMq4NQQvJx6WJ./iO','Male',NULL,'2024-06-08 23:31:15'),(7,'tester7',NULL,'tester7@mail.ru','$2b$10$RH15.4hVzbwfzsbf2enm1.shlcnTuwP3/IWN7XboMoc.mWjEbdgPu','Male',NULL,'2024-06-08 23:31:16'),(8,'tester8','tester1','tester8@mail.ru','$2b$10$IaJnAiq9AhzDwkZ5MrNAyu1y59BLF1KriHlb6TKLnVGkvwCvGzRti','Male','1717890041987.png','2024-06-08 23:31:17'),(9,'tester9',NULL,'tester9@mail.ru','$2b$10$FVUFxejJx7ylpzskNyOyxOU8WI0wqmXqwAplsLmYSGjrdLuzDfyN2','Male',NULL,'2024-06-08 23:31:18'),(10,'tester10',NULL,'tester10@mail.ru','$2b$10$..Y8Ev4kX3omNXsHzakxFO0JBIH6nMV42s3lSBvIGfM6/85Kh36LS','Male',NULL,'2024-06-08 23:31:20'),(11,'tester11',NULL,'tester11@mail.ru','$2b$10$TEHHKfe49IKP4j4pY3QLXOG15nnzbr84vzXCyVyW2AGr0ekooewsu','Male',NULL,'2024-06-08 23:31:21'),(12,'tester12',NULL,'tester12@mail.ru','$2b$10$VVwFGLyYuIW707i1SC64BONFm7ad4aKDgtY5yhd7JMlZrMvfADHwW','Male',NULL,'2024-06-08 23:31:22'),(13,'tester13',NULL,'tester13@mail.ru','$2b$10$VvN91pRNibPC8.QpsMx76OE00r7GOnGWeJ.saLwGu2WV8bDqzwUmi','Male',NULL,'2024-06-08 23:31:23'),(14,'tester14',NULL,'tester14@mail.ru','$2b$10$KUplq79lqAPxp6R5Sm23r.xV5YTKiE4wmJ2Ow1XvH4zlU5Qpff7b.','Male',NULL,'2024-06-08 23:31:24'),(15,'tester15',NULL,'tester15@mail.ru','$2b$10$N4tV.N2tJLOFJ1z3okZGFeKaSUE7RUZiYdeB8uMIQs5ExiYPgy0pW','Male',NULL,'2024-06-08 23:31:25'),(16,'tester16',NULL,'tester16@mail.ru','$2b$10$3o6CfqYKbUjnQfOLMHhv8.uRdVwuI4LLO5dJfpfxqz6US9GPI9aIa','Male',NULL,'2024-06-08 23:31:26'),(17,'tester17',NULL,'tester17@mail.ru','$2b$10$U8U.kKiPylfPwylZ906k3.jlCcXrGZdjnMUCSoHCyXG83mPF3SIIm','Male',NULL,'2024-06-08 23:31:28'),(18,'tester18',NULL,'tester18@mail.ru','$2b$10$ZYLjTqabzDbeZU7M8w.9rODLsahHVikUZizSgeD01fG3T7SJRNspy','Male',NULL,'2024-06-08 23:31:29'),(19,'tester19',NULL,'tester19@mail.ru','$2b$10$ySXlWXFxrnxxyD.gctnz2ufJzxmTCEwT.pKVhld9fTyApsmJLytfu','Male',NULL,'2024-06-08 23:31:30'),(20,'tester20',NULL,'tester20@mail.ru','$2b$10$pQGJTrfC1AArBCPkweHt1es5Lda6u4rWAu0RgbOVODULPWn38iX8m','Male',NULL,'2024-06-08 23:31:31'),(21,'tester21',NULL,'tester21@mail.ru','$2b$10$WHNsaoYip/AbtX4XX3CUc.Klvo4agCcuQOqfbTX9pA6n1649rKlWi','Male',NULL,'2024-06-08 23:31:33');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-09  2:48:55
