-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 04, 2023 at 09:58 AM
-- Server version: 5.7.40-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lakebari_tourism`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-05-13 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(50) DEFAULT NULL,
  `PackageImage` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`PackageId`, `PackageName`, `PackageImage`) VALUES
(1, 'Africa', 'lbs1.jpg'),
(2, 'Happiness', 'happines.jpg'),
(3, 'Fun', 'lbs5.jpg'),
(4, 'Enjoyment', 'lbs6.jpg'),
(5, 'Nature', 'lbs7.jpg'),
(6, 'Beauty', 'lbs9.jpg'),
(7, 'Safari', 'lbs10.jpg'),
(8, 'Nature Walks', 'lbs2.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(12, 6, 'ayubodhiambo99@gmail.com', '2022-09-18', '2022-09-20', 'Beast link nort working 22222222222222222222222222222', '2022-09-18 15:00:28', 0, NULL, NULL),
(13, 1, 'ayubodhiambo99@gmail.com ', '2022-10-12', '2022-10-12', 'Boiked', '2022-10-22 11:05:13', 0, NULL, NULL),
(14, 5, 'Otienogeofrey642@gmail.com', '2022-11-24', '2022-11-30', 'Nice', '2022-11-15 18:12:43', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(5, 'Ayub Oduya', 'ayubodhiambo99@gmail.com', '0758954871', 'Download', 'ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', '2022-09-18 14:49:12', 1),
(6, 'Lincoln Komen', 'info@baringo-safaris.com', '0720300096', 'Pending Subscription', 'Butt', '2022-12-21 18:58:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(9, 'ayubodhiambo99@gmail.com', 'Booking Issues', 'I didnt like the video qality', '2022-09-18 14:56:29', NULL, NULL),
(10, NULL, NULL, NULL, '2022-09-21 10:18:38', NULL, NULL),
(11, NULL, NULL, NULL, '2022-09-21 10:38:54', NULL, NULL),
(12, NULL, NULL, NULL, '2022-09-21 10:46:07', NULL, NULL),
(13, NULL, NULL, NULL, '2022-09-21 16:53:26', NULL, NULL),
(14, NULL, NULL, NULL, '2022-09-28 14:33:03', NULL, NULL),
(15, NULL, NULL, NULL, '2022-09-28 14:34:06', NULL, NULL),
(16, NULL, NULL, NULL, '2022-09-28 14:58:17', NULL, NULL),
(17, NULL, NULL, NULL, '2022-10-25 07:46:37', NULL, NULL),
(18, NULL, NULL, NULL, '2022-11-15 18:11:27', NULL, NULL),
(19, NULL, NULL, NULL, '2022-11-30 17:25:50', NULL, NULL),
(20, NULL, NULL, NULL, '2023-02-01 14:17:34', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '																				<h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(102, 102, 102); margin: 0px 0px 18px; font-size: 16px;\"><span style=\"font-weight: 700;\">Terms and Conditions</span></h2><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Welcome to Lake Baringo Safari!</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">These terms and conditions outline the rules and regulations for the use of Lake Baringo Safari\'s Website, located at https://lakebaringosafari.com.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">By accessing this website we assume you accept these terms and conditions. Do not continue to use Lake Baringo Safari if you do not agree to take all of the terms and conditions stated on this page.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: \"Client\", \"You\" and \"Your\" refers to you, the person log on this website and compliant to the Company’s terms and conditions. \"The Company\", \"Ourselves\", \"We\", \"Our\" and \"Us\", refers to our Company. \"Party\", \"Parties\", or \"Us\", refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client’s needs in respect of provision of the Company’s stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(102, 102, 102); margin: 0px 0px 18px; font-size: 14px;\"><span style=\"font-weight: 700;\">Cookies</span></h3><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">We employ the use of cookies. By accessing Lake Baringo Safari, you agreed to use cookies in agreement with the Lake Baringo Safari\'s Privacy Policy.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Most interactive websites use cookies to let us retrieve the user’s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(102, 102, 102); margin: 0px 0px 18px; font-size: 14px;\"><span style=\"font-weight: 700;\">License</span></h3><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Unless otherwise stated, Lake Baringo Safari and/or its licensors own the intellectual property rights for all material on Lake Baringo Safari. All intellectual property rights are reserved. You may access this from Lake Baringo Safari for your own personal use subjected to restrictions set in these terms and conditions.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">You must not:</p><ul style=\"color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\"><li>Republish material from Lake Baringo Safari</li><li>Sell, rent or sub-license material from Lake Baringo Safari</li><li>Reproduce, duplicate or copy material from Lake Baringo Safari</li><li>Redistribute content from Lake Baringo Safari</li></ul><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">This Agreement shall begin on the date hereof. Our Terms and Conditions were created with the help of the&nbsp;<a href=\"https://www.termsandconditionsgenerator.com/\" style=\"color: rgb(102, 102, 102);\">Free Terms and Conditions Generator</a>.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. Lake Baringo Safari does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of Lake Baringo Safari,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, Lake Baringo Safari shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Lake Baringo Safari reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">You warrant and represent that:</p><ul style=\"color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\"><li>You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;</li><li>The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;</li><li>The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy</li><li>The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.</li></ul><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">You hereby grant Lake Baringo Safari a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(102, 102, 102); margin: 0px 0px 18px; font-size: 14px;\"><span style=\"font-weight: 700;\">Hyperlinking to our Content</span></h3><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">The following organizations may link to our Website without prior written approval:</p><ul style=\"color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\"><li>Government agencies;</li><li>Search engines;</li><li>News organizations;</li><li>Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and</li><li>System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.</li></ul><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party’s site.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">We may consider and approve other link requests from the following types of organizations:</p><ul style=\"color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\"><li>commonly-known consumer and/or business information sources;</li><li>dot.com community sites;</li><li>associations or other groups representing charities;</li><li>online directory distributors;</li><li>internet portals;</li><li>accounting, law and consulting firms; and</li><li>educational institutions and trade associations.</li></ul><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of Lake Baringo Safari; and (d) the link is in the context of general resource information.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party’s site.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to Lake Baringo Safari. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Approved organizations may hyperlink to our Website as follows:</p><ul style=\"color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\"><li>By use of our corporate name; or</li><li>By use of the uniform resource locator being linked to; or</li><li>By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party’s site.</li></ul><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">No use of Lake Baringo Safari\'s logo or other artwork will be allowed for linking absent a trademark license agreement.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(102, 102, 102); margin: 0px 0px 18px; font-size: 14px;\"><span style=\"font-weight: 700;\">iFrames</span></h3><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(102, 102, 102); margin: 0px 0px 18px; font-size: 14px;\"><span style=\"font-weight: 700;\">Content Liability</span></h3><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(102, 102, 102); margin: 0px 0px 18px; font-size: 14px;\"><span style=\"font-weight: 700;\">Your Privacy</span></h3><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Please read Privacy Policy</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(102, 102, 102); margin: 0px 0px 18px; font-size: 14px;\"><span style=\"font-weight: 700;\">Reservation of Rights</span></h3><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it’s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(102, 102, 102); margin: 0px 0px 18px; font-size: 14px;\"><span style=\"font-weight: 700;\">Removal of links from our website</span></h3><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(102, 102, 102); margin: 0px 0px 18px; font-size: 14px;\"><span style=\"font-weight: 700;\">Disclaimer</span></h3><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:</p><ul style=\"color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\"><li>limit or exclude our or your liability for death or personal injury;</li><li>limit or exclude our or your liability for fraud or fraudulent misrepresentation;</li><li>limit any of our or your liabilities in any way that is not permitted under applicable law; or</li><li>exclude any of our or your liabilities that may not be excluded under applicable law.</li></ul><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</p>\r\n										\r\n										'),
(2, 'privacy', '<h1 style=\"margin-top: 0px; margin-bottom: 18px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(102, 102, 102);\">Privacy Policy for Lake Baringo Safari</h1><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">At Lake Baringo Safari, accessible from https://lakebaringosafari.com, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by Lake Baringo Safari and how we use it.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in Lake Baringo Safari. This policy is not applicable to any information collected offline or via channels other than this website. Our Privacy Policy was created with the help of the&nbsp;<a href=\"https://www.privacypolicygenerator.info/\" style=\"color: rgb(102, 102, 102);\">Free Privacy Policy Generator</a>.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(102, 102, 102); margin: 0px 0px 18px; font-size: 16px;\">Consent</h2><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">By using our website, you hereby consent to our Privacy Policy and agree to its terms.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(102, 102, 102); margin: 0px 0px 18px; font-size: 16px;\">Information we collect</h2><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(102, 102, 102); margin: 0px 0px 18px; font-size: 16px;\">How we use your information</h2><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">We use the information we collect in various ways, including to:</p><ul style=\"color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\"><li>Provide, operate, and maintain our website</li><li>Improve, personalize, and expand our website</li><li>Understand and analyze how you use our website</li><li>Develop new products, services, features, and functionality</li><li>Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposes</li><li>Send you emails</li><li>Find and prevent fraud</li></ul><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(102, 102, 102); margin: 0px 0px 18px; font-size: 16px;\">Log Files</h2><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Lake Baringo Safari follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services\' analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users\' movement on the website, and gathering demographic information.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(102, 102, 102); margin: 0px 0px 18px; font-size: 16px;\">Advertising Partners Privacy Policies</h2><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">You may consult this list to find the Privacy Policy for each of the advertising partners of Lake Baringo Safari.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on Lake Baringo Safari, which are sent directly to users\' browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Note that Lake Baringo Safari has no access to or control over these cookies that are used by third-party advertisers.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(102, 102, 102); margin: 0px 0px 18px; font-size: 16px;\">Third Party Privacy Policies</h2><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Lake Baringo Safari\'s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers\' respective websites.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(102, 102, 102); margin: 0px 0px 18px; font-size: 16px;\">CCPA Privacy Rights (Do Not Sell My Personal Information)</h2><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Under the CCPA, among other rights, California consumers have the right to:</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Request that a business that collects a consumer\'s personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Request that a business delete any personal data about the consumer that a business has collected.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Request that a business that sells a consumer\'s personal data, not sell the consumer\'s personal data.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(102, 102, 102); margin: 0px 0px 18px; font-size: 16px;\">GDPR Data Protection Rights</h2><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">The right to access – You have the right to request copies of your personal data. We may charge you a small fee for this service.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">The right to rectification – You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">The right to erasure – You have the right to request that we erase your personal data, under certain conditions.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">The right to restrict processing – You have the right to request that we restrict the processing of your personal data, under certain conditions.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">The right to object to processing – You have the right to object to our processing of your personal data, under certain conditions.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">The right to data portability – You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(102, 102, 102); margin: 0px 0px 18px; font-size: 16px;\">Children\'s Information</h2><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Lake Baringo Safari does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.</p>'),
(3, 'aboutus', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Test test</span>'),
(11, 'contact', '																				<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">lakebari@lakebaringosafari.com</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext,
  `PackageImage` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`) VALUES
