
/*!40000 DROP DATABASE IF EXISTS `thescreen`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `thescreen` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `thescreen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aprilfools` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `fact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created` int(11) unsigned NOT NULL DEFAULT '0',
  `modified` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `aprilfools` VALUES (1,'Meerkats like the colour purple more than any other colour.',0,1426783030,1426783030),(2,'Meerkats are the only quadruped mammals who make and sell their own cheese.',0,1426783030,1426783030),(3,'Meerkats have an odd number of teeth.',0,1426783030,1426783030),(4,'Meerkats have ears but choose not to wear them.',0,1426783030,1426783030),(5,'Meerkat fur is a natural source of nylon.',0,1426783030,1426783030),(6,'Meerkats produce more methane than cows.',0,1426783030,1426783030),(7,'Meerkats provide car insurance on behalf of weasels.',0,1426783030,1426783030),(8,'The \'We Buy Any Car .com\' dance routine and club smash-hit was choreographed by meerkats.',0,1426783030,1426783030),(9,'Meerkats live in all parts of the Calamari Desert in Botswana.',0,1426783030,1426783030),(10,'Meerkats hold the world record for the longest manned paper aeroplane flight.',0,1426783030,1426783030),(11,'Meerkats have individual cries for \'taxi\', \'hold the door, please\' and \'Yellow army!\'.',0,1426783030,1426783030),(12,'A meerkat scored the winning goal in the 1970 World Cup.',0,1426783030,1426783030),(13,'Aleksandr Orlov from comparethemeerkat.com lives in a riverside mansion in Stoke Gabriel.',0,1426783030,1426783030),(14,'If you see a meerkat go by, and then another identical meerkat goes by, it\'s a glitch in the Matrix.',0,1426783030,1426783030),(15,'Meerkats collect things.',0,1426783030,1426783030),(16,'Meerkats collect irrational numbers.',0,1426783030,1426783030),(17,'Meerkats know the locations of all the weapons of mass destruction.',0,1426783030,1426783030),(18,'In the 2014 budget, there was a 10% increase in duty on meerkats.',0,1426783030,1426783030),(19,'South Devon College owns five and a half meerkats.',0,1426783030,1426783030),(20,'Meerkats have already found the Higgs Boson in the LHC under Paignton Zoo, but are not telling.',0,1426783030,1426783030),(21,'Baby Oleg\'s aspiration is to work for confused.com. Alexander is not happy about this.',0,1426783030,1426783030),(22,'Type \"do a barrel roll\" into Google.',0,1426783030,1426783030),(23,'Meerkats are bioluminescent, but only on their birthdays.',0,1426783030,1426783030),(24,'Meerkats despise poor spelling, grammar and punctuation, more than expensive car insurance.',0,1426783030,1426783030),(25,'Compare The Meerkat has more computational power than the NSA, but use it for good, not evil.',0,1426783030,1426783030);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) unsigned NOT NULL DEFAULT '0',
  `modified` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `item` (`item`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `config` VALUES (1,'page','2',1426783030,1426784835),(2,'status','1',1426783030,1426783030),(3,'refresh','300',1426783030,1426783030),(4,'rssfeed','http://newsrss.bbc.co.uk/rss/newsonline_uk_edition/technology/rss.xml',1426783030,1426783030),(5,'showstopper','error!',1426783030,1426783030),(6,'specific_fig','aaa-random.png',1426783030,1426783030),(7,'changes','yes',1426783030,1426784835),(8,'installed','2015-03-19T16:37:10+00:00',1426783030,1426783030),(9,'admin_password','1317dfa6a0c51245a1fbd37c6de9819ac469d2e5f71f70a42eec6c6181a30fa7',1426783082,1426783082);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `start` date NOT NULL,
  `text` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created` int(11) unsigned NOT NULL DEFAULT '0',
  `modified` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `events` VALUES (1,'2015-03-19','Disaster recovery testing.',0,1426783030,1426783030),(2,'2015-03-20','Disaster!.',0,1426783030,1426783030),(3,'2015-03-21','Recovery.',0,1426783030,1426783030),(4,'2015-03-22','Recovered disaster celebration.',0,1426783030,1426783030),(5,'2015-03-23','Hangover.',1,1426783030,1426783030);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factoids` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fact` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created` int(11) unsigned NOT NULL DEFAULT '0',
  `modified` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `factoids` VALUES (1,'Default Factoid - edit or delete to say something witty or informative.',0,1426783030,1426783030),(2,'10 PRINT \'Second Factoid\' / 20 GOTO 10 / RUN.',0,1426783030,1426783030),(3,'Third, hidden Factoid. Will not appear unless un-hidden.',1,1426783030,1426783030);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) unsigned NOT NULL DEFAULT '0',
  `modified` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `help` VALUES (1,'pagetype','Page Type','All page types are equal, but some page types are more equal than others.',1426783030,1426783030),(2,'status','Current Status','If there\'s a problem, change this and it will display on the main page.',1426783030,1426783030),(3,'events','Events','Help with events.',1426783030,1426783030),(4,'showstopper','Showstopper','Help with Showstopper.',1426783030,1426783030),(5,'rssfeed','RSS Feed','Help with RSS feed.',1426783030,1426783030),(6,'rssfeedpreset','RSS Feed Presets','Help with the RSS feed presets.',1426783030,1426783030),(7,'factoids','Factoids','Help with factoids.',1426783030,1426783030),(8,'person','Specific Person','Help with choosing a person.',1426783030,1426783030),(9,'refresh','Refresh','Help with the refresh rate setting.',1426783030,1426783030),(10,'stats','Stats','Help with stats (deprecated).',1426783030,1426783030),(11,'logs','Logs','Logs help (really?).',1426783030,1426783030);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `data` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `log` VALUES (1,'2015-03-03 16:47:53','site_installed','2015-03-19 16:37:12'),(2,'2015-03-19 16:38:02','set_config|admin_password|1317dfa6a0c51245a1fbd37c6de9819ac469d2e5f71f70a42eec6c6181a30fa7','2015-03-19 16:38:02'),(3,'2015-03-19 16:38:15','manage','2015-03-19 16:38:15'),(4,'2015-03-19 16:38:19','manage','2015-03-19 16:38:19'),(5,'2015-03-19 16:39:06','manage','2015-03-19 16:39:06'),(6,'2015-03-19 16:43:20','manage','2015-03-19 16:43:20'),(7,'2015-03-19 16:44:06','manage','2015-03-19 16:44:06'),(8,'2015-03-19 16:44:26','manage','2015-03-19 16:44:26'),(9,'2015-03-19 16:48:20','manage','2015-03-19 16:48:20'),(10,'2015-03-19 16:49:26','manage','2015-03-19 16:49:26'),(11,'2015-03-19 16:53:21','manage','2015-03-19 16:53:21'),(12,'2015-03-19 16:53:38','manage','2015-03-19 16:53:38'),(13,'2015-03-19 16:58:21','manage','2015-03-19 16:58:21'),(14,'2015-03-19 16:58:29','manage','2015-03-19 16:58:29'),(15,'2015-03-19 16:59:43','manage','2015-03-19 16:59:43'),(16,'2015-03-19 17:00:39','manage','2015-03-19 17:00:39'),(17,'2015-03-19 17:01:22','set_config|page|2','2015-03-19 17:01:22'),(18,'2015-03-19 17:01:22','set_config|changes|yes','2015-03-19 17:01:23'),(19,'2015-03-19 17:01:23','manage','2015-03-19 17:01:23'),(20,'2015-03-19 17:01:28','set_config|page|1','2015-03-19 17:01:28'),(21,'2015-03-19 17:01:28','set_config|changes|yes','2015-03-19 17:01:28'),(22,'2015-03-19 17:01:28','manage','2015-03-19 17:01:28'),(23,'2015-03-19 17:02:19','manage','2015-03-19 17:02:19'),(24,'2015-03-19 17:03:22','manage','2015-03-19 17:03:22'),(25,'2015-03-19 17:05:12','manage','2015-03-19 17:05:12'),(26,'2015-03-19 17:05:59','set_config|changes|yes','2015-03-19 17:05:59'),(27,'2015-03-19 17:05:59','manage','2015-03-19 17:05:59'),(28,'2015-03-19 17:06:03','pageload_1','2015-03-19 17:06:03'),(29,'2015-03-19 17:06:03','img|rnd|fig-jo-alt.png','2015-03-19 17:06:03'),(30,'2015-03-19 17:06:09','set_config|changes|no','2015-03-19 17:06:09'),(31,'2015-03-19 17:06:10','pageload_1','2015-03-19 17:06:10'),(32,'2015-03-19 17:06:10','img|rnd|fig-tim.png','2015-03-19 17:06:10'),(33,'2015-03-19 17:06:15','pageload_1','2015-03-19 17:06:15'),(34,'2015-03-19 17:06:15','img|rnd|fig-dave.png','2015-03-19 17:06:15'),(35,'2015-03-19 17:06:25','manage','2015-03-19 17:06:25'),(36,'2015-03-19 17:07:15','set_config|page|2','2015-03-19 17:07:15'),(37,'2015-03-19 17:07:15','set_config|changes|yes','2015-03-19 17:07:15'),(38,'2015-03-19 17:07:15','manage','2015-03-19 17:07:15'),(39,'2015-03-19 17:08:23','manage','2015-03-19 17:08:23'),(40,'2015-03-19 17:09:36','manage','2015-03-19 17:09:37'),(41,'2015-03-19 17:10:36','manage','2015-03-19 17:10:36'),(42,'2015-03-19 17:11:36','manage','2015-03-19 17:11:36');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `background` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `refresh` smallint(4) unsigned NOT NULL DEFAULT '0',
  `priority` tinyint(2) unsigned NOT NULL DEFAULT '10',
  `defaultpage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `scheduled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `scheduled_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created` int(11) unsigned NOT NULL DEFAULT '0',
  `modified` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `pages` VALUES (1,'standard','Standard','The standard page used 99% of the time.','standard.png',0,1,1,0,0,1426783030,1426783030),(2,'meeting3pmfriday','Friday 3pm Meeting','We\'re attending our regular Friday 3pm meeting and will be back about 4pm.','meeting_fri3pm.png',60,2,0,1,0,1426783030,1426783030),(3,'helpdeskclosed','Helpdesk Closed','The Technician has popped out and will be back shortly.','helpdeskclosed.png',60,3,0,0,0,1426783030,1426783030),(4,'showstopper','Showstopper!','For big messages!','showstopper.jpg',60,4,0,0,0,1426783030,1426783030),(5,'christmasparty','Christmas Party','We\'re having fun at our Christmas lunch. Back soon.','xmasparty.png',60,5,0,0,0,1426783030,1426783030),(6,'byebyejoy','Bye bye Joy!','Joy\'s leaving! :(','byejoy.png',60,6,0,0,0,1426783030,1426783030),(7,'meeting','General Meeting','We\'re away at a meeting and will be back soon.','meeting_general.png',15,7,0,0,0,1426783030,1426783030),(8,'training','Training','Generic \'training\' screen.','training.png',15,9,0,0,0,1426783030,1426783030),(9,'christmas','Christmas','Default Christmas template.','xmas.png',300,10,0,0,0,1426783030,1426783030),(10,'communityday2015','Community Day 2015','Community day 2015 flyer.','events.png',120,20,0,0,0,1426783030,1426783030),(11,'communityday2014','Community Day 2014','Community day 2014 poster.','communityday.png',120,20,0,0,0,1426783030,1426783030);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'amber',
  `priority` tinyint(2) unsigned NOT NULL DEFAULT '10',
  `defaultstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created` int(11) unsigned NOT NULL DEFAULT '0',
  `modified` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `status` VALUES (1,'ok','Okay','Everything is awesome.','green',1,1,1426783030,1426783030),(2,'minorproblem','Problems','We\'re experiencing problems with the server, which we are looking in to at the moment','amber',10,0,1426783030,1426783030),(3,'epicfail','Epic fail','Something has gone horribly, terribly wrong. It may even involve a zombie apocalypse.','red',20,0,1426783030,1426783030),(4,'maintenance','Planned maintenance','We are performing planned maintenance on some systems.<br><br>There may be brief periods of interruption.','blue',50,0,1426783030,1426783030),(5,'xmas','Merry Christmas!','Merry Christmas and Happy New Year!<br><br>(Everything is awesome, by the way.)','christmas',99,0,1426783030,1426783030),(6,'email','Email Problem','There is a problem with the <em>email server</em>. You may not be able to send or receive email at this time, although you may like to try <em>webmail</em>. We are working to resolve the problem as soon as possible.','amber',10,0,1426783092,1426783092),(7,'internet','Internet Connection','There is a problem with the <em>Internet connection</em>. You may not be able to access external websites or resources at this time, although all internal systems should be unaffected. We are working to resolve the problem as soon as possible.','amber',10,0,1426783092,1426783092),(8,'login','Login Problem','There is a problem with the <em>login server</em>. You may not be able to log in at this time. We are working to resolve the problem as soon as possible.','amber',10,0,1426783092,1426783092),(9,'moodle-maintenance','Moodle Maintenance','We\'re undergoing planned maintenance on the <em>Moodle server or related servers</em>. Moodle may be slow, or completely unavailable.','amber',10,0,1426783092,1426783092),(10,'moodle-upgrade','Moodle Upgrade','Moodle is \'at risk\' all week while we perform an upgrade. Downtime is expected on Monday, Tuesday and Wednesday.','amber',10,0,1426783092,1426783092),(11,'phones','Phones Problem','There is a problem with the ShoreTel/VoIP phone system. We are working to resolve the problem as soon as possible.','amber',10,0,1426783092,1426783092),(12,'server-generic','Generic Server Problem','There is a problem with one or more of our servers, which is affecting some of our systems. We are working to resolve the problem as soon as possible.','amber',10,0,1426783092,1426783092),(13,'wireless','Wireless Problem','We are currently experiencing issues with the <em>wireless network</em>. It may be only partially available or unavailable.<br><br>We are investigating and aim to resolve the issue as soon as possible.','amber',10,0,1426783092,1426783092);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) unsigned NOT NULL DEFAULT '0',
  `modified` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `status_types` VALUES (1,'green','Green (OK)',1426783030,1426783030),(2,'amber','Amber (Alert)',1426783030,1426783030),(3,'red','Red (Warning)',1426783030,1426783030),(4,'blue','Blue (Information)',1426783030,1426783030),(5,'christmas','Christmas',1426783030,1426783030);
