-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2020 at 07:04 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mumbo_my_jumbo`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `num_likes_comment` int(11) DEFAULT 0,
  `num_dislikes_comment` int(11) DEFAULT 0,
  `date_comment` date NOT NULL,
  `comment_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `comment_post_key`
--

CREATE TABLE `comment_post_key` (
  `comment_id_key` int(11) NOT NULL,
  `post_id_key` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `friends_list`
--

CREATE TABLE `friends_list` (
  `user_id_key` int(11) NOT NULL,
  `friend_id_key` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `important_logins`
--

CREATE TABLE `important_logins` (
  `login` varchar(150) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `important_logins`
--

INSERT INTO `important_logins` (`login`, `password`, `notes`) VALUES
('recovery@mumbomyjumbo.com', 'AZ]UV]Uu5PEp', 'Login for email server, for recovery emails to be sent to/from'),
('Patrick Himself', 'Cheese11', 'Login for mmj, pxz336@gmail.com email');

-- --------------------------------------------------------

--
-- Table structure for table `mumbo_profile`
--

CREATE TABLE `mumbo_profile` (
  `profile_id` int(11) NOT NULL,
  `first_name_profile` varchar(30) NOT NULL,
  `last_name_profile` varchar(30) NOT NULL,
  `user_name_profile` varchar(30) NOT NULL,
  `create_date_profile` date NOT NULL,
  `profile_photo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mumbo_profile`
--

INSERT INTO `mumbo_profile` (`profile_id`, `first_name_profile`, `last_name_profile`, `user_name_profile`, `create_date_profile`, `profile_photo`) VALUES
(1, 'Patrick', 'Zmina', 'WoweeWettee', '2020-07-09', NULL),
(2, 'Paete', 'Zminono', 'wunderlust', '2020-07-09', NULL),
(3, 'Paete', 'Zminono', 'zimbooso', '2020-07-09', NULL),
(4, 'Zimboo', 'Zminono', 'bingo boings', '2020-07-09', NULL),
(5, 'Zimboo', 'Zminono', 'bingo boings', '2020-07-09', NULL),
(6, 'Zimboo', 'Zminono', 'bingo boings', '2020-07-09', NULL),
(7, 'Zimboo', 'Zminono', 'bingo boings', '2020-07-09', NULL),
(8, 'Zimboo', 'Zminono', 'bingo boings', '2020-07-09', NULL),
(9, 'Zimboo', 'Zminono', 'bingo boings', '2020-07-09', NULL),
(10, 'Zimboo', 'Zminono', 'bingo boings', '2020-07-09', NULL),
(11, 'Zimboo', 'Zminono', 'bingo boings', '2020-07-09', NULL),
(12, 'pibble', 'zibble', 'my nibble', '2020-07-10', NULL),
(13, 'peteor', 'metoer', 'mumbo', '2020-07-13', NULL),
(14, 'bubby', 'bubberino', 'penopeno', '2020-07-15', NULL),
(15, 'bumbo', 'boobie', 'suckmybungo', '2020-07-27', NULL),
(16, 'Terri', 'Zmina', 'mom', '2020-08-28', NULL),
(17, 'Stinky', 'Marineanimal', 'Porkus', '2020-08-30', NULL),
(18, 'Tom', 'Horsfall', 'TcTuggers22', '2020-09-14', NULL),
(19, 'Bumbo', 'Jumbo', 'Humbo', '2020-10-01', NULL),
(20, 'fgds', 'gdffg', 'fdsgegs', '2020-10-01', NULL),
(21, 'gdf', 'fgd', 'dfg', '2020-10-01', NULL),
(22, 'snick', 'er', 'snicker', '2020-10-05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mumbo_user`
--

CREATE TABLE `mumbo_user` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(320) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `login_token` varchar(50) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `user_name` varchar(30) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `user_total_likes` int(11) DEFAULT 0,
  `user_total_views` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mumbo_user`
--

INSERT INTO `mumbo_user` (`user_id`, `user_email`, `password`, `login_token`, `first_name`, `last_name`, `user_name`, `create_date`, `user_total_likes`, `user_total_views`) VALUES
(1, 'themalemonkey@yahoo.com', 'cheese11', '1c5bd3344b03796d09077f5c00a705cec3d6e3ba680846ce', 'Patrick', 'Zmina', 'WoweeWettee', '2020-07-09', 0, 0),
(2, 'themalemonkey@yahoo.com', 'hoo hoo', NULL, 'Paete', 'Zminono', 'wunderlust', '2020-07-09', 0, 0),
(3, 'the@at.orgy', 'rew', NULL, 'Paete', 'Zminono', 'zimbooso', '2020-07-09', 0, 0),
(4, 'the@at.orgy', 'rewer', NULL, 'Zimboo', 'Zminono', 'bingo boings', '2020-07-09', 0, 0),
(5, 'the@at.orgy', 'fes', NULL, 'Zimboo', 'Zminono', 'bingo boings', '2020-07-09', 0, 0),
(6, 'the@at.orgy', 'fes', NULL, 'Zimboo', 'Zminono', 'bingo boings', '2020-07-09', 0, 0),
(7, 'the@at.orgy', 'fes', NULL, 'Zimboo', 'Zminono', 'bingo boings', '2020-07-09', 0, 0),
(8, 'the@at.orgy', 'fes', NULL, 'Zimboo', 'Zminono', 'bingo boings', '2020-07-09', 0, 0),
(9, 'the@at.orgy', 'fes', NULL, 'Zimboo', 'Zminono', 'bingo boings', '2020-07-09', 0, 0),
(10, 'the@at.orgy', 'fes', NULL, 'Zimboo', 'Zminono', 'bingo boings', '2020-07-09', 0, 0),
(11, 'the@at.orgy', 'fes', NULL, 'Zimboo', 'Zminono', 'bingo boings', '2020-07-09', 0, 0),
(12, 'giggle@google.oogle', 'fds', '04caa69bcc6b357e5b4587f62493f18bdbf0805f01d462fe', 'pibble', 'zibble', 'my nibble', '2020-07-10', 0, 0),
(13, 'bumbo@jumbo.org', 'gfsd', '441a89de31af5e2f6dcd62eb43004d590315416f9e385d44', 'peteor', 'metoer', 'mumbo', '2020-07-13', 0, 0),
(14, NULL, 'rewer', NULL, NULL, NULL, 'bingo boings', NULL, 0, 0),
(15, 'bubbo@wubbo.og', 'bingo', NULL, 'bubby', 'bubberino', 'penopeno', '2020-07-15', 0, 0),
(16, 'bubbo@gooogle.org', 'peepo', 'e84fb46370f81ac3d1737e3cbe3cd39c25572ea3b3cadb97', 'bumbo', 'boobie', 'suckmybungo', '2020-07-27', 0, 0),
(17, NULL, NULL, '2a890edc71d3e68145b50c602e6f3bfbf9ec88907ee444ce', NULL, NULL, '22', NULL, 0, 0),
(18, '123@hotmail.com', '123abc', '0a135e68171be06260d9033cf99538f17f9e6c5fad2ac679', 'Terri', 'Zmina', 'mom', '2020-08-28', 0, 0),
(19, 'kzmina@gmail.com', 'donkey', '8fa1a8d4be5225a1c79c4c57df1ff8f0fc6d74339e1d96c8', 'Stinky', 'Marineanimal', 'Porkus', '2020-08-30', 0, 0),
(20, '2@3.edu', 'cheese', 'c1ba76e26e805283f0c7b109740869e27a68fc6597102b9e', 'Tom', 'Horsfall', 'TcTuggers22', '2020-09-14', 0, 0),
(21, 'butterboi@gmail.org', 'cheese11', NULL, 'Bumbo', 'Jumbo', 'Humbo', '2020-10-01', 0, 0),
(22, '9@2.org', 'gfd', NULL, 'fgds', 'gdffg', 'fdsgegs', '2020-10-01', 0, 0),
(23, 'dfg@dfgs.com', 'gfd', NULL, 'gdf', 'fgd', 'dfg', '2020-10-01', 0, 0),
(24, 'snicker@gmail.com', 'poo', NULL, 'snick', 'er', 'snicker', '2020-10-05', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `num_likes` int(11) DEFAULT 0,
  `num_dislikes` int(11) DEFAULT 0,
  `num_views` int(11) DEFAULT 0,
  `post_title` varchar(200) NOT NULL,
  `post_text` text NOT NULL,
  `post_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `num_likes`, `num_dislikes`, `num_views`, `post_title`, `post_text`, `post_date`) VALUES
(1, 0, 0, 0, 'Biggie Smiggie', 'Smuggle my nards, but don\'t go too too hard?', '2020-08-03 00:00:00'),
(3, 0, 0, 0, 'Want to run out of milk??', 'You really wanna push me like that? I created you. You can\'t leave milk. THERE. WILL. BE. MILK.', '2020-08-04 00:00:00'),
(4, 0, 0, 0, 'Bubble Guts', 'Oh lawd I got the bubble guts', '2020-08-04 00:00:00'),
(5, 0, 0, 0, 'Buttery Nuggets Found At Airport', '\"What am I supposed to do with all these nuggets?\" Asked Jeremy Manilow, knowing exactly what was needed to be done. All the steps to be taken were right there in front of him, but he refused to take them. And exceptional man? I really do not think so. A responsible man? Maybe. A reprehensible man? That, my friends is unequivocal, and I think we can all learn from these experiences. \"What am I supposed to do with all these nuggets?\" Get real. We all know, we all knew, and to be frank, we all would know in the future. Don\'t be like Gary Manitoba. Don\'t be an it.', '2020-08-04 00:00:00'),
(6, 0, 0, 0, 'Rug Butter, What Is It Good For?', 'You cannot determine it by yourself, but with a little help from your friends, you can see the light through the darkness. Rub it a little. Tell it a little story. Rug butter will flow forth for your analytical mind to take hold of. I think, in reality, if you use it for the wrong cause, it won\'t matter much. Just make sure that it is truly what you want and where you want it. Rug butter, friend? Or Foe?', '2020-08-10 00:00:00'),
(7, 0, 0, 0, 'rubbibg', 'bibiob', '2020-08-19 00:00:00'),
(8, 0, 0, 0, 'rgghsdfjksdfghj', 'ghujghjoghjghjlgjlkgg', '2020-08-20 00:00:00'),
(9, 0, 0, 0, 'rgghsdfjksdfghj', 'ghujghjoghjghjlgjlkgg', '2020-08-20 00:00:00'),
(10, 0, 0, 0, 'rgghsdfjksdfghj', 'ghujghjoghjghjlgjlkgg', '2020-08-20 00:00:00'),
(11, 0, 0, 0, 'rgghsdfjksdfghj', 'ghujghjoghjghjlgjlkgg', '2020-08-20 00:00:00'),
(12, 0, 0, 0, 'rgghsdfjksdfghj', 'ghujghjoghjghjlgjlkgg', '2020-08-20 00:00:00'),
(13, 0, 0, 0, 'rgghsdfjksdfghj', 'ghujghjoghjghjlgjlkgg', '2020-08-20 00:00:00'),
(14, 0, 0, 3, 'rgghsdfjksdfghj', 'ghujghjoghjghjlgjlkgg', '2020-08-20 00:00:00'),
(15, 0, 0, 0, 'pibble', 'gotta take a nibble', '2020-08-20 00:00:00'),
(16, 0, 0, 4, 'pibble', 'gotta take a nibble', '2020-08-20 00:00:00'),
(17, 0, 0, 1, 'Bungle it good my frined', 'You have to you want to you really ought to', '2020-08-20 00:00:00'),
(18, 0, 0, 5, 'boogles', 'bingos', '2020-08-20 00:00:00'),
(19, 0, 0, 2, 'sdadasd', 'fdfdsdf', '2020-08-20 00:00:00'),
(20, 0, 0, 6, 'ghdfghjdfg', 'hdjgsdfghjdfsdf', '2020-08-20 00:00:00'),
(21, 0, 0, 10, 'Saddle Me Up With Sadness', 'I am a poor poor boy who wishes to be burdened with the sorrows of another man. Call my number! Head me off at the pass! Do what you can to bring it to me, and wring out my cloth of victory. I cannot eject my own sorrow, but I will not reject yours! Saddle me up and watch me unwind, unhinge, and swallow it whole. I am a python for your grief, I am endless, I am encumbered.\r\n\r\nNone of this applies to Bendanits Cumberpunch. Get fuck away.', '2020-08-25 15:13:10'),
(22, 0, 0, 9, 'sunshine', 'the rain has stopped....yeah!', '2020-08-28 15:37:58'),
(23, 0, 0, 25, 'the cats! I will sniff Bean', '\"There is itchy swinging tooties in my eyes!\"\r\n\r\nNO! Zertec doesn\'t help! I dont, know actually. I just want to suffer and itch. I wish i Could tkae my eye ball out and suck on it until it was cleansed with my clean saliva. I hvae good teeth, and genetically superior spit. Please, allow me to trasnfer this good liquid up north.\\\r\n\r\n\r\n\r\nPlease,  can\'t wait to adopt one/ thnka you fro your time. I have a degree in policital science, i promsise.', '2020-08-30 22:08:53'),
(24, 0, 0, 14, 'Top 10 Things To Do With Too Many Tomatoes', '1. Ask them how many grapes they can fit in their mouth while filling your own with the tomatoes.\r\n2. Fake sneeze every three tilonatoes.\r\n3. Mash em with your Popeye elbows.\r\n4. Drape the vines over your ears and woof like you mean it.\r\n5. Chew em little doggy.\r\n6. Desperately ask everyone you see \"What do I do with these?!\" Over prepare. Get many.\r\n7. Yell at any service employee who dares serve you ketchup.\r\n8. Silently cry while squeezing them with your little nubs.\r\n9. Ask for directions. No matter what they say, throw a tomato down in frustration.\r\n10. Cover yourself in tomato juice, lie in a nearby bush and yell \"Pick me! My juice is what you crave!\"', '2020-09-14 16:21:28'),
(25, 0, 0, 8, 'I\'m a Little Teapot, Hear Me Grundle', '**falls over**', '2020-09-14 16:22:32'),
(26, 0, 0, 47, 'Anyone Else Notice That Mr.Krabs Has a Fuckin Donk?', 'I was watching Spongebob the other day and was like GOTDAMN! He lookin dummy thicc with that krabby ass.', '2020-09-14 16:23:04'),
(27, 0, 0, 52, 'New Seasoning Lets You Make Your Rich Conservative Friends More P', 'Landry’s recently released a new seasoning that will make your rich conservative friends more palatable. The new seasoning “A Dash of Privilege” is guaranteed to make you feel like society isn’t actively working against you or the people you care about. The seasoning is known to give consumers an overall feeling of euphoria including feeling as though every person gets a fair shot in life despite their upbringing , years of systemic racism, or public policy aimed at keeping a stranglehold on certain demographics of people.\r\n\r\nWith every purchase of “A Dash of Privilege” you’ll get to call your rich proxy father who will tell you that “you should start your own brewery”, or “go travel”, or “not to worry about finances.” With “A Dash of Privilege” you’ll feel like the world is your oyster without really having to do anything at all.\r\n\r\n“A Dash of Privilege” is known to have side effects including prolonged feelings of entitlement, lack of accountability, and blurred vision around the line between lower, middle, and upper class.\r\n\r\nSigns of over-seasoning include bulk purchases of Vineyard Vine clothing, being upset over getting ridiculed for saying offensive things, or saying “They need to learn to pull themselves up by their bootstraps.”\r\n\r\nFor a limited time you can also purchase Landry’s “A Dash of Understanding” where a group of 10 police officers will show up at your house and question your integrity as a human being.\r\n\r\nGet it in stores while supplies last!', '2020-09-14 16:23:43'),
(28, 0, 0, 32, 'Friend has Soiled Self On Couch More Than Owner\'s Cat', 'Jesus Christ Joe', '2020-09-14 16:24:26'),
(29, 0, 0, 3, 'Piddley Tiddiely', 'Bit a bippo, bit a boppo eh??', '2020-10-01 17:29:57'),
(30, 0, 0, 1, 'dfgdfgdfgdfg', 'sdsdfsdfdfsdf', '2020-10-05 12:24:45'),
(31, 0, 0, 1, 'fsdfsdfsd', 'fsdfsdfsdfsdf', '2020-10-05 12:29:49'),
(32, 0, 0, 4, 'sdfsdf', 'sdfsdfsdf', '2020-10-05 12:31:07'),
(33, 0, 0, 0, 'fsddfsdf', 'uthyjfgj', '2020-10-05 12:36:47'),
(34, 0, 0, 1, 'fsddfsdf', 'uthyjfgj', '2020-10-05 12:38:12'),
(35, 0, 0, 1, 'gfdgfdg', 'dfhdfhdfgd', '2020-10-05 12:38:30'),
(36, 0, 0, 1, 'hfghfhfg', 'hfgfhghfg', '2020-10-06 13:00:50'),
(37, 0, 0, 1, 'fdsdfsdf', 'sdfsdfsdfsdf', '2020-10-06 13:00:59'),
(38, 0, 0, 2, 'hfghfhfg', 'vjgfg', '2020-10-06 13:04:13'),
(39, 0, 0, 1, 'hdfgd', 'gdfgd', '2020-10-06 13:07:41'),
(40, 0, 0, 1, 'hfghf', 'hfghfh', '2020-10-06 13:08:01'),
(41, 0, 0, 0, 'mjbnmk', 'jghjg', '2020-10-06 14:35:05'),
(42, 0, 0, 0, 'dfhgdf', 'gdfgd', '2020-10-06 14:38:21'),
(43, 0, 0, 1, 'h', 'khjk', '2020-10-06 15:21:01'),
(44, 0, 0, 1, 'hjk', 'njk', '2020-10-08 09:59:02'),
(45, 0, 0, 2, 'fsdgs', 'gsdfs', '2020-10-20 14:28:13'),
(46, 0, 0, 0, 'Biiiiig Taaaaaags', 'Biiig Taags???', '2020-10-20 15:13:10'),
(47, 0, 0, 1, 'Biiiiig Taaaaaags', 'Biiig Taags???', '2020-10-20 15:14:13'),
(48, 0, 0, 1, 'Biiiiig Taaaaaags', 'Biiig Taags???', '2020-10-20 15:15:55'),
(49, 0, 0, 0, '9879', '687', '2020-10-21 13:58:29'),
(50, 0, 0, 0, '9879', '687', '2020-10-21 14:05:16'),
(51, 0, 0, 0, '9879', '687', '2020-10-21 14:06:20'),
(52, 0, 0, 0, '9879', '687', '2020-10-21 14:07:13'),
(53, 0, 0, 0, '9879', '687', '2020-10-21 14:07:46'),
(54, 0, 0, 0, '9879', '687', '2020-10-21 14:08:24'),
(55, 0, 0, 2, '9879', '687', '2020-10-21 14:08:55'),
(56, 0, 0, 0, 'sdfgfggdsf', 'sdfsdfsdf', '2020-10-21 14:10:15'),
(57, 0, 0, 1, 'dsawre', 'fgdgdfg', '2020-10-21 14:11:01'),
(58, 0, 0, 1, 'fgfg', 'hgfhfghfg', '2020-10-21 14:12:00'),
(59, 0, 0, 1, 'boob oo', 'dfsdfsd', '2020-10-21 14:15:47'),
(60, 0, 0, 0, 'fdsfds', 'fsdfs', '2020-10-21 14:16:45'),
(61, 0, 0, 0, 'fdsfds', 'fsdfs', '2020-10-21 14:22:04'),
(62, 0, 0, 1, 'fdsfds', 'fsdfs', '2020-10-21 14:22:19'),
(63, 0, 0, 1, 'fdsfds', 'fsdfs', '2020-10-21 14:22:52'),
(64, 0, 0, 1, 'dsa', 'dsa', '2020-10-21 14:25:05'),
(65, 0, 0, 2, 'hghg', 'yfyfyf', '2020-11-02 12:25:32'),
(66, 0, 0, 10, 'fsdfs', 'rewteqw', '2020-11-02 12:33:36'),
(67, 0, 0, 13, 'wow a lot of tags', 'fdssdfsdfsdf', '2020-11-02 13:43:52'),
(68, 0, 0, 2, 'sdfsdf', 'fdsdfsd', '2020-11-02 14:17:28');

-- --------------------------------------------------------

--
-- Table structure for table `post_images`
--

CREATE TABLE `post_images` (
  `img_id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `filepath` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post_images`
--

INSERT INTO `post_images` (`img_id`, `post_id`, `filepath`) VALUES
(1, 14, 'static/img/User-Submitted/13/2020-Aug/../static/img/User-Submitted/before dxp.png'),
(2, 16, 'static/img/User-Submitted/13/2020-Aug/tumpo lost.jpg'),
(3, 17, 'static/img/User-Submitted/1/2020-Aug/tumpo lost.jpg'),
(4, 18, 'static/img/User-Submitted/1/2020-Aug/20190801_204150.jpg'),
(5, 19, 'static/img/User-Submitted/1/2020-Aug/before dxp.png'),
(6, 20, 'static/img/User-Submitted/1/2020-Aug/before dxp.png'),
(7, 21, 'static/img/User-Submitted/15/2020-Aug/4854956.png'),
(8, 22, 'static/img/User-Submitted/16/2020-Aug/sunny-weather-300x169.png'),
(9, 23, 'static/img/User-Submitted/17/2020-Aug/pain-scale-chart-3.gif'),
(10, 24, 'static/img/User-Submitted/18/2020-Sep/tomatoes.jpg'),
(11, 25, 'static/img/User-Submitted/18/2020-Sep/teapot.jpg'),
(12, 26, 'static/img/User-Submitted/18/2020-Sep/krabsdonk.jpg'),
(13, 27, 'static/img/User-Submitted/18/2020-Sep/season.jpg'),
(14, 28, 'static/img/User-Submitted/18/2020-Sep/001.jpg'),
(15, 29, '../static/img/User-Submitted/18/2020-Oct/jOE KIRNIC.jpg'),
(16, 30, 'static/img/User-Submitted/18/2020-Oct/wtf.jpg'),
(17, 31, 'static/img/User-Submitted/18/2020-Oct/wtf2.jpg'),
(18, 32, 'static/img/User-Submitted/18/2020-Oct/horabg garbo 1.jpg'),
(19, 34, 'static/img/User-Submitted/18/2020-Oct/wtf.jpg'),
(20, 35, 'static/img/User-Submitted/18/2020-Oct/horabg garbo 1.jpg'),
(21, 36, 'static/img/User-Submitted/Temp18/2020-Oct/Temp9207220201006190050.jpg'),
(22, 37, 'static/img/User-Submitted/Temp18/2020-Oct/Temp9314320201006190059.jpg'),
(23, 38, 'static/img/User-Submitted/Temp18/2020-Oct/5679020201006190413.jpg'),
(24, 39, 'static/img/User-Submitted/18/2020-Oct/9276820201006190741.jpg'),
(25, 40, 'static/img/User-Submitted/18/2020-Oct/5386020201006190801.jpg'),
(26, 41, 'static/img/User-Submitted/18/2020-Oct/7582420201006203505.jpg'),
(27, 42, 'static/img/User-Submitted/18/2020-Oct/Temp3011120201006203821.png'),
(28, 43, 'static/img/User-Submitted/18/2020-Oct/8310520201006212101.jpg'),
(29, 44, 'static/img/User-Submitted/18/2020-Oct/9300620201008155902.jpg'),
(30, 45, 'static/img/User-Submitted/18/2020-Oct/26220201020202813.jpg'),
(31, 46, 'static/img/User-Submitted/18/2020-Oct/1163820201020211310.jpg'),
(32, 47, 'static/img/User-Submitted/18/2020-Oct/3960920201020211413.jpg'),
(33, 48, 'static/img/User-Submitted/18/2020-Oct/3653520201020211555.jpg'),
(34, 0, 'static/img/User-Submitted//2020-Oct/3362620201021195829.jpg'),
(35, 0, 'static/img/User-Submitted/18/2020-Oct/9602420201021200516.jpg'),
(36, 0, 'static/img/User-Submitted/18/2020-Oct/8854120201021200620.jpg'),
(37, 52, 'static/img/User-Submitted/18/2020-Oct/136820201021200713.jpg'),
(38, 53, 'static/img/User-Submitted/18/2020-Oct/9816020201021200746.jpg'),
(39, 54, 'static/img/User-Submitted/18/2020-Oct/5594820201021200824.jpg'),
(40, 55, 'static/img/User-Submitted/18/2020-Oct/9479920201021200855.jpg'),
(41, 56, 'static/img/User-Submitted/18/2020-Oct/735720201021201015.png'),
(42, 57, 'static/img/User-Submitted/18/2020-Oct/1035320201021201101.jpg'),
(43, 58, 'static/img/User-Submitted/18/2020-Oct/6299020201021201200.png'),
(44, 59, 'static/img/User-Submitted/18/2020-Oct/8620120201021201547.jpg'),
(45, 60, 'static/img/User-Submitted/18/2020-Oct/4318620201021201645.jpg'),
(46, 61, 'static/img/User-Submitted/18/2020-Oct/1422720201021202204.jpg'),
(47, 62, 'static/img/User-Submitted/18/2020-Oct/9932520201021202219.jpg'),
(48, 63, 'static/img/User-Submitted/18/2020-Oct/2926620201021202252.jpg'),
(49, 64, 'static/img/User-Submitted/18/2020-Oct/7630620201021202505.jpg'),
(50, 65, 'static/img/User-Submitted/18/2020-Nov/7805320201102182531.jpg'),
(51, 66, 'static/img/User-Submitted/18/2020-Nov/9349820201102183336.jpg'),
(52, 67, 'static/img/User-Submitted/18/2020-Nov/5726120201102194352.jpg'),
(53, 68, 'static/img/User-Submitted/18/2020-Nov/5963920201102201728.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `post_profile_key`
--

CREATE TABLE `post_profile_key` (
  `profile_id_key` int(11) NOT NULL,
  `post_id_key` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post_profile_key`
--

INSERT INTO `post_profile_key` (`profile_id_key`, `post_id_key`) VALUES
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(12, 5),
(13, 3),
(13, 4),
(13, 6),
(13, 7),
(13, 8),
(13, 9),
(13, 10),
(13, 11),
(13, 12),
(13, 13),
(13, 14),
(13, 15),
(13, 16),
(15, 21),
(16, 22),
(17, 23),
(18, 24),
(18, 25),
(18, 26),
(18, 27),
(18, 28),
(18, 29),
(18, 30),
(18, 31),
(18, 32),
(18, 33),
(18, 34),
(18, 35),
(18, 36),
(18, 37),
(18, 38),
(18, 39),
(18, 40),
(18, 41),
(18, 42),
(18, 43),
(18, 44),
(18, 45),
(18, 46),
(18, 47),
(18, 48),
(18, 49),
(18, 50),
(18, 51),
(18, 52),
(18, 53),
(18, 54),
(18, 55),
(18, 56),
(18, 57),
(18, 58),
(18, 59),
(18, 60),
(18, 61),
(18, 62),
(18, 63),
(18, 64),
(18, 65),
(18, 66),
(18, 67),
(18, 68);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(50) DEFAULT NULL,
  `bin_tag` varbinary(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`tag_id`, `tag_name`, `bin_tag`) VALUES
(1, 'Politics', NULL),
(2, 'Sports', NULL),
(3, 'Technology', NULL),
(4, 'World', NULL),
(5, 'Lifestyle', NULL),
(6, 'Bumbo', NULL),
(7, 'Parenting', NULL),
(8, 'Bub', NULL),
(9, 'bibbo', NULL),
(10, 'Pumbus', NULL),
(11, 'Pumbo', NULL),
(12, 'Pumba', NULL),
(13, 'Jhgjh', NULL),
(14, 'Jhghjghjg', NULL),
(15, 'Hjghjghjghjg', NULL),
(16, 'Hfghfghfg', NULL),
(17, 'Rtdtrtdrtd', NULL),
(18, 'Serrsreres', NULL),
(19, 'Uturtur', NULL),
(20, 'Ouiio', NULL),
(21, 'Ertrwrtw', NULL),
(22, 'Iuiyrtiuyit', NULL),
(23, 'Ertewtrwtre', NULL),
(24, 'Iriiur', NULL),
(25, 'Uyrtyur', NULL),
(26, '6rr6e', NULL),
(27, 'Yuyurt', NULL),
(28, '6re56e54', NULL),
(29, 'E456456e', NULL),
(30, 'Rwetwe', NULL),
(31, 'Uytrurt', NULL),
(32, 'Oyuioy', NULL),
(33, '534w5', NULL),
(34, 'Yrtey', NULL),
(35, 'Ertyret756', NULL),
(36, 'E456', NULL),
(37, 'Rety', NULL),
(38, 'E56', NULL),
(39, '54', NULL),
(40, 'Yt', NULL),
(41, 'E5', NULL),
(42, '7', NULL),
(43, 'Tyru', NULL),
(44, '6r', NULL),
(45, '6', NULL),
(46, 'Ur', NULL),
(47, 'Tyu', NULL),
(48, 'Ryu', NULL),
(49, 'Re', NULL),
(50, 'Res', NULL),
(51, 'T', NULL),
(52, 'E6', NULL),
(53, '57', NULL),
(54, 'Y76', NULL),
(55, 'Ui6', NULL),
(56, '78', NULL),
(57, '56', NULL),
(58, 'R', NULL),
(59, '3e', NULL),
(60, 'Y5', NULL),
(61, '4', NULL),
(62, 'U6', NULL),
(63, '5', NULL),
(64, 'I', NULL),
(65, '76', NULL),
(66, 'U', NULL),
(67, '6uj', NULL),
(68, 'Rt', NULL),
(69, 'Yu', NULL),
(70, 'R456', NULL),
(71, '5y', NULL),
(72, 'R7', NULL),
(73, '5yr5', NULL),
(74, 'Yr5u', NULL),
(75, 'T6', NULL),
(76, 'I9', NULL),
(77, 'I7', NULL),
(78, 'Y', NULL),
(79, 'Tg7', NULL),
(80, '8', NULL),
(81, 'R6', NULL),
(82, '7u5', NULL),
(83, 'E', NULL),
(84, 'Ty', NULL),
(85, 'Tyi', NULL),
(86, '90', NULL),
(87, 'Ig', NULL),
(88, 'T67', NULL),
(89, '87', NULL),
(90, '7u', NULL),
(91, '5u', NULL),
(92, '7io', NULL),
(93, '7o', NULL),
(94, '8o', NULL),
(95, 'O', NULL),
(96, 'Yui', NULL),
(97, 'I76', NULL),
(98, 'Ut', NULL),
(99, '6i', NULL),
(100, 'Yi', NULL),
(101, 'Uy', NULL),
(102, 'Io', NULL),
(103, '9', NULL),
(104, '8u', NULL),
(105, 'L', NULL),
(106, 'Ikuj', NULL),
(107, 'Op', NULL),
(108, 'P;', NULL),
(109, 'Io;', NULL),
(110, 'I;', NULL),
(111, 'Uio', NULL),
(112, 'Pu', NULL),
(113, 'Ui', NULL),
(114, 'Tg', NULL),
(115, 'Yuj', NULL),
(116, 'Rtfyu', NULL),
(117, 'Df', NULL),
(118, 'I67', NULL),
(119, '89', NULL),
(120, 'P', NULL),
(121, '098', NULL),
(122, '[', NULL),
(123, 'Pi', NULL),
(124, 'O;l', NULL),
(125, 'Ol', NULL),
(126, 'L8', NULL),
(127, '754', NULL),
(128, '46', NULL),
(129, '543', NULL),
(130, '6e', NULL),
(131, '546', NULL),
(132, 'Jy', NULL),
(133, 'Uik', NULL),
(134, 'P;u', NULL),
(135, 'Ip', NULL),
(136, 'Uipo', NULL),
(137, 'Iop', NULL),
(138, 'Oipio', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags_key`
--

CREATE TABLE `post_tags_key` (
  `post_id` int(11) NOT NULL,
  `tag_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post_tags_key`
--

INSERT INTO `post_tags_key` (`post_id`, `tag_id`) VALUES
(59, '1'),
(63, '1'),
(65, '1'),
(66, '1'),
(67, '1'),
(68, '1'),
(66, '10'),
(67, '100'),
(67, '101'),
(67, '102'),
(67, '103'),
(67, '104'),
(67, '105'),
(67, '106'),
(67, '107'),
(67, '108'),
(67, '109'),
(66, '11'),
(67, '110'),
(67, '111'),
(67, '112'),
(67, '113'),
(67, '114'),
(67, '115'),
(67, '116'),
(67, '117'),
(67, '118'),
(67, '119'),
(66, '12'),
(67, '120'),
(67, '121'),
(67, '122'),
(67, '123'),
(67, '124'),
(67, '125'),
(67, '126'),
(67, '127'),
(67, '128'),
(67, '129'),
(67, '13'),
(67, '130'),
(67, '131'),
(67, '132'),
(67, '133'),
(67, '134'),
(67, '135'),
(67, '136'),
(67, '137'),
(67, '138'),
(67, '14'),
(67, '15'),
(67, '16'),
(67, '17'),
(67, '18'),
(67, '19'),
(59, '2'),
(63, '2'),
(67, '2'),
(68, '2'),
(67, '20'),
(67, '21'),
(67, '22'),
(67, '23'),
(67, '24'),
(67, '25'),
(67, '26'),
(67, '27'),
(67, '28'),
(67, '29'),
(59, '3'),
(63, '3'),
(67, '3'),
(67, '30'),
(67, '31'),
(67, '32'),
(67, '33'),
(67, '34'),
(67, '35'),
(67, '36'),
(67, '37'),
(67, '38'),
(67, '39'),
(59, '4'),
(63, '4'),
(66, '4'),
(67, '4'),
(68, '4'),
(67, '40'),
(67, '41'),
(67, '42'),
(67, '43'),
(67, '44'),
(67, '45'),
(67, '46'),
(67, '47'),
(67, '48'),
(67, '49'),
(59, '5'),
(63, '5'),
(65, '5'),
(67, '5'),
(67, '50'),
(67, '51'),
(67, '52'),
(67, '53'),
(67, '54'),
(67, '55'),
(67, '56'),
(67, '57'),
(67, '58'),
(67, '59'),
(59, '6'),
(63, '6'),
(64, '6'),
(67, '60'),
(67, '61'),
(67, '62'),
(67, '63'),
(67, '64'),
(67, '65'),
(67, '66'),
(67, '67'),
(67, '68'),
(67, '69'),
(63, '7'),
(67, '70'),
(67, '71'),
(67, '72'),
(67, '73'),
(67, '74'),
(67, '75'),
(67, '76'),
(67, '77'),
(67, '78'),
(67, '79'),
(65, '8'),
(67, '80'),
(67, '81'),
(67, '82'),
(67, '83'),
(67, '84'),
(67, '85'),
(67, '86'),
(67, '87'),
(67, '88'),
(67, '89'),
(65, '9'),
(67, '90'),
(67, '91'),
(67, '92'),
(67, '93'),
(67, '94'),
(67, '95'),
(67, '96'),
(67, '97'),
(67, '98'),
(67, '99');

-- --------------------------------------------------------

--
-- Table structure for table `tes123`
--

CREATE TABLE `tes123` (
  `test1` varbinary(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tfod_nom`
--

CREATE TABLE `tfod_nom` (
  `post_id` int(11) NOT NULL,
  `nomin_id` int(11) DEFAULT NULL,
  `accept` tinyint(1) DEFAULT NULL,
  `date_of_tfod` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_profile_key`
--

CREATE TABLE `user_profile_key` (
  `user_id_key` int(11) NOT NULL,
  `profile_id_key` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_profile_key`
--

INSERT INTO `user_profile_key` (`user_id_key`, `profile_id_key`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(15, 14),
(16, 15),
(18, 16),
(19, 17),
(20, 18),
(21, 19),
(22, 20),
(23, 21),
(24, 22);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `comment_post_key`
--
ALTER TABLE `comment_post_key`
  ADD PRIMARY KEY (`comment_id_key`,`post_id_key`);

--
-- Indexes for table `friends_list`
--
ALTER TABLE `friends_list`
  ADD PRIMARY KEY (`user_id_key`,`friend_id_key`);

--
-- Indexes for table `mumbo_profile`
--
ALTER TABLE `mumbo_profile`
  ADD PRIMARY KEY (`profile_id`);

--
-- Indexes for table `mumbo_user`
--
ALTER TABLE `mumbo_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_images`
--
ALTER TABLE `post_images`
  ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `post_profile_key`
--
ALTER TABLE `post_profile_key`
  ADD PRIMARY KEY (`profile_id_key`,`post_id_key`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `post_tags_key`
--
ALTER TABLE `post_tags_key`
  ADD PRIMARY KEY (`tag_id`,`post_id`);

--
-- Indexes for table `tfod_nom`
--
ALTER TABLE `tfod_nom`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `user_profile_key`
--
ALTER TABLE `user_profile_key`
  ADD PRIMARY KEY (`user_id_key`,`profile_id_key`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mumbo_profile`
--
ALTER TABLE `mumbo_profile`
  MODIFY `profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `mumbo_user`
--
ALTER TABLE `mumbo_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `post_images`
--
ALTER TABLE `post_images`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