(1, 'BOAT EXCURSION ', 'Boat Rides ', 'Baringo County', 30, 'Pay on arrival or now on our site', 'In lake we have plenty of options for boat riding ie visiting lake baringo Sulphur hotspring, birdwatching, gem watching include meeting with hippos and friendly crocodiles.,spot fishing .\"', 'baringo5.jpg'),
(2, 'BIRDWATCHING ', 'N/A', 'Lake Baringo ', 20, 'N/a', 'Lake Baringo has 450 bird species including the Rare species ie Red billed hornbil, Northern white faced scops owl, African scops owl, Hemprich hornbill, Brown tailed rock chat, Spotted thick knee, Northern masked weaver, Heuglin courser etc', 'baringo3.jpg'),
(3, 'NATURE WALKS ', 'Baringo tour', 'Baringo County', 10, 'Travelling across Baringo county', 'On this package we have a lot to see include :- Hiking to the top of the cliff, Learning on the indigenous trees and there medicinal or there common uses, seeing of different animals ie Rock hyrax, Different species of scopions, cultural way of life of the Tugen people / Visiting of the pokot village ', 'nature.jpg'),
(4, 'ACCOMMODATIONS ', 'N/A', 'Lake Baringo', 0, 'N/a', 'The region has various classes of hotels from cheap to expensive.-           \r\nSandai Resort\r\nTumbili Cliff lodge\r\nTamarind Garden\r\nLake House cottages\r\nRoyal Dove Gardens\r\nBush Baby Camping\r\nSoi Safari Lodge\r\nIsland Camp\r\nCamp Rechardson', 'acco.jpg'),
(5, 'VILLAGE VISIT ', 'Culture and Traditions ', 'Baringo County', 20, 'Book your ticket now ', 'This is where we are going to meet with primitive tribes of the Pokot and njemps communities who have been living within the lake basin. We meet communities and seeing there cultural way of life,traditional dances and more. ', '30970963127_07c9a249da_b.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(12, 'Ayub Oduya', '0758954871', 'ayubodhiambo99@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2022-09-18 14:43:41', NULL),
(13, 'Fidel', 'Omondi', 'ayubodhiambo@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2022-09-21 10:18:38', NULL),
(14, 'Louis JUMAH ', '0725103553', 'Louisjumah@gmail.com ', '19f352133c2aed89a3eff3670e9cb804', '2022-09-21 10:38:54', NULL),
(15, 'Louis JUMAH ', '0725103553', 'Louisjumah@gmail.com ', '5aaab15545bc1bf06935a58c3383a62d', '2022-09-21 10:46:07', NULL),
(16, 'Louis JUMAH ', '0725103553', 'Louisjumah@gmail.com ', '5aaab15545bc1bf06935a58c3383a62d', '2022-09-21 16:53:26', NULL),
(17, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2022-09-28 14:33:03', NULL),
(18, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2022-09-28 14:34:06', NULL),
(19, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2022-09-28 14:58:17', NULL),
(20, 'Joash', '0798460838', 'joashpampinox254@gmail.com', '1e7db1cee281becd1f067e3bd62eda47', '2022-10-25 07:46:37', NULL),
(21, 'Geoffrey Otieno', '0740512408', 'Otienogeofrey642@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-11-15 18:11:27', '2022-11-15 18:20:30'),
(22, 'Lincoln Komen ', '0720300096', 'komenlincoln@gmail.com', 'e41d3a6321cd6784690d7b85de0d44f2', '2022-11-30 17:25:50', NULL),
(23, '', '', 'yxDb_generic_9b0e3be5_lakebaringosafari.com@data-backup-store.com', '208f55eac66d6ff0cf2e0b6ec8ff3e76', '2023-02-01 14:17:34', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
