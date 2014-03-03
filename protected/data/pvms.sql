-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 01, 2014 at 01:20 AM
-- Server version: 5.5.33
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `pvms`
--

-- --------------------------------------------------------

--
-- Table structure for table `Cause`
--

CREATE TABLE `Cause` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `animalWelfare` tinyint(1) DEFAULT NULL,
  `artsAndCulture` tinyint(1) DEFAULT NULL,
  `children` tinyint(1) DEFAULT NULL,
  `communityAndService` tinyint(1) DEFAULT NULL,
  `democracyAndPolitics` tinyint(1) DEFAULT NULL,
  `education` tinyint(1) DEFAULT NULL,
  `environment` tinyint(1) DEFAULT NULL,
  `food` tinyint(1) DEFAULT NULL,
  `health` tinyint(1) DEFAULT NULL,
  `housingAndHomelessness` tinyint(1) DEFAULT NULL,
  `humanRights` tinyint(1) DEFAULT NULL,
  `humanitarianRelief` tinyint(1) DEFAULT NULL,
  `internationalAffairs` tinyint(1) DEFAULT NULL,
  `media` tinyint(1) DEFAULT NULL,
  `povertyAlleviation` tinyint(1) DEFAULT NULL,
  `religion` tinyint(1) DEFAULT NULL,
  `scienceAndTechnology` tinyint(1) DEFAULT NULL,
  `seniorCitizens` tinyint(1) DEFAULT NULL,
  `womensIssues` tinyint(1) DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `Cause`
--

