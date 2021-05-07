-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2021 at 09:32 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `newsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE IF NOT EXISTS `tbladmin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', '$2y$12$i4LMfeFPQpGSNPTaccIkKuwxAkJ4PhBr3JND7FpXwWFjRvchQn17C', 'adminfnd@techconnect.com', 1, '2018-05-27 18:21:00', '2021-05-05 16:59:55');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE IF NOT EXISTS `tblcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(200) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(1, 'Bollywood', 'Bollywood News', '2018-06-06 10:58:09', '2019-09-02 08:46:12', '1'),
(2, 'Sports', 'Related to sports news', '2018-06-06 11:05:09', '2019-09-02 08:46:15', '1'),
(3, 'Entertainment', 'Entertainment related  News', '2018-06-14 06:02:58', '2019-09-02 08:46:18', '1'),
(4, 'Politics', 'Politics', '2018-06-22 16:16:09', '2019-09-02 08:46:21', '1'),
(5, 'Business', 'Business News', '2018-06-22 16:16:22', '2019-09-02 09:17:57', '1'),
(10, 'District News', 'District News lorem100', '2019-09-02 10:12:37', '2019-09-02 10:12:37', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE IF NOT EXISTS `tblpages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `Description` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Tech Connect', '<font color="#7b8898" face="Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif"><span style="font-size: 26px;">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></font><br>', '2018-06-30 18:31:03', '2021-05-06 17:21:37'),
(2, 'contactus', 'Contact Details', '<p><br></p><p><b>Address :&nbsp; </b>Tech Connect, TCE, Madurai</p><p><b>Phone Number : </b>+91 9488503441</p><p><b>Email -id : </b>teamtechconnect@gmail.com</p>', '2018-06-30 18:31:36', '2021-05-06 17:22:33');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE IF NOT EXISTS `tblposts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PostTitle` longtext,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int(1) NOT NULL,
  `PostUrl` mediumtext,
  `PostImage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`) VALUES
(6, 'World Cup 2018, Uruguay vs Portugal Live Score: Edinson Cavani Gives Uruguay 1-0 Lead Against Portugal', 3, 5, '<h2 style="margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: montserratregular, sans-serif; line-height: 25px; color: rgb(22, 22, 22); font-size: 22px;"><span style="margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif; font-size: 16px;">Live Updates of 2018 FIFA World Cup, Uruguay&nbsp;vs Portugal match, straight from&nbsp;Fisht Stadium, Sochi.&nbsp;</span></h2><p style="margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);"><span style="margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;">00:06 IST: Bernardo Silva tries to play a box</span>&nbsp;inside the box, cleared away. Portugal continue on attack but Cavani has been brought down as Uruguay take a long kick inside the Portuguese half.&nbsp;</p><p style="margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);"><span style="margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;">00:01 IST: Free-kick for Portugal from a dangerous position near the box!&nbsp;</span>Cristiano Ronaldo over the ball, hits the wall and Torreira clears it away.&nbsp;&nbsp;</p><p style="margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);"><span style="margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;">23:58 IST: Portugal&nbsp;</span>on the break, looking to counter, moving the ball from right to left in search of penetration but the ball goes out for a Uruguay throw-in.&nbsp;</p><p style="margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);"><span style="margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;">23:55 IST: Free-kick for Portugal,&nbsp;</span>the ball gets past everyone inside the box. 26 minutes have been played.</p><p style="margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);"><span style="margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;">23:51 IST: Free-kick for Uruguay in a promising position!&nbsp;</span>Suarez on the ball, gets past the wall through a low effort but Rui Patricio does well to keep the ball out.&nbsp;</p><p style="margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);"><span style="margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;">23:50 IST: Luis&nbsp;Suarez brought down,&nbsp;</span>Uruguay free-kick from their own half. 19 minutes on the clock.</p><p style="margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);"><span style="margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;">23:47 IST: Portugal on the attack,&nbsp;</span>through Adrian and Bernardo Silva on the right flank, plays the ball back to Mario, who plays a long ball to find Ronaldo but the heavy touch has been comfortably collected by Muslera.&nbsp;&nbsp;</p><p style="margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);"><span style="margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;">23:43 IST: Cristiano Ronaldo makes space for himself,&nbsp;</span>takes shot from outside the box. Well blocked by Torreira.&nbsp;</p><p style="margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);"><span style="margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;">23:41 IST: Fonte&nbsp;</span>gets a header from inside the box, but puts his wide. 11 minutes on the clock in the high-octane drama.</p><p style="margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);"><span style="margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;">23:37 IST: GOAL! Edinson Cavani&nbsp;</span>unmarked inside the box, puts Uruguay front through a devastating header in the seventh minute off a Luis Suarez cross, well targeted.&nbsp;</p><p style="margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);"><span style="margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;">23:36 IST: Cristiano Ronaldo&nbsp;</span>gets the&nbsp;first shot on goal from outside the box but too easy for Fernando Muslera to gather.&nbsp;</p><p style="margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);"><span style="margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;">23:34 IST: Corner for Uruguay&nbsp;</span>as Jose Fonte tucks the ball away. Uruguay finds Godin as target-man inside the box, but a header from Portuguese defence clears away the danger.&nbsp;</p><p style="margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);"><span style="margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;">23:31 IST: Joao Mario crosses the ball into the box,&nbsp;</span>Bernardo Silva just heads it over the crossbar. Early attack from Portugal.&nbsp;</p><p style="margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);"><span style="margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;">23:30 IST: Kick-off! Cristiano Ronaldo&nbsp;</span>kicks the ball from left to right as the match gets underway.</p><p style="margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);"><span style="margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;">23:28 IST: Diego Godin and Cristiano Ronaldo&nbsp;</span>exchange team sheets, we are minutes away from the kick-off. We have already seen France through to the quarters, knocking Argentina out.&nbsp;</p><p style="margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);"><span style="margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;">23:25 IST: National anthems take on the centre stage.</span></p><p style="margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);"><span style="margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;">23:20 IST: Cristiano Ronaldo record -&nbsp;</span>By making his 38th appearance at the FIFA World Cup and UEFA European Championship, Cristiano Ronaldo has equalled a record set by 2014 world champion Bastian Schweinsteiger.</p><p style="margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);"><span style="margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;">22:20 IST:&nbsp;</span>The playing XI for Uruguay and Portugal has been announced. Skipper Diego Godin for Uruguay will aim to keep his counter-part captain and talisman Cristiano Ronaldo at bay.&nbsp;</p>', '2018-06-30 19:13:50', '2018-08-28 16:26:14', 1, 'World-Cup-2018,-Uruguay-vs-Portugal-Live-Score:-Edinson-Cavani-Gives-Uruguay-1-0-Lead-Against-Portugal', '82ce9a11a39ce403251753e4e0db9a9fjpeg'),
(7, 'Jasprit Bumrah ruled out of England T20I series due to injury', 3, 4, '<p style="margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;"><span style="margin: 0px; padding: 0px; font-weight: 700;">The Indian Cricket Team has received a huge blow right ahead of the commencement of the much-awaited series against England. Star speedster Jasprit Bumrah has been ruled out of the forthcoming 3-match T20I series as he suffered an injury in his left thumb.</span></p><p style="margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;">The 24-year-old pacer picked up a niggle during India’s first T20I match against Ireland played on June 27 at the Malahide cricket ground in Dublin. As per the reports, he is likely to be available for the ODI series against England scheduled to start from July 12.</p><p style="margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;">In the first, Bumrah exhibited a phenomenal performance with the ball. In his quota of four overs, he conceded 19 runs and picked 2 wickets at an economy rate of 4.75.</p><p style="margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;">Post his injury, he arrived at team’s optional training session on Thursday but didn’t train. Later, he was rested in the second face-off along with MS Dhoni, Shikhar Dhawan and Bhuvneshwar Kumar.</p><p style="margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;">As of now, no replacement has been announced. However, Umesh Yadav may be be given chance in the team in Bumrah’s absence.</p><p style="padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;">The first T20I match between India and England will be played at Old Trafford, Manchester on July 3.</p>', '2018-06-30 19:19:23', '2018-08-28 16:27:32', 1, 'Jasprit-Bumrah-ruled-out-of-England-T20I-series-due-to-injury', '6d08a26c92cf30db69197a1fb7230626.jpg'),
(9, 'Sanju is the true story that Sanjay Dutt wanted to tell the world', 5, 3, '<p style="color: rgb(86, 86, 86); font-size: 20px; line-height: 27px; padding: 8px 0px 0px; font-family: Georgia, serif;">A phenomenal 95 per cent occupancy at the first day, first show that I attended in Mumbai and the whistles and cheers that followed after the CBFC certificate to&nbsp;<em>Sanju</em>&nbsp;flashed on screen, proved that fact about Hirani beyond doubt.</p><p style="color: rgb(86, 86, 86); font-size: 20px; line-height: 27px; padding: 8px 0px 0px; font-family: Georgia, serif;"><em>Sanju</em>&nbsp;fits the Hirani template: there are laughs, plenty of tear-jerking scenes and limited songs and romance. Those who anticipated that the film will&nbsp; absolve Sanjay Dutt of his mistakes passed off as â€œbad choicesâ€ wonâ€™t be disappointed. Here are a few thoughts on the film.</p>', '2018-06-30 19:33:00', '2018-08-28 16:29:02', 1, 'Sanju-is-the-true-story-that-Sanjay-Dutt-wanted-to-tell-the-world', '8a878b9512723759ba66d03e26ddaf8f.gif'),
(10, 'Tata Steel, Thyssenkrupp Finalise Landmark Steel Deal', 7, 9, '<h1 style="box-sizing: inherit; margin-top: 0px; padding: 0px; font-family: Roboto, sans-serif; font-size: 38px; line-height: normal; letter-spacing: -0.5px; color: rgb(51, 51, 51);"><span itemprop="headline" style="box-sizing: inherit;">Tata Steel, Thyssenkrupp Finalise Landmark Steel Deal</span>Tata Steel, Thyssenkrupp Finalise Landmark Steel DealTata Steel, Thyssenkrupp Finalise Landmark Steel DealTata Steel, Thyssenkrupp Finalise Landmark Steel DealTata Steel, Thyssenkrupp Finalise Landmark Steel Deal</h1>', '2018-06-30 19:38:56', '2018-08-28 16:29:59', 1, 'Tata-Steel,-Thyssenkrupp-Finalise-Landmark-Steel-Deal', '505e59c459d38ce4e740e3c9f5c6caf7.jpg'),
(11, 'UNs Jean Pierre Lacroix thanks India for contribution to peacekeeping', 6, 8, '<p>UNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeeping<br></p>', '2018-06-30 19:40:36', '2018-08-28 16:31:35', 1, 'UNs-Jean-Pierre-Lacroix-thanks-India-for-contribution-to-peacekeeping', '27095ab35ac9b89abb8f32ad3adef56a.jpg'),
(12, 'Shah holds meeting with NE states leaders in Manipur', 6, 7, '<p><span style="color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;">New Delhi: BJP president Amit Shah today held meetings with his party leaders who are in-charge of 11 Lok Sabha seats spread across seven northeast states as part of a drive to ensure that it wins the maximum number of these constituencies in the general election next year.</span><br style="box-sizing: inherit; color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;"><br style="box-sizing: inherit; color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;"><webviewcontentdata style="box-sizing: inherit; color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;">Shah held separate meetings with Lok Sabha toli (group) of Arunachal Pradesh, Tripura, Meghalaya, Mizoram, Nagaland, Sikkim and Manipur in Manipur, the partys media head Anil Baluni said.<br style="box-sizing: inherit;"><br style="box-sizing: inherit;">Baluni said that Shah was in West Bengal for two days before he arrived in Manipur. The BJP chief would reach Odisha tomorrow.</webviewcontentdata><br></p>', '2018-06-30 19:41:44', '2018-08-28 16:31:43', 1, 'Shah-holds-meeting-with-NE-states-leaders-in-Manipur', '7fdc1a630c238af0815181f9faa190f5.jpg'),
(15, 'Hello World', 5, 3, '<p>sdckadvjafhvad as dasduvoiasdyviadvuiahdv divapisudvh asoifvhpaoiefhv[qafiuodhvpquiadshvpadfhvapfijv</p>', '2019-09-02 08:50:22', '2021-05-05 17:40:54', 0, 'Hello-World', '9f086991a95861844048d7c44e9af8b9.png'),
(17, 'TestPost', 3, 4, '<p>Heloo World</p>', '2021-05-05 17:43:35', NULL, 1, 'TestPost', '11167dc239e154a506b42816bc6ec186.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblpostsfptv`
--

CREATE TABLE IF NOT EXISTS `tblpostsfptv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PostTitle` longtext,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int(1) NOT NULL,
  `PostUrl` mediumtext,
  `PostImage` varchar(255) DEFAULT NULL,
  `counter` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `tblpostsfptv`
--

INSERT INTO `tblpostsfptv` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`, `counter`) VALUES
(18, 'TestPost', 3, 4, '<p>My Test Post</p>', '2021-05-06 18:07:12', '2021-05-07 17:11:00', 1, 'TestPost', '3d0756edeba457f9292d830503146240.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE IF NOT EXISTS `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryId` int(11) NOT NULL,
  `Subcategory` varchar(255) NOT NULL,
  `SubCatDescription` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int(1) NOT NULL,
  PRIMARY KEY (`SubCategoryId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(1, 1, 'Bollywood ', 'Bollywood masala', '2018-06-22 16:15:38', '2021-05-05 16:58:16', 0),
(2, 2, 'Cricket', 'Cricket\r\n\r\n', '2018-06-30 09:30:43', '2019-09-02 08:48:55', 1),
(3, 2, 'Football', 'Football', '2018-06-30 09:30:58', '2019-09-02 08:48:59', 1),
(4, 3, 'Television', 'TeleVision', '2018-06-30 19:29:22', '2019-09-02 08:49:04', 1),
(5, 4, 'National', 'National', '2018-06-30 19:34:29', '2019-09-02 08:49:09', 1),
(6, 4, 'International', 'International', '2018-06-30 19:34:43', '2019-09-02 08:49:16', 1),
(7, 4, 'India', 'India', '2018-06-30 19:38:42', '2019-09-02 08:49:22', 1),
(9, 10, 'Noakhali', 'all News', '2019-09-02 10:13:02', '2019-09-02 10:13:02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(70) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `email`, `password`, `role`) VALUES
('testpublisher', 'testpublisher@techconnect.org', 'publisher', 'publisher'),
('testvalidator', 'testvalidator@techconnect.org', 'validator', 'validator'),
('admin', 'admin@techconnect.org', 'password', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
