-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2020 at 06:30 PM
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
(18, 'Tom', 'Horsfall', 'TcTuggers22', '2020-09-14', NULL);

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
(20, '2@3.edu', 'cheese', '77d5375e887e44c459d8d72f54b54ccf918d1826dd66e5a1', 'Tom', 'Horsfall', 'TcTuggers22', '2020-09-14', 0, 0);

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
(16, 0, 0, 2, 'pibble', 'gotta take a nibble', '2020-08-20 00:00:00'),
(17, 0, 0, 1, 'Bungle it good my frined', 'You have to you want to you really ought to', '2020-08-20 00:00:00'),
(18, 0, 0, 4, 'boogles', 'bingos', '2020-08-20 00:00:00'),
(19, 0, 0, 0, 'sdadasd', 'fdfdsdf', '2020-08-20 00:00:00'),
(20, 0, 0, 5, 'ghdfghjdfg', 'hdjgsdfghjdfsdf', '2020-08-20 00:00:00'),
(21, 0, 0, 10, 'Saddle Me Up With Sadness', 'I am a poor poor boy who wishes to be burdened with the sorrows of another man. Call my number! Head me off at the pass! Do what you can to bring it to me, and wring out my cloth of victory. I cannot eject my own sorrow, but I will not reject yours! Saddle me up and watch me unwind, unhinge, and swallow it whole. I am a python for your grief, I am endless, I am encumbered.\r\n\r\nNone of this applies to Bendanits Cumberpunch. Get fuck away.', '2020-08-25 15:13:10'),
(22, 0, 0, 9, 'sunshine', 'the rain has stopped....yeah!', '2020-08-28 15:37:58'),
(23, 0, 0, 25, 'the cats! I will sniff Bean', '\"There is itchy swinging tooties in my eyes!\"\r\n\r\nNO! Zertec doesn\'t help! I dont, know actually. I just want to suffer and itch. I wish i Could tkae my eye ball out and suck on it until it was cleansed with my clean saliva. I hvae good teeth, and genetically superior spit. Please, allow me to trasnfer this good liquid up north.\\\r\n\r\n\r\n\r\nPlease,  can\'t wait to adopt one/ thnka you fro your time. I have a degree in policital science, i promsise.', '2020-08-30 22:08:53'),
(24, 0, 0, 12, 'Top 10 Things To Do With Too Many Tomatoes', '1. Ask them how many grapes they can fit in their mouth while filling your own with the tomatoes.\r\n2. Fake sneeze every three tilonatoes.\r\n3. Mash em with your Popeye elbows.\r\n4. Drape the vines over your ears and woof like you mean it.\r\n5. Chew em little doggy.\r\n6. Desperately ask everyone you see \"What do I do with these?!\" Over prepare. Get many.\r\n7. Yell at any service employee who dares serve you ketchup.\r\n8. Silently cry while squeezing them with your little nubs.\r\n9. Ask for directions. No matter what they say, throw a tomato down in frustration.\r\n10. Cover yourself in tomato juice, lie in a nearby bush and yell \"Pick me! My juice is what you crave!\"', '2020-09-14 16:21:28'),
(25, 0, 0, 5, 'I\'m a Little Teapot, Hear Me Grundle', '**falls over**', '2020-09-14 16:22:32'),
(26, 0, 0, 42, 'Anyone Else Notice That Mr.Krabs Has a Fuckin Donk?', 'I was watching Spongebob the other day and was like GOTDAMN! He lookin dummy thicc with that krabby ass.', '2020-09-14 16:23:04'),
(27, 0, 0, 48, 'New Seasoning Lets You Make Your Rich Conservative Friends More P', 'Landry’s recently released a new seasoning that will make your rich conservative friends more palatable. The new seasoning “A Dash of Privilege” is guaranteed to make you feel like society isn’t actively working against you or the people you care about. The seasoning is known to give consumers an overall feeling of euphoria including feeling as though every person gets a fair shot in life despite their upbringing , years of systemic racism, or public policy aimed at keeping a stranglehold on certain demographics of people.\r\n\r\nWith every purchase of “A Dash of Privilege” you’ll get to call your rich proxy father who will tell you that “you should start your own brewery”, or “go travel”, or “not to worry about finances.” With “A Dash of Privilege” you’ll feel like the world is your oyster without really having to do anything at all.\r\n\r\n“A Dash of Privilege” is known to have side effects including prolonged feelings of entitlement, lack of accountability, and blurred vision around the line between lower, middle, and upper class.\r\n\r\nSigns of over-seasoning include bulk purchases of Vineyard Vine clothing, being upset over getting ridiculed for saying offensive things, or saying “They need to learn to pull themselves up by their bootstraps.”\r\n\r\nFor a limited time you can also purchase Landry’s “A Dash of Understanding” where a group of 10 police officers will show up at your house and question your integrity as a human being.\r\n\r\nGet it in stores while supplies last!', '2020-09-14 16:23:43'),
(28, 0, 0, 12, 'Friend has Soiled Self On Couch More Than Owner\'s Cat', 'Jesus Christ Joe', '2020-09-14 16:24:26');

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
(1, 14, '../static/img/User-Submitted/13/2020-Aug/../static/img/User-Submitted/before dxp.png'),
(2, 16, '../static/img/User-Submitted/13/2020-Aug/tumpo lost.jpg'),
(3, 17, '../static/img/User-Submitted/1/2020-Aug/tumpo lost.jpg'),
(4, 18, '../static/img/User-Submitted/1/2020-Aug/20190801_204150.jpg'),
(5, 19, '../static/img/User-Submitted/1/2020-Aug/before dxp.png'),
(6, 20, '../static/img/User-Submitted/1/2020-Aug/before dxp.png'),
(7, 21, '../static/img/User-Submitted/15/2020-Aug/4854956.png'),
(8, 22, '../static/img/User-Submitted/16/2020-Aug/sunny-weather-300x169.png'),
(9, 23, '../static/img/User-Submitted/17/2020-Aug/pain-scale-chart-3.gif'),
(10, 24, '../static/img/User-Submitted/18/2020-Sep/tomatoes.jpg'),
(11, 25, '../static/img/User-Submitted/18/2020-Sep/teapot.jpg'),
(12, 26, '../static/img/User-Submitted/18/2020-Sep/krabsdonk.jpg'),
(13, 27, '../static/img/User-Submitted/18/2020-Sep/season.jpg'),
(14, 28, '../static/img/User-Submitted/18/2020-Sep/001.jpg');

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
(18, 28);

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
(20, 18);

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
  MODIFY `profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `mumbo_user`
--
ALTER TABLE `mumbo_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `post_images`
--
ALTER TABLE `post_images`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
