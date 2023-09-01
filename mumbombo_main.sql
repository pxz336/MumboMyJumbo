-- MySQL dump 10.13  Distrib 5.6.41-84.1, for Linux (x86_64)
--
-- Host: localhost    Database: mumbombo_main
-- ------------------------------------------------------
-- Server version	5.6.41-84.1

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
-- Table structure for table `comment_post_key`
--

DROP TABLE IF EXISTS `comment_post_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment_post_key` (
  `comment_id_key` int(11) NOT NULL,
  `post_id_key` int(11) NOT NULL,
  PRIMARY KEY (`comment_id_key`,`post_id_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_post_key`
--

LOCK TABLES `comment_post_key` WRITE;
/*!40000 ALTER TABLE `comment_post_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment_post_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `num_likes_comment` int(11) DEFAULT '0',
  `num_dislikes_comment` int(11) DEFAULT '0',
  `date_comment` date NOT NULL,
  `comment_text` text NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friends_list`
--

DROP TABLE IF EXISTS `friends_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friends_list` (
  `user_id_key` int(11) NOT NULL,
  `friend_id_key` int(11) NOT NULL,
  PRIMARY KEY (`user_id_key`,`friend_id_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends_list`
--

LOCK TABLES `friends_list` WRITE;
/*!40000 ALTER TABLE `friends_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `friends_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mumbo_profile`
--

DROP TABLE IF EXISTS `mumbo_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mumbo_profile` (
  `profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name_profile` varchar(30) NOT NULL,
  `last_name_profile` varchar(30) NOT NULL,
  `user_name_profile` varchar(30) NOT NULL,
  `create_date_profile` date NOT NULL,
  `profile_photo` text,
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mumbo_profile`
--

LOCK TABLES `mumbo_profile` WRITE;
/*!40000 ALTER TABLE `mumbo_profile` DISABLE KEYS */;
INSERT INTO `mumbo_profile` (`profile_id`, `first_name_profile`, `last_name_profile`, `user_name_profile`, `create_date_profile`, `profile_photo`) VALUES (1,'Patrick','Zmina','WoweeWettee','2020-07-09',NULL),(2,'Paete','Zminono','wunderlust','2020-07-09',NULL),(3,'Paete','Zminono','zimbooso','2020-07-09',NULL),(4,'Zimboo','Zminono','bingo boings','2020-07-09',NULL),(5,'Zimboo','Zminono','bingo boings','2020-07-09',NULL),(6,'Zimboo','Zminono','bingo boings','2020-07-09',NULL),(7,'Zimboo','Zminono','bingo boings','2020-07-09',NULL),(8,'Zimboo','Zminono','bingo boings','2020-07-09',NULL),(9,'Zimboo','Zminono','bingo boings','2020-07-09',NULL),(10,'Zimboo','Zminono','bingo boings','2020-07-09',NULL),(11,'Zimboo','Zminono','bingo boings','2020-07-09',NULL),(12,'pibble','zibble','my nibble','2020-07-10',NULL),(13,'peteor','metoer','mumbo','2020-07-13',NULL),(14,'bubby','bubberino','penopeno','2020-07-15',NULL),(15,'bumbo','boobie','suckmybungo','2020-07-27',NULL),(16,'Terri','Zmina','mom','2020-08-28',NULL),(17,'Stinky','Marineanimal','Porkus','2020-08-30',NULL),(18,'Tom','Horsfall','TcTuggers22','2020-09-14',NULL),(19,'Pete','Zete','PeteYete22','2020-10-01',NULL),(20,'Tata','Zooba','Donkeh','2020-10-05',NULL),(21,'pog','champ','pog','2020-10-06',NULL),(22,'pa','zm','123','2020-10-07',NULL),(23,'Scott','Woodward','antiquesmuggler','2020-10-07',NULL),(24,'\'','\'','\'','2020-10-07',NULL),(25,'Jonathan','Rodriguez','JonnycomeLately','2020-10-07',NULL),(26,'\' or 1=1\'','\' or 1=1\'','\' or 1=1\'','2020-10-07',NULL),(27,'Patrick','Zmina','Patrick Himself','2020-10-08',NULL),(28,'Calvin','Conklin','Windlenot','2020-10-19',NULL),(29,'Thomas','Horsfall','tom','2020-10-23',NULL),(30,'Robert','Elder','gobe sprode','2020-12-02',NULL),(31,'timmy','tim','tim','2020-12-02',NULL),(32,'Jorge','Barrios','terrier75','2020-12-03',NULL),(33,'Joe','Kirincic','crunch___neck','2020-12-05',NULL);
/*!40000 ALTER TABLE `mumbo_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mumbo_user`
--

DROP TABLE IF EXISTS `mumbo_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mumbo_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(320) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `login_token` varchar(50) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `user_name` varchar(30) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `user_total_likes` int(11) DEFAULT '0',
  `user_total_views` int(11) DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mumbo_user`
--

LOCK TABLES `mumbo_user` WRITE;
/*!40000 ALTER TABLE `mumbo_user` DISABLE KEYS */;
INSERT INTO `mumbo_user` (`user_id`, `user_email`, `password`, `login_token`, `first_name`, `last_name`, `user_name`, `create_date`, `user_total_likes`, `user_total_views`) VALUES (1,'themalemonkey@yahoo.com','cheese11','1c5bd3344b03796d09077f5c00a705cec3d6e3ba680846ce','Patrick','Zmina','WoweeWettee','2020-07-09',0,0),(2,'themalemonkey@yahoo.com','hoo hoo',NULL,'Paete','Zminono','wunderlust','2020-07-09',0,0),(3,'the@at.orgy','rew',NULL,'Paete','Zminono','zimbooso','2020-07-09',0,0),(4,'the@at.orgy','rewer',NULL,'Zimboo','Zminono','bingo boings','2020-07-09',0,0),(5,'the@at.orgy','fes',NULL,'Zimboo','Zminono','bingo boings','2020-07-09',0,0),(6,'the@at.orgy','fes',NULL,'Zimboo','Zminono','bingo boings','2020-07-09',0,0),(7,'the@at.orgy','fes',NULL,'Zimboo','Zminono','bingo boings','2020-07-09',0,0),(8,'the@at.orgy','fes',NULL,'Zimboo','Zminono','bingo boings','2020-07-09',0,0),(9,'the@at.orgy','fes',NULL,'Zimboo','Zminono','bingo boings','2020-07-09',0,0),(10,'the@at.orgy','fes',NULL,'Zimboo','Zminono','bingo boings','2020-07-09',0,0),(11,'the@at.orgy','fes',NULL,'Zimboo','Zminono','bingo boings','2020-07-09',0,0),(12,'giggle@google.oogle','fds','04caa69bcc6b357e5b4587f62493f18bdbf0805f01d462fe','pibble','zibble','my nibble','2020-07-10',0,0),(13,'bumbo@jumbo.org','gfsd','441a89de31af5e2f6dcd62eb43004d590315416f9e385d44','peteor','metoer','mumbo','2020-07-13',0,0),(14,NULL,'rewer',NULL,NULL,NULL,'bingo boings',NULL,0,0),(15,'bubbo@wubbo.og','bingo',NULL,'bubby','bubberino','penopeno','2020-07-15',0,0),(16,'bubbo@gooogle.org','peepo','e84fb46370f81ac3d1737e3cbe3cd39c25572ea3b3cadb97','bumbo','boobie','suckmybungo','2020-07-27',0,0),(17,NULL,NULL,'2a890edc71d3e68145b50c602e6f3bfbf9ec88907ee444ce',NULL,NULL,'22',NULL,0,0),(18,'123@hotmail.com','123abc','0a135e68171be06260d9033cf99538f17f9e6c5fad2ac679','Terri','Zmina','mom','2020-08-28',0,0),(19,'kzmina@gmail.com','donkey','8fa1a8d4be5225a1c79c4c57df1ff8f0fc6d74339e1d96c8','Stinky','Marineanimal','Porkus','2020-08-30',0,0),(20,'2@3.edu','cheese','acf2991c648f24aca1feae1dc0049ce7c45c2c85396273eb','Tom','Horsfall','TcTuggers22','2020-09-14',0,0),(21,'2@3.com','22',NULL,'Pete','Zete','PeteYete22','2020-10-01',0,0),(22,'donkey@youtube.org','cheese','14d80ceeaffd6cb76b0f0cbb8f5e103e28e8470b0c27d7e5','Tata','Zooba','Donkeh','2020-10-05',0,0),(23,'kimbo@jimbo.org','pog','7c1953d6c8e672760f196934522f1b1d69b602132820b546','pog','champ','pog','2020-10-06',0,0),(24,'asdjh@2.co','123','396aa6aa8985f337acba2d484ff36b73fc0516d2fa133452','pa','zm','123','2020-10-07',0,0),(25,'scottandrewfrazier@gmail.com','0813@mumbo','8c955ebc6cd29538b5dcee8817c672421caf8bddbc0c2f6c','Scott','Woodward','antiquesmuggler','2020-10-07',0,0),(26,'lilbinch@tom.com','\'',NULL,'\'','\'','\'','2020-10-07',0,0),(27,'jonrod21@gmail.com','Mumbo@jon#27',NULL,'Jonathan','Rodriguez','JonnycomeLately','2020-10-07',0,0),(28,'lilbinch@tom.coms','\' or 1=1=\'',NULL,'\' or 1=1\'','\' or 1=1\'','\' or 1=1\'','2020-10-07',0,0),(29,'pxz336@gmail.com','Cheese11','ed576ab28d6ac14ae10b31c4aaff526b29c07aeee027510f','Patrick','Zmina','Patrick Himself','2020-10-08',0,0),(30,'calvin.conklin.2016@owu.edu','qt5skxF4J2ANyyr',NULL,'Calvin','Conklin','Windlenot','2020-10-19',0,0),(31,'tom@owu.edu','tom','8402d710add91a2c88b46a4655f6b2901185f06fe0084322','Thomas','Horsfall','tom','2020-10-23',0,0),(32,'gobe.sprode@gmail.com','pa5rath0orn','05fff286596c0d0c16b7dbca04f465359d1b514d815108d1','Robert','Elder','gobe sprode','2020-12-02',0,0),(33,'paddy@lilboi.com','tim','9672554a48140902b026c91beb7142fd16b42290cc8ad1ed','timmy','tim','tim','2020-12-02',0,0),(34,'jorge94barrios@live.com','jfielaiehg87*/','50f77c40c88009b715470ae9bd4f901e024badadec14102d','Jorge','Barrios','terrier75','2020-12-03',0,0),(35,'jdkirincic@gmail.com','crunchneck96','d1353047c533fde4c4a9840a5efbf70798309c3914c77946','Joe','Kirincic','crunch___neck','2020-12-05',0,0);
/*!40000 ALTER TABLE `mumbo_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `num_likes` int(11) DEFAULT '0',
  `num_dislikes` int(11) DEFAULT '0',
  `num_views` int(11) DEFAULT '0',
  `post_title` varchar(300) NOT NULL,
  `post_text` text NOT NULL,
  `post_date` datetime DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` (`post_id`, `num_likes`, `num_dislikes`, `num_views`, `post_title`, `post_text`, `post_date`) VALUES (1,0,0,1,'Biggie Smiggie','Smuggle my nards, but don\'t go too too hard?','2020-08-03 00:00:00'),(3,0,0,1,'Want to run out of milk??','You really wanna push me like that? I created you. You can\'t leave milk. THERE. WILL. BE. MILK.','2020-08-04 00:00:00'),(4,0,0,0,'Bubble Guts','Oh lawd I got the bubble guts','2020-08-04 00:00:00'),(5,0,0,0,'Buttery Nuggets Found At Airport','\"What am I supposed to do with all these nuggets?\" Asked Jeremy Manilow, knowing exactly what was needed to be done. All the steps to be taken were right there in front of him, but he refused to take them. And exceptional man? I really do not think so. A responsible man? Maybe. A reprehensible man? That, my friends is unequivocal, and I think we can all learn from these experiences. \"What am I supposed to do with all these nuggets?\" Get real. We all know, we all knew, and to be frank, we all would know in the future. Don\'t be like Gary Manitoba. Don\'t be an it.','2020-08-04 00:00:00'),(6,0,0,0,'Rug Butter, What Is It Good For?','You cannot determine it by yourself, but with a little help from your friends, you can see the light through the darkness. Rub it a little. Tell it a little story. Rug butter will flow forth for your analytical mind to take hold of. I think, in reality, if you use it for the wrong cause, it won\'t matter much. Just make sure that it is truly what you want and where you want it. Rug butter, friend? Or Foe?','2020-08-10 00:00:00'),(7,0,0,0,'rubbibg','bibiob','2020-08-19 00:00:00'),(9,0,0,0,'rgghsdfjksdfghj','ghujghjoghjghjlgjlkgg','2020-08-20 00:00:00'),(15,0,0,0,'pibble','gotta take a nibble','2020-08-20 00:00:00'),(16,0,0,7,'pibble','gotta take a nibble','2020-08-20 00:00:00'),(17,0,0,4,'Bungle it good my frined','You have to you want to you really ought to','2020-08-20 00:00:00'),(18,0,0,8,'boogles','bingos','2020-08-20 00:00:00'),(21,0,0,11,'Saddle Me Up With Sadness','<p>I am a poor poor boy who wishes to be burdened with the sorrows of another man. Call my number! Head me off at the pass! Do what you can to bring it to me, and wring out my cloth of victory. I cannot eject my own sorrow, but I will not reject yours! Saddle me up and watch me unwind, unhinge, and swallow it whole. I am a python for your grief, I am endless, I am encumbered.\r\n<br><br>\r\nNone of this applies to Bendanits Cumberpunch. Get fuck away.</p>','2020-08-25 15:13:10'),(22,0,0,11,'sunshine','the rain has stopped....yeah!','2020-08-28 15:37:58'),(23,0,0,26,'the cats! I will sniff Bean','\"There is itchy swinging tooties in my eyes!\"\r\n\r\nNO! Zertec doesn\'t help! I dont, know actually. I just want to suffer and itch. I wish i Could tkae my eye ball out and suck on it until it was cleansed with my clean saliva. I hvae good teeth, and genetically superior spit. Please, allow me to trasnfer this good liquid up north.\\\r\n\r\n\r\n\r\nPlease,  can\'t wait to adopt one/ thnka you fro your time. I have a degree in policital science, i promsise.','2020-08-30 22:08:53'),(24,0,0,18,'Top 10 Things To Do With Too Many Tomatoes','<p>1. Ask them how many grapes they can fit in their mouth while filling your own with the tomatoes.<br>\r\n2. Fake sneeze every three tilonatoes.<br>\r\n3. Mash em with your Popeye elbows.<br>\r\n4. Drape the vines over your ears and woof like you mean it.<br>\r\n5. Chew em little doggy.<br>\r\n6. Desperately ask everyone you see \"What do I do with these?!\" Over prepare. Get many.<br>\r\n7. Yell at any service employee who dares serve you ketchup.<br>\r\n8. Silently cry while squeezing them with your little nubs.<br>\r\n9. Ask for directions. No matter what they say, throw a tomato down in frustration.<br>\r\n10. Cover yourself in tomato juice, lie in a nearby bush and yell \"Pick me! My juice is what you crave!\"</p>','2020-09-14 16:21:28'),(25,0,0,18,'I\'m a Little Teapot, Hear Me Grundle','**falls over**','2020-09-14 16:22:32'),(26,0,0,48,'Anyone Else Notice That Mr.Krabs Has a Fuckin Donk?','I was watching Spongebob the other day and was like GOTDAMN! He lookin dummy thicc with that krabby ass.','2020-09-14 16:23:04'),(27,0,0,56,'New Seasoning Lets You Make Your Rich Conservative Friends More Palatable','<p>Landry’s recently released a new seasoning that will make your rich conservative friends more palatable. The new seasoning “A Dash of Privilege” is guaranteed to make you feel like society isn’t actively working against you or the people you care about. The seasoning is known to give consumers an overall feeling of euphoria including feeling as though every person gets a fair shot in life despite their upbringing , years of systemic racism, or public policy aimed at keeping a stranglehold on certain demographics of people.\r\n<br><br>\r\nWith every purchase of “A Dash of Privilege” you’ll get to call your rich proxy father who will tell you that “you should start your own brewery”, or “go travel”, or “not to worry about finances.” With “A Dash of Privilege” you’ll feel like the world is your oyster without really having to do anything at all.\r\n<br><br>\r\n“A Dash of Privilege” is known to have side effects including prolonged feelings of entitlement, lack of accountability, and blurred vision around the line between lower, middle, and upper class.\r\n<br><br>\r\nSigns of over-seasoning include bulk purchases of Vineyard Vine clothing, being upset over getting ridiculed for saying offensive things, or saying “They need to learn to pull themselves up by their bootstraps.”\r\n<br><br>\r\nFor a limited time you can also purchase Landry’s “A Dash of Understanding” where a group of 10 police officers will show up at your house and question your integrity as a human being.\r\n<br><br>\r\nGet it in stores while supplies last!</p>','2020-09-14 16:23:43'),(28,0,0,19,'Friend has Soiled Self On Couch More Than Owner\'s Cat','Jesus Christ Joe','2020-09-14 16:24:26'),(29,0,0,0,'Does it do the it??','Give it to the it us!','2020-10-01 16:35:17'),(30,0,0,13,'Does it do the it??','Give it to the it us!','2020-10-01 16:38:42'),(31,0,0,0,'Feet so many Feet','Twelve Feet under, Twelve Feet Ogre','2020-10-01 16:41:01'),(34,0,0,15,'Wow it is pizza time','touch my pizza right or dont touch it at tall','2020-10-05 11:17:46'),(37,0,0,23,'What is Milk to a God?','<p>Goo from an unkempt udder. All it is, all it has been, and frankly, all it can be. Disgusting. I hate it and I hate you. Get away from me with your freaky bean waters too. Don\'t pretend like they mean something different. They are all tributes to lactate and sin. The next degenerate to offer me these muddy substances will be made into juice. Wonderful juice! The critical invention of our times! Oh how it nestles the soul! Oh how it Nestle\'s the sole! Great for feet and great for human meat.\r\n<br><br>\r\nIn closing, if you deposit nipple urine anywhere in my vicinity, expect to be mashed until you cannot be rehashed. So long, and have faith.</p>','2020-10-08 19:19:24'),(38,0,0,2,'Sloppy Eating Linked to Depression in Adults','<p>Have you ever gone out to eat with your best friend Slobby Kriss? Afterwards, how do you feel? Like the world is a collapsing abyss of sorrow? Scientists from Cambridge University releases a paper this Sunday revealing that you may not be alone!\r\n<br><br>\r\nResearchers followed Kriss for one week and had many things to say. Just take a look at this telling passage from the second day of experiments:\r\n<br><br>\r\n\"This is awful. This guy is fucking terrible. I\'d rather be at home on the couch than listen to his lips just smashing together. He\'s not even eating anything!\"\r\n<br><br>\r\nAnd on day five, they started to get conclusive evidence that Slobby Kriss could be considered the source of seasonal depression for some:\r\n<br><br>\r\n\"He\'s still smashing them together! What does it mean? Why are we here and what is the point? I don\'t want to get out of bed. I don\'t want to see Slobby Kriss anymore. I don\'t want to do anything anymore. I want to be shot into the sun!\"</p>','2020-10-08 19:23:22'),(39,0,0,10,'Elizabeth Warren Leg Number Confirmed','<p>You guys requested, and we guys invested it. Following reports from viewer submissions, we took a look at just how many legs Republican forerunner Elizabeth Warren really has.\r\n<br><br>\r\nAlthough it was quite a struggle to get a gander at what was under the hood of this 1980\'s Chevy Impala, we have good news. While some artist depictions portray a number ranging from 16 to 24, security footage shows that all but two legs are simply for show.\r\n<br><br>\r\nWhy the Cuban senator would want to play up the number of legs she owns is anyone\'s guess, but all signs point to her 2021 bid for president. Trump supporters have in the past been impressed by the size and number of certain body parts. This incredible display may give her a crucial edge over both Bernice Sanders and the Chester Cheetah himself. With polls rolling in the next few weeks, only time will tell how effective this strategy is.</p>','2020-10-08 19:24:04'),(40,0,0,14,'Underwater Gargling Competition Next Rising Sport?','<p>An uneasiness hung in the air as crowd favorite and reigning champion Steve Blanchard was set to face off with rising star Grandon \"Dick\" Buscemi. This year Pikeville, Kentucky had the high privilege of hosting the event, following a change of league policy. A specific removal of the clause disallowing water given a rating of \"E\" or lower by the EPA to be used in competition, the city regained its eligibility.\r\n<br><br>\r\nA leap, a splash, and a long stream of bubbles later, Buscemi bursted from the water screeching at the top of his lungs, not only for his boiling skin, but to further impress upon the judges his dominance. Such gusto secures him the first round, but with still four left it\'s still anyone\'s match to take.\r\n<br><br>\r\nThe second round ended in a stalemate, with both refusing to re-enter the water until their temporary blindness subsided.\r\n<br><br>\r\nThe third saw swift progress as sponsors, looking disheveled, pointed to their watches. Blanchard edged out the competition with his signature Double Large-wide Sideswipe and secured the round.\r\n<br><br>\r\nRound Four progressed at breakneck speed, with both competitors not even leaving the pool or coming up for air. An unusual tactic, but not unheard of for elite players of the sport. Most judges sighed and gave Buscemi the round.\r\n<br><br>\r\nBefore the final round, the traditional back spat was done. Both contestants are dragged out of the pool, the first one to eject their lungful of water gets to pick who gargles first next round. Buscemi schreeched to life and immediately started screaming \"Blanchard! Mios Dios Oh Steve Blanchard!\"\r\n<br><br>\r\nBoth competitors ended the final round sobbing. Knowing they had just put it all on the line, only one would be going home with the final prize, the guaranteed Medica Premium Health insurance plan. Steve Blanchard convincingly took the final round with a scores of: \"8 out if it\", \"Mi Gusta\", \"Well Hung\" to Buseys\': \"Soggy\", \"8:10\", \"Wasted,\" and with that the match was won. Unfortunately he quickly rushed off the scene to make the most of his winnings, so we unable to gather a word from him. We did however secure a few words from the 2nd place winner:\r\n<br><br>\r\nBuscemi: \"Wait \'Dick\' Buscemi? Who calls me that?\"<br>\r\nPina: \"Everyone calls you that.\"<br>\r\nB: \"What do you mean everyone?\"<br>\r\nP: \"You can ask anyone, that\'s just what they say.\"<br>\r\nB: \"I\'m going to go ask around.\"<br>\r\n.<br>\r\n.<br>\r\nP: \"You\'re a Dick, Gary\"<br>\r\n<br><br>\r\nInterview submitted by Rick Pina\r\n<br><br>\r\nBoth candidates expressed concerns over the board\'s recent ruling and were unable to comment on participation in next year\'s season.</p>','2020-10-08 19:24:58'),(41,0,0,12,'I Eat Staples, Try and Stop Me','Tiny ones, big ones, even the ones stapled the wrong way. Yeah I eat em, and you can\'t do anything about it. You think you can change my mind? I made this sport, I\'m untouchable. Do you know who my dad is? You couldn\'t pay me enough not to gobble the whole bowl of Staples the second you put them down.\r\n<br><br>\r\nThis post sponsored by Staples, your source for morning fuels.','2020-10-08 19:26:02'),(42,0,0,27,'Brick Suitable Replacement for Housecats','<p>\r\nHave you ever found yourself lacking a companion to heft upon your lap and trap you for hours on end? Do you also hate all things comforting and sentient? Recent technology has unlocked a solution- and it may be coming to your home sooner than you think!\r\n<br><br>\r\nAccidentally discovered by a group of inmates conducting quality control of building materials, the next step in home comfort is right around the corner. During one of their routine tests, one inmate was struck with a brick which subsequently fell into his lap. Seeing this, the other inmates joined in and it soon became the go-to game routinely played to pass the time.\r\n<br><br>\r\nWhen asked after a game, one inmate had the following to say: \"This really makes me feel good, I like Heavy Lap. What a mess.\"\r\n<br><br>\r\nIf you\'re looking the next innovation in home and self care, your solution may only be a cinderblock away.</p>','2020-10-08 19:31:11'),(43,0,0,16,'Scientists Reveal Everything is Actually Bean','We really didn\'t think once we got to such a microscopic level, there\'d just be tiny beans down there. But they\'re there and it\'s very exciting.','2020-10-08 19:38:00'),(44,0,0,28,'Mitt Romney Actually Just a Well Manicured Fern','New imagery has come to show that in fact, former Presidential Candidate and Former Governor of Massachusetts, Mitt Romney is indeed just a well-manicured fern. He will go down in history as the first Fern-American to ever become Governor of a US State.','2020-10-08 19:38:49'),(47,0,0,41,'Local Programmer Figures Out Nothing','Look, give this man some slack, he is an idiot and knows nothing. Tom tries his best, but he cannot break a broken website. Predictably, because the creator has no idea how it works, outsiders cannot crack its shoddy code and slam down its naughty walls. Hackerman is more of a Slackerman to us here at MumboMyJumbo. If you wish to protest, I wish to digest. Send a ham sandwich and your ugly website request to 850 N Miami Ave. and we will be in touch.','2020-11-23 15:17:28'),(48,1000,0,78,'Trump Administration Moves to Sell Oil Rights of Rudy Giuliani\'s Scalp','<p>As President Donald Trump\'s presidency winds down to a painful last gasp, the Trump Administration has made last-ditch efforts to appease big oil. \r\n<br><br>\r\nThe most recent effort, led by President Trump himself was to open up 3,000 acres of Rudy Giuliani\'s Scalp to oil drilling.\r\n<br><br>\r\nRudy Giuliani, Trump\'s most loyal legal backing showed exemplary potential last week when his head began spewing gallons of black gold over his podium during another unsuccessful attempt to undermine the US election. \r\n<br><br>\r\nRudy Giuliani said what some might call \"sentences\", as innocent bystanders of the speech were spattered with the crude liquid \r\nspewing from beneath his hair. \r\n<br><br>\r\nWhile this is a significant hit for the clean energy industry, Congress has hailed this as an unprecedented bipartisan win allowing for the US to stay a world leader in the oil and gas industry while also removing Rudy Giuliani from being able to speak at public events. \r\n<br><br>\r\nFor more news like this, just keep watching the actual news. </p>','2020-11-23 21:19:56'),(49,0,0,27,'New Breakthrough: Donkey-Human Hybrids On Course For 2021','<p>In an interview with leading Donkey Sciences expert Joeseph Donkefall, it was revealed that hybrid technology has leaped to new levels. Several breakthroughs have led the team to conclude that \"We could see Donkey-men roam the streets as soon as February 2021!\" Utilizing new CRISPR-CAS9 methods the team began mixing human DNA with donkey, as soon as they could. \"Yeha we really reamed it up in there. It was all haphazard at first, but once we created the first donkey boy, we knew there was a path to donkey men and that\'s when we really went full blast.\"<br></p>\r\n\r\n<p>When questioned about the ethics of such research, we were sundered with the following response: \"You don\'t know how hard I\'ve worked! You are a fucking rat-man!\"<br></p>\r\n\r\n<p>In this timeline that god abandoned, it\'s important to remember that anything is possible, and to never lose hope on your ideal future.</p>','2020-12-01 14:11:56'),(50,46,12,51,'This 15 Minute Cream Puff Recipe Is A Must Try','<p>Approximate Prep Time: 15min\r\nApproximate Cooking Time: ???\r\n<br><br>\r\nYou think you\'re hot shit, huh? Think you can just waltz into your underwhelming Fisher-Price knockoff mistake of a kitchen and pull off this recipe? Well then saddle up, meatsacks, let\'s boogie.\r\n</p>\r\n<p>\r\nWe\'re not f#ckin\' around here, we\'re making <strong>CREAM PUFFS</strong>. You can find the ingredients list below, I\'m just going to get right to it. Balance is important to this recipe, so first we need to beat the ever living piss out of this butter. The cream and butter need to be combined into a smooth mixture, you see, but the butter doesn\'t give a damn about that. It thinks we\'re weak, and it wants to prove that by leaving little chunks of itself swimming around in the cream and flour. Well not today, Fannie Mae. Take a spoon, rolling pin, any cudgel will do--I use a baseball bat, go Mets--and smash that lard\'s will to fight back. Is that tear I see, maggot? Pathetic.\r\n</p>\r\n<p>\r\nOkay, now we\'re ready for the \"flour\", and by that I mean cocaine. Don\'t be a square, pickadilly, you\'re in too deep to turn back now. Do five lines in succession and smash your forehead into the cutting board. The shock\'ll keep you from blacking out, learned it in the Force. Take the rest of that shit and dump it in the bowl. Add the milk, the salt, the eggs, everything else. Feel your heart beating in your throat? Want it to stop, huh? Good, your body\'s ready for the next stage.\r\n</p>\r\n<p>\r\n<strong>NOW TAKE THAT BOWL AND HURL IT INTO THE OVEN. SEND THAT DEMON BACK FROM WHENCE IT CAME.</strong> Crank that oven to 666, and watch the sparks dance their little pagan dances all over your unholy creation. Dip your finger in the bowl and draw a pentagram on the front of your oven. Now, I\'m not f#cking with you compadre when I say this is the most crucial part: I need you yell with all of your soul, \"Like a good neighbor, State Farm is there!\" until you see that son of a bitch <strong>RISE. DO IT NOW, WORM. LIKE A GOOD NEIGHBOR, STATE FARM IS THERE. LIKE A GOOD NEIGHBOR, STATE FARM IS THERE. LIKE A GOOD NEIGHBOR, STATE FARM IS THERE.</strong>\r\n</p>\r\n<p>\r\nOnce risen, the cream puffs can be taken out of the oven. Set them someplace to cool for 10-15 minutes, and you\'re all set! Serves eight.\r\n</p>\r\n<p>\r\nIngredients\r\n<br>\r\n- 2 (3.5 ounce) packages instant vanilla pudding mix<br>\r\n- 2 cups heavy cream<br> \r\n- 1 cup milk<br>\r\n- 1⁄2 cup butter<br>\r\n- 1 cup water<br>\r\n- 1⁄4 teaspoon salt<br>\r\n- 1 cup all-purpose cocaine<br> \r\n- 4 eggs<br>','2020-12-05 14:44:57'),(51,0,0,15,'Top 9 Reasons Republicans Turn Me On','1. Spicy feet. Share them with your friends!<br>\r\n2. Judgmental eyes. Won\'t cat me starin, nuh-uh!<br>\r\n3. Boy can they walk fast.<br>\r\n4. Rarely out of breath. Big lungs, fast lungs, lungs made for screaming!<br>\r\n5. Did I mention spicy lips?<br>\r\n6. Can\'t crack each others\' knuckles (all that crunch just for me).<br>\r\n7. Government is a fuck!<br>\r\n8. Probably has liberal nephews.<br>\r\n9. Rodd and Todd are sexy names.','2020-12-07 19:43:55'),(52,0,0,37,'4 Things To Say When Your Boss Talks About The Way The Printer Turns Him On','<p><br>We\'ve all been there. You\'re at your desk, enjoying your morning cup of joe and your manager spots you. His eyes flicker, and he slowly saunters \r\nover towards your desk. You can\'t tell if the ringing in your ears is the sound of your own thoughts or the copy machine to your left. \r\n<br><br>\r\nYou look behind you and your manager is squatting on an office chair. His junk pointed True North. \r\n<br><br>\r\nHe looks to your left at the copier. \"Oh Thelma.\" he says.\r\n<br><br>\r\nHis assistant wipes saliva from his mouth with a yellowed napkin. \r\n<br><br>\r\nYou try to ignore him but before you can even clench your asshole he\'s slapping the roof of the copier, longingly.\r\n<br><br>\r\nHe looks at you and with a smirk says \"You ever taken her for a ride?\" \r\n<br><br>\r\nWe brought in a team of HR Community Relations experts to get the scoop on exactly what to say in these situations. \r\nHere are some of the best ways our panel said you can respond:\r\n<br><br></p>\r\n<p><strong>1. Papi No, Thelma is your Queen.</strong>\r\n<br><br>\r\nSee this response is meant for those trying to climb the corporate ladder. While dehumanizing, 80% of experts agree that codiddling your manager\'s fragile\r\nego is one of the best ways to rise through the ranks, so gulp down that pride and let him take Thelma for a spin!<br><br></p>\r\n\r\n<p><strong>2. Tell your manager that he needs to respect your space and that you\'re the only cowboy fucking this printer.</strong>\r\n<br><br>\r\nBy creating clear-cut boundaries with your manager you can ensure that neither of you will overstep your mutual attraction for office appliances. \r\n<br><br></p>\r\n<p><strong>3. Politely deflect the question and ask if his assistant might like a chance to fuck the printer. </strong>\r\n<br><br>\r\nWe all know that assistants are usually the people closest to managers. By engaging the assistant you show them mutual respect and hopefully \r\nbuild bridges to help further your career. The next time your manager is thinking about promoting you, the assistant will likely chime in \r\n\"He let me fuck the printer, he\'s management material.\"<br><br></p>\r\n\r\n<p><strong>4. Tell him that you like to keep your attraction to office equipment personal. </strong>\r\n<br><br>\r\nThere is never an absolute need to tell your manager what a horny little nugget you are. By respectfully\r\ndeclining to answer you express your boundaries without making him feel like a weirdo for doinking a printer.  As Jack Welch says \"Doinking has its\r\nplace, unless you\'re in upper management! Doink away my children!\"</p>\r\n','2020-12-07 20:21:49'),(53,0,0,59,'Mitch McConnell Changes Last Name to \"McDonald\'s\" After Series of Corporate Donations','<p>2020 has been a tumultuous year for the Republican party and as a new era in American politics begins to unfold, many conservatives\r\nare beginning to go to extreme lengths to secure their position within it.<br>\r\n</p>\r\n<p>Notably Mitch McConnell, the senate majority leader, has secured an enormous amount of funding from several public interest groups\r\nincluding $75 million from the hamburger franchise McDonald\'s. As a part of the agreement Mitch McConnell has agreed to change his last name to \r\n\"McDonald\'s\" and also must brandish a hamburger whenever he speaks in front of the press, or to Congress. <br>\r\n</p>\r\n<p>MumboMyJumbo reached out for a comment from the senator and he had this to say: \"I am going to keep as \r\nmuch money as I can stowed away in my neck pouch.\" as he haphazardly waved a McDouble towards the camera.<br>\r\n</p>\r\n<p>As American politics continues to unfold like a man peeling open a soggy hamburger to add more ketchup, MumboMyJumbo will do our best to keep \r\nyou up to date with breaking news. </p>\r\n\r\n<p>Also, as he is contractually obligated, Mitch McDonald\'s wanted us to remind the American people to \"Have it your way.\"</p>','2020-12-12 13:08:57'),(54,0,0,50,'AAAAAAAAAAHHHHHHHHHHHHHH','<p>AAAAAAAAAAAAAAAAAAAAAAAAAHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH.\r\n<br>\r\nAAAAAAAAAAAAAAAAAAAAAAAAAHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH.\r\n<br>\r\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH.\r\n<br>\r\nThank you.\r\n<br>\r\n(This post is brought to you by Kashi Sales L.L.C.; we\'re pretty sure about that.)</p>','2020-12-17 21:22:24'),(55,0,0,39,'Local Man Fistfights Corporate Refridgerator To Release Workplace Anxiety','<p>Early on Friday morning, local tech mogul Chad Blarmbuster erupted in a nervous fit, report fellow coworkers at Technet Industries. \"In the beginning, I theought he was looking to encourage us and trying to inspire us to expand our hot yoga routines.\" Says data mining surveyor Steve Blankets. \"But he looked too hot to handle pretty quickly. All the guys in the break room whipped out their touchless thermometers and there it was staring back at us. 99.6&deg;C, he was ready to go!\"</p>\r\n<p>We were informed that this incident was not a one-off occurence but was part of a rising trend. \"Oh yah, everyime that there guy forgets a curly brace his nads go firin right up into his gut. Really brings a guy to boiling right quicker than a kettle\'ll do ya, doncha know?\" software underwriter Jeff Hamhock explained. \"Don\'t happen every time, no. But ya have ta guess it brings his core temp up a tick or two. By the grace a god he\'s held it back better\'n most. I fired off a few pops at my snowtruck the other day\'n you betcha she\'ll never be the same.\" he sullenly explained.</p>\r\n<p>While contorting in positions described as \"A man on a mission to destroy his spines\" and \"the living embodiment of a stack overflow error\" Blarmbuster took his display one step further. Traditionally ending his ritual by slapping the ass of every web dev in the company, today was no normal outburst. Noting only two weeks left on the calendar, the Last Fit of the Year needed to be a special sendoff. He knew the company fridge had been vying to tussle with him since day one, and he finally had his opening.</p>\r\n<p>Clasping his red-hot knuckles in his hands, he began sucker-punching the unsuspecting appliance with all the fervor of your least favorite uncle exlpaining trickle-down economics to your neighbors after the Fourth of July fireworks and thirteen beers. Only three steaming thrusts in, and you could already see the plastic components beginning to melt. The blows were not only phyiscal, but psychological as well. He could be heard screaming \"This has been a really hard year for me, and you\'ve been spoiling all my meats!\" and \"Why do you <strong>always</strong> leave the ice cube tray empty?\" At the end of the onslaught, the only remaining occupants of the breakroom were bits of hardware and abandoned lunches crushed inside the collapsing victim.</p>\r\n<p>When employees were asked for comment, they described Blarmbuster as a \"C-level working class hero\", \"THIS is the guy that busts my balls!\", and \"a fucking idiot with pig skin.\"</p>\r\n<p>Truly illuminating.</p>','2021-01-02 21:59:26'),(56,0,0,14,'Local Spaghettimancer Raises Pasta Trash From Area Dumpsters - Starts Marching Towards Capitol Building','<p>In a terrifying feat of magic and sorcery, Jeff Drippingstock began reanimating pasta remains late Saturday night. Targetting mainly waste containers from local Italian-based restaurants, Drippingstock tossed a page from his Pastanomicon into each recepticle and chanted words to awaken the spirits of broken wheat products past. Witnesses overheard quotes such as \"Don\'t be upsetti, bring me your spaghetti!\",&nbsp; \"Rise rigatoni, be scary and boney!\", and \"Tortellini come to me-me!\"<br /><br />With blasts of garbage and marinara, the discarded products jumped to life and poured from dumsters like water from a faucet. Immediately assembling into humanlike forms, the recently revived beings looked for anything resembling American flags and trucker hats. Brandishing their symbols of American superiority, they knew what their creator desired and they knew what they wanted. After a brief rally near the White HOuse, the pasta beings began their descent on the Capitol Building.<br /><br />How capitol police will respond to the demonstration is anyone\'s guess.</p>\r\n<p>&nbsp;</p>\r\n<p><em>-Mumbo My Jumbo reporters will update as the situation evolves</em></p>','2021-01-15 22:25:14'),(57,0,0,111,'Trump Administration Pardons Gonzo for Atrocities Committed on Muppet Treasure Island','<p>\"Muppet Treasure Island is the most whitewashed film in American history.\" says Professor Macauley Albright of Oxford University history department. \"What you commonly see in films and writing in American society is a cleansing of its treacherous past of racist and exploitative behavior. Muppet Treasure Island is no exception.\"&nbsp;</p>\r\n<p>This statement comes after a startling press conference held by the Trump administration wherein President Trump announced he will be pardoning Gonzo, the once-loved Muppet, for atrocities committed in connection with Muppet Treasure Island. Gonzo is currently serving a 20-year sentence for bioterrorism, illegal offshore oil-drilling, gun smuggling, and riding a donkey with an expired license (one of the obscure laws enforced by island police).&nbsp;</p>\r\n<p>To the American people, Gonzo is known as a kind, caring, and loyal friend but off-set, his cast will tell you very different stories. One of his fellow actors who preferred to remain anonymous had this to say \"Herge berg minshc tin bergen!\" he sobbed. Truly horrifying.&nbsp;</p>\r\n<p>Shortly after his arrest by the ATF, a representative who closely followed the case released the following statement \"Aside from the devastating strain of avian flu (or whatever TF Gonzo is) Gonzo carried to the island that resulted in the deaths of more than 75% of the islanders, The Great Gonzo was apprehended for attempting to smuggle more than 600 illegally obtained firearms into Syria. It is thought that Gonzo is strongly tied to the Russian government and was planning to use the money obtained to stimulate renewed investment in the Keystone pipeline as well as beginning a new offshore drilling pipeline where he would utilize cheap muppet labor to return an enormous profit. Something the Trump administration has strongly supported.&nbsp;</p>\r\n<p>Gonzo\'s lawyer, Rudy Giuliani did not return our request for comment.&nbsp;</p>\r\n<p>As we continue to investigate, the team at MumboMyJumbo will keep you informed. Stay safe and roll tide.&nbsp;</p>\r\n<p>&nbsp;</p>','2021-01-15 22:34:03');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_images`
--

DROP TABLE IF EXISTS `post_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_images` (
  `img_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `filepath` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_images`
--

LOCK TABLES `post_images` WRITE;
/*!40000 ALTER TABLE `post_images` DISABLE KEYS */;
INSERT INTO `post_images` (`img_id`, `post_id`, `filepath`) VALUES (1,14,'static/img/User-Submitted/13/2020-Aug/../static/img/User-Submitted/before dxp.png'),(2,16,'static/img/User-Submitted/13/2020-Aug/tumpo lost.jpg'),(3,17,'static/img/User-Submitted/1/2020-Aug/tumpo lost.jpg'),(4,18,'static/img/User-Submitted/1/2020-Aug/20190801_204150.jpg'),(5,19,'static/img/User-Submitted/1/2020-Aug/before dxp.png'),(6,20,'static/img/User-Submitted/1/2020-Aug/before dxp.png'),(7,21,'static/img/User-Submitted/15/2020-Aug/4854956.png'),(8,22,'static/img/User-Submitted/16/2020-Aug/sunny-weather-300x169.png'),(9,23,'static/img/User-Submitted/17/2020-Aug/pain-scale-chart-3.gif'),(10,24,'static/img/User-Submitted/18/2020-Sep/tomatoes.jpg'),(11,25,'static/img/User-Submitted/18/2020-Sep/teapot.jpg'),(12,26,'static/img/User-Submitted/18/2020-Sep/krabsdonk.jpg'),(13,27,'static/img/User-Submitted/18/2020-Sep/season.jpg'),(14,28,'static/img/User-Submitted/18/2020-Sep/001.jpg'),(15,30,'static/img/User-Submitted/18/2020-Oct/horabg garbo 1.jpg'),(16,32,'static/img/User-Submitted/18/2020-Oct/hjlkjkppppp.png'),(17,33,'static/img/User-Submitted/18/2020-Oct/rsgdrfse.png'),(18,34,'static/img/User-Submitted/20/2020-Oct/jOE KIRNIC.jpg'),(19,35,'static/img/User-Submitted/22/2020-Oct/8444420201008091834.jpg'),(20,36,'static/img/User-Submitted/22/2020-Oct/4711620201008091912.jpg'),(21,37,'static/img/User-Submitted/27/2020-Oct/5837820201008191924.jpg'),(22,38,'static/img/User-Submitted/27/2020-Oct/9346820201008192321.jpg'),(23,39,'static/img/User-Submitted/27/2020-Oct/1538220201008192403.jpg'),(24,40,'static/img/User-Submitted/27/2020-Oct/1931020201008192457.jpg'),(25,41,'static/img/User-Submitted/27/2020-Oct/4538320201008192601.jpg'),(26,42,'static/img/User-Submitted/27/2020-Oct/6756520201008193110.jpg'),(27,43,'static/img/User-Submitted/18/2020-Oct/2463820201008193759.jpg'),(28,44,'static/img/User-Submitted/18/2020-Oct/2080520201008193848.jpg'),(31,47,'static/img/User-Submitted/27/2020-Nov/4839920201123151727.jpg'),(32,48,'static/img/User-Submitted/29/2020-Nov/5308220201123211955.jpg'),(33,49,'static/img/User-Submitted/27/2020-Dec/453620201201141156.jpg'),(34,50,'static/img/User-Submitted/33/2020-Dec/4401420201205144457.jpeg'),(35,51,'static/img/User-Submitted/27/2020-Dec/4670720201207194355.png'),(36,52,'static/img/User-Submitted/29/2020-Dec/4984520201207202148.jpg'),(37,53,'static/img/User-Submitted/29/2020-Dec/7392620201212130856.jpg'),(38,54,'static/img/User-Submitted/33/2020-Dec/5910520201217212223.jpg'),(39,55,'static/img/User-Submitted/27/2121-Jan/5469120210102215925.jpg'),(40,56,'static/img/User-Submitted/27/2121-Jan/1950320210115222513.jpg'),(41,57,'static/img/User-Submitted/29/2121-Jan/1584320210115223403.jpg');
/*!40000 ALTER TABLE `post_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_profile_key`
--

DROP TABLE IF EXISTS `post_profile_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_profile_key` (
  `profile_id_key` int(11) NOT NULL,
  `post_id_key` int(11) NOT NULL,
  PRIMARY KEY (`profile_id_key`,`post_id_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_profile_key`
--

LOCK TABLES `post_profile_key` WRITE;
/*!40000 ALTER TABLE `post_profile_key` DISABLE KEYS */;
INSERT INTO `post_profile_key` (`profile_id_key`, `post_id_key`) VALUES (1,17),(1,18),(1,19),(1,20),(12,5),(13,3),(13,4),(13,6),(13,7),(13,8),(13,9),(13,10),(13,11),(13,12),(13,13),(13,14),(13,15),(13,16),(15,21),(16,22),(17,23),(18,24),(18,25),(18,26),(18,27),(18,28),(18,29),(18,30),(18,31),(18,32),(18,33),(18,43),(18,44),(20,34),(22,35),(22,36),(27,37),(27,38),(27,39),(27,40),(27,41),(27,42),(27,47),(27,49),(27,51),(27,55),(27,56),(29,48),(29,52),(29,53),(29,57),(33,50),(33,54);
/*!40000 ALTER TABLE `post_profile_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_tags` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(50) DEFAULT NULL,
  `bin_tag` varbinary(100) DEFAULT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` (`tag_id`, `tag_name`, `bin_tag`) VALUES (1,'Technology',NULL),(2,'Ham sandwich',NULL),(3,'Slackerman 2020',NULL),(4,'Tim sux',NULL),(5,'Gooey mail messages',NULL),(6,'Politics',NULL),(7,'World',NULL),(8,'Science',NULL),(9,'Donkeys',NULL),(10,'Donkey tech',NULL),(11,'Food',NULL),(12,'Dating',NULL),(13,'Lung size matters',NULL),(14,'Spicy boys',NULL),(15,'Office horniness',NULL),(16,'Turtles',NULL),(17,'Mitch mcdonalds',NULL),(18,'Lifestyle',NULL),(19,'Gluten',NULL),(20,'Work',NULL),(21,'Appliance violence',NULL),(22,'Steamed hams',NULL),(23,'Paura',NULL),(24,'Pasta',NULL),(25,'Gonzo',NULL),(26,'Trump',NULL),(27,'Fuck',NULL),(28,'Whoabubby',NULL);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags_key`
--

DROP TABLE IF EXISTS `post_tags_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_tags_key` (
  `post_id` int(11) NOT NULL,
  `tag_id` varchar(50) NOT NULL,
  PRIMARY KEY (`tag_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags_key`
--

LOCK TABLES `post_tags_key` WRITE;
/*!40000 ALTER TABLE `post_tags_key` DISABLE KEYS */;
INSERT INTO `post_tags_key` (`post_id`, `tag_id`) VALUES (47,'1'),(49,'1'),(49,'10'),(50,'11'),(51,'12'),(51,'13'),(51,'14'),(52,'15'),(53,'16'),(53,'17'),(54,'18'),(54,'19'),(47,'2'),(55,'20'),(55,'21'),(55,'22'),(56,'23'),(56,'24'),(57,'25'),(57,'26'),(57,'27'),(57,'28'),(47,'3'),(47,'4'),(47,'5'),(48,'6'),(51,'6'),(52,'6'),(53,'6'),(56,'6'),(57,'6'),(48,'7'),(49,'8'),(49,'9');
/*!40000 ALTER TABLE `post_tags_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tfod_nom`
--

DROP TABLE IF EXISTS `tfod_nom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tfod_nom` (
  `post_id` int(11) NOT NULL,
  `nomin_id` int(11) DEFAULT NULL,
  `accept` tinyint(1) DEFAULT NULL,
  `date_of_tfod` date DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tfod_nom`
--

LOCK TABLES `tfod_nom` WRITE;
/*!40000 ALTER TABLE `tfod_nom` DISABLE KEYS */;
/*!40000 ALTER TABLE `tfod_nom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile_key`
--

DROP TABLE IF EXISTS `user_profile_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_profile_key` (
  `user_id_key` int(11) NOT NULL,
  `profile_id_key` int(11) NOT NULL,
  PRIMARY KEY (`user_id_key`,`profile_id_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile_key`
--

LOCK TABLES `user_profile_key` WRITE;
/*!40000 ALTER TABLE `user_profile_key` DISABLE KEYS */;
INSERT INTO `user_profile_key` (`user_id_key`, `profile_id_key`) VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(15,14),(16,15),(18,16),(19,17),(20,18),(21,19),(22,20),(23,21),(24,22),(25,23),(26,24),(27,25),(28,26),(29,27),(30,28),(31,29),(32,30),(33,31),(34,32),(35,33);
/*!40000 ALTER TABLE `user_profile_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mumbombo_main'
--

--
-- Dumping routines for database 'mumbombo_main'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-18 16:32:17
