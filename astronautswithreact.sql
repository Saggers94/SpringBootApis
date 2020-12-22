-- MariaDB dump 10.17  Distrib 10.4.14-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: astronautswithreact
-- ------------------------------------------------------
-- Server version	10.4.14-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `astronauts`
--

DROP TABLE IF EXISTS `astronauts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `astronauts` (
  `astronaut_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `days_spent_in_space` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `astronaut_image` varchar(255) DEFAULT NULL,
  `astronaut_name` varchar(255) DEFAULT NULL,
  `personal_data` text DEFAULT NULL,
  `astronaut_service` varchar(255) DEFAULT NULL,
  `astronaut_slug` varchar(255) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`astronaut_id`),
  KEY `FK9tlklbmeagft5kpunbw46yqma` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `astronauts`
--

LOCK TABLES `astronauts` WRITE;
/*!40000 ALTER TABLE `astronauts` DISABLE KEYS */;
INSERT INTO `astronauts` VALUES (1,'0000-00-00 00:00:00',30,' In 1988, Kalpana Chawla started work at NASA Ames Research Center in the area of powered-lift computational fluid dynamics. Her research concentrated on simulation of complex air flows encountered around aircraft such as the Harrier in \"ground-effect.\" Following completion of this project she supported research in mapping of flow solvers to parallel computers, and testing of these solvers by carrying out powered lift computations. In 1993 Kalpana Chawla joined Overset Methods Inc., Los Altos, California, as Vice President and Research Scientist to form a team with other researchers specializing in simulation of moving multiple body problems. She was responsible for development and implementation of efficient techniques to perform aerodynamic optimization. Results of various projects that Kalpana Chawla participated in are documented in technical conference papers and journals.','kalpana_chawla.jpg','Kalpana Chawla','Born in Karnal, India. Died on February 1, 2003 over the southern United States when Space Shuttle Columbia and her crew perished during entry, 16 minutes prior to scheduled landing. She is survived by her husband. Kalpana Chawla enjoyed flying, hiking, back-packing, and reading. She held a Certificated Flight Instructor\'s license with airplane and glider ratings, Commercial Pilot\'s licenses for single- and multi-engine land and seaplanes, and Gliders, and instrument rating for airplanes. She enjoyed flying aerobatics and tail-wheel airplanes.','RETIRED','kalpana-chawla','0000-00-00 00:00:00',2),(2,'0000-00-00 00:00:00',9,'Mae Carol Jemison (born October 17, 1956) is an American engineer, physician, and former NASA astronaut. She became the first black woman to travel into space when she served as a mission specialist aboard the Space Shuttle Endeavour. Jemison joined NASA\'s astronaut corps in 1987 and was selected to serve for the STS-47 mission, during which she orbited the Earth for nearly eight days on September 12–20, 1992.','mae_carol_jaminsen.jpg','Mae Carol Jaminsen','Mae Carol Jemison was born in Decatur, Alabama, on October 17, 1956, the youngest of three children of Charlie Jemison and Dorothy Jemison (née Green). Her father was a maintenance supervisor for a charity organization, and her mother worked most of her career as an elementary school teacher of English and math at the Ludwig van Beethoven Elementary School in Chicago, Illinois. The family first lived in Woodlawn and later the Morgan Park neighborhoods. Jemison knew from a young age that she wanted to study science and someday go into space. The television show Star Trek and, in particular, African-American actress Nichelle Nichols\' portrayal of Lieutenant Uhura further stoked her interest in space','RETIRED','mae-carol-jaminsen','0000-00-00 00:00:00',1),(3,'0000-00-00 00:00:00',8,'Joseph Jean-Pierre Marc Garneau, PC CC CD MP FCASI (born February 23, 1949) is a Canadian politician and the Minister of Transport in the Government of Canada. He is a retired military officer, former astronaut, and engineer; Garneau was the first Canadian in space, taking part in three flights aboard NASA Space Shuttles in 1984, 1996 and 2000. Garneau was the president of the Canadian Space Agency from 2001 to 2006, and in 2003 was installed as the ninth Chancellor of Carleton University in Ottawa, Ontario.[1]','marc_garneau.jpg','Marc Garneau','Joseph Jean-Pierre Marc Garneau was born on February 23, 1949, in Quebec City, Quebec, Canada. He attended primary and secondary schools in Quebec City and Saint-Jean-sur-Richelieu. He received a Bachelor of Science degree in Engineering Physics from the Royal Military College of Canada in 1970, and in 1973 received a Doctorate in Electrical Engineering from the Imperial College of Science and Technology in London, England. From 1982 to 1983, he attended the Canadian Forces College in Toronto.','RETIRED','marc-garneau','0000-00-00 00:00:00',5),(4,'0000-00-00 00:00:00',28,'Bluford was selected to become a NASA astronaut in January 1978 as a part of NASA astronaut group 8. They trained for a year and were officially designated as astronauts in August 1979. His technical assignments have included working with Space Station operations, the Remote Manipulator System (RMS), Spacelab systems and experiments, Space Shuttle systems, payload safety issues and verifying flight software in the Shuttle Avionics Integration Laboratory (SAIL) and in the Flight Systems Laboratory (FSL). Bluford was a mission specialist on STS-8, STS-61-A, STS-39, and STS-53.','guion_stewart_bulford.jpg','Guion Stewart Bluford Jr.','Born in Philadelphia, Pennsylvania, Bluford graduated from Overbrook High School in 1960. He received a Bachelor of Science degree in aerospace engineering from Pennsylvania State University in 1964, a Master of Science degree in Aerospace Engineering from the U.S. Air Force Institute of Technology (AFIT) in 1974, a Doctor of Philosophy degree in Aerospace Engineering with a minor in Laser Physics, again from AFIT, in 1978, and a Master of Business Administration degree from the University of Houston–Clear Lake in 1987. He has also attended the Wharton School of Business of the University of Pennsylvania.[citation needed]','RETIRED','guion-stewart-bluford-jr','0000-00-00 00:00:00',1),(5,'0000-00-00 00:00:00',520,'Scott Joseph Kelly (born February 21, 1964) is an American engineer, retired astronaut, and naval aviator. A veteran of four space flights, Kelly commanded the International Space Station (ISS) on Expeditions 26, 45, and 46.','scott_kelly.jpg','Scott Kelly','Scott Kelly was born, along with his identical twin brother Mark, on February 21, 1964, in Orange, New Jersey, to Patricia (McAvoy) and Richard Kelly. Kelly\'s family lived in West Orange, where his parents worked as a police officers. Kelly and his brother graduated from Mountain High School in 1982. While in high school, Kelly worked as an emergency medical technician in Orange and Jersey City, New Jersey.','RETIRED','scott-kelly','0000-00-00 00:00:00',1),(6,'0000-00-00 00:00:00',49,'onrad joined NASA as part of the second group of astronauts, known as the New Nine, on September 17, 1962. Regarded as one of the best pilots in the group, he was among the first of his group to be assigned a Gemini mission. As pilot of Gemini 5 he, along with his commander Gordon Cooper, set a new space endurance record of eight days. The duration of the Gemini 5 flight was actually 7 days 22 hours and 55 minutes, surpassing the then-current Russian record of five days. Eight days was the time required for the first crewed lunar landing missions. Conrad facetiously referred to the Gemini 5 capsule as a flying garbage can.','pete_conrad.jpg','Pete Conrad','Pete Conrad was born on June 2, 1930, in Philadelphia, the third child and the first son of Charles Conrad Sr. (1892–1969) and Frances De Rappelage Conrad (née Vinson; 1899–1981), a well-to-do real estate and banking family.','RETIRED','pete-conrad','0000-00-00 00:00:00',1),(7,'0000-00-00 00:00:00',146,'Hadfield was selected to become one of four new Canadian astronauts from a field of 5,330 applicants in June 1992. Three of those four (Dafydd Williams, Julie Payette and Hadfield) have flown in space. The fourth candidate, Michael McKay, resigned as an astronaut in 1995.[13] Hadfield was assigned by the Canadian Space Agency (CSA) to the NASA Johnson Space Center in Houston, Texas in August, where he addressed technical and safety issues for Shuttle Operations Development, contributed to the development of the glass shuttle cockpit, and supported shuttle launches at the Kennedy Space Center, in Florida. In addition, Hadfield was NASA\'s Chief CAPCOM, the voice of mission control to astronauts in orbit, for 25 Space Shuttle missions. From 1996 to 2000, he represented CSA astronauts and coordinated their activities as the Chief Astronaut for the CSA.[6]','chris_hadfield.jpg','Chris Hadfield','Hadfield was born in Sarnia, Ontario. His parents are Roger and Eleanor Hadfield, who live in Milton, Ontario. Hadfield was raised on a corn farm in southern Ontario. He was a member of a Wolf Cub Pack that met at the Milton Fairgrounds. He became interested in flying at a young age and in being an astronaut at age nine when he saw the Apollo 11 Moon landing on television. He is married to his high-school girlfriend Helene, and they have three adult children: Kyle, Evan and Kristin Hadfield. Hadfield used to be a ski instructor at Glen Eden Ski Area before becoming a test pilot.','RETIRED','chris-hadfield','0000-00-00 00:00:00',5),(8,'0000-00-00 00:00:00',12,'Buzz Aldrin (/ˈɔːldrɪn/; born Edwin Eugene Aldrin Jr., January 20, 1930) is an American former astronaut, engineer and fighter pilot. Aldrin made three spacewalks as pilot of the 1966 Gemini 12 mission, and as the lunar module pilot on the 1969 Apollo 11 mission, he and mission commander Neil Armstrong were the first two humans to land on the Moon.','buzz_aldrin.jpg','Buzz Aldrin','Edwin Eugene Aldrin Jr. was born on January 20, 1930, at Mountainside Hospital in Glen Ridge, New Jersey. His parents, Edwin Eugene Aldrin Sr. and Marion Aldrin (née Moon), lived in neighboring Montclair. His father was an Army aviator during World War I and the assistant commandant of the Army\'s test pilot school at McCook Field, Ohio, from 1919 to 1922, but left the Army in 1928 and became an executive at Standard Oil. Aldrin had two siblings, both sisters: Madeleine, who was four years older, and Fay Ann, who was a year and a half older. His nickname, which became his legal first name in 1988, arose as a result of Fay\'s mispronouncing \"brother\" as \"buzzer\", which was then shortened to \"Buzz\". He was a Boy Scout, achieving the rank of Tenderfoot Scout','RETIRED','buzz-aldrin','0000-00-00 00:00:00',1),(9,'0000-00-00 00:00:00',196,'Vagner was assigned to back up to Russian Flight Engineer Andrei Babkin onboard Soyuz MS-16, scheduled for launch in April 2020. Although in February 2020 Babkin and spacecraft commander Nikolai Tikhonov were removed from the flight due to a temporary health condition with Tikhonov, subsequently Vagner and Anatoli Ivanishin (Tikhonov\'s backup) were moved forward onto the prime crew.','ivan_vagner.jpg','Ivan Vagner','Ivan Viktorovich Vagner (born 10 July 1985) is a Russian engineer and cosmonaut who was selected in October 2010. He graduated from the Baltic State Technical University in 2008, before working as an engineer for RKK Energia.[1]','RETIRED','ivan-vagner','0000-00-00 00:00:00',3),(10,'0000-00-00 00:00:00',1,'Yang was selected as an astronaut candidate in 1998 and has trained for space flight since then. He was chosen from the final pool of 13 candidates to fly on China\'s first manned space mission. A former fighter pilot in the Aviation Military Unit of the PLA, he held the rank of Lieutenant Colonel at the time of his mission. He was promoted to full Colonel on 20 October 2003.[5] According to the Youth Daily, the decision had been made in advance of his spaceflight, but Yang was not made aware of it.','yang_liwei.jpg','Yang Liwei','Yang was born in Suizhong County, Huludao, Liaoning province.[1] His mother was a teacher, and his father was an accountant at a state agricultural firm.[2] Yang Liwei\'s wife is also a People\'s Liberation Army (PLA) officer, with whom he has a son.[3]','RETIRED','yange-liwei','0000-00-00 00:00:00',4);
/*!40000 ALTER TABLE `astronauts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `category_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'0000-00-00 00:00:00','American','0000-00-00 00:00:00'),(2,'0000-00-00 00:00:00','Indian','0000-00-00 00:00:00'),(3,'0000-00-00 00:00:00','Russian','0000-00-00 00:00:00'),(4,'0000-00-00 00:00:00','Chinese','0000-00-00 00:00:00'),(5,'0000-00-00 00:00:00','Canadian','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-22 11:11:22