INSERT INTO `Cause` (`id`, `animalWelfare`, `artsAndCulture`, `children`, `communityAndService`, `democracyAndPolitics`, `education`, `environment`, `food`, `health`, `housingAndHomelessness`, `humanRights`, `humanitarianRelief`, `internationalAffairs`, `media`, `povertyAlleviation`, `religion`, `scienceAndTechnology`, `seniorCitizens`, `womensIssues`, `other`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, '0'),
(10, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 1, 0, '1'),
(11, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, '0'),
(12, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, '0'),
(13, 0, 1, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1, 1, '1'),
(14, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, '0'),
(15, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, '0'),
(16, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `File`
--

CREATE TABLE `File` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `projectId` (`projectId`),
  KEY `roleId` (`roleId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `File`
--

INSERT INTO `File` (`id`, `projectId`, `roleId`, `path`) VALUES
(1, 2, 4, '/userDocs/projects/welcome.pdf'),
(2, 1, 2, '/userDocs/projects/roles/staff_guidelines.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `FreeTime`
--

CREATE TABLE `FreeTime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `startTime` time DEFAULT NULL,
  `endTime` time DEFAULT NULL,
  `recurring` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `FreeTime`
--

INSERT INTO `FreeTime` (`id`, `email`, `startDate`, `endDate`, `startTime`, `endTime`, `recurring`) VALUES
(1, 'franky_boy33@gmail.com', '2014-03-12', '2014-03-12', '10:00:00', '14:00:00', 'weekly'),
(2, 'franky_boy33@gmail.com', '2014-03-14', '2014-03-14', '08:00:00', '13:00:00', 'once'),
(3, 'weipeng@yahoo.com', '2014-03-20', '2014-03-20', '09:00:00', '15:00:00', 'once'),
(4, 'sandeep890@outlook.com', '2014-03-18', '2014-03-18', '11:00:00', '13:00:00', 'once'),
(5, 'sally_p@hotmail.com', '2014-03-17', '2014-03-17', '10:00:00', '16:00:00', 'monthly'),
(6, 'reebus_m@hotmail.com', '2014-12-25', '2014-12-25', '10:00:00', '16:00:00', 'yearly'),
(7, 'reebus_m@hotmail.com', '2014-03-16', '2014-03-16', '90:00:00', '15:00:00', 'weekly');

-- --------------------------------------------------------

--
-- Table structure for table `Message`
--

CREATE TABLE `Message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `recipientEmail` varchar(255) DEFAULT NULL,
  `senderName` varchar(255) DEFAULT NULL,
  `userType` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `readmsg` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Message`
--

INSERT INTO `Message` (`id`, `email`, `recipientEmail`, `senderName`, `userType`, `date`, `content`, `readmsg`) VALUES
(1, 'reebus_m@hotmail.com', 'organizer@bookfriends.ca', 'Reebus McJesus', 'organizer', '2014-03-12', 'Hey, I am Reebus and I just wanted to say I love books!', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `Organization`
--

CREATE TABLE `Organization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `causeId` int(11) NOT NULL,
  `organizationName` varchar(255) NOT NULL,
  `status` varchar(30) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `organizationDescription` varchar(255) DEFAULT NULL,
  `organizationPhone` varchar(255) DEFAULT NULL,
  `contactDetails` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `organizationName` (`organizationName`),
  KEY `causeId` (`causeId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `Organization`
--

INSERT INTO `Organization` (`id`, `causeId`, `organizationName`, `status`, `website`, `organizationDescription`, `organizationPhone`, `contactDetails`) VALUES
(1, 1, 'Pitch n', 'active', 'www.pitchn.ca', NULL, NULL, NULL),
(2, 3, 'Toms Charity', 'active', 'www.tomscharity.com', 'A charity for people Tom likes', '604-555-5555', 'Dial extension 555 for Tom'),
(3, 5, 'Stray Cats R Us', 'active', 'www.straycatsrus.org', 'We find stray cats', '604-777-5555', 'Press 0 to talk to a non-cat employee'),
(4, 7, 'Book Friends', 'active', 'www.bookfriends.ca', 'We find old books and give them to people', '604-444-5555', 'Leave a message if nobody answers');

-- --------------------------------------------------------

--
-- Table structure for table `OrgContact`
--

CREATE TABLE `OrgContact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `roleId` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`),
  KEY `roleId` (`roleId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `OrgContact`
--

INSERT INTO `OrgContact` (`id`, `email`, `roleId`, `title`) VALUES
(1, 'organizer@tomscharity.com', 3, 'Media Volunteer Organizer');

-- --------------------------------------------------------

--
-- Table structure for table `PComments`
--

CREATE TABLE `PComments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectId` int(11) NOT NULL,
  `cdate` date DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `projectId` (`projectId`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `PComments`
--

INSERT INTO `PComments` (`id`, `projectId`, `cdate`, `email`, `content`) VALUES
(1, 2, '2014-03-10', 'franky_boy33@gmail.com', 'It is not a cat that is being baked, is it?');

-- --------------------------------------------------------

--
-- Table structure for table `Person`
--

CREATE TABLE `Person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `causeId` int(11) NOT NULL,
  `skillId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `workPhone` varchar(30) DEFAULT NULL,
  `password` varchar(30) NOT NULL,
  `permissionLevel` tinyint(1) DEFAULT NULL,
  `userType` varchar(13) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `locationCity` varchar(255) DEFAULT NULL,
  `locationProvince` char(2) DEFAULT NULL,
  `locationCountry` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `registered` char(1) NOT NULL,
  `lastActive` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `active` char(1) NOT NULL,
  `status` varchar(12) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `causeId` (`causeId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `Person`
--

INSERT INTO `Person` (`id`, `email`, `causeId`, `skillId`, `name`, `phone`, `workPhone`, `password`, `permissionLevel`, `userType`, `birthdate`, `locationCity`, `locationProvince`, `locationCountry`, `language`, `description`, `registered`, `lastActive`, `active`, `status`) VALUES
(1, 'admin@pitchn.ca', 1, 2, 'Jack P. Lord', NULL, '604-555-5555', 'admin123', 10, 'administrator', NULL, NULL, NULL, NULL, NULL, NULL, 'Y', '2014-03-21 19:00:00', 'Y', 'active'),
(2, 'organizer@tomscharity.com', 2, 4, 'Dave Peters', NULL, '604-555-5555', 'organizer123', 8, 'organizer', NULL, NULL, NULL, NULL, NULL, NULL, 'Y', '2014-03-21 19:00:00', 'Y', 'active'),
(3, 'organizer@straycatsrus.org', 3, 6, 'Amanda Glerp', NULL, '604-777-5555', 'organizer123', 8, 'organizer', NULL, NULL, NULL, NULL, NULL, NULL, 'Y', '2014-03-21 19:00:00', 'Y', 'active'),
(4, 'organizer@bookfriends.ca', 4, 8, 'Rachel McThomas', NULL, '604-444-5555', 'organizer123', 8, 'organizer', NULL, NULL, NULL, NULL, NULL, NULL, 'Y', '2014-03-21 19:00:00', 'Y', 'active'),
(5, 'reebus_m@hotmail.com', 5, 9, 'Reebus McJesus', '-5074', '604-123-5555', 'volunteer123', 1, 'volunteer', '1981-10-14', 'Richmond', 'BC', 'Canada', 'English', 'Enthusiastic about books!', 'Y', '2014-03-21 19:00:00', 'Y', 'active'),
(6, 'sally_p@hotmail.com', 6, 10, 'Sally Peterson', '604-123-5555', '604-123-5555', 'volunteer123', 1, 'volunteer', '1985-05-19', 'Vancouver', 'BC', 'Canada', 'English', 'I want to help dogs, and I also like libraries and other book-related things', 'Y', '2014-03-21 19:00:00', 'Y', 'active'),
(7, 'franky_boy33@gmail.com', 7, 11, 'Frank Wilcox', '604-123-5555', '604-123-5555', 'volunteer123', 1, 'volunteer', '1966-01-22', 'Salmon Arm', 'BC', 'Canada', 'English', 'My girlfriend is making me do this so I do not care what I do as long as it gets me out of the house', 'Y', '2014-03-21 19:00:00', 'Y', 'active'),
(8, 'weipeng@yahoo.com', 8, 12, 'Wei Peng', '604-123-5555', '604-123-5555', 'volunteer123', 1, 'volunteer', '1976-12-02', 'West Vancouver', 'BC', 'Canada', 'Cantonese', 'I want to help Tom and be his friend', 'Y', '2014-03-21 19:00:00', 'Y', 'active'),
(9, 'sandeep890@outlook.com', 9, 13, 'Sandeep Dhaliwal', '604-123-5555', '604-123-5555', 'volunteer123', 1, 'volunteer', '1987-04-12', 'West Vancouver', 'BC', 'Canada', 'English', 'Books are important and I want to help save them', 'Y', '2014-03-21 19:00:00', 'Y', 'active'),
(10, 'yudha@sunblogs.com', 2, 2, 'None of your business', '', '', 'ur8hsCBLb6A4I', NULL, 'manager', '0000-00-00', '', '', '', '', '', '1', '0000-00-00 00:00:00', 'y', '2'),
(11, 'a@a.com', 1, 2, 'bump it', '', '', 'urPHogTpjMASI', NULL, 'manager', '0000-00-00', '', '', '', '', '', '1', '0000-00-00 00:00:00', 'y', '2'),
(12, 'b@b.com', 2, 2, 'bump it', '', '', 'urPHogTpjMASI', NULL, 'manager', '0000-00-00', '', '', '', '', '', '1', '0000-00-00 00:00:00', 'y', '2');

-- --------------------------------------------------------

--
-- Table structure for table `PersonAssignedToRole`
--

CREATE TABLE `PersonAssignedToRole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `roleId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`),
  KEY `roleId` (`roleId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `PersonAssignedToRole`
--

INSERT INTO `PersonAssignedToRole` (`id`, `email`, `roleId`) VALUES
(1, 'franky_boy33@gmail.com', 3);

-- --------------------------------------------------------

--
-- Table structure for table `Project`
--

CREATE TABLE `Project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organizationId` int(11) NOT NULL,
  `causeId` int(11) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `actualEndDate` date DEFAULT NULL,
  `projectDescription` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `recurring` varchar(20) DEFAULT NULL,
  `projectWebsite` varchar(255) DEFAULT NULL,
  `projectName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `organizationId` (`organizationId`),
  KEY `causeId` (`causeId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `Project`
--

INSERT INTO `Project` (`id`, `organizationId`, `causeId`, `status`, `startDate`, `endDate`, `actualEndDate`, `projectDescription`, `city`, `province`, `recurring`, `projectWebsite`, `projectName`) VALUES
(1, 4, 14, 'incomplete', '2014-02-20', NULL, NULL, 'Build a website for our new London branch', 'Vancouver', 'BC', 'Once', 'www.bookfriends.uk', 'Website Build'),
(2, 3, 15, 'incomplete', '2014-02-20', NULL, NULL, 'Raise money for cat shelters', 'Vancouver', 'BC', 'Once', 'www.cakebake.ca', 'Giant Cat Bake Sale'),
(3, 2, 16, 'incomplete', '2014-02-20', NULL, NULL, 'Have some fun and raise money for Cancer research', 'Vancouver', 'BC', 'Yearly', 'www.tomcancerwalk.com', 'The Annual Tom Cancer Walk');

-- --------------------------------------------------------

--
-- Table structure for table `Role`
--

CREATE TABLE `Role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectId` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `roleDescription` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `projectId` (`projectId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `Role`
--

INSERT INTO `Role` (`id`, `projectId`, `title`, `roleDescription`) VALUES
(1, 1, 'general', 'general role for entire project'),
(2, 1, 'Lead Developer', 'Lead a team of developers to make the website'),
(3, 1, 'Developer', 'Work on a team of developers to make the website'),
(4, 2, 'general', 'general role for entire project'),
(5, 2, 'Bake Leader', 'Lead a team of bakers making the goods for the sale'),
(6, 2, 'Promoter', 'Promote the upcoming sale online and in the neighbourhood'),
(7, 3, 'general', 'general role for entire project'),
(8, 3, 'Fundraiser', 'Raise Funds for the event');

-- --------------------------------------------------------

--
-- Table structure for table `Skill`
--

CREATE TABLE `Skill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accounting` tinyint(1) DEFAULT NULL,
  `advertising` tinyint(1) DEFAULT NULL,
  `branding` tinyint(1) DEFAULT NULL,
  `businessStrategy` tinyint(1) DEFAULT NULL,
  `communications` tinyint(1) DEFAULT NULL,
  `copywriting` tinyint(1) DEFAULT NULL,
  `design` tinyint(1) DEFAULT NULL,
  `education` tinyint(1) DEFAULT NULL,
  `entrepreneurship` tinyint(1) DEFAULT NULL,
  `eventPlanning` tinyint(1) DEFAULT NULL,
  `finance` tinyint(1) DEFAULT NULL,
  `fundraising` tinyint(1) DEFAULT NULL,
  `humanResources` tinyint(1) DEFAULT NULL,
  `legal` tinyint(1) DEFAULT NULL,
  `marketing` tinyint(1) DEFAULT NULL,
  `multimedia` tinyint(1) DEFAULT NULL,
  `onlineMarketing` tinyint(1) DEFAULT NULL,
  `photography` tinyint(1) DEFAULT NULL,
  `projectManagement` tinyint(1) DEFAULT NULL,
  `publicRelations` tinyint(1) DEFAULT NULL,
  `sales` tinyint(1) DEFAULT NULL,
  `socialMedia` tinyint(1) DEFAULT NULL,
  `technology` tinyint(1) DEFAULT NULL,
  `webDevelopment` tinyint(1) DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `Skill`
--

INSERT INTO `Skill` (`id`, `accounting`, `advertising`, `branding`, `businessStrategy`, `communications`, `copywriting`, `design`, `education`, `entrepreneurship`, `eventPlanning`, `finance`, `fundraising`, `humanResources`, `legal`, `marketing`, `multimedia`, `onlineMarketing`, `photography`, `projectManagement`, `publicRelations`, `sales`, `socialMedia`, `technology`, `webDevelopment`, `other`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, '1'),
(6, 0, 1, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, '1'),
(7, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '1'),
(8, 0, 0, 1, 0, 1, 1, 0, 1, 0, 1, 1, 1, 0, 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 0, '1'),
(9, 1, 1, 0, 0, 1, 0, 1, 1, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 0, 1, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `Task`
--

CREATE TABLE `Task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) DEFAULT NULL,
  `taskName` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `timeSpent` int(11) DEFAULT NULL,
  `estCompTime` int(11) DEFAULT NULL,
  `taskDescription` varchar(255) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roleId` (`roleId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `Task`
--

INSERT INTO `Task` (`id`, `roleId`, `taskName`, `status`, `timeSpent`, `estCompTime`, `taskDescription`, `startDate`, `endDate`) VALUES
(1, 2, 'Hosting Setup', 'incomplete', 0, 1, 'Setup the web hosting account', NULL, NULL),
(2, 2, 'Basic Setup', 'incomplete', 0, 5, 'create basic site framework', NULL, NULL),
(3, 3, 'Create Static Pages', 'incomplete', 0, 25, 'create all static pages required for site', NULL, NULL),
(4, 5, 'Buy ingredients', 'incomplete', 0, 4, 'Buy all the stuff we need to make the goods', NULL, NULL),
(5, 5, 'Bake the Goods', 'incomplete', 0, 12, 'With a team, bake all the goods needed for the sale', NULL, NULL),
(6, 6, 'Make Posters', 'incomplete', 0, 3, 'Make some posters advertising the sale', NULL, NULL),
(7, 6, 'Put up Posters', 'incomplete', 0, 10, 'Put posters up around the neihbourhood', NULL, NULL),
(8, 8, 'Call Potential Donors', 'incomplete', 0, 30, 'Call potential donors and ask for donations', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `TComments`
--

CREATE TABLE `TComments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskId` int(11) NOT NULL,
  `cdate` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `taskId` (`taskId`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `TComments`
--

INSERT INTO `TComments` (`id`, `taskId`, `cdate`, `email`, `content`) VALUES
(1, 4, '2014-03-08', 'franky_boy33@gmail.com', 'Do I have to spend my own money, or will you provide it?');

-- --------------------------------------------------------

--
-- Table structure for table `TestPerson`
--

CREATE TABLE `TestPerson` (
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TestPerson`
--

INSERT INTO `TestPerson` (`email`, `password`) VALUES
('yudha@sunblogs.com', 'cpsc123');

-- --------------------------------------------------------

--
-- Table structure for table `VolunteerNote`
--

CREATE TABLE `VolunteerNote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `volunteerEmail` varchar(255) NOT NULL,
  `organizerEmail` varchar(255) NOT NULL,
  `organizationId` int(11) NOT NULL,
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `volunteerEmail` (`volunteerEmail`),
  KEY `organizerEmail` (`organizerEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `WorksFor`
--

CREATE TABLE `WorksFor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `organizationId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`),
  KEY `organizationId` (`organizationId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `WorksFor`
--

INSERT INTO `WorksFor` (`id`, `email`, `organizationId`) VALUES
(1, 'admin@pitchn.ca', 1),
(2, 'organizer@tomscharity.com', 2),
(3, 'organizer@straycatsrus.org', 3),
(4, 'organizer@bookfriends.ca', 4),
(5, 'reebus_m@hotmail.com', 4),
(6, 'sally_p@hotmail.com', 3),
(7, 'sally_p@hotmail.com', 4),
(8, 'franky_boy33@gmail.com', 2),
(9, 'franky_boy33@gmail.com', 3),
(10, 'franky_boy33@gmail.com', 4),
(11, 'weipeng@yahoo.com', 2),
(12, 'sandeep890@outlook.com', 4);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `File`
--
ALTER TABLE `File`
  ADD CONSTRAINT `file_ibfk_1` FOREIGN KEY (`projectId`) REFERENCES `Project` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `file_ibfk_2` FOREIGN KEY (`roleId`) REFERENCES `Role` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `FreeTime`
--
ALTER TABLE `FreeTime`
  ADD CONSTRAINT `freetime_ibfk_1` FOREIGN KEY (`email`) REFERENCES `Person` (`email`) ON DELETE CASCADE;

--
-- Constraints for table `Message`
--
ALTER TABLE `Message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`email`) REFERENCES `Person` (`email`) ON DELETE CASCADE;

--
-- Constraints for table `Organization`
--
ALTER TABLE `Organization`
  ADD CONSTRAINT `organization_ibfk_1` FOREIGN KEY (`causeId`) REFERENCES `Cause` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `OrgContact`
--
ALTER TABLE `OrgContact`
  ADD CONSTRAINT `orgcontact_ibfk_1` FOREIGN KEY (`email`) REFERENCES `Person` (`email`) ON DELETE CASCADE,
  ADD CONSTRAINT `orgcontact_ibfk_2` FOREIGN KEY (`roleId`) REFERENCES `Role` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `PComments`
--
ALTER TABLE `PComments`
  ADD CONSTRAINT `pcomments_ibfk_1` FOREIGN KEY (`projectId`) REFERENCES `Project` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pcomments_ibfk_2` FOREIGN KEY (`email`) REFERENCES `Person` (`email`) ON DELETE NO ACTION;

--
-- Constraints for table `Person`
--
ALTER TABLE `Person`
  ADD CONSTRAINT `person_ibfk_1` FOREIGN KEY (`causeId`) REFERENCES `Cause` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `PersonAssignedToRole`
--
ALTER TABLE `PersonAssignedToRole`
  ADD CONSTRAINT `personassignedtorole_ibfk_1` FOREIGN KEY (`email`) REFERENCES `WorksFor` (`email`) ON DELETE CASCADE,
  ADD CONSTRAINT `personassignedtorole_ibfk_2` FOREIGN KEY (`roleId`) REFERENCES `Role` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `Project`
--
ALTER TABLE `Project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`organizationId`) REFERENCES `Organization` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_ibfk_2` FOREIGN KEY (`causeId`) REFERENCES `Cause` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `Role`
--
ALTER TABLE `Role`
  ADD CONSTRAINT `role_ibfk_1` FOREIGN KEY (`projectId`) REFERENCES `Project` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `Task`
--
ALTER TABLE `Task`
  ADD CONSTRAINT `task_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `Role` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `TComments`
--
ALTER TABLE `TComments`
  ADD CONSTRAINT `tcomments_ibfk_1` FOREIGN KEY (`taskId`) REFERENCES `Task` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tcomments_ibfk_2` FOREIGN KEY (`email`) REFERENCES `Person` (`email`) ON DELETE NO ACTION;

--
-- Constraints for table `VolunteerNote`
--
ALTER TABLE `VolunteerNote`
  ADD CONSTRAINT `volunteernote_ibfk_1` FOREIGN KEY (`volunteerEmail`) REFERENCES `Person` (`email`) ON DELETE CASCADE,
  ADD CONSTRAINT `volunteernote_ibfk_2` FOREIGN KEY (`organizerEmail`) REFERENCES `Person` (`email`) ON DELETE CASCADE;

--
-- Constraints for table `WorksFor`
--
ALTER TABLE `WorksFor`
  ADD CONSTRAINT `worksfor_ibfk_1` FOREIGN KEY (`email`) REFERENCES `Person` (`email`) ON DELETE CASCADE,
  ADD CONSTRAINT `worksfor_ibfk_2` FOREIGN KEY (`organizationId`) REFERENCES `Organization` (`id`) ON DELETE NO ACTION;
