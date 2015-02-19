
/*!40000 DROP DATABASE IF EXISTS `thescreen`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `thescreen` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `thescreen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aprilfools` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `aprilfools` VALUES (1,'Meerkats like the colour purple more than any other colour.'),(2,'Meerkats are the only quadruped mammals who make and sell their own cheese.'),(3,'Meerkats have an odd number of teeth.'),(4,'Meerkats have ears but choose not to wear them.'),(5,'Meerkat fur is a natural source of nylon.'),(6,'Meerkats produce more methane than cows.'),(7,'Meerkats provide car insurance on behalf of weasels.'),(8,'The \'We Buy Any Car .com\' dance routine and club smash-hit was choreographed by meerkats.'),(9,'Meerkats live in all parts of the Calamari Desert in Botswana.'),(10,'Meerkats hold the world record for the longest manned paper aeroplane flight.'),(11,'Meerkats have individual cries for \'taxi\', \'hold the door, please\' and \'Yellow army!\'.'),(12,'A meerkat scored the winning goal in the 1970 World Cup.'),(13,'Aleksandr Orlov from comparethemeerkat.com lives in a riverside mansion in Stoke Gabriel.'),(14,'If you see a meerkat go by, and then another identical meerkat goes by, it\'s a glitch in the Matrix.'),(15,'Meerkats collect things.'),(16,'Meerkats collect irrational numbers.'),(17,'Meerkats know the locations of all the weapons of mass destruction.'),(18,'In the 2014 budget, there was a 10% increase in duty on meerkats.'),(19,'South Devon College owns five and a half meerkats.'),(20,'Meerkats have already found the Higgs Boson in the LHC under Paignton Zoo, but are not telling.'),(21,'Baby Oleg\'s aspiration is to work for confused.com. Alexander is not happy about this.'),(22,'Type \"do a barrel roll\" into Google.'),(23,'Meerkats are bioluminescent, but only on their birthdays.'),(24,'Meerkats despise poor spelling, grammar and punctuation, more than expensive car insurance.'),(25,'Compare The Meerkat has more computational power than the NSA, but use it for good, not evil.');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `item` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) unsigned NOT NULL,
  `modified` int(11) unsigned NOT NULL,
  PRIMARY KEY (`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `config` VALUES ('apply_date','2009-11-01',1424319229,1424319229),('page','default',1424319228,1424323111),('refresh','300',1424319229,1424319229),('rssfeed','http://newsrss.bbc.co.uk/rss/newsonline_uk_edition/technology/rss.xml',1424319229,1424319229),('showstopper','error',1424319229,1424319229),('specific_fig','no',1424319229,1424319229),('statoids_upd','initial_configuration',1424319229,1424319229),('status','ok',1424319228,1424319228);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `start` date NOT NULL,
  `text` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created` int(11) unsigned NOT NULL,
  `modified` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=312 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `events` VALUES (1,'2010-04-07','Day one of disaster recovery testing for mission-critical college systems.',0,0,0),(2,'2010-03-07','Day one (of three) of disaster recovery testing for mission-critical college systems.',1,0,0),(3,'2010-04-01','End of Term',1,0,0),(4,'2010-03-10','College Open Evening',0,0,0),(5,'2010-04-01','End of Term & Start of Easter Holidays',1,0,0),(6,'2010-04-19','Start of Summer Term',0,0,0),(7,'2010-03-08','Publis launch of the new South Devon College public website',1,0,0),(8,'2010-03-08','Public launch of the new South Devon College public website',0,0,0),(9,'2010-03-12','Sean Andrews (below) is leaving Computer Services today for pastures new :( Pop in and say \'bye\'!',1,0,0),(10,'2010-03-12','Sean Andrews (below) is leaving Computer Services today for pastures new. &#x2639; Pop in and say \'bye\'!',0,0,0),(11,'2010-03-17','Happy LÃ¡ FhÃ©ile PÃ¡draig (Saint Patrick\'s Day)! ',0,0,0),(12,'2010-04-01','Ask inside about renting a meerkat to de-ice your car.',0,0,0),(13,'2010-04-01','End of Term & Start of Easter Holidays',0,0,0),(14,'2010-04-08','Software upgrades and new software install - your PC may take longer then usual to boot (once only).',0,0,0),(15,'2010-06-11','This display screen rebuilt after the last one couldn\'t take the punishment.',0,0,0),(16,'2010-06-12','Pawzs Race!',0,0,0),(17,'2010-07-05','Welcome Week ',0,0,0),(18,'2010-06-16','Justin Lee Collins Book Signing at Torbay Bookshop',0,0,0),(19,'2010-07-09','Last Teaching Day of Term',0,0,0),(20,'2010-07-16','Staff Summer Celebration Event',0,0,0),(21,'2010-07-01','14 to 16 Awards Ceremony',0,0,0),(22,'2010-07-01','Fundraising Dinner with Friends of South Devon College',0,0,0),(23,'2010-07-19','Summer Break',0,0,0),(24,'2010-08-23','HE Open Day',0,0,0),(25,'2010-09-01','Enrollment Day',0,0,0),(26,'2010-09-02','College Open Evening',0,0,0),(27,'2010-11-24','College Open Evening',0,0,0),(28,'2010-07-02','Technology for Learning Day',0,0,0),(29,'2010-08-16','Moode down for major planned maintenance',0,0,0),(30,'2010-08-17','Moodle \"at risk\" period due to major planned maintenance',0,0,0),(31,'2010-08-27','Moodle down between 12 and 1pm for maintenance.',0,0,0),(32,'2010-09-27','University Centre Opens',0,0,0),(33,'2010-09-27','All University level students induction week',0,0,0),(34,'2010-09-28','BE FAIR Week',0,0,0),(35,'2010-10-01','HE Freshers Fest',0,0,0),(36,'2010-10-01','University Level Courses Open Morning. There is still time to apply for this year! 0900 -1300 ',0,0,0),(37,'2010-10-22','Day of Celebration @ the RICC',0,0,0),(38,'2010-11-01','Chef, Nathan Outlaw visiting SDC',0,0,0),(39,'2010-11-02','University Courses information evening for Level 3 students â€“ 1800 â€“ 2000',0,0,0),(40,'2010-11-08','AoC Colleges week',0,0,0),(41,'2010-11-11','AimHigher Associates Scheme launch',0,0,0),(42,'2010-11-24','College Open evening',1,0,0),(43,'2010-11-27','Animal & Sciences Activity day â€“ 0900 -1300',0,0,0),(44,'2010-12-17','End of Term',0,0,0),(45,'2010-12-01','Christmas begins at South Devon College',0,0,0),(46,'2010-12-01','Christmas Market in the Street',0,0,0),(47,'2010-12-13','Christmas Market in the Street',0,0,0),(48,'2010-12-13','SDC SU Karaoke',0,0,0),(49,'2010-12-16','Christmas Quiz',0,0,0),(50,'2010-12-19','Student Christmas Party @ Bohemia',0,0,0),(51,'2010-12-14','Web Team\'s web products release',0,0,0),(52,'2010-12-17','Helpdesk Closed 12-1pm',0,0,0),(53,'2010-12-17','Brian Crocker\'s last day (say bye!)',0,0,0),(54,'2011-01-06','Culinary Competition in the Gallery',0,0,0),(55,'2011-01-27','College Open evening â€“ 5pm till 8pm',0,0,0),(56,'2011-01-10','Be Healthy week & Re-Fresherâ€™s week',0,0,0),(57,'2011-02-03','Studio A official opening',0,0,0),(58,'2011-02-07','National Apprenticeships Week',0,0,0),(59,'2011-03-08','Official opening of the University Centre',0,0,0),(60,'2011-03-09','College Open evening â€“ 5pm till 8pm',0,0,0),(61,'2011-03-12','University Centre Open Day from 10am â€“ 3pm',0,0,0),(62,'2011-04-11','Easter Break',0,0,0),(63,'2011-04-26','Summer Term Begins',0,0,0),(64,'2011-04-29','Royal Wedding',0,0,0),(65,'2011-05-02','Bank Holiday',0,0,0),(66,'2011-05-30','Half Term',0,0,0),(67,'2011-03-22','Progression Awards ',0,0,0),(68,'2011-04-05','My Night ',0,0,0),(69,'2011-04-13','Sports Academies Day ',0,0,0),(70,'2011-04-28','Bmad Festival Starts',0,0,0),(71,'2011-05-10','Open Evening ',0,0,0),(72,'2011-05-16','Travel and Tourism Awards ',0,0,0),(73,'2011-05-19','Devon County Show Starts',0,0,0),(74,'2011-06-09','Public Services Mess Dinner',0,0,0),(75,'2011-06-10','University Art students at Bovey Tracey Crafts Fayre',0,0,0),(76,'2011-06-19','Torbay Half Marathon',0,0,0),(77,'2011-06-21','The Big Bang STEM event at Exeter Uni',0,0,0),(78,'2011-06-28','Art & Media Graduate show at Torre Abbey',0,0,0),(79,'2011-06-29','Automotive & Marine Engineering student of the Year presentation',0,0,0),(80,'2011-06-06','14 â€“ 16 Awards evening',0,0,0),(81,'2011-07-06','14 â€“ 16 Awards evening',0,0,0),(82,'2011-08-22','University Courses Open Day, from 10am â€“ 4pm',0,0,0),(83,'2011-09-01','Open Evening â€“ from 5-8pm',0,0,0),(84,'2011-06-02','Planned maintenance: web server downtime (7.30-9am)',0,0,0),(85,'2011-06-18','Server Maintenance',0,0,0),(86,'2011-06-19','Server Maintenance',0,0,0),(87,'2011-06-17','Dave Turner performs miracles',0,0,0),(88,'2011-07-13','Moodle 2 Beta down for maintenance at 4.00pm',0,0,0),(89,'2011-08-03','Wireless System Maintenance - Limited Availability',0,0,0),(90,'2011-08-04','Wireless System Maintenance - Limited Availability',0,0,0),(91,'2011-08-05','Wireless System Maintenance - Limited Availability',0,0,0),(92,'2011-08-06','Network Maintenance',0,0,0),(93,'2011-08-07','Network Maintenance',0,0,0),(94,'2011-07-26','EBS Upgrade - EBS & SPARKe unavailable from 9am',0,0,0),(95,'2011-07-22','Moodle Upgrade - Moodle will be unavailable',0,0,0),(96,'2011-08-01','Moodle available again, now Moodle 2!',0,0,0),(97,'2011-07-25','Moodle unavailable: planned maintenance for upgrade',0,0,0),(98,'2011-07-26','Moodle unavailable: planned maintenance for upgrade',0,0,0),(99,'2011-07-27','Moodle unavailable: planned maintenance for upgrade',0,0,0),(100,'2011-07-28','Moodle unavailable: planned maintenance for upgrade',0,0,0),(101,'2011-07-29','Moodle unavailable: planned maintenance for upgrade',0,0,0),(102,'2011-09-12','Start of term',0,0,0),(103,'2011-11-23','Open Evening',0,0,0),(104,'2011-09-08','HE Graduation Event & Apprenticeship Awards',0,0,0),(105,'2011-11-04','Staff & FE Day of Celebration/CPD ',0,0,0),(106,'2011-12-15','Last teaching day',0,0,0),(107,'2012-01-03','First Day of Term',0,0,0),(108,'2011-12-25','Christmas Day!',0,0,0),(109,'2012-02-13','Half Term',0,0,0),(110,'2012-03-21','CPD Day',1,0,0),(111,'2011-09-10','Fishstock in Brixham ',0,0,0),(112,'2011-10-17','Password change day (staff)',0,0,0),(113,'2011-10-24','Planned Maintenance on all Moodles',0,0,0),(114,'2011-11-11','Remembrance Day',0,0,0),(115,'2011-11-14','South Devon Enterprise Week',0,0,0),(116,'2011-11-15','South Devon Enterprise Week',0,0,0),(117,'2011-11-16','South Devon Enterprise Week',0,0,0),(118,'2011-11-17','South Devon Enterprise Week',0,0,0),(119,'2011-11-18','South Devon Enterprise Week',0,0,0),(120,'2011-12-14','Christmas Fayre in the Street',0,0,0),(121,'2011-12-15','Christmas Fayre in the Street',0,0,0),(122,'2011-12-16','Christmas Fayre in the Street',0,0,0),(123,'2012-01-26','College Open Evening',0,0,0),(124,'2012-01-25','80th Anniversary Appeal Launch ',0,0,0),(125,'2012-02-10','South Devon Business Excellence Awards 2011',0,0,0),(126,'2012-03-01','Presentation of New Engineering Foundation STEM Assured Award ',0,0,0),(127,'2012-03-13','â€˜Golden Oldiesâ€™ Sports Supper',1,0,0),(128,'2012-03-17','80th Anniversary Community Event',0,0,0),(129,'2012-06-13','World Skills South West Regional Heats: Beauty',0,0,0),(130,'2012-06-25','World Skills South West Regional Heats: Health & Social Care',0,0,0),(131,'2012-06-21','80th Anniversary Gala fund raising dinner',0,0,0),(132,'2012-03-07','Open Evening',0,0,0),(133,'2012-06-02','Organised by British Marine Federation South West, in association with South Devon Marine and event sponsors South Devon College',1,0,0),(134,'2012-06-02','Try a boat - Organised by British Marine Federation South West',0,0,0),(135,'2012-06-11','Urgent web system downtime at 5.30pm for 10 mins.',0,0,0),(136,'2012-07-09','CPD Days',0,0,0),(137,'2012-07-13','Staff Summer Celebration Day',0,0,0),(138,'2012-08-28','Student Induction',0,0,0),(139,'2012-06-26','World Skills Event - Caring',0,0,0),(140,'2012-06-29','South Devon Cultural Festival',0,0,0),(141,'2012-07-03','14-16 Awards Event',0,0,0),(142,'2012-07-11','Police Awards Ceremony',0,0,0),(143,'2012-07-20','Royal Horticulture Society Visit for Britain in Bloom judging',0,0,0),(144,'2012-08-20','HE Open Day',0,0,0),(145,'2012-09-06','Open Evening ',0,0,0),(146,'2012-09-13','HE Awards/Apprenticeship Awards',0,0,0),(147,'2012-10-05','Bradley Lane Official Opening',1,0,0),(148,'2012-10-25','Bradley Lane Official Opening ',0,0,0),(149,'2012-11-09','FE & Staff Awards Day of Celebration',0,0,0),(150,'2012-11-21','Open Evening',0,0,0),(151,'2012-11-22','Reunion Dinner',0,0,0),(152,'2012-11-29','Torbay Sports Awards Dinner',0,0,0),(153,'2012-12-05','Made in Devon Christmas Market',0,0,0),(154,'2012-12-06','Made in Devon Christmas Market',0,0,0),(155,'2013-01-24','Open Evening',0,0,0),(156,'2013-03-05','Open Evening ',0,0,0),(157,'2013-03-09','Community Open Day',0,0,0),(158,'2012-10-17','Parents & Carers Event',0,0,0),(159,'2012-12-01','Devon Studio School - Open Day - 10am-2pm',0,0,0),(160,'2013-03-05','Autism Professional Awards â€“ The National Autistic Society',1,0,0),(161,'2013-03-16','South Devon 10k Fun Run - raising funds for South Devon College',1,0,0),(162,'2013-03-16','South Devon 10k Fun Run - Raising Funds for Friends of South Devon College',1,0,0),(163,'2013-02-13','Open Evening at Newton Abbot Campus ',0,0,0),(164,'2013-02-18','Moodle 2.4 Upgrade - At risk all day',0,0,0),(165,'2013-02-19','Moodle 2.4 Upgrade - At risk all day',0,0,0),(166,'2013-02-20','Moodle 2.4 Upgrade - At risk all day',0,0,0),(167,'2013-02-21','Moodle 2.4 Upgrade - At risk all day',0,0,0),(168,'2013-02-22','Moodle 2.4 Upgrade - At risk all day',0,0,0),(169,'2013-02-25','Computer Services Moodle Page - Launch Day',0,0,0),(170,'2013-03-11','Apprenticeship Week March 11-15th',0,0,0),(171,'2013-03-18','SCI FEST Week in the Street!',0,0,0),(172,'2013-03-16','South Devon 10k & Fun Run - Raising Funds for Friends of South Devon College',0,0,0),(173,'2013-05-16','Moodle 2.5 Release',0,0,0),(174,'2013-03-22','Sci Fest â€“ In the Street',1,0,0),(175,'2013-03-22','Sci Fest Week â€“ in the Street',0,0,0),(176,'2013-03-27','Newton Abbot Campus Open Evening',0,0,0),(177,'2013-05-15','South Devon College Open Evening',0,0,0),(178,'2013-03-25','My Course Evening',0,0,0),(179,'2013-03-27','My Course Evening',0,0,0),(180,'2013-05-04','BMAD at Paignton Seafront',0,0,0),(181,'2013-05-05','BMAD at Paignton Seafront',0,0,0),(182,'2013-05-16','Devon County Show ',0,0,0),(183,'2013-08-19','University Open Day ',0,0,0),(184,'2013-08-15','A Level Results day',0,0,0),(185,'2013-05-02','Animal Care Research â€“ Celebrity Nick Baker is Guest Speaker ',0,0,0),(186,'2013-03-27','Afternoon Tea in Horizons at 3.30pm for Â£6.00',0,0,0),(187,'2013-03-28','Masquerade Dinner in Horizons â€“7.00pm',1,0,0),(188,'2013-04-18','Italian Night in Horizons â€“ 7.00pm',0,0,0),(189,'2013-09-01','REMEMBER - Office 2010 is coming!!!!!!',1,0,0),(190,'2013-06-13','Horizons End of Term Gala Dinner â€œCome Cruise with Usâ€  ',0,0,0),(191,'2013-06-18','Password changes for staff',1,0,0),(192,'2013-08-01','REMEMBER - Office 2010 is coming!!!!!! ',1,0,0),(193,'2013-07-12','\'Best of British\' Staff Event',0,0,0),(194,'2013-07-26','Software Upgrades for Administration Computers',0,0,0),(195,'2013-09-01','REMEMBER - Office 2010 is here!!!!!! ',0,0,0),(196,'2013-07-25','Moodle upgrades',0,0,0),(197,'2013-09-05','College Open Evening - 5pm - 8pm',0,0,0),(198,'2013-08-31','South West Energy Cente Launch Day ',0,0,0),(199,'2013-09-13','South Devon Skills Festival ',0,0,0),(200,'2013-10-04','Naming of the Whitley Room ',0,0,0),(201,'2013-11-07','Torbay Sports Awards ',0,0,0),(202,'2013-10-12','Open Event - Newton Abbot Campus 10 - 1pm',0,0,0),(203,'2013-11-19','Open Event - Vantage Point Campus 5pm - 8pm',0,0,0),(204,'2013-11-18','South Devon Enterprise Week',0,0,0),(205,'2013-11-15','Day of Celebration',0,0,0),(206,'2013-11-19','College Open Evening 5pm-8pm in the Gallery and The Street',0,0,0),(207,'2013-11-18','South Devon Enterprise Week',1,0,0),(208,'2013-12-03','â€œMade in Devonâ€ Christmas Fayre in The Street',0,0,0),(209,'2013-12-04','â€œMade in Devonâ€ Christmas Fayre in The Street',0,0,0),(210,'2013-12-13','Festive Christmas Jumper Friday - Greenhouse Cafe',0,0,0),(211,'2013-12-13','Inspirations Christmas Raffle Draw',0,0,0),(212,'2013-12-09','Christmas Art Exhibition in The Gallery',0,0,0),(213,'2013-12-11','Newton Abbot Campus Christmas Party',0,0,0),(214,'2013-12-11','Mama Bearâ€™s Nativity Play',0,0,0),(215,'2013-12-13','Santa\'s Grotto in the Student Union Office',0,0,0),(216,'2013-12-16','Giant Pass the Parcel',0,0,0),(217,'2013-12-17','Staff and student carol singing',0,0,0),(218,'2013-12-18','SDC SU Christmas Photo Booth',0,0,0),(219,'2013-12-18','Noss Marine Academy Christmas Party',0,0,0),(220,'2013-12-19','Christmas Interactive Team Quiz',0,0,0),(221,'2013-12-19','Studentsâ€™ last day at College',0,0,0),(222,'2013-12-20','Staff Development Day',0,0,0),(223,'2013-12-20','Principalâ€™s end of term speech to staff',0,0,0),(224,'2013-12-20','Principalâ€™s end of term speech to staff',1,0,0),(225,'2014-01-23','FIRST COLLEGE OPEN EVENING OF 2014',0,0,0),(226,'2014-03-08','Community Open Day',0,0,0),(227,'2014-01-06','First day of term',0,0,0),(228,'2014-02-17','Half Term Begins',0,0,0),(229,'2014-03-12','Staff CPD Day',0,0,0),(230,'2014-04-07','Easter Holidays Begin',0,0,0),(231,'2014-01-13','Have you received a new phone or mobile device for Christmas??  There are instructions for how to set up your college email on your new device on our Computer Services Moodle pages',0,0,0),(232,'2014-01-21','Password Change Day!!',0,0,0),(233,'2014-12-08','QAA Higher Education Review',0,0,0),(234,'2014-02-08','Newton Abbot Campus Open Day 10.00 - 1.00pm',0,0,0),(235,'2014-02-27','Open Evening',0,0,0),(236,'2014-02-13','My Night',0,0,0),(237,'2014-03-07','Apprenticeship Week 3-7th March',0,0,0),(238,'2014-02-26','Web Team Intern interviews',0,0,0),(239,'2014-04-26','South Devon 10k and Fun Run',0,0,0),(240,'2014-03-26','College Open Evening',0,0,0),(241,'2014-04-26','South Devon College NOSS Marine Academy Activity Day!',0,0,0),(242,'2014-05-08','Horizons Pop-Up Tour at the Royal Seven Stars, Totnes',0,0,0),(243,'2014-05-03','South Devon Fitness Festival',0,0,0),(244,'2014-05-26','Half Term!',0,0,0),(245,'2014-07-07','Staff CPD Days',0,0,0),(246,'2014-06-26','Horizons End of Term Gala Fundraising Dinner',0,0,0),(247,'2014-06-18','Automotive Student of the Year Awards',1,0,0),(248,'2014-06-19','World Skills UK Regional Caring Competition',0,0,0),(249,'2014-05-12','University Students Research Showcase in the University Centre, highlighting student research and academic scholarship',0,0,0),(250,'2014-05-20','Open evening from 5-8pm',0,0,0),(251,'2014-05-24','Try a Boat FREE, Dartmouth â€“ with Noss Marine Academy and the BMF',0,0,0),(252,'2014-06-04','Hair & Fashion show at the RICC',0,0,0),(253,'2014-06-07','Newton Abbot Campus Open Day â€“ from 10am â€“ 1pm',0,0,0),(254,'2014-06-13','official opening of SWEC',0,0,0),(255,'2014-06-18','Automotive Student of the Year Awards in the Automotive Centre',0,0,0),(256,'2014-07-01','14-16 Awards evening',0,0,0),(257,'2014-08-14','A Level results day',0,0,0),(258,'2014-08-18','University Open Day, University Centre from 10am â€“ 4pm',0,0,0),(259,'2014-08-21','GCSE results day',0,0,0),(260,'2014-09-04','Open evening from 5-8pm',0,0,0),(261,'2014-09-12','Graduation Day 2014 at the Spanish Barn at Torre Abbey',0,0,0),(262,'2014-10-16','Apprenticeship Awards evening at The Imperial, Torquay',0,0,0),(263,'2014-11-14','Day of Celebration at the RICC',0,0,0),(264,'2014-11-19','Open Evening from 5-8pm',0,0,0),(265,'2014-07-21','EBS Downtime due to upgrade',0,0,0),(266,'2014-09-16','Fresher\'s Week',0,0,0),(267,'2014-12-03','Christmas Market',0,0,0),(268,'2014-12-04','Christmas Market',0,0,0),(269,'2014-10-27','Torbay Sports Awards',1,0,0),(270,'2014-11-27','Torbay Sports Awards ',0,0,0),(271,'2014-11-17','South Devon Enterprise Week ',0,0,0),(272,'2014-11-28','ACL \'Christmas Flowers\' workshop at the Adult Training and Develoment Centre, Torquay.',0,0,0),(273,'2014-11-11','Remembrance Day Service on The Street',0,0,0),(274,'2014-11-26','Newton Abbot Campus Open Event 4pm â€“ 6pm',0,0,0),(275,'2014-12-04','Careers in Construction',0,0,0),(276,'2014-12-01','Mince pies, hot drinks, turkey & brie on offer @ College Way!',0,0,0),(277,'2014-12-10','Giant Yule Log made by SDC Catering students, sold by the slice',0,0,0),(278,'2014-12-12','Festive Christmas Jumper Friday - Free festive drink and prize for best jumper of the day',0,0,0),(279,'2014-12-17','Seasonal Christmas Dinners - Mulled wine, three courses & coffee',0,0,0),(280,'2014-12-24','Christmas Gingerbread House! Made by SDC Catering students',0,0,0),(281,'2015-01-09','SWEC - Go Green Week',0,0,0),(282,'2015-02-10','SWEC - Go Green Week',0,0,0),(283,'2015-02-11','SWEC - Go Green Week',0,0,0),(284,'2015-02-12','SWEC - Go Green Week',0,0,0),(285,'2015-02-13','SWEC - Go Green Week',0,0,0),(286,'2015-02-25','Open Event',0,0,1424320046),(287,'2015-03-09','The Hair Show',0,0,1424320051),(288,'2015-03-09','Apprenticeships Week',0,0,0),(289,'2015-03-10','Apprenticeships Week',0,0,0),(290,'2015-03-11','Apprenticeships Week',0,0,0),(291,'2015-03-12','Apprenticeships Week',0,0,0),(292,'2015-03-13','Apprenticeships Week',0,0,0),(293,'2015-03-14','SDC Community Day',0,0,0),(294,'2015-03-19','Open Event',0,0,0),(295,'2014-12-19','Staff CPD Day',0,0,0),(296,'2015-01-29','Mitch Tonks Night in Horizons',0,0,0),(297,'2015-04-16','Mitch Tonks Night in Horizons',0,0,0),(298,'2015-06-11','Mitch Tonks Night in Horizons',0,0,0),(299,'2015-02-11','Valentine\'s Theme Night in Horizons',0,0,0),(300,'2015-03-25','Best of British Theme Night in Horizons',0,0,0),(301,'2015-04-23','Around the World in 80 Days Theme Night in Horizons',0,0,0),(302,'2015-05-16','South Devon 10k',0,0,0),(303,'2015-02-18','South West Motor Show',0,0,0),(304,'2015-03-21','Fitness Festival',0,0,0),(305,'2015-06-11','Mitch Tonks Gala Dinner',0,0,0),(306,'2015-02-26','Half term!',0,0,1424320045),(310,'2015-02-28','poop',0,1424775773,1424319915),(311,'2015-02-27','Poopy McPooperson',0,1424775947,1424320041);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factoids` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'def' COMMENT 'DEFault, BooKLeT, FUN',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `factoids` VALUES (1,'When using a Mac DO NOT save to HD1: you may lose your work.','def'),(2,'When using a Mac, if working from an external drive, ensure that the file is saved to HD2 first, work on the file and then copy it back.','def'),(3,'When using your own laptop connect it up to the \'Wireless Guest\' network.','def'),(4,'You need anti-virus installed on your personal laptop in order to gain access to our wireless. If you don\'t have any installed, try Comodo or AVG for free.','def'),(5,'You can buy printer credits from Essentials, the LRC and Cashiers.','def'),(6,'If your computer is stuck on the \'loading personalised settings\' page, press Control, Alt and Delete keys together, log out and then log straight back in again.','def'),(7,'New members of staff need to be on the Human Resources system in order to get a computer account.','def'),(8,'Students need to be enrolled on an active course in order to get a computer account.','def'),(9,'If using Works or Open Office on your home machine, save your files in RTF (Rich Text) format to ensure that you will be able to open them in college.','def'),(10,'The size limit for sending or receiving emails using your college email account is 5Mb.','def'),(11,'At Computer Services we are always working hard to improve your IT experience!','bklt'),(12,'It is a good idea to change your default password.','bklt'),(13,'Please make your requests for software in good time, before you need to teach with it.','bklt'),(14,'Please make sure your anti-virus software is up to date.','bklt'),(15,'Please remember to archive or delete your old emails.','bklt'),(16,'Never open an unknown email or piece of software, it might contain a virus!','bklt'),(17,'Please keep your data areas as clear as possible.','bklt'),(18,'Don\'t forget about those fluffy bunny rabbits. Only print if you really need to!','bklt'),(19,'Please return all equipment ready for the next person to use and alert Computer Services to broken or missing hardware.','bklt'),(20,'By the year 2012 there will be approximately 17 billion devices connected to the Internet.','bklt'),(21,'South Devon College\'s Vantage Point campus contains approximately 100 miles of networking cable.','def');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `data` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `log` VALUES (1,'2015-02-19 05:12:26','manage'),(2,'2015-02-19 05:12:26','05:12:26: Error: writing to the log failed.'),(3,'2015-02-19 05:12:35','manage'),(4,'2015-02-19 05:12:35','05:12:35: Error: writing to the log failed.'),(5,'2015-02-19 05:12:36','manage'),(6,'2015-02-19 05:12:36','05:12:36: Error: writing to the log failed.'),(7,'2015-02-19 05:13:05','manage'),(8,'2015-02-19 05:13:05','05:13:05: Error: writing to the log failed.'),(9,'2015-02-19 05:13:06','manage'),(10,'2015-02-19 05:13:06','05:13:06: Error: writing to the log failed.'),(11,'2015-02-19 05:13:07','manage'),(12,'2015-02-19 05:13:07','05:13:07: Error: writing to the log failed.'),(13,'2015-02-19 05:13:37','manage'),(14,'2015-02-19 05:13:37','05:13:37: Error: writing to the log failed.'),(15,'2015-02-19 05:13:40','set_config|page|fri3pmmeeting'),(16,'2015-02-19 05:13:40','manage'),(17,'2015-02-19 05:13:40','05:13:40: Error: writing to the log failed.'),(18,'2015-02-19 05:13:43','set_config|page|default'),(19,'2015-02-19 05:13:43','manage'),(20,'2015-02-19 05:13:43','05:13:43: Error: writing to the log failed.'),(21,'2015-02-19 05:13:45','set_config|page|fri3pmmeeting'),(22,'2015-02-19 05:13:45','manage'),(23,'2015-02-19 05:13:45','05:13:45: Error: writing to the log failed.'),(24,'2015-02-19 05:13:46','set_config|page|poppedout'),(25,'2015-02-19 05:13:47','set_config|statoids_upd[DENIED]|2015-02-19 05:13:47'),(26,'2015-02-19 05:13:47','manage'),(27,'2015-02-19 05:13:47','05:13:47: Error: writing to the log failed.'),(28,'2015-02-19 05:13:48','set_config|page|showstopper'),(29,'2015-02-19 05:13:48','manage'),(30,'2015-02-19 05:13:48','05:13:48: Error: writing to the log failed.'),(31,'2015-02-19 05:13:49','set_config|page|christmasparty'),(32,'2015-02-19 05:13:49','manage'),(33,'2015-02-19 05:13:49','05:13:49: Error: writing to the log failed.'),(34,'2015-02-19 05:16:56','manage'),(35,'2015-02-19 05:17:03','set_config|statoids_upd[DENIED]|2015-02-19 05:17:03'),(36,'2015-02-19 05:17:03','manage'),(37,'2015-02-19 05:17:23','manage'),(38,'2015-02-19 05:17:26','manage'),(39,'2015-02-19 05:18:12','set_config|page|default'),(40,'2015-02-19 05:18:12','manage'),(41,'2015-02-19 05:18:16','set_config|page|fri3pmmeeting'),(42,'2015-02-19 05:18:16','manage'),(43,'2015-02-19 05:18:17','set_config|page|poppedout'),(44,'2015-02-19 05:18:17','manage'),(45,'2015-02-19 05:18:19','pageload_poppedout'),(46,'2015-02-19 05:18:31','set_config|page|default'),(47,'2015-02-19 05:18:31','set_config|statoids_upd[DENIED]|2015-02-19 05:18:31'),(48,'2015-02-19 05:18:31','manage'),(49,'2015-02-19 05:18:33','pageload_default'),(50,'2015-02-19 05:18:33','img|rnd|fig-paul.png');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `page` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pagename` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `background` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `refresh` smallint(4) unsigned NOT NULL DEFAULT '0',
  `priority` tinyint(2) unsigned NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) unsigned NOT NULL,
  `modified` int(11) unsigned NOT NULL,
  PRIMARY KEY (`page`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `pages` VALUES ('byejoy','Bye bye Joy!','byejoy.png',60,6,'Joy\'s leaving! :(',1424322434,1424322434),('christmas','Christmas','xmas.png',300,10,'Default Christmas template.',1424322434,1424322434),('christmasparty','Christmas Party','xmasparty.png',60,5,'We\'re having fun at our Christmas lunch. Back soon.',1424322434,1424322434),('community2014','Community Day 2014','communityday.png',120,20,'Community day poster.',1424322434,1424322434),('community2015','Community Day 2015','events.png',120,20,'Community day 2015 flyer.',1424322434,1424322434),('default','Default','default_blue.png',0,1,'The default page.',1424322434,1424322434),('fri3pmmeeting','Friday 3pm Meeting','meeting_fri3pm.png',60,2,'We\'re attending our regular Friday 3pm meeting and will be back about 4pm.',1424322434,1424322434),('meeting','General Meeting','meeting_general.png',15,7,'We\'re away at a meeting and will be back soon.',1424322434,1424322434),('poppedout','Technician Popped Out','poppedout.png',60,3,'The Technician has popped out and will be back shortly.',1424322434,1424322434),('showstopper','Showstopper!','showstopper.jpg',60,4,'For big messages!',1424322434,1424322434),('training','Training','training.png',15,9,'Generic \'training\' screen.',1424322434,1424322434);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statoids` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `statoids` VALUES (1,'When using a Mac DO NOT save to HD1: you may lose your work.'),(2,'When using a Mac, if working from an external drive, ensure that the file is saved to HD2 first, work on the file and then copy it back.'),(3,'When using your own laptop connect it up to the \'Wireless Guest\' network.'),(4,'We strongly suggest you have anti-virus and anti-malware software installed on your wireless device.'),(5,'You can buy printer credits from Essentials, the LRC and Cashiers.'),(6,'If your computer is stuck on the \'loading personalised settings\' page, press Control, Alt and Delete keys together, log out and then log straight back in again.'),(7,'New members of staff need to be on the Human Resources system in order to get a computer account.'),(8,'Students need to be enrolled on an active course in order to get a computer account.'),(9,'If using Works or Open Office on your home machine, save your files in RTF (Rich Text) format to ensure that you will be able to open them in college.'),(10,'The size limit for sending or receiving emails using your college email account is 5Mb.'),(11,'At Computer Services we are constantly working hard to improve your IT experience.'),(12,'We strongly recommend you change your default password.'),(13,'Please make your requests for software in a timely manner, not immediately before you need to teach with it!'),(14,'Please make sure your anti-virus software is up to date.'),(15,'To keep the email system running smoothly, archive or delete your old emails.'),(16,'Never open an unknown email or piece of software, it might contain a virus.'),(17,'Please keep your data area (N drive) as clear as possible.'),(18,'Only print if you really need to.'),(19,'Please return all equipment ready for the next person to use and alert Computer Services to broken or missing hardware.'),(20,'By the year 2020 there will be approximately 50 billion devices connected to the Internet.'),(21,'South Devon College\'s Vantage Point campus contains approximately 120 miles of networking cable.'),(22,'We have at least 75 interactive whiteboards to aid teaching and learning'),(23,'We manage 1,800 Windows PCs'),(24,'We manage 126 Apple Macs.'),(25,'Over the summer we added over 35 kilometres of hgh-speed cable to the network: that\'s from here to Exeter!'),(26,'Over the summer we upgraded to Moodle 2.7!'),(27,'Over the summer we spent... a *lot* of money on IT systems and infrastructure!'),(28,'Over the summer we replaced 260 PCs with brand-new machines.'),(29,'Over the summer we upgraded our state-of-the-art ILP system Leap'),(30,'In September we disallowed 20,800 printed pages, saving &pound;1,240!'),(31,'To change your password, press Control-Alt-Delete and choose \'Change Password\'.');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stats` (
  `id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '9999999',
  `readonly` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `format` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `text` (`text`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `stats` VALUES ('av_equip','AV equipment loans','24',0,1),('cust_sat','Customer Satisfaction Survey results','28',0,1),('email_blk','junk emails blocked (yesterday)','6962',0,1),('email_rec','emails received (yesterday)','10486',0,1),('email_vir','viruses in emails (yesterday)','9',0,1),('hlpdsk_cl','Helpdesk jobs closed','112',0,1),('hlpdsk_req','Helpdesk requests','184',0,1),('macs','Apple Macs','126',0,1),('mdl_crs','Moodle courses','608',1,1),('mdl_hit','Moodle hits (today)','101',1,1),('mdl_usr','Moodle users','13679',1,1),('mdl_usr_td','Moodle logins (today)','19',1,1),('onl_app','online applications (2010/11)','10514',0,1),('pcs','Windows PCs','1200',0,1),('prnt_mnth_jobs',' print jobs last month','3190',0,1),('prnt_mnth_pc_jobs',' jobs not released via PaperCut','3190',0,1),('prnt_mnth_pc_pgs',' pages saved by PaperCut','413927',0,1),('prnt_mnth_pc_trees',' trees saved via PaperCut','47.85',0,1),('prnt_mnth_pgs',' pages printed last month','17629',0,1),('prosp_dl','prospectuses downloaded','834',0,1),('web_views','website pageviews (yesterday)','201',0,1),('web_visit','website visitors (yesterday)','96',0,1),('whitebrd','interactive whiteboards','75',0,1);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `statusname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `statustext` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `priority` tinyint(2) unsigned NOT NULL,
  `created` int(11) unsigned NOT NULL,
  `modified` int(11) unsigned NOT NULL,
  PRIMARY KEY (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `status` VALUES ('bad','','<span style=\"font-size: 2em; font-weight: bold; color: #f00;\">EPIC FAIL</span><br />We are working to resolve the problem as soon as possible.','red',8,0,0),('email','','There is a problem with the <em>email server</em>. You may not be able to send or receive email at this time, although you may like to try <em>webmail</em>. We are working to resolve the problem as soon as possible.','amber',2,0,0),('googlesearch','','Please note that due to safeguarding concerns, we are currently blocking Google search. Please see Moodle / Staff pages / email for further information.','amber',9,0,0),('login','','There is a problem with the <em>login server</em>. You may not be able to log in at this time. We are working to resolve the problem as soon as possible.','amber',3,0,0),('maintenance','','We are performing planned maintenance on some of our web systems, including Moodle, Leap and the public website (details circulated previously).<br><br>Downtime will happen, but will be brief.','blue',10,0,0),('moodle','','We\'re undergoing planned maintenance on the <em>Moodle server or related servers</em>. Moodle may be slow, or completely unavailable.','amber',6,0,0),('moodleupgrade','','Moodle is \'at risk\' all week while we upgrade from 2.5 to 2.6. Downtime is expected on Monday, Tuesday and Wednesday.','amber',1,0,0),('net','','There is a problem with the <em>Internet connection</em>. You may not be able to access external websites or resources at this time, although all internal systems should be unaffected. We are working to resolve the problem as soon as possible.','amber',4,0,0),('ok','','No server problems have been reported to us. Everything is working as it should.<br /><br />Honestly.','green',1,0,0),('server','','There is a problem with one or more of our servers, which is affecting some of our systems. We are working to resolve the problem as soon as possible.','amber',5,0,0),('voip','','There is a problem with the ShoreTel/VoIP phone system. We are working to resolve the problem as soon as possible.','amber',7,0,0),('wireless','','We are currently experiencing issues with the <em>wireless network</em>. It may be only partially available or unavailable.<br><br>\r\nWe are investigating and aim to resolve the issue as soon as possible.','amber',10,0,0),('xmas','','Merry Christmas and Happy New Year!<br><br>(Everything\'s working fine, by the way.)','xmas',11,0,0);
