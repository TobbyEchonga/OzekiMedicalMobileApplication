-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2020 at 04:20 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `career`
--
CREATE DATABASE IF NOT EXISTS `career` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `career`;

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `EmailId` varchar(60) NOT NULL,
  `ContactNo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `email`, `password`, `role`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'admin@careerhub.com', '25F9E794323B453885F5181F1B624D0B', 0, '200 Muyenga, Kironde Road', 'info@careeracademy.com', '+256 79435402');

-- --------------------------------------------------------

--
-- Table structure for table `tblcompany`
--

CREATE TABLE `tblcompany` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_email` varchar(255) NOT NULL,
  `contact_person` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '0',
  `reg_status` varchar(10) NOT NULL DEFAULT 'N',
  `postal_address` varchar(255) NOT NULL,
  `role` int(20) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcompany`
--

INSERT INTO `tblcompany` (`id`, `company_name`, `company_email`, `contact_person`, `contact_email`, `password`, `token`, `status`, `reg_status`, `postal_address`, `role`) VALUES
(1, 'AA legal', 'aa@legal.com', 'Hilary Onen', 'info@legal.com', 'MTIzNDU2Nzg5dGhlX2NyYXp5X2ZveF9pc19yZWRfYW5kX2hhc19ncmV5X2V5ZXM=', 'c55ef89fadd619bea1fbfe39937d940f', '0', 'Y', 'Plot 102, Kyenja street, Bugolobi', 2),
(2, 'Uganda Revenue', 'ur@gmail.com', 'Isaac', 'ur@gmail.com', 'MTIzNDU2Nzg5dGhlX2NyYXp5X2ZveF9pc19yZWRfYW5kX2hhc19ncmV5X2V5ZXM=', '97dfabe31c64de2a24bf13926f8c9938', '0', 'Y', 'Kinshasa', 2),
(3, 'syscorp', 'james@gmail.com', 'James', 'sakwa@darlintonsakwa.com', 'UXdlcnR5MTIzNDV0aGVfY3JhenlfZm94X2lzX3JlZF9hbmRfaGFzX2dyZXlfZXllcw==', 'ebe1af632bca078d67cfe4c0e007b2fb', '0', 'Y', 'bukoto', 2),
(4, 'sd', 'echonga33@gmail.com', 'sd', 'echongat@gmail.com', 'UXdlcnR5MTIzNDV0aGVfY3JhenlfZm94X2lzX3JlZF9hbmRfaGFzX2dyZXlfZXllcw==', '5677009ed023e2b51601d21aa7190892', '0', 'Y', 'Bukasa', 2),
(5, 'Bens', 'echongat33@gmail.com', 'ben', 'echongat33@gmail.com', 'UXdlcnR5MTIzNDV0aGVfY3JhenlfZm94X2lzX3JlZF9hbmRfaGFzX2dyZXlfZXllcw==', '0dd1642adbc9d6c8f1b9d2813f6a2443', '0', 'Y', 'Bukasa', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(90) NOT NULL,
  `EmailId` varchar(90) NOT NULL,
  `ContactNumber` varchar(90) NOT NULL,
  `Message` varchar(90) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `status`) VALUES
(1, 'tobby echonga', 'kkevinshaw23@gmail.com', '+230 5023473', 'How do I register?', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbljobapplications`
--

CREATE TABLE `tbljobapplications` (
  `ids` char(10) NOT NULL,
  `job_id` int(11) NOT NULL,
  `seeker_id` int(11) NOT NULL,
  `applicants_status` int(11) NOT NULL DEFAULT '0',
  `date_applied` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `interview_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbljobapplications`
--

INSERT INTO `tbljobapplications` (`ids`, `job_id`, `seeker_id`, `applicants_status`, `date_applied`, `interview_date`) VALUES
('1248', 3, 2, 0, '2019-06-09 15:26:58', '0000-00-00 00:00:00'),
('1346', 2, 3, 0, '2019-06-08 02:56:12', '0000-00-00 00:00:00'),
('1547', 4, 1, 1, '2019-06-09 15:26:58', '0000-00-00 00:00:00'),
('1564', 1, 4, 1, '2019-06-08 02:56:12', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbljobcategory`
--

CREATE TABLE `tbljobcategory` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `Creation_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbljobcategory`
--

INSERT INTO `tbljobcategory` (`id`, `category_name`, `Creation_date`, `Updated_date`) VALUES
(1, 'Engineering', '2018-09-11 05:33:16', '2019-07-12 02:31:58'),
(2, 'Teaching', '2018-09-11 05:33:16', '2019-07-12 02:28:59'),
(3, 'Agriculture', '2018-09-11 05:33:16', '2019-07-12 02:38:17'),
(4, 'Manual labour', '2018-09-11 05:33:16', '2019-07-12 02:28:59');

-- --------------------------------------------------------

--
-- Table structure for table `tbljobs`
--

CREATE TABLE `tbljobs` (
  `id` int(11) NOT NULL,
  `job_name` varchar(255) NOT NULL,
  `job_status` varchar(70) NOT NULL DEFAULT 'Active',
  `company_id` int(11) NOT NULL,
  `job_desc` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `date_posted` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expiry_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbljobs`
--

INSERT INTO `tbljobs` (`id`, `job_name`, `job_status`, `company_id`, `job_desc`, `category_id`, `date_posted`, `expiry_date`) VALUES
(1, 'Project Manager', 'Active', 1, 'Maintaining the company website', 1, '2019-06-12 22:43:38', '2019-09-21'),
(2, 'IT Supervisor', 'Active', 2, 'Supervise IT Services and Maintain Network', 1, '2019-06-12 22:44:39', '2019-09-20'),
(3, 'Game Developer', 'Active', 1, 'Good pay', 2, '2019-06-15 01:36:45', '2019-09-29'),
(4, 'Civil Engineering', 'Active', 2, 'Surifng', 1, '2019-06-17 15:11:23', '2019-09-29'),
(5, 'Sales manager', 'Active', 3, 'degree in marketing', 2, '2019-10-29 09:29:53', '2019-11-29');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `detail` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '                                        <h4><span style=\"font-weight: bold; font-size: medium;\">Career and Recruitment Solutions Ltd &amp; CareerHub.mu Hiring Web Platform</span></h4>\r\n<p><span style=\"font-size: medium;\">1.Career and Recruitment Solutions Ltd (a company duly registered in the Republic of Mauritius and hereinafter also referred in as the Company) is the maker and owner of CareerHub.mu website.</span></p>\r\n<h4><span style=\"font-weight: bold; font-size: medium;\">TERMS &amp; CONDITIONS</span></h4>\r\n<p><span style=\"font-size: medium;\">2.These Terms and Conditions apply to your use of the CareerHub.mu website. By using this site, you are declaring your acceptance to be bound by these Terms and Conditions. Career and Recruitment Solutions Ltd reserves the right to update the Terms and Conditions at any time without notice to you. Users are responsible for reviewing regularly information posted online. 2.2 Your continued use of this site after changes are posted constitutes your acceptance of these Terms and Conditions as amended.</span></p>\r\n<h4><span style=\"font-weight: bold; font-size: medium;\">USE OF CONTENT</span></h4><span style=\"font-size: medium;\">\r\n3.The services provided and information furnished by Career and Recruitment Solutions Ltd are for your personal, non-commercial use.\r\n</span><h4><span style=\"font-weight: bold; font-size: medium;\">ELIGIBILITY</span></h4>\r\n<p><span style=\"font-size: medium;\">4.You must be 18 years of age or above to visit and/or use this Site in any manner. By visiting CareerHub.mu or accepting the Terms and Conditions, you warrant to the Company that You are 18 years of age or older, and that you have the right, authority and capacity to abide by these Terms and Conditions. You also warrant to the Company that You will use this Site in a manner consistent with any and all application laws and regulations.</span></p>\r\n<h4><span style=\"font-weight: bold; font-size: medium;\">CONTENT</span></h4>\r\n<p><span style=\"font-size: medium;\">5.The content and databases on the website, including all text, images, logos, buttons, software and other website content are, unless specified, protected by national and international intellectual property laws, and are owned by Career and Recruitment Solutions Ltd and/or its suppliers and/or customers. Use of the website does not give a user any ownership in or to any of that content.</span></p>\r\n<p><span style=\"font-size: medium;\">6.A user retains copyright in his or her curriculum vitae or resume. Each user gives Career and Recruitment Solutions Ltd a non exclusive right to copy and use from time to time his/her CV/resume in the manner contemplated by the website.</span></p>\r\n<h4><span style=\"font-weight: bold; font-size: medium;\">UNLAWFUL AND PROHIBITED USE</span></h4>\r\n<p><span style=\"font-size: medium;\">7.As a condition of your use of the Services, you will not use the services for any purpose that is unlawful or prohibited by these Terms and Conditions. You may not use the Services in any manner that could damage, disable, overburden, or impair the CareerHub.mu server. You may not attempt to gain unauthorized access to any Services, other accounts, computer systems or networks connected to any CareerHub.mu server or to any Services, through hacking, password mining or any other means. You may not obtain or attempt to obtain any materials or information through any means not intentionally made available through the services</span></p>\r\n<p><span style=\"font-size: medium;\">8.Save as herein provided, you are prohibited from using or removing any content from the CareerHub.mu website by any means for commercial purposes. Where such use of materials is desired the course must first be identified and written consent provided.</span></p>\r\n<h4><span style=\"font-weight: bold; font-size: medium;\">GENERAL CONDITIONS</span></h4><span style=\"font-size: medium;\">\r\n9.FOR JOB SEEKERS\r\n\r\n</span><p><span style=\"font-size: medium;\">-The job seeker must update his account at least every six month.<br>\r\n-When registered, the job seeker accepts to receive informative emails.<br>\r\n-A jobseeker is solely responsible for the contents and materials contained in his/her CV/ Resume and decide whether he/she wants his/her CV to be viewed by employers either by public or private mode.<br>\r\n-A Jobseeker should not post his/her CV twice, or have more than one account. She/he can update his/her account anytime. Career and Recruitment Solutions Ltd reserves the right to deactivate such accounts, should there be any abuse.<br>\r\n-Career and Recruitment Solutions Ltd reserves the right to make checks on a jobseeker’s account – to verify whether truthful information was given.<br>\r\n-Career and Recruitment Solutions Ltd reserves the right to deactivate any jobseeker’s account.<br>\r\n-All job offers from registered companies of CareerHub.mu remains free for the candidates except for recruitment agencies which will apply their own term &amp; conditions.<br>\r\n-A jobseeker is advised to update his/her CVs regularly to maximize his/her chances of employers being interested in his/her profile.</span></p><span style=\"font-size: medium;\">\r\n10.FOR EMPLOYERS:\r\n</span><p><span style=\"font-size: medium;\">-Employers will be entitled to use CareerHub.mu to advertise job vacancies and/or create a company profile page on the company’s website for a predetermined period following agreement of a predetermined service.<br>-Employers will be solely responsible for the contents and materials contained in their advertisement and/or webpage. The Company reserves the right to edit any advertisement or web page as it sees fit.<br>-The Company reserves the right to change the service fee and institute new charges or fees, as it deems appropriate. In the event that any Employer should fail to pay the Service Fee or any other fees or charges due to CareerHub.mu, the Company reserves the right to suspend or terminate the Employer’s web page or advertisement, without prior notice to the Employer and further, without prejudice to all other rights and remedies.<br>-Employers will also be entitled to access the Company’s Jobseekers Database but agree that all information obtained will only be used for the purpose of obtaining potential employees and that Career and Recruitment Solutions Ltd is not responsible of the truthfulness of the said information.</span></p>\r\n<h4><span style=\"font-weight: bold; font-size: medium;\">PROHIBITED USES BY JOBSEEKERS AND EMPLOYERS</span></h4><h4>\r\n<p><span style=\"font-size: medium;\">Jobseekers and Employers agree not to use any of the CareerHub.mu websites for any of the following purposes that are expressly prohibited:\r\nJobseekers shall not post any non-resume information and/or incomplete, false or inaccurate resume information that is not their own accurate information.\r\nJobseekers are not allowed to have more than one account, and CareerHub.mu reserves the right to make appropriate checks to ensure duplication of CVs does not happen.\r\nJobseekers shall not respond to any employment opportunity for any reason other than to apply for the job advertised and Employers shall not respond to any Jobseekers other than in connection with their application for a job. Communications soliciting business for any other reason is prohibited. Any abuse should be reported to CareerHub.mu.\r\nAll users shall not print, download, duplicate or otherwise copy or use any personally identifiable information about other users. All unsolicited communications of any type to users is strictly prohibited.\r\nAll users shall not delete or modify any material posted by any other person or entity.\r\n</span></p></h4>\r\n                    ');
INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(2, 'Privacy Policy', 'privacy', '                    <p style=\"text-align: justify; margin-bottom: 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5em; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\">This Privacy Notice explains how we collect, use and protect any information about you. It also tells you how to get in touch if you have any questions, which we will be more than happy to answer. If you’re interested in what we do with cookies and similar technologies, please check out our Cookie Statement<a href=\"https://www.rentalcars.com/CookieStatement.do\" target=\"_blank\" rel=\"nofollow\" style=\"margin: 0px; padding: 0px 0px 2px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(0, 100, 200); border-left-color: initial; border-image: initial; font: inherit; vertical-align: baseline; color: rgb(0, 100, 200);\">.</a></p><p style=\"text-align: justify; margin-bottom: 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5em; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\">We may change this Notice from time to time; so please check back here for any updates.</p><p style=\"text-align: justify; margin-bottom: 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5em; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\">We offer a range of services related to online car rental, including products and services such as insurance, through our own websites, mobile apps, emails and text messages (‘platforms’). We also do this through our business partners’ websites, social media and other platforms. This Notice applies to all the personal data we collect while we’re doing this, or when you contact us by email, live chat, phone or post.</p><span style=\"color: rgb(68, 68, 68); font-family: Arial, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\">Our business partners should also visit our Privacy and Cookies&nbsp;to understand how personal data is processed as part of our business relationship.</div></span><h2 style=\"text-align: justify; margin: 0px; padding: 0px 0px 10px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 1.8em; line-height: inherit; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(72, 154, 227);\">Personal data you give us</h2><p style=\"text-align: justify; margin-bottom: 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5em; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\">We can’t help you make a booking or request a quote without certain information. When you do either of those things, we ask you for the information we need so we can give you what you want. This is pretty standard stuff and may include your name, age, date and place of birth and contact details (email, address and phone number). It can also include information about your passport, identity card and driving licence – and your loyalty programme number and payment information.</p><p style=\"text-align: justify; margin-bottom: 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5em; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\">In addition, we collect information from your computer when you use one of our platforms, even if you don’t make a booking. This may include your IP address, which browser you use, and your language settings. There are also situations where we receive information about you from third parties, or automatically collect other information. This is a basic overview of the information we collect. Would you like to know more?</p><h2 style=\"text-align: justify; margin: 0px; padding: 0px 0px 10px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1.8em; line-height: inherit; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(72, 154, 227);\">Personal data you give us</h2><p style=\"text-align: justify; margin-bottom: 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5em; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\">We store and use the information that you give us. When you make a booking, we need at least your name, email address and payment information. We might also ask for your home address, phone number and date of birth, and the names of any additional drivers.</p><p style=\"text-align: justify; margin-bottom: 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5em; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\">If you get in touch with us (by phone, by email or through social media, for example) we will collect information from you there too.</p><p style=\"text-align: justify; margin-bottom: 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5em; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\">After your booking, we may ask you to provide a review to help us improve our services, and to help ensure future customers get exactly what they’re looking for.</p><p style=\"text-align: justify; margin-bottom: 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5em; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\">There are also other ways you might give us information. For example, if you’re browsing with your mobile device, you can share your current location with us, so we can provide you with the best possible service. To make things easier, you can also open a user account, which lets you review and manage your bookings, as well as saving your personal settings and your passport and driving licence details. It also makes it easier to make future bookings.</p><p style=\"margin-bottom: 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5em; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\"></p><h2 style=\"text-align: justify; margin: 0px; padding: 0px 0px 10px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1.8em; line-height: inherit; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(72, 154, 227);\">Personal data you give us about others</h2><p style=\"text-align: justify; margin-bottom: 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5em; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\">You might add someone as an additional driver, or you might make a booking on behalf of someone else, for example, a friend, family member or colleague. If you do, please make sure that that person knows you’re giving us their details, and has accepted the way we handle their personal data (as described in this Notice). This is your responsibility.</p><h2 style=\"text-align: justify; margin: 0px; padding: 0px 0px 10px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1.8em; line-height: inherit; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(72, 154, 227);\">Personal data we collect automatically</h2><p style=\"text-align: justify; margin-bottom: 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5em; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\">When you make a booking, we record what platform you made it on, and how you got to our platform (if you came through from another site, for example).</p><p style=\"text-align: justify; margin-bottom: 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5em; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\">Even if you don’t end up making a booking, we may automatically collect some information when you visit our platforms. This may include your IP address, which pages you’ve visited, which browser you’re using, and information about clicks. It might also include information about your computer’s operating system, its application version, language settings, device-specific setting and characteristics, and data that identifies your device.</p><p style=\"text-align: justify; margin-bottom: 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5em; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\">If you’re using a mobile device, we might also collect location details. And we might analyse, and process basic data related to the apps installed on it (e.g. name, description and category).</p><h2 style=\"text-align: justify; margin: 0px; padding: 0px 0px 10px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1.8em; line-height: inherit; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(72, 154, 227);\">Personal data we get from other companies</h2><p style=\"text-align: justify; margin-bottom: 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5em; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\">We may also get information about you from social media platforms, our business partners, subsidiaries of the Rentalcars.com corporate family, affiliates of the Booking Holdings Inc corporate group&nbsp;and other third parties. For example:</p><ul style=\"margin-top: 10px; margin-bottom: 15px; margin-left: 20px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: Arial, sans-serif; vertical-align: baseline; list-style-type: circle; color: rgb(68, 68, 68);\"><li style=\"text-align: justify; margin-bottom: 5px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1em; line-height: inherit; font-family: inherit; vertical-align: baseline;\">We work with affiliate business partners to offer our services on other platforms. When you make a booking on one of these platforms, we may share your personal data with them, and they may share your personal data with us.</li><li style=\"text-align: justify; margin-bottom: 5px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1em; line-height: inherit; font-family: inherit; vertical-align: baseline;\">The companies that provide the services you have booked through our platforms may need to send us information about you – for example, if your booking leads to an insurance claim or customer service dispute.</li><li style=\"text-align: justify; margin-bottom: 5px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1em; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Our business partners may also send us information about you that may help us show you more relevant adverts.</li></ul><p style=\"text-align: justify; margin-bottom: 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5em; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\">We may combine any of this information with the information you give us directly.</p><p style=\"text-align: justify; margin-bottom: 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5em; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\">Please see ‘Why do we collect and use your personal data?’ for details.</p><h2 style=\"text-align: justify; margin: 0px; padding: 0px 0px 10px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1.8em; \r\n line-height: inherit; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(72, 154, 227);\">Why do we collect and use your personal data?</h2><p style=\"text-align: justify; margin-bottom: 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5em; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\">We ask for your personal data so we can book your car (and anything else you need for your booking), and make sure you get the best possible service. We also use it to contact you, and to tell you about our latest deals and special offers. These are the main reasons we collect your personal data, but there are other reasons too. Would you like to know more?</p><h2 style=\"text-align: justify; margin: 0px; padding: 0px 0px 10px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1.8em; line-height: inherit; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(72, 154, 227);\">Why do we collect and use your personal data?</h2><p style=\"text-align: justify; margin-bottom: 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5em; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\">We may use your personal data in the following ways:</p><ol style=\"margin: 10px 0px 15px 25px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: Arial, sans-serif; vertical-align: baseline; list-style-position: initial; list-style-image: initial; color: rgb(68, 68, 68);\"><li style=\"text-align: justify; margin-bottom: 5px; border: 0px; font: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Bookings:&nbsp;</span>First and foremost, we use your personal data to make and administer your booking, and to forward the necessary details to the company that provides your car (or other product or service, such as insurance). This includes sending you communications in relation to your booking, such as confirmations, modifications and reminders.</li><li style=\"text-align: justify; margin-bottom: 5px; border: 0px; font: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Customer service:&nbsp;</span>We provide international customer service 24/7 in over 40 languages. Our international customer service teams need your details so they can help you make a booking, for example, or to reply to any queries you may have before, during or after your booking.</li><li style=\"text-align: justify; margin-bottom: 5px; border: 0px; font: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Customer reviews:&nbsp;</span>We may use your contact details to send you a short questionnaire about your booking. This helps us understand and improve our service and the service our business partners provide.</li><li style=\"text-align: justify; margin-bottom: 5px; border: 0px; font: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Account facilities:&nbsp;</span>To make things easier, you can create a user account on our platforms. This involves giving us your personal data, and it lets you do a number of useful things. You can manage your bookings or other purchases, take advantage of special offers, and manage your personal settings and preferences. It also makes it easier to make future bookings.</li><li style=\"margin-bottom: 5px; border: 0px; font: inherit; vertical-align: baseline;\"><div style=\"text-align: justify;\"><span style=\"font: inherit; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">Marketing activities:</span><span style=\"font-family: inherit; font-size: inherit; font-style: inherit; font-variant-ligatures: inherit; font-variant-caps: inherit; font-weight: inherit;\">&nbsp;We also use your personal data for marketing activities, which may include:</span></div><ul style=\"margin-top: 10px; margin-bottom: 15px; margin-left: 20px; border: 0px; font: inherit; vertical-align: baseline; list-style-type: circle;\"><li style=\"text-align: justify; margin-bottom: 5px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1em; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Contacting you by post, phone, email or SMS (depending on the contact details you give us) with our latest news, special offers, discounts and updates, including details of our products and services (and/or those of our group companies or affiliate business partners). You can unsubscribe from these marketing communications quickly, easily and at any time – just click the “unsubscribe” link in any email or visit our Data</li><li style=\"text-align: justify; margin-bottom: 5px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1em; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Contacting you by phone, email or SMS with information about insurance products that you didn’t include in your booking.</li><li style=\"text-align: justify; margin-bottom: 5px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1em; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Showing you relevant offers on our platforms or on third-party websites, including social media sites.</li><li style=\"text-align: justify; margin-bottom: 5px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1em; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Inviting you to participate in promotional activities (such as referral programs or competitions).</li></ul></li><li style=\"margin-bottom: 5px; border: 0px; font: inherit; vertical-align: baseline;\"><div style=\"text-align: justify;\"><span style=\"font: inherit; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">Communicating with you</span><span style=\"font-family: inherit; font-size: inherit; font-style: inherit; font-variant-ligatures: inherit; font-variant-caps: inherit; font-weight: inherit;\">: There may be other times when we contact you by phone, email or SMS. There could be a number of reasons for this, including:</span></div><ul style=\"margin-top: 10px; margin-bottom: 15px; margin-left: 20px; border: 0px; font: inherit; vertical-align: baseline; list-style-type: circle;\"><li style=\"text-align: justify; margin-bottom: 5px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1em; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Responding to, and handling any requests you have made.</li><li style=\"text-align: justify; margin-bottom: 5px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1em; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Emailing you a reminder about a booking you didn’t finalise, to see if you need any help to do so. We see this as a useful additional service because it lets you carry on with a booking without having to find the car again or fill in all the booking details from scratch.</li><li style=\"text-align: justify; margin-bottom: 5px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1em; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Sending you a questionnaire or inviting you to review your experience.</li><li style=\"text-align: justify; margin-bottom: 5px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1em; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Sending you other material related to your booking, such as how to contact us (or another company) if you need help during your booking.</li><li style=\"text-align: justify; margin-bottom: 5px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1em; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Sending you a summary of your previous bookings.</li><li style=\"text-align: justify; margin-bottom: 5px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1em; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Sending you other administrative messages, which may include security alerts, even if you don’t have an upcoming booking.</li></ul></li><li style=\"text-align: justify; margin-bottom: 5px; border: 0px; font: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Market research</span>: We may ask you to take part in market research. Any additional personal data that you give us as part of this research will be used only with your consent.</li><li style=\"text-align: justify; margin-bottom: 5px; border: 0px; font: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Fraud detection and prevention</span>: To provide a safe, trustworthy service, we use your personal data to detect and prevent fraud and other illegal or unwanted activities. Similarly, we may use personal data for risk assessment and security purposes, which can include verifying users and bookings. This can sometimes mean we may have to put certain bookings on hold.</li><li style=\"text-align: justify; margin-bottom: 5px; border: 0px; font: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Improving our services</span>: We analyse personal data to help us improve the functionality and quality of our online services, and enhance the whole user experience. We’re always working to make our platforms easier and more enjoyable for you to use.</li><li style=\"text-align: justify; margin-bottom: 5px; border: 0px; font: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Customer reviews</span>: After your booking, we may invite you to review the services that we or our business partner provided. Your review will help future customers make the right choice, and help our business partners improve the services they offer. By submitting a review, you are agreeing that it can be displayed, as explained in our Terms and Conditions. You can make a review anonymously or simply put your first name and country location.</li><li style=\"text-align: justify; margin-bottom: 5px; border: 0px; font: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Call monitoring</span>: We may record phone calls and/or allow other staff to listen in to them, to help us train our colleagues and make sure we’re consistently providing a top-quality service. We automatically delete recordings after a specified time, unless we have a legitimate reason not to (if we think there’s evidence of fraud, for example).</li><li style=\"text-align: justify; margin-bottom: 5px; border: 0px; font: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Legal purposes</span>: Finally, in certain cases, we may need to use your personal data to handle and resolve legal disputes, for regulatory investigations, for compliance reasons, or to make sure we apply our terms and conditions accurately.</li></ol><h2 style=\"text-align: justify; margin: 0px; padding: 0px 0px 10px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1.8em; line-height: inherit; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(72, 154, 227);\">To process your personal data like this, we rely on the following legal grounds:</h2><li style=\"text-align: justify; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Performance of a contract:&nbsp;</span>We need to use your personal data to fulfil any contract you’ve made with us. For example, when you book a car, we need to transfer your booking details to the rental company to make sure your car is waiting for you.</li><li style=\"text-align: justify; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Legitimate interests:&nbsp;</span>We may use your information for our ‘legitimate interests’ \r\n (a term which applies to anything we believe is an essential part of carrying out our business effectively – at the same time as respecting your rights and upholding the law). For example, to provide you with the most suitable content on our platforms, including our emails and newsletters; to improve and promote our products and services; and for administrative purposes.</li><li style=\"text-align: justify; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Consent:&nbsp;</span>We may rely on your consent to use your personal data in certain circumstances, for example direct marketing purposes. You may withdraw your consent at any time via our Data Subject Request Portal or by emailing datarights@rentalcars.com, stating “Privacy” in the subject line.</li><h2 style=\"text-align: justify; margin: 0px; padding: 0px 0px 10px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1.8em; line-height: inherit; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(72, 154, 227);\">What third parties do we share your personal data with – and why?</h2><p style=\"text-align: justify; margin-bottom: 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5em; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\">There are a number of different business partners integrated in the services we provide, and in certain situations we may share your personal data with them. In most cases, we’re simply passing on your booking details to the business partners that are helping us deliver the service you’re requesting. We will also share your data with other third parties, which may include payment service providers, advertising partners, subsidiaries of the Rentalcars.com corporate family and affiliates of the Booking Holdings Inc corporate group, and – in some cases – the authorities. These are the main reasons we would share your personal data. Would you like to know more?</p><h2 style=\"text-align: justify; margin: 0px; padding: 0px 0px 10px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1.8em; line-height: inherit; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(72, 154, 227);\">What third parties do we share your personal data with – and why?</h2><ul style=\"margin-top: 10px; margin-bottom: 15px; margin-left: 20px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: Arial, sans-serif; vertical-align: baseline; list-style-type: circle; color: rgb(68, 68, 68);\"><li style=\"text-align: justify; margin-bottom: 5px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1em; line-height: inherit; font-family: inherit; vertical-align: baseline;\"><em style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">The company/companies supplying your car rental and/or related products and services:&nbsp;</em>To make your booking, we need to send the relevant details to the company/companies supplying the car and/or other related products (including insurance) that you have requested. These details may include your name, age range, contact details (email, address and phone number), date and place of birth, passport information, driving licence information and any preferences you told us about while booking. If there is a dispute about your booking or insurance cover, or any other kind of customer service issue, we may need to provide the rental company with some information about the booking process as well as the dispute itself. This may include a copy of your booking confirmation, to prove that a booking was actually made, as well as any information related to your complaint. Please be aware that any information you provide directly to the company/companies supplying your car and/or related products will be stored and used in accordance with their own privacy notice(s) and terms and conditions.</li><li style=\"text-align: justify; margin-bottom: 5px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1em; line-height: inherit; font-family: inherit; vertical-align: baseline;\"><em style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Our business partners:&nbsp;</em>We work with business partners around the world. Some of our partners offer or advertise our services, as well as helping our other business partners offer and advertise their own travel-related services (including insurance). These business partners may also include the Booking Holdings Inc. corporate group, which includes Rentalcars.com and our sister companies (Agoda.com, Booking.com, priceline.com, KAYAK, and OpenTable). This may mean that their services are integrated into our platforms. When you make a booking on one of our business partners’ platforms, they’ll send us some of the personal data you have provided to them. Similarly, we may send our business partners some of the personal data related to your booking. This could be to help them analyse their business, for example, or to help them run their loyalty programmes. It could also be so that they can send you things like special offers, but only if you’ve given your consent for this. If the business partner provides customer service support, we will send them the details of your booking that they need to give you the support you need. In any of these cases, the handling of your personal data is governed by the privacy notices of these business partners. When you make a booking on a business partner’s website, please take the time to read their privacy notice to see how they handle your personal data. When you buy a product or service provided by one of our business partners, we will send them the personal data they need to provide it. Finally, we may also exchange information about our users with business partners for fraud detection/prevention purposes, but only as strictly necessary.</li><li style=\"text-align: justify; margin-bottom: 5px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1em; line-height: inherit; font-family: inherit; vertical-align: baseline;\"><em style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">The Booking Holdings, Inc. corporate group:</em>&nbsp;Please read here&nbsp;how we may share your personal data with the Booking Holdings Inc. corporate group.</li><li style=\"text-align: justify; margin-bottom: 5px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1em; line-height: inherit; font-family: inherit; vertical-align: baseline;\"><em style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Competent authorities:</em>&nbsp;We may share your personal data with government or investigative authorities if we’re required to do so by law (or any regulation having the force of law). This includes court orders, subpoenas and orders arising from legal processes and criminal investigations. We may also disclose your personal data if strictly necessary for the prevention, detection or prosecution of fraud and other criminal acts. And we may need to disclose personal data to competent authorities to protect and defend our rights or properties, or the rights or properties of our business partners.</li><li style=\"text-align: justify; margin-bottom: 5px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1em; line-height: inherit; font-family: inherit; vertical-align: baseline;\"><em style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Third-party service providers:</em>&nbsp;We may use third-party service providers to process your personal data on our behalf and support us in providing our services. For example, we may use them to contact you, or to send booking information on our behalf to the company providing the service, or to manage aspects of our site, call centres or marketing activities. We may also use third-party service providers for market research, fraud detection and prevention services, including anti-fraud screening services. These third parties are bound by confidentiality clauses and are not allowed to use your personal data for other purposes.</li><li style=\"text-align: justify; margin-bottom: 5px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1em; line-height: inherit; font-family: inherit; vertical-align: baseline;\"><em style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Advertising partners:&nbsp;</em>We may share your email address and other personal data with third-party advertising partners, so we can make sure you see relevant advertisements when we market our services via third-party business partners. We also work with third-party advertisement networks to market services on other platforms, and with third-party suppliers who help us analyse our own data. All these third parties will be bound by confidentiality agreements and will not be allowed to use your personal data for any other purposes. For more information on personalised advertisements and your choices, please read “How and why do we use these technologies?” and “It’s your choice: Opting in and opting out” in our Cooke Statement.</li><li style=\"text-align: justify; margin-bottom: 5px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1em; line-height: inherit; font-family: inherit; vertical-align: baseline;\"><em style=\"font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">Payment service providers and other financial institutions:&nbsp;</em><span style=\"font-family: inherit; font-size: 1em; font-variant-ligatures: inherit; font-variant-caps: inherit; font-weight: inherit;\">We also work with third-party payment service providers to arrange payment or payment guarantees. If you (or the holder of the bank card used to make your booking) request a chargeback, we may need to share certain booking details with the payment service provider and the relevant financial institution. This may include a copy of your booking confirmation or the IP address used to make your booking. We may also share information with relevant financial institutions, if we consider it necessary for fraud detection and prevention purposes.</span></li></ul><h2 style=\"text-align: justify; margin: 0px; padding: 0px 0px 10px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1.8em; line-height: inherit; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(72, 154, 227);\">How do we make use of mobile devices?</h2><p style=\"text-align: justify; margin-bottom: 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5em; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\">We offer free apps for a range of mobile devices, as well as versions of our regular website that have been optimised for mobile and tablet browsing. They collect and process your personal data in much the same way as our other platforms do, and they also allow you to find local rental cars based on your current location. Would you like to know more?</p><h2 style=\"text-align: justify; margin: 0px; padding: 0px 0px 10px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1.8em; line-height: inherit; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(72, 154, 227);\">How do we make use of mobile devices?</h2><p style=\"text-align: justify; margin-bottom: 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5em; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\">If you agree to it, \r\n we can send ‘push’ notifications straight to your mobile device, so you don’t miss important information about your booking. And, if you let us access your device’s location or contact details, we can provide extra services if you request them. Your mobile device will have instructions on allowing push notifications and giving us access to this kind of data.</p><p style=\"text-align: justify; margin-bottom: 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5em; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\">To give you a better service and more relevant marketing, we may use something known as ‘cross-device tracking’. This just means we look at the way you use our platforms on more than one device: we could, for example, combine data from your mobile phone and your home computer. This is something we may or may not use cookies for (for more on cookies and similar technologies, please see our&nbsp;Cookie Statement&nbsp;).</p><p style=\"text-align: justify; margin-bottom: 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5em; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\">To make sure you find deals that are more likely to interest you in our newsletter, we look at the searches you make and the services you book on multiple devices once you’ve signed in to your user account. If you don’t want us to do this, just sign out before you browse, or unsubscribe from our newsletter.</p><p style=\"text-align: justify; margin-bottom: 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5em; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\">Cross-device tracking can also mean that when you’re using one device, you may see personalised advertisements from lots of different companies, based on your activities on linked devices. The NAI (Network Advertising Initiative) should stop this happening if you opt out of the NAI behavioural advertising program (our&nbsp;Cookie Statement&nbsp;gives you the link you need, under “It\'s your choice: Opting in and opting out”). Please note: simply signing out of your user account won’t stop this happening.</p><h2 style=\"text-align: justify; margin: 0px; padding: 0px 0px 10px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1.8em; line-height: inherit; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(72, 154, 227);\">What security procedures do we put in place to safeguard your personal data?</h2><p style=\"text-align: justify; margin-bottom: 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5em; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\">Our business systems and procedures ensure we take all reasonable steps to protect your personal data and safeguard it against any misuse or unauthorised access, in accordance with UK and European data protection laws. We also have specific security procedures and restrictions (both technical and physical) that limit access to, and use of, any personal data that we hold. Only authorised personnel can access personal data – and they’re only allowed to do it for specific, authorised reasons.</p><h2 style=\"text-align: justify; margin: 0px; padding: 0px 0px 10px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1.8em; line-height: inherit; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(72, 154, 227);\">How do we treat the personal data of children?</h2><p style=\"text-align: justify; margin-bottom: 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5em; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\">We don’t provide services to children under the age of 18 and we reserve the right to delete any information we may receive from a child under this age. We may receive information about children in certain situations, such as an insurance claim or a customer service dispute. If that happens, we will only collect and use that information with the consent of the child’s parent or guardian.</p><h2 style=\"text-align: justify; margin: 0px; padding: 0px 0px 10px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1.8em; line-height: inherit; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(72, 154, 227);\">How can you control the personal data you have given us?</h2><p style=\"text-align: justify; margin-bottom: 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5em; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\">You have the right, subject to some legal exceptions, to access, correct or delete any personal data we keep about you, and to object to your personal data being processed. You can use our Data Subject Access Portal to enforce any of these rights. If you do, we will ask for further information to confirm your identity, to keep your information safe and we will handle your request in accordance with applicable UK data protection law. You can update or delete your user account at any time by signing in on our site.</p><p style=\"text-align: justify; margin-bottom: 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5em; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\">When you make a booking or request a quote, we ask whether you’d like to opt in to receive marketing emails. You can opt out at any time by clicking “unsubscribe” in any of these marketing emails, or by updating your email preferences in your user account.</p><h2 style=\"text-align: justify; margin: 0px; padding: 0px 0px 10px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: inherit; font-stretch: inherit; font-size: 1.8em; line-height: inherit; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(72, 154, 227);\">Who is responsible for the processing of personal data on our platforms?</h2><p style=\"text-align: justify; margin-bottom: 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5em; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);\">TravelJigsaw Limited (trading as Rentalcars.com) controls the processing of personal data on its platforms. TravelJigsaw Limited is a private limited liability company, incorporated under the laws of the United Kingdom, and has offices at 35 Fountain Street, Manchester, M2 2AN. If you have any questions, concerns or comments about our practices, or this Privacy Notice, please email dataprotectionofficer@rentalcars.com, stating “Privacy” in the subject line, and we’ll get right back to you. When it comes to privacy, we’re always happy to talk.</p>\r\n                    \r\n                    \r\n                    ');
INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(3, 'About Us ', 'aboutus', '<p>Everyone has a story. <b>CareerHub</b> also has its story, a story of passion and full dedication to execute a clear vision and help others.</p>\r\n<p>Before starting <b>CareerHub</b> we spent several years in diverse companies in different industries . One day we were talking about the things that kept us up all at night.</p>\r\n<p>Recruiting was #1 on everyone’s list: It was hard to reach the best candidates and the recruitment process was way too manual, time-consuming and expensive.</p>\r\n<p>We dreamt of web platforms that are already hooked up with leading job boards, social media and hiring agencies, featuring single-submission job postings and candidate targeted job ads.</p>\r\n<p>We imagined a life where you don’t need an entire day to read through a pile of CVs, where recruiting software lets you browse through candidates much like the social networks we use to keep in touch with our friends and contacts.</p>\r\n<p>We wanted to have the ability to shortlist candidates centrally in just one-click. Really crazy stuff like scheduling interviews with candidates, exchanging messages with candidates, unlimited collaborators, statistics and all sorts of magic stuff.</p>\r\n<p>The truly audacious among us said that we don’t really need those printed CVs with a summary of a person’s biography. They said that one day people will have “profiles” with this information online. That they would send us their “profile” data, which looks a lot like a CV. That we’d be able to “message” the candidates from inside the hiring software, and use “comments” to keep track of progress with each candidate. It would be as simple as using Facebook. </p>\r\n<p>The really crazy ones said this would be presented in a beautiful design that doesn’t look like business software at all – with intuitive controls, natural workflows and language that people understand. Friendly customer service with hiring expertise would coach you designing your recruitment campaigns. </p>\r\n<p>Just for laughs, some even dared to say that one day we wouldn’t need to use Excel anymore in hiring… LOL</p>\r\n<p>We imagined those small and medium businesses without a big HR department setting up a well-rounded recruiting process under 5 minutes. The software will be for free and they’d get the kind of recruiting system big companies pay big bucks for. Owners and managers saving hours every week, HR folks impressing the CEO, department managers not hating to update their interview notes, positions being filled faster and job advertising costs being slashed down.</p>\r\n<p>Yeah, right. Recruitment made easier…</p>\r\n<p>And yet, here we are. And here it is. The recruitment software we would want to use ourselves: simple, efficient and gorgeous. It has everything hiring managers need, and nothing they don’t. It does the boring stuff for them so they can focus on finding the right candidate. It’s built for teams. It’s on the cloud, it’s free, it doesn’t need a manual and it gets the job done.</p>\r\n'),
(4, 'FAQs', 'faqs', '                                                           <span style=\"font-size: medium;\"><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Why are your prices so much better than most dealers?</span><br><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">We offer better prices simply because of our low overheads. Industry Resources tell us that the Average new car dealer spends $50k in advertising, $50k in rent, $30k in paying salespeople commission, 30k to a sales manager, and the list goes on and on. We on the other hand spend virtually no money on advertising, we rely mostly on our past customers to spread the word. We do not have commissioned sales staff or behind the scenes sales Managers.</span></span><div><span style=\"font-size: medium;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><br></span><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">What is the condition of your vehicles?</span><br><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Our inventory is primarily 1-Owner Carfax Certified cars and truck. Most of our vehicles are Factory Certification Eligible.</span></span></div><div><span style=\"font-size: medium;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><br></span><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Where do you Source your used cars?&nbsp;</span><br><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Most of our vehicles are factory lease returns, factory program cars that are purchased directly from the leasing companies such as Lexus Financial, BMW Financial, Audi Financial, Mercedes Benz Credit, Honda and Acura Financial. Some vehicle are trade in to stores that carry mostly highline vehicles, such as an exotic dealer if they take a Toyota in trade would often wholesale to other dealers that specialize in that type of car. We also purchase 30 day and 60 day old vehicles from Toyota, BMW, Honda stores to such a name a few. All vehicles have been put thru rigorous safety inspections.</span></span></div><div><span style=\"font-size: medium;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><br></span><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">What kind of inspection do you perform on your used cars?&nbsp;</span><br><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">All of our vehicles go thru an extensive mechanical, safety inspection, We take pride in delivering cars that meet and exceed industry standards for reconditioning. Our used cars inspection are made available to our customers. So if you are considering a used car please ask for your complimentary safety inspection report.</span></span></div><div><span style=\"font-size: medium;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><br></span><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Can I order a used car?&nbsp;</span><br><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Yes, simply fill out our locater request and we will locate a vehicle that meets your requirements.</span></span></div><div><span style=\"font-size: medium;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><br></span><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">How much do you charge if I would like to locate a vehicle?</span><br><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">We do not have any locate fees, finder fees or any other fees associated with finding your dream car. You will get the same low price that we offer on all of our cars. Most of the time our prices are below Wholesale.</span></span></div><div><span style=\"font-size: medium;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><br></span><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">It is an incoming vehicle mean?</span><br><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">It indicates a vehicle that we have just acquired thru our dealer and wholesale network. It is in route to our dealership and will arrive typically 7-10 days after the purchase to allow for safety inspection, payment and title paperwork to be exchanged. We allow customers to be able to put a deposit to secure the vehicle.</span></span></div><div><span style=\"font-size: medium;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><br></span><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">What if I don\'t like the vehicle that I have a deposit for or I have purchased another vehicle?</span><br><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">All deposits taken for vehicle holds and/or purchases are non-refundable. If you decide to go with a different vehicle, the dealer may offer the option to switch the deposit to a different car at their own discretion.</span></span></div><div><span style=\"font-size: medium;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><br></span><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Can I have an Independent inspection performed?&nbsp;</span><br><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Yes we welcome any independent inspection to be performed on all of our vehicles.</span></span></div><div><span style=\"font-size: medium;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><br></span><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">What is a Price check?</span><br><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Price check service is a no obligation quote to compare the vehicle that you are in the market to purchase to see if you are really getting a good deal. There is no obligation to purchase from us or cost associated with this service. We will respond to price check inquires with a 24hour time frame, because the volume of request that we receive please be patient. Sending multiple inquires may cancel the original request. However different request may be submitted for different vehicles.</span></span></div><div><span style=\"font-size: medium;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><br></span><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Do you take trade ins? Even if I owe money on my trade in?</span><br><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Yes. We do take trades whether paid for or not.</span></span></div><div><span style=\"font-size: medium;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><br></span><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Can you help? I have negative Equity i.e. I owe more on my trade than it is worth.</span><br><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">When you have negative equity it is usually the combination of paying too much for the vehicle as well as carrying over from your last purchase. We are experts when it comes to getting you a clean slate. We offer you a below wholesale price to offset the negative equity on your vehicle so you can quality for a bank loan.</span></span></div><div><span style=\"font-size: medium;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><br></span><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">What can I expect for my trade in?</span><br><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">We use variety of sources to appraise trade ins. As a general rule please check kb trade in to determine the value of your trade in . We typically pay between fair and good as long as the condition of the vehicle is good to excellent. Also we maintain the right to give more or less depending on a test drive and other factors.</span></span></div><div><span style=\"font-size: medium;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><br></span><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Do you offer financing?</span><br><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Yes, we do offer financing.</span></span></div><div><span style=\"font-size: medium;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><br></span><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Why do you recommend appointments?</span><br><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Since we are different than the average lot where a vehicle sits 90-120 days on Average. We would like to make sure the vehicle is still available. Also sometime it may be an incoming vehicle, or a customer has put a deposit hold.</span></span></div><div><span style=\"font-size: medium;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><br></span></span></div><div><span style=\"font-size: medium;\"><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">How long does it take to locate a vehicle?</span><br><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Locate time frame has to do with your specific request. Since we work with our customers on a one on one basis, each request is very unique and can take a few days to several weeks. However our average time from order to delivery is 15 days. Some are faster and some are nearing 8 months or more to find that rare gem.</span></span></div><div><span style=\"font-size: medium;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><br></span><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">What if I am not satisfied with condition of the vehicle you locate?</span><br><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Your 100% satisfaction is our priority and goal that we strive for and if you are not satisfied with a vehicle you do not have to purchase it.</span></span></div><div><span style=\"font-size: medium;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><br></span><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">How can I initiate a locate request?</span><br><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Simply go to our website and fill a locate request and we will contact your to go over all the details.</span></span></div><div><span style=\"font-size: medium;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><br></span><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">How much do I have to pay?</span><br><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Our fees vary but typically range from $1250 to $1500</span></span></div><div><span style=\"font-size: medium;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><br></span><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Can I see the cars at the Auction?</span><br><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Auction rules prohibit us from taking retail customers to any auction.</span></span></div><div><br><h2 style=\"font-family: &quot;DDC Heading Font Face&quot;, Univers, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.25; color: rgba(0, 0, 0, 0.9); margin-top: 21px; margin-bottom: 10.5px; font-variant-ligatures: no-common-ligatures; background-color: rgb(244, 244, 244);\"><p></p></h2>\r\n                    \r\n                    \r\n                    </div>\r\n                    \r\n                    ');

-- --------------------------------------------------------

--
-- Table structure for table `tblreview`
--

CREATE TABLE `tblreview` (
  `id` int(11) NOT NULL,
  `review` varchar(256) NOT NULL,
  `review_id` int(11) NOT NULL,
  `date_posted` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblreview`
--

INSERT INTO `tblreview` (`id`, `review`, `review_id`, `date_posted`, `status`) VALUES
(1, 'Thank you for helping me set my future', 3, '2018-12-18 22:34:11', 0),
(2, 'Thank you. ', 1, '2018-10-17 15:14:43', 0),
(3, 'Thank you for helping me set my future', 4, '2018-10-17 15:15:37', 1),
(4, 'This is good', 2, '2018-11-21 02:43:49', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblseeker`
--

CREATE TABLE `tblseeker` (
  `id` int(11) NOT NULL,
  `fname` varchar(90) NOT NULL,
  `lname` varchar(90) NOT NULL,
  `title` varchar(90) NOT NULL,
  `email` varchar(100) NOT NULL,
  `category` int(11) NOT NULL,
  `postal_address` varchar(255) NOT NULL,
  `contact_no` varchar(90) NOT NULL,
  `dob` date NOT NULL,
  `highest_qualification` varchar(90) NOT NULL,
  `status` int(3) NOT NULL DEFAULT '0',
  `token` varchar(255) NOT NULL,
  `cv_name` varchar(255) DEFAULT NULL,
  `cv_data` varchar(90) NOT NULL,
  `reg` varchar(30) NOT NULL DEFAULT 'N',
  `password` varchar(255) NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `role` int(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblseeker`
--

INSERT INTO `tblseeker` (`id`, `fname`, `lname`, `title`, `email`, `category`, `postal_address`, `contact_no`, `dob`, `highest_qualification`, `status`, `token`, `cv_name`, `cv_data`, `reg`, `password`, `date_registered`, `role`) VALUES
(1, 'Araho', 'Baily', 'Mr', 'xyz@123.com', 1, 'Mukono', '+256 773 089 765', '1998-06-21', 'Degree', 0, '123c776f626b48adb5ee3bc2bae77661', 'application/pdf', 'cvFolder/3589-Lecture-N1.pdf', 'Y', 'eHh4eHgxMTExMSF0aGVfY3JhenlfZm94X2lzX3JlZF9hbmRfaGFzX2dyZXlfZXllcw==', '2019-06-12 22:47:33', 1),
(2, 'Charlese', 'Martin', 'Mr', 'martin@gmail.com', 2, 'Nakawa', '+230 775 676578', '2000-06-13', 'Degree', 0, '1435ffcc7cb3aa78a7592d72be4353fe', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'cvFolder/6064-pool.docx', 'Y', 'eHh4eHgxMTExMT90aGVfY3JhenlfZm94X2lzX3JlZF9hbmRfaGFzX2dyZXlfZXllcw==', '2019-06-13 00:40:01', 1),
(3, 'Vivian', 'molly', 'Mrs', 'molly@gmail.com', 1, 'Kawempe', '+256 777 999 000', '1995-06-06', 'Degree', 0, '295d98485e88e53faa95e1a880523a47', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'cvFolder/3018-pool.docx', 'Y', 'eHh4eHgxMTExMSF0aGVfY3JhenlfZm94X2lzX3JlZF9hbmRfaGFzX2dyZXlfZXllcw==', '2019-06-13 00:43:08', 1),
(4, 'Esther', 'Kica', 'Mrs', 'est@gmail.com', 1, 'Quatre Borne', '+256289349238', '1998-06-07', 'Degree', 0, '0d03bdec1007fcd4e7030bd972dd13ac', 'application/pdf', 'cvFolder/86757-amCharts.pdf', 'Y', 'MTIzNDU2Nzg5dGhlX2NyYXp5X2ZveF9pc19yZWRfYW5kX2hhc19ncmV5X2V5ZXM=', '2019-06-15 15:00:13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblskills`
--

CREATE TABLE `tblskills` (
  `sid` int(11) NOT NULL,
  `seeker_id` int(11) NOT NULL,
  `skills` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblskills`
--

INSERT INTO `tblskills` (`sid`, `seeker_id`, `skills`) VALUES
(1, 2, 'Coding'),
(2, 2, 'Communication'),
(3, 4, 'Coding'),
(4, 2, 'Good at team building'),
(5, 4, 'Communication'),
(6, 1, 'Communication'),
(7, 3, 'Computer Literate'),
(8, 3, 'Good at team building'),
(9, 2, 'Computer Literate');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(10) NOT NULL,
  `PostedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `SubscriberEmail` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `PostedDate`, `SubscriberEmail`) VALUES
(1, '2019-06-17 12:42:15', 'echongat33@gmail.com'),
(2, '2019-06-17 12:42:15', 'twe@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcompany`
--
ALTER TABLE `tblcompany`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbljobapplications`
--
ALTER TABLE `tbljobapplications`
  ADD PRIMARY KEY (`ids`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `seeker_id` (`seeker_id`);

--
-- Indexes for table `tbljobcategory`
--
ALTER TABLE `tbljobcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbljobs`
--
ALTER TABLE `tbljobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblreview`
--
ALTER TABLE `tblreview`
  ADD PRIMARY KEY (`id`),
  ADD KEY `review_id` (`review_id`);

--
-- Indexes for table `tblseeker`
--
ALTER TABLE `tblseeker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `tblskills`
--
ALTER TABLE `tblskills`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `seeker_id` (`seeker_id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcompany`
--
ALTER TABLE `tblcompany`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbljobcategory`
--
ALTER TABLE `tbljobcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbljobs`
--
ALTER TABLE `tbljobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblreview`
--
ALTER TABLE `tblreview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblseeker`
--
ALTER TABLE `tblseeker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblskills`
--
ALTER TABLE `tblskills`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbljobapplications`
--
ALTER TABLE `tbljobapplications`
  ADD CONSTRAINT `tbljobapplications_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `tbljobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbljobapplications_ibfk_2` FOREIGN KEY (`seeker_id`) REFERENCES `tblseeker` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbljobs`
--
ALTER TABLE `tbljobs`
  ADD CONSTRAINT `tbljobs_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `tblcompany` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbljobs_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `tbljobcategory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblreview`
--
ALTER TABLE `tblreview`
  ADD CONSTRAINT `tblreview_ibfk_1` FOREIGN KEY (`review_id`) REFERENCES `tblseeker` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblseeker`
--
ALTER TABLE `tblseeker`
  ADD CONSTRAINT `tblseeker_ibfk_1` FOREIGN KEY (`category`) REFERENCES `tbljobcategory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblskills`
--
ALTER TABLE `tblskills`
  ADD CONSTRAINT `tblskills_ibfk_1` FOREIGN KEY (`seeker_id`) REFERENCES `tblseeker` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `carrental`
--
CREATE DATABASE IF NOT EXISTS `carrental` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `carrental`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-06-18 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(1, 'test@gmail.com', 2, '22/06/2017', '25/06/2017', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', 1, '2017-06-19 20:15:43'),
(2, 'test@gmail.com', 3, '30/06/2017', '02/07/2017', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', 2, '2017-06-26 20:15:43'),
(3, 'test@gmail.com', 4, '02/07/2017', '07/07/2017', 'Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ', 0, '2017-06-26 21:10:06');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Maruti', '2017-06-18 16:24:34', '2017-06-19 06:42:23'),
(2, 'BMW', '2017-06-18 16:24:50', '2019-10-10 07:00:00'),
(3, 'Audi', '2017-06-18 16:25:03', '2019-10-23 16:24:25'),
(4, 'Nissan', '2017-06-18 16:25:13', '2019-10-03 22:23:00'),
(5, 'Toyota', '2017-06-18 16:25:24', '2019-10-02 01:18:38'),
(7, 'Marutiu', '2017-06-19 06:22:13', '2019-10-16 04:41:35');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Test Demo test demo																									', 'test@test.com', '8585233222');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Anuj Kumar', 'webhostingamigo@gmail.com', '2147483647', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2017-06-18 10:03:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <A href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</A>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>'),
(2, 'Privacy Policy', 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(3, 'About Us ', 'aboutus', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(11, 'FAQs', 'faqs', '																														<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address------Test &nbsp; &nbsp;dsfdsfds</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(1, 'anuj.lpu1@gmail.com', '2017-06-22 16:35:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'test@gmail.com', 'Test Test', '2017-06-18 07:44:31', 1),
(2, 'test@gmail.com', '\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam nibh. Nunc varius facilis', '2017-06-18 07:46:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(1, 'Anuj Kumar', 'demo@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2147483647', NULL, NULL, NULL, NULL, '2017-06-17 19:59:27', '2017-06-26 21:02:58'),
(2, 'AK', 'anuj@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '8285703354', NULL, NULL, NULL, NULL, '2017-06-17 20:00:49', '2017-06-26 21:03:09'),
(3, 'Anuj Kumar', 'webhostingamigo@gmail.com', 'f09df7868d52e12bba658982dbd79821', '09999857868', '03/02/1990', 'New Delhi', 'New Delhi', 'New Delhi', '2017-06-17 20:01:43', '2017-06-17 21:07:41'),
(4, 'Anuj Kumar', 'test@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '9999857868', '', 'New Delhi', 'Delhi', 'Delhi', '2017-06-17 20:03:36', '2017-06-26 19:18:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'ytb rvt89', 2, 'vtretrvet', 345345, 'Petrol', 3453, 7, 'knowledge_base_bg.jpg', '20170523_145633.jpg', 'phpgurukul-1.png', 'social-icons.png', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-19 11:46:23', '2019-10-29 11:38:56'),
(2, 'Test Demoy', 2, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam nibh. Nunc varius facilisis eros. Sed erat. In in velit quis arcu ornare laoreet. Curabitur adipiscing luctus massa. Integer ut purus ac augue commodo commodo. Nunc nec mi eu justo tempor consectetuer. Etiam vitae nisl. In dignissim lacus ut ante. Cras elit lectus, bibendum a, adipiscing vitae, commodo et, dui. Ut tincidunt tortor. Donec nonummy, enim in lacinia pulvinar, velit tellus scelerisque augue, ac posuere libero urna eget neque. Cras ipsum. Vestibulum pretium, lectus nec venenatis volutpat, purus lectus ultrices risus, a condimentum risus mi et quam. Pellentesque auctor fringilla neque. Duis eu massa ut lorem iaculis vestibulum. Maecenas facilisis elit sed justo. Quisque volutpat malesuada velit. ', 859, 'CNG', 2015, 4, 'car_755x430.png', 'looking-used-car.png', 'banner-image.jpg', 'about_services_faq_bg.jpg', '', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, '2017-06-19 16:16:17', '2017-06-21 16:57:11'),
(3, 'Lorem ipsum', 4, 'Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsum', 563, 'CNG', 2012, 5, 'featured-img-3.jpg', 'dealer-logo.jpg', 'img_390x390.jpg', 'listing_img3.jpg', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, NULL, '2017-06-19 16:18:20', '2017-06-20 18:40:11'),
(4, 'Lorem ipsum', 1, 'Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsum', 5636, 'CNG', 2012, 5, 'featured-img-3.jpg', 'featured-img-1.jpg', 'featured-img-1.jpg', 'featured-img-1.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, '2017-06-19 16:18:43', '2017-06-20 18:44:12'),
(5, 'ytb rvtr', 5, 'vtretrvet', 345345, 'Petrol', 3453, 7, 'car_755x430.png', NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-20 17:57:09', '2017-06-21 16:56:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `columbandb`
--
CREATE DATABASE IF NOT EXISTS `columbandb` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `columbandb`;

-- --------------------------------------------------------

--
-- Table structure for table `ay`
--

CREATE TABLE `ay` (
  `AY_ID` int(11) NOT NULL,
  `ACADYR` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `CLASS_ID` int(11) NOT NULL,
  `CLASS_CODE` varchar(30) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  `INST_ID` int(11) NOT NULL,
  `SYID` int(11) NOT NULL,
  `AY` varchar(11) NOT NULL,
  `DAY` varchar(20) NOT NULL,
  `C_TIME` varchar(11) NOT NULL,
  `IDNO` int(11) NOT NULL,
  `ROOM` varchar(30) NOT NULL DEFAULT 'NONE',
  `SECTION` varchar(30) NOT NULL DEFAULT 'NONE'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`CLASS_ID`, `CLASS_CODE`, `SUBJ_ID`, `INST_ID`, `SYID`, `AY`, `DAY`, `C_TIME`, `IDNO`, `ROOM`, `SECTION`) VALUES
(3, 'Spiral Filipino', 438, 1, 0, '2013-2014', 'MWF', '7:30-8:30', 0, 'Room01', 'A'),
(4, 'Spiral English', 439, 1, 0, '2013-2014', 'NONE', 'NONE', 0, 'NONE', 'NONE'),
(5, 'Spiral Science', 441, 6, 0, '2013-2014', 'NONE', 'NONE', 0, 'NONE', 'NONE'),
(6, 'Spiral T.L.E', 442, 6, 0, '2013-2014', 'NONE', 'NONE', 0, 'NONE', 'NONE'),
(7, 'Spiral A.P', 443, 6, 0, '2013-2014', 'NONE', 'NONE', 0, 'NONE', 'NONE'),
(8, 'Spiral Religion', 444, 6, 0, '2013-2014', 'NONE', 'NONE', 0, 'NONE', 'NONE'),
(9, 'Spiral EsP.', 445, 6, 0, '2013-2014', 'NONE', 'NONE', 0, 'NONE', 'NONE');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `COURSE_ID` int(11) NOT NULL,
  `COURSE_NAME` varchar(30) NOT NULL,
  `COURSE_LEVEL` int(11) NOT NULL DEFAULT '1',
  `COURSE_MAJOR` varchar(30) NOT NULL DEFAULT 'None',
  `COURSE_DESC` varchar(255) NOT NULL,
  `DEPT_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`COURSE_ID`, `COURSE_NAME`, `COURSE_LEVEL`, `COURSE_MAJOR`, `COURSE_DESC`, `DEPT_ID`) VALUES
(47, 'Grade 7', 7, '', 'Grade 7', 1),
(48, 'Grade 8', 8, '', 'Grade 8 ', 1),
(49, 'Grade 9', 9, '', 'Grade 9', 1),
(50, 'Grade 10', 10, '', 'Grade 10', 1),
(53, 'Grade 11', 11, '', 'Grade 11 ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DEPT_ID` int(11) NOT NULL,
  `DEPARTMENT_NAME` varchar(30) NOT NULL,
  `DEPARTMENT_DESC` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DEPT_ID`, `DEPARTMENT_NAME`, `DEPARTMENT_DESC`) VALUES
(1, 'High School', 'High School Department');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `GRADE_ID` int(11) NOT NULL,
  `IDNO` int(11) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  `INST_ID` int(11) NOT NULL,
  `SYID` int(30) NOT NULL,
  `FIRST` int(11) NOT NULL,
  `SECOND` int(11) NOT NULL,
  `THIRD` int(11) NOT NULL,
  `FOURTH` int(11) NOT NULL,
  `AVE` float NOT NULL,
  `DAY` varchar(30) NOT NULL,
  `G_TIME` time NOT NULL,
  `ROOM` varchar(30) NOT NULL,
  `REMARKS` text NOT NULL,
  `COMMENT` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`GRADE_ID`, `IDNO`, `SUBJ_ID`, `INST_ID`, `SYID`, `FIRST`, `SECOND`, `THIRD`, `FOURTH`, `AVE`, `DAY`, `G_TIME`, `ROOM`, `REMARKS`, `COMMENT`) VALUES
(1, 20004277, 438, 1, 0, 30, 67, 0, 0, 3.85, 'NONE', '00:00:00', '', 'Failed', ''),
(2, 20004277, 439, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(3, 20004207, 438, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(4, 20004207, 439, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(5, 20004180, 438, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(6, 20004180, 439, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(7, 20004180, 440, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(8, 20004180, 441, 6, 0, 60, 78, 80, 90, 77, 'NONE', '00:00:00', '', 'Passed', ''),
(9, 20004180, 442, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(10, 20004180, 443, 6, 0, 90, 89, 78, 90, 87, 'NONE', '00:00:00', '', 'Passed', ''),
(11, 20004180, 444, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(12, 20004180, 445, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(13, 20004180, 447, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(14, 20004623, 438, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(15, 20004623, 439, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(16, 20004623, 440, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(17, 20004623, 441, 6, 0, 80, 80, 78, 80, 80, 'NONE', '00:00:00', '', 'Passed', ''),
(18, 20004623, 442, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(19, 20004623, 443, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(20, 20004623, 444, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(21, 20004623, 445, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(22, 20004623, 447, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', '');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `INST_ID` int(30) NOT NULL,
  `INST_FULLNAME` varchar(255) NOT NULL,
  `INST_ADDRESS` varchar(255) NOT NULL,
  `INST_SEX` varchar(20) NOT NULL DEFAULT 'Male',
  `INST_STATUS` varchar(20) NOT NULL DEFAULT 'Single',
  `SPECIALIZATION` text NOT NULL,
  `INST_EMAIL` varchar(255) NOT NULL,
  `EMPLOYMENT_STATUS` varchar(40) NOT NULL DEFAULT 'Probationary'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`INST_ID`, `INST_FULLNAME`, `INST_ADDRESS`, `INST_SEX`, `INST_STATUS`, `SPECIALIZATION`, `INST_EMAIL`, `EMPLOYMENT_STATUS`) VALUES
(1, 'Joken Villanueva', 'Suay Himamaylan City', 'M', 'Single', 'Computer Etc.', 'joken000189561@gmail.com', 'Probationary'),
(2, 'Erick jason Batuto', 'Kabanakalan City', 'M', 'Married', 'Computer ekc...', 'ejbatuto@hotmail.com', 'Regular'),
(3, 'Joel Bagolcol', 'KCC-TC', 'M', 'Single', 'Automotive', 'joel@yahoo.com', 'Probationary'),
(5, 'Allan', 'No whar', 'M', 'Single', 'Computer ekc...', 'allan@yahoo.com', 'Regular'),
(6, 'sdfsdfsdg', 'dfdf', 'M', 'Single', 'sdfsdf', 'joken@gmail.com', 'dfsdf');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `YR_ID` int(11) NOT NULL,
  `LEVEL` varchar(30) NOT NULL,
  `LEVEL_DESCRIPTION` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `major`
--

CREATE TABLE `major` (
  `MAJOR_ID` int(11) NOT NULL,
  `MAJOR` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `major`
--

INSERT INTO `major` (`MAJOR_ID`, `MAJOR`) VALUES
(1, 'English'),
(2, 'General'),
(3, 'Marketing Management'),
(4, 'Financial Management'),
(5, 'Filipino'),
(6, 'Philosophy'),
(7, 'Math');

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `PHOTO_ID` int(11) NOT NULL,
  `FILENAME` text NOT NULL,
  `TYPE` varchar(30) NOT NULL,
  `SIZE` int(30) NOT NULL,
  `CAPTION` varchar(255) NOT NULL,
  `IDNO` int(11) NOT NULL,
  `PRIMARY` varchar(20) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `ROOM_ID` int(11) NOT NULL,
  `ROOM_NAME` varchar(30) NOT NULL,
  `ROOM_DESC` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`ROOM_ID`, `ROOM_NAME`, `ROOM_DESC`) VALUES
(0, 'Room01', 'Room01'),
(2, 'Room02', 'Room 02'),
(4, 'Room 03', 'Room 03');

-- --------------------------------------------------------

--
-- Table structure for table `schoolyr`
--

CREATE TABLE `schoolyr` (
  `SYID` int(11) NOT NULL,
  `AY` varchar(30) NOT NULL,
  `SEMESTER` varchar(20) NOT NULL,
  `COURSE_ID` int(11) NOT NULL,
  `IDNO` int(30) NOT NULL,
  `CATEGORY` varchar(30) NOT NULL DEFAULT 'ENROLLED',
  `DATE_RESERVED` datetime NOT NULL,
  `DATE_ENROLLED` datetime NOT NULL,
  `STATUS` varchar(30) NOT NULL DEFAULT 'New'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schoolyr`
--

INSERT INTO `schoolyr` (`SYID`, `AY`, `SEMESTER`, `COURSE_ID`, `IDNO`, `CATEGORY`, `DATE_RESERVED`, `DATE_ENROLLED`, `STATUS`) VALUES
(1, '2013-2014', 'First', 47, 20004277, 'ENROLLED', '2014-03-12 02:10:03', '0000-00-00 00:00:00', 'New'),
(2, '2013-2014', 'First', 47, 20004207, 'ENROLLED', '2014-03-12 02:32:19', '0000-00-00 00:00:00', 'New'),
(3, '2014-2015', 'First', 48, 20004277, 'ENROLLED', '2014-03-13 03:18:56', '0000-00-00 00:00:00', 'Continuing'),
(4, '2013-2014', 'First', 47, 20004180, 'ENROLLED', '2014-03-24 08:28:35', '0000-00-00 00:00:00', 'New'),
(5, '2013-2014', 'First', 47, 20004623, 'ENROLLED', '2014-03-24 09:16:15', '0000-00-00 00:00:00', 'New');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `SEM_ID` int(11) NOT NULL,
  `SEM` varchar(15) NOT NULL DEFAULT 'First'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`SEM_ID`, `SEM`) VALUES
(1, 'First'),
(2, 'Second'),
(3, 'Summer');

-- --------------------------------------------------------

--
-- Table structure for table `studentsubjects`
--

CREATE TABLE `studentsubjects` (
  `STUDSUBJ_ID` int(11) NOT NULL,
  `IDNO` int(11) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  `LEVEL` int(11) NOT NULL,
  `SEMESTER` varchar(30) NOT NULL,
  `SY` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentsubjects`
--

INSERT INTO `studentsubjects` (`STUDSUBJ_ID`, `IDNO`, `SUBJ_ID`, `LEVEL`, `SEMESTER`, `SY`) VALUES
(6, 20004207, 11, 1, 'First', '2013-2014'),
(8, 20004207, 13, 1, 'First', '2013-2014'),
(9, 20004207, 14, 1, 'First', '2013-2014'),
(10, 20004207, 15, 1, 'First', '2013-2014'),
(13, 20004277, 13, 1, 'First', '2013-2014'),
(14, 20004277, 14, 1, 'First', '2013-2014'),
(15, 20004277, 15, 1, 'First', '2013-2014');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `SUBJ_ID` int(11) NOT NULL,
  `SUBJ_CODE` varchar(30) NOT NULL,
  `SUBJ_DESCRIPTION` varchar(255) NOT NULL,
  `UNIT` int(2) NOT NULL,
  `PRE_REQUISITE` varchar(30) NOT NULL DEFAULT 'None',
  `COURSE_ID` int(11) NOT NULL,
  `AY` varchar(30) NOT NULL,
  `SEMESTER` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`SUBJ_ID`, `SUBJ_CODE`, `SUBJ_DESCRIPTION`, `UNIT`, `PRE_REQUISITE`, `COURSE_ID`, `AY`, `SEMESTER`) VALUES
(438, 'Spiral Filipino', 'Filipino for Grade 7 - Spiral Filipino', 3, '', 47, '2013-2014', 'First'),
(439, 'Spiral English', 'English for Grade 7', 3, '', 47, '2013-2014', 'First'),
(440, 'Spiral Mathematics', 'Mathematics for Grade 7 - Spiral Math', 3, '', 47, '2013-2014', 'First'),
(441, 'Spiral Science', 'Science for Grade 7', 3, '', 47, '2013-2014', 'First'),
(442, 'Spiral T.L.E', 'T.L.E for Grade 7', 3, '', 47, '2013-2014', 'First'),
(443, 'Spiral A.P', 'Araling Panlipunan for Grade 7', 3, '', 47, '2013-2014', 'First'),
(444, 'Spiral Religion', 'rekligion for Grade 7', 3, '', 47, '2013-2014', 'First'),
(445, 'Spiral EsP.', 'EsP. for Grade 7', 3, '', 47, '2013-2014', 'First'),
(446, 'MAPEH', 'MAPEH for Grade 8 ', 3, '', 48, '2013-2014', 'First'),
(447, 'MAPEH', 'MAPEH for Grade 7', 3, '', 47, '2013-2014', 'First'),
(448, 'Religion', 'Religion for Grade 8', 3, '', 48, '2013-2014', 'First'),
(449, 'Spiral Filipino', 'Filipino for Grade 8 ', 3, '', 48, '2013-2014', 'First'),
(450, 'Spiral English', 'English for Grade 8', 3, '', 48, '2013-2014', 'First'),
(451, 'Spiral Mathematics', 'Mathematics for Grade 8 ', 3, '', 48, '2013-2014', 'First'),
(452, 'Spiral Science', 'Science for Grade ', 3, '', 48, '2013-2014', 'First'),
(453, 'Spiral T.L.E.', 'T.L.E for Grade 7 ', 3, '', 48, '2013-2014', 'First'),
(454, 'Spiral A.P.', 'Araling Panlipunan for Grade 8', 3, '', 48, '2013-2014', 'First'),
(455, 'Spiral EsP.', 'EsP. for Grade 7', 3, '', 48, '2013-2014', 'First'),
(457, 'Spiral Filipino', 'Filipino for Grade 9', 3, '', 49, '2013-2014', 'First'),
(458, 'Spiral English', 'English for Grade 9', 3, '', 49, '2013-2014', 'First'),
(459, 'Spiral Mathematics', 'Mathematics for Grade 9', 3, '', 49, '2013-2014', 'First'),
(460, 'Spiral Science', 'Science for Grade 9', 3, '', 49, '2013-2014', 'First'),
(461, 'Spiral A.P.', 'Araling Panlipunan for Grade 9', 3, '', 49, '2013-2014', 'First'),
(462, 'Spiral T.L.E.', 'T.L.E for Grade 9', 3, '', 49, '2013-2014', 'First'),
(463, 'Spiral MAPEH', 'MAPEH for Grade 9', 3, '', 49, '2013-2014', 'First'),
(464, 'Values Education', 'Values Education for Grade 9', 3, '', 49, '2013-2014', 'First'),
(465, 'Computer', 'Computer for grade 9', 3, '', 49, '2013-2014', 'First'),
(466, 'Religion IV', 'Religion for Grade 10', 3, '', 50, '2013-2014', 'First'),
(467, 'Spiral Filipino', 'Filipino for Grade 10', 3, '', 50, '2013-2014', 'First'),
(468, 'Spiral Mathematics', 'Mathematics for Grade 10', 3, '', 50, '2013-2014', 'First'),
(469, 'Spiral Science', 'Science for Grade 10', 3, '', 50, '2013-2014', 'First'),
(471, 'Spiral T.L.E.', 'T.L.E for Grade 10', 3, '', 50, '2013-2014', 'First'),
(472, 'Spiral MAPEH', 'MAPEH for Grade 10', 3, '', 50, '2013-2014', 'First'),
(473, 'Values Education', 'Values Education for Grade 10', 3, '', 50, '2013-2014', 'First'),
(474, 'CAT', 'Citizens Advancement Training', 3, '', 50, '2013-2014', 'First'),
(475, 'Computer', 'Computer for grade 10', 3, '', 50, '2013-2014', 'First'),
(476, 'hjgjhggh', 'gj', 3, '', 51, '2013-2014', 'First');

-- --------------------------------------------------------

--
-- Table structure for table `tblrequirements`
--

CREATE TABLE `tblrequirements` (
  `REQ_ID` int(30) NOT NULL,
  `NSO` varchar(5) NOT NULL DEFAULT 'no',
  `BAPTISMAL` varchar(5) NOT NULL DEFAULT 'no',
  `ENTRANCE_TEST_RESULT` varchar(5) NOT NULL DEFAULT 'no',
  `MARRIAGE_CONTRACT` varchar(5) NOT NULL DEFAULT 'no',
  `CERTIFICATE_OF_TRANSFER` varchar(5) NOT NULL DEFAULT 'no',
  `IDNO` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblrequirements`
--

INSERT INTO `tblrequirements` (`REQ_ID`, `NSO`, `BAPTISMAL`, `ENTRANCE_TEST_RESULT`, `MARRIAGE_CONTRACT`, `CERTIFICATE_OF_TRANSFER`, `IDNO`) VALUES
(20, 'Yes', 'Yes', 'Yes', 'No', 'No', 20004277),
(21, 'Yes', 'Yes', 'Yes', 'No', 'No', 20004207),
(22, 'Yes', 'Yes', 'Yes', 'No', 'No', 20004180),
(23, 'Yes', 'Yes', 'Yes', 'No', 'No', 20004425),
(24, 'Yes', 'Yes', 'Yes', 'No', 'No', 20002251),
(25, 'Yes', 'Yes', 'Yes', 'No', 'No', 20002838),
(26, 'Yes', 'Yes', 'Yes', 'No', 'No', 20004623),
(27, 'Yes', 'Yes', 'Yes', 'No', 'No', 2001497),
(28, 'Yes', 'Yes', 'No', 'No', 'No', 20001057),
(29, 'Yes', 'Yes', 'Yes', 'No', 'No', 20004407),
(30, 'Yes', 'Yes', 'Yes', 'No', 'Yes', 20004749),
(31, 'Yes', 'Yes', 'No', 'No', 'No', 20001484),
(32, 'Yes', 'Yes', 'Yes', 'No', 'Yes', 20003333),
(33, 'Yes', 'Yes', 'Yes', 'No', 'No', 20004510),
(34, 'Yes', 'Yes', 'Yes', 'No', 'No', 20001779),
(35, 'Yes', 'Yes', 'No', 'No', 'No', 20001482),
(36, 'Yes', 'Yes', 'Yes', 'No', 'Yes', 20001937),
(37, 'Yes', 'Yes', 'Yes', 'No', 'No', 20001648),
(38, 'Yes', 'Yes', 'Yes', 'No', 'Yes', 20002408),
(39, 'Yes', 'Yes', 'Yes', 'No', 'Yes', 20005936),
(40, 'No', 'No', 'No', 'No', 'No', 20001550),
(41, 'Yes', 'Yes', 'Yes', 'No', 'No', 20002270),
(42, 'Yes', 'Yes', 'Yes', 'No', 'No', 20001932),
(43, 'Yes', 'Yes', 'Yes', 'No', 'Yes', 20001498),
(45, 'Yes', 'Yes', 'Yes', 'No', 'Yes', 20001503),
(46, 'Yes', 'Yes', 'Yes', 'No', 'No', 20001925),
(47, 'Yes', 'Yes', 'Yes', 'No', 'No', 20001658),
(48, 'Yes', 'No', 'No', 'No', 'No', 20001550),
(49, 'Yes', 'Yes', 'Yes', 'No', 'No', 20001957),
(50, 'No', 'No', 'No', 'No', 'No', 20001456),
(51, 'Yes', 'Yes', 'Yes', 'No', 'Yes', 20001673),
(52, 'Yes', 'Yes', 'Yes', 'No', 'Yes', 20001557),
(53, 'Yes', 'Yes', 'Yes', 'No', 'No', 20002311),
(54, 'Yes', 'Yes', 'Yes', 'No', 'Yes', 20001742),
(55, 'Yes', 'Yes', 'Yes', 'No', 'Yes', 20002106),
(56, 'Yes', 'Yes', 'Yes', 'No', 'No', 20001853),
(57, 'Yes', 'Yes', 'No', 'No', 'Yes', 20001645),
(58, 'Yes', 'Yes', 'No', 'Yes', 'No', 123456);

-- --------------------------------------------------------

--
-- Table structure for table `tblstuddetails`
--

CREATE TABLE `tblstuddetails` (
  `DETAIL_ID` int(11) NOT NULL,
  `FATHER` varchar(255) NOT NULL,
  `FATHER_OCCU` varchar(255) NOT NULL,
  `MOTHER` varchar(255) NOT NULL,
  `MOTHER_OCCU` varchar(255) NOT NULL,
  `BOARDING` varchar(5) NOT NULL DEFAULT 'no',
  `WITH_FAMILY` varchar(5) NOT NULL DEFAULT 'yes',
  `GUARDIAN` varchar(255) NOT NULL,
  `GUARDIAN_ADDRESS` varchar(255) NOT NULL,
  `OTHER_PERSON_SUPPORT` varchar(255) NOT NULL,
  `ADDRESS` text NOT NULL,
  `IDNO` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstuddetails`
--

INSERT INTO `tblstuddetails` (`DETAIL_ID`, `FATHER`, `FATHER_OCCU`, `MOTHER`, `MOTHER_OCCU`, `BOARDING`, `WITH_FAMILY`, `GUARDIAN`, `GUARDIAN_ADDRESS`, `OTHER_PERSON_SUPPORT`, `ADDRESS`, `IDNO`) VALUES
(20, 'Walter Da-anoy', 'Employee', 'Jessielyn Da-anoy', 'Housewife', 'No', 'No', '', '', '', '', 20004277),
(21, 'Mario P. Amparado', 'OFW', 'Yolly D. Odasco', 'Housewife', 'Yes', 'No', 'Domingga Gomez', '', '', '', 20004207),
(22, 'robert P. ferrer', 'fisherman', 'josephene b. ferrer', 'Housewife', 'Yes', 'Yes', 'josephene b ferrer', 'brgy.cayhagan,sipalay city,neg.occ.', 'sister', '', 20004180),
(23, 'Renelio Pintuan', 'Driver', 'Nanette Pintuan', 'OFW', 'No', 'Yes', 'Ma. Melca Jaranilla', 'Coloso St. Kabankalan City', '', '', 20004425),
(24, '', '', 'dionalita apawan', 'housewife', 'No', 'No', 'sofronia apawan', 'adela st. brgy. 1', '', '', 20002251),
(25, 'Pablito Vicente', 'Laborer', 'Crislie Vicente', 'Laborer', 'No', 'Yes', 'Angelo Lopez', 'Coloso Subd. Kabankalan City', '', '', 20002838),
(26, 'Luis Balico', 'N/A', 'Leonisa Balico', 'N/A', 'No', 'Yes', 'Mary Ann Balico', 'Brgy Isidro Village, Talubangi Kabankalan City', 'N/A', '', 20004623),
(27, 'Panfilo Catalan Buendia', 'Vendors', 'Gloria Aspan Buendia', 'Vendors', 'Yes', 'Yes', 'Mr. and Mrs. Gloria Buendia', 'Brgy. Tapi, Kabankalan City', '', '', 2001497),
(28, 'Ramar salazar', 'hair stylist', 'Kathryn Lucy salazar', 'none', 'No', 'Yes', 'DR. MIlagros Aurea Sabidalas ', '12 Rizal St. kabankalan city', '', '', 20001057),
(29, 'Ronald Martisano', 'laxborer', 'Jean Martisano', 'Housewife', 'No', 'Yes', '', '', '', '', 20004407),
(30, 'Rollen Gealon', 'Laborer', 'Marife Gealon', 'Housewife', 'No', 'Yes', 'Mr. & Mrs Rollen Gealon', 'Brgy.2 Ilog, Neg.Occ', '', '', 20004749),
(31, 'James Andrew Benedicto', 'Cook', 'Ma. Sheila Benedicto', 'DH', 'No', 'Yes', '', '', '', '', 20001484),
(32, 'Leve Voluntate', 'Farmer', 'Lerma Voluntate', 'Deceased', 'No', 'Yes', '', '', 'Mr.Von Martir', 'Bacolod City', 20003333),
(33, 'Rudy B. Magada, Jr', 'Fish Dealer', 'Mary I. Magada', 'Housewife', 'No', 'Yes', '', '', 'Ezperanza Magada', 'Libon, Tuyom, Cauayan, Negros Occidental', 20004510),
(34, 'Dionisio C. Herrera', 'Farmer', 'Rubylan O. Herrera', 'plane housewife', 'No', 'Yes', 'Dionisio c. Herrera', 'Mohon Brgy1 . kab city neg occ', '', '', 20001779),
(35, 'Adriano Bayog', 'Farmer', 'Mamerna Dulana', 'housekeeper', 'Yes', 'No', 'Seminary Fathers', 'Kabankalan City', 'Parish', 'La Castellana', 20001482),
(36, 'Ruben J. Principe', '', 'Evelina Gumawa Principe', '', 'No', 'No', '', '', '', '', 20001937),
(37, 'Deceased', 'Deceased', 'Lorna Bandolos', 'Housewife', 'No', 'Yes', '', 'Lorna Bandolos', '', 'Brgy Dancalan Ilog Negros Occidental', 20001648),
(38, 'AMBROCIO SERION', 'FARMER', 'NORMENDA SERION', 'HOUSE WIFE', 'No', 'No', 'JONALYN BUGALON', 'Kabankalan City', 'JONALYN BUGALON', 'KABANKALAN CITY', 20002408),
(39, 'no', '', 'Merlita Macurio', 'housewife', 'No', 'No', 'Gerom Bello', 'Brgy,1 fzo subd.', '', '', 20005936),
(40, 'b', '', '', '', 'No', 'No', '', '', '', '', 20001550),
(41, 'Mr. Edgar C. Macario', 'Farmer', 'Mrs. Hilda F. Macario', 'Housewife', 'No', 'Yes', 'Mrs. Imelda M. Gatoc', 'Cabintagan, Brgy. Linao Kabankalan City, Negros Occidental', 'Mr. Robert C. Macario', 'Brgy. Salong Kabankalan City', 20002270),
(42, 'Virgilio Puyogao', 'Carpenter', 'Angelica Puyogao', 'Housewife', 'No', 'Yes', 'Virgilio Puyogao', 'Dancalan, Ilog, Negros Occidental', 'Annabel Puyogao', 'Dancalan, Ilog, Negros Occidental', 20001932),
(43, 'William Bulgado', 'Driver', 'Lolita Bulgado', 'Housewife', 'Yes', 'Yes', 'William Bulgado', 'magsaysay tabu ilog neg.occ', 'none', 'none', 20001498),
(45, 'Ricardo Tayoba Cabiten', 'Farmer', 'Nelly Cuenca Cabiten', 'Housewife', 'No', 'Yes', 'Nancy Cuenca Cabiten', 'Mambugsay, Cauayan, Negros Occidental', 'Romar Cuenca Cabiten', 'Mambugsay, Cauayan, Negros Occidental', 20001503),
(46, 'Joenarie CastaÃ±o', 'Laborer', 'Jeanly CastaÃ±o', 'Housewife', 'No', 'Yes', 'Melinde CastaÃ±o', 'Brgy. Daan Banua, Kabankalan City', 'None', 'N.A', 20001925),
(47, 'Alex Flores', 'Carpenter', 'Nelfa L. Flores', 'Brgy. Custodian', 'No', 'Yes', 'Nelfa L. Flores', 'Brgy. Camugao, Kabankalan City', 'Maria Elena T. Flores', 'Brgy. Camugao, Kabankalan City', 20001658),
(48, 'BENIGNO B. CORTEZ', 'FARMER', 'TERESITA P. CORTEZ', 'HOUSE WIFE', 'Yes', 'No', 'BENIGNO B. CORTEZ', 'TABUGON,kABANKALAN CITY', 'NONE', 'NONE', 20001550),
(49, 'Samuel Daulong', 'Construction Worker', 'Mariles Daulong', 'Office employee', 'Yes', 'Yes', 'Mariles Daulong', 'Caliling,Cauayan Negros Occidental', 'Henry L. Jordan', 'Brgy. Binicuil, Kabankalan City', 20001957),
(50, 'Diosdado Arillo', 'Employee', 'Jesusa Arillo', 'House Wife', 'Yes', 'No', 'Nilda Jestopa', 'Nilda Jestopa', '', 'Adela St. Kabankalan City', 20001456),
(51, 'Jesus M. Gamala', 'Farmer', 'Carmen N. Gamala', 'Housewife', 'Yes', 'No', 'Saro Yana', 'Bonifacio St.Kabankalan City', 'Jeza Gamala', 'DasmariÃ±as Cavite', 20001673),
(52, 'Raul D. Deanon', 'Driver', 'Jonah O. Deanon', 'Housewife', 'No', 'Yes', 'Jonah O. Deanon', 'Dancalan Ilog, Neg, Occ', '', '', 20001557),
(53, 'Ernesto Elijan', 'Welder', 'Emilia Elijan', 'Vendor', 'No', 'Yes', 'Ernalyn Elijan Jamon', 'Pinaguinpinan, KAbankalan City', 'Erline Elijan', 'Saudi Rihad', 20002311),
(54, 'Edward E. Geria', 'Seaman', 'Nilfa G. Geria', 'Agriculturist', 'No', 'Yes', 'Nilfa G.Geria', 'Brgy.Guiljungan Cauayan Negros Occidental', '', '', 20001742),
(55, 'Benjie Melanio Sr.', 'Farmer', 'Delia Melanio', 'Housewife', 'No', 'Yes', 'Benjie Melanio', 'Brgy. Linao', '', '', 20002106),
(56, 'Jose Romel T. Silleva', 'Carpenter', 'Daisy O. Silleva', 'House Wife', 'No', 'Yes', 'Daisy O. Silleva', 'Mapait, Su-ay, Himamaylan City, Negros Occidental', 'Romsdaen O. SIlleva', 'iloilo City', 20001853),
(57, 'Dionisio espadero', 'Farming', 'Rosita Espadero', 'House wife', 'No', 'Yes', 'Erlinda Guinson', 'Tapi kab City', 'Sister', 'Tapi kab City', 20001645),
(58, '', '', '', '', 'No', 'No', '', '', '', '', 123456);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `S_ID` int(11) NOT NULL,
  `IDNO` int(20) NOT NULL,
  `FNAME` varchar(40) NOT NULL,
  `LNAME` varchar(40) NOT NULL,
  `MNAME` varchar(40) NOT NULL,
  `SEX` varchar(10) NOT NULL DEFAULT 'Male',
  `BDAY` date NOT NULL,
  `BPLACE` text NOT NULL,
  `STATUS` varchar(30) NOT NULL,
  `AGE` int(30) NOT NULL,
  `NATIONALITY` varchar(40) NOT NULL,
  `RELIGION` varchar(255) NOT NULL,
  `CONTACT_NO` varchar(40) NOT NULL,
  `HOME_ADD` text NOT NULL,
  `EMAIL` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`S_ID`, `IDNO`, `FNAME`, `LNAME`, `MNAME`, `SEX`, `BDAY`, `BPLACE`, `STATUS`, `AGE`, `NATIONALITY`, `RELIGION`, `CONTACT_NO`, `HOME_ADD`, `EMAIL`) VALUES
(17, 20004277, 'JESTERRAMY', 'DA-ANOY ', 'PATETE', 'F', '1995-06-14', 'Butuan City', 'Single', 19, 'Filipino', 'roman catholic', '09099754195', 'Brgy Camugao Kabankalan City', 'jesterramy14@yahoo.com'),
(18, 20004207, 'LHENYL GRACE', 'AMPARADO', 'ODASCO', 'F', '1995-08-27', 'Lancaan Dasmarinas Cavite', 'Single', 18, 'Filipino', 'roman catholic', '09263621995', 'Yao Yao Cauayan negros Occidental', 'lhenylgraceamparado@yahoo.com'),
(19, 20004180, 'MYLENE', 'FERRER', 'BALUCAN', 'F', '1972-05-22', 'brgy.cayhagan,sipalay city,neg.occ.', 'Single', 18, 'Filipino', 'roman catholic', '091071717257', 'brgy.cayhagan,sipalay city,neg.occ.', 'macaferrer@yahoo.com'),
(20, 20004425, 'JOHN KENNETH', 'PINTUAN', 'JARANILLA', 'M', '1996-05-14', 'PGH Manila', 'Single', 17, 'Filipino', 'Roman Catholic', '09305373831', 'Villa San jose Brgy. 6 Kabankalan City Negros Occidental', 'Pintuan123@yahoo.com'),
(21, 20002251, 'ADRIAN', 'APAWAN', 'ELLORAN', 'M', '1995-10-26', 'bacolod city', 'Single', 18, 'filipino', 'roman catholic', '09128214525', 'adela st. brgy.1', 'pidska_dian@yahoo.com'),
(22, 20002838, 'MARK ANTHONY', 'VICENTE', 'TITONG', 'M', '1995-10-19', 'Kabankalan Cit y', 'Single', 18, 'Filipino', 'Roman Catholic', '+639071564380', '', 'mav.makeu_19@ymail.com'),
(23, 20004623, 'SHARAH MAE', 'BALICO', 'PILLONES', 'F', '1990-11-01', 'Tagoloan Misamis Oriental', 'Single', 23, 'Filipino', 'Catholic', '09216230993', 'Brgy Isidro Village, Talubangi Kabankalan City', 'Sharahmae_balico@yahoo.com'),
(24, 2001497, 'RAFFY', 'BUENDIA', 'RENDON', 'M', '1993-04-13', 'Tapi, Kabankalan City', 'Single', 20, 'Filipino', 'Roman Catholic', '09483774901', 'Brgy. Tapi, Kabankalan City, Negros Occidental', 'Zieken@yahoo.com'),
(25, 20001057, 'EVAN LLOYD', 'SALAZAR', 'AYALIN', 'M', '1995-05-17', 'Kabankalan City', 'Single', 18, 'filipino', 'roman catholic', '09173077451', '12 rizal St.kabankalan CIty', 'Evanlloydsalazar@yahoo.com'),
(26, 20004407, 'JOHN MARK', 'MARTISANO', 'DEPRA', 'M', '1993-06-17', 'Ilog, Neg. Occ', 'Single', 20, 'Pilipino', 'Catholic', '09469080812', 'So. Malabong Andulauan Ilog, Neg. Occ.', 'freestyle05@yahoo.com'),
(27, 20004749, 'JAMAICA JAIRAH', 'GEALON', 'DELA CRUZ', 'F', '1994-01-12', 'Brgy.2 Ilog,Neg.Occ.', 'Single', 19, 'Filipino', 'Roman Catholic', '09089917220', 'Brgy.2 Ilog Negros Occidental', 'gealon12@yahoo.com.ph'),
(28, 20001484, 'JAMES ANGELO', 'BENEDICTO', 'GARANGANAO', 'M', '1993-11-18', 'Bacolod City', 'Single', 20, 'Filipino', 'Catholic', '09305446790', 'Dancalan Ilog, Negros Occidental', 'jamesangelobenedicto@yahoo.com'),
(29, 20003333, 'JENEBIE', 'VOLUNTATE', 'TABUCON', 'F', '1991-06-17', 'Kabankalan', 'Single', 22, 'Filipino', 'Roman Catholic', '09102247024', 'Brgy.Camansi,Kabankalan City,Neg.Occ.', 'jhen1704_cute@yahoo.com'),
(30, 20004510, 'RUDY', 'MAGADA, I', 'ITONA', 'M', '1995-02-05', 'Calumpang, Cauayan, Negros Occidental', 'Single', 18, 'Filipino', 'Roman Catholic', '09106910482', 'Libon, Tuyom, Cauayan, Negros Occidental', 'magadarudy@yahoo.com'),
(31, 20001779, 'JOEVEL', 'HERRERA', 'GONZALES', 'M', '1993-05-16', 'Negros Occidental', 'Single', 20, 'Filipino', 'Roman Catholic', '09093789858', 'Brgy 1,Kab city ,Neg Occ', 'herrerajovel@yahoo.com'),
(32, 20001482, 'ALDREN', 'BAYOG', 'DULANA ', 'M', '1993-12-27', 'La Castellana', 'Single', 20, 'Filipino', 'Roman Catholic', '09077898435', 'Kabankalan City', 'Aldz_bayog@yahoo.com'),
(33, 20001937, 'MERRY GRACE', 'PRINCIPE', 'GUMAWA', 'F', '1988-03-12', 'Candoni', 'Single', 25, 'Filipino', 'Roman Catholic', '09094397440', 'Pabera St.Brgy.East,Candoni, Negros Occidental', 'merrygraceprincipe@yahoo.com'),
(34, 20001648, 'SHIELA MARIE', 'BANDOLOS', 'TADAYA', 'F', '1990-08-21', 'Brgy. Dancalan Ilog Negros Occidental', 'Single', 22, 'Filipino', 'Roman Catholic', '09095596773', 'Brgy. Dancalan Ilog Negros Occidental', 'Marie_Bandolos@yahoo.com'),
(35, 20002408, 'ANALYN', 'SERION', 'ONLAGADA', 'F', '1993-10-30', 'Bry. TAMPALON KABANKALAN CITY', 'Single', 20, 'Filipino', 'Catholic', '09476154838', 'Kabankalan City', 'Analynserion@yahoo.com'),
(36, 20005936, 'JEAN', 'MACURIO', 'GONDAO', 'F', '1994-10-29', 'Brgy.Bantayan', 'Single', 19, 'Filipino', 'Baptist', '09125341710', 'Brgy. Bantayan Kabankalan City', 'jean_29_jake@yahoo.com'),
(37, 20001550, 'BENIGNO', 'CORTEZ', 'LACPAO', 'M', '1992-02-03', 'DUMAGUETE', 'Single', 21, 'FILIPINO', 'BAPTIST', '09097313999', 'TABUGON,KABANKALAN CITY,NEGROS OCCIDENTAL', 'deadlyjay_23@yahoo.com'),
(38, 20002270, 'ARHIL JUN', 'MACARIO', 'FERNANDEZ', 'M', '1993-06-12', 'Cabintagan, Brgy. Linao', 'Single', 20, 'Filipino', 'Roman Catholic', '09489776185', 'Cabintagan, Brgy. Linao Kabankalan City, Negros Occidental', 'elehra_jun_09@yahoo.com'),
(39, 20001932, 'ANA MAE', 'PUYOGAO', 'LACSON', 'F', '1992-10-11', 'Dancalan, Ilog, Neg. Occ', 'Single', 21, 'Filipino', 'Baptist', '09079002850', 'Brgy. Dancalan, Ilog, Negros Occidental', 'puyogaoanamae@yahoo.com'),
(40, 20001498, 'GINA', 'BULGADO', 'MALABAGO', 'F', '1992-06-28', 'Magsaysay tabu ilog ', 'Single', 21, 'Filipino', 'Roman Catholic', '0912-981-4177', 'magsaysay tabu,ilog negros occidental', 'carlghin_52@yahoo.com'),
(42, 20001503, 'RHEA MAY', 'CABITEN', 'CUENCA', 'F', '1992-05-01', 'Mambugsay, Cauayan, Negros Occidental', 'Single', 21, 'Filipino', 'Roman Catholic', '09097862920', 'Mambugsay, Cauayan, Negros Occidental', 'rean7901@gmail.com'),
(43, 20001925, 'JOJEAN', 'CASTAÃ±O', 'SOBERANO', 'F', '1994-09-27', 'Silay City', 'Single', 19, 'Filipino', 'Roman Catholic', '09122543919', 'Brgy. Daan Banua, Kabankalan City', 'Jojean_c@yahoo.com'),
(44, 20001658, 'STEVE', 'FLORES', 'LIPER', 'M', '1993-01-02', 'Brgy. Camugao, Kabankalan City', 'Single', 21, 'Filipino', 'Roman Catholic', '09077659710', 'Brgy. Camugao, Kabankalan City', 'skevinz_23@ymail.com'),
(46, 20001957, 'MA. LAVINIA', 'DAULONG', 'CORSINO', 'F', '1994-06-09', 'Caliling,Cauayan Neg. Occ', 'Single', 19, 'Filipino', 'Roman Catholic', '09073837380', 'Caliling,Cauayan Negros Occidental', 'corsin90@yahoo.com'),
(47, 20001456, 'DIWANNIE', 'ARILLO', 'PAGUNSAN', 'F', '1992-10-12', 'Brgy.Tabugon Kabankalan City Neg. Occ.', 'Single', 21, 'Filipino', 'Roman Catholic', '09484525429', 'Brgy. Tabugon Kabankalan City Neg. Occ.', 'dj_arillo@yahoo.com'),
(48, 20001673, 'CARJEI', 'GAMALA', 'NAZARETH', 'M', '1993-04-28', 'Bulata', 'Single', 20, 'Filipino', 'Catholic', '09484207156', 'Bulata Cauyan Negros Occidental', 'kai_luv@yahoo.com'),
(49, 20001557, 'JENNY JOY', 'DEANON', 'O.', 'F', '1992-12-16', 'Dancalan Ilog,Neg, Occ', 'Single', 22, 'Filipino', 'Roman Catholic', '09466021131', 'Dancalan Ilog Neg,Occ', 'jj_deah16@Yahoo.com'),
(50, 20002311, 'ELSIE', 'ELIJAN', 'TABLIGAN', 'F', '1989-10-08', 'Provincial Hospital Bacolod City', 'Single', 24, 'Filipino', 'Baptist', '09128990012', 'Malinao, Dancalan, Ilog Negros Occidental', 'cute_elz20@yahoo.com'),
(51, 20001742, 'GERGEN MAE', 'GERIA', 'GADOT', 'F', '1994-05-19', 'BAcolod City', 'Single', 19, 'Filipino', 'Roman Catholic', '09129207751', 'Brgy.Guiljungan Cauayan Negros Occidental', 'geriaergenmage@yahoo.com'),
(52, 20002106, 'JEROM', 'MELANIO', 'BANDOLON', 'M', '1992-10-12', 'Kabankalan City', 'Single', 21, 'Filipino', 'Cathilic', '09303950074', 'Brgy. Linao, Kabankalan City', 'melaniojerom@yahoo.com'),
(53, 20001853, 'LIEZL', 'SILLEVA', 'ORDOÃ±A', 'F', '1994-05-19', 'Su-ay', 'Single', 19, 'Pilipino', 'Catholic', '09122319960', 'Mapait, Su-ay, Himamaylan City, Negros Occidental', 'lieztryx_16@yahoo.com'),
(54, 20001645, 'ROSELYN', 'ESPADERO', 'T', 'F', '1989-02-11', 'dancalan ilog', 'Single', 24, 'filipino', 'Catholic', '09122292298', 'tapi kab city', 'roselyt.espadero@yahoo.com'),
(55, 123456, 'KEVIN', 'GARGAR', 'DFD', 'M', '2013-07-13', 'bacolod city', 'Single', 12, '', '', '', '', 'Kev@yahoo.cpm');

-- --------------------------------------------------------

--
-- Table structure for table `useraccounts`
--

CREATE TABLE `useraccounts` (
  `ACCOUNT_ID` int(11) NOT NULL,
  `ACCOUNT_NAME` varchar(255) NOT NULL,
  `ACCOUNT_USERNAME` varchar(255) NOT NULL,
  `ACCOUNT_PASSWORD` text NOT NULL,
  `ACCOUNT_TYPE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useraccounts`
--

INSERT INTO `useraccounts` (`ACCOUNT_ID`, `ACCOUNT_NAME`, `ACCOUNT_USERNAME`, `ACCOUNT_PASSWORD`, `ACCOUNT_TYPE`) VALUES
(1, 'Janno Palacios', 'janobe@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Administrator'),
(3, 'Joken Villanueva', 'joken@yahoo.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Administrator'),
(4, 'Hatch Villanueva', 'hatchvillanueva16@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Registrar'),
(6, 'joenin', 'joenin@yahoo.com', '25f3c6036a19460cd5d3f302fa7b99e5be56cb0e', 'Encoder'),
(7, 'Erick jason Batuto', 'ejbatuto@hotmail.com', 'ee9800e8361e948d0106b38fc6e6311ee238beed', 'Administrator'),
(8, 'joken', 'j@y.c', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Student'),
(9, 'Allan', 'allan@yahoo.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Teacher'),
(10, 'sdfsdfsdg', 'joken@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Teacher');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ay`
--
ALTER TABLE `ay`
  ADD PRIMARY KEY (`AY_ID`),
  ADD UNIQUE KEY `acadyr` (`ACADYR`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`CLASS_ID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`COURSE_ID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DEPT_ID`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`GRADE_ID`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`INST_ID`),
  ADD UNIQUE KEY `INST_EMAIL` (`INST_EMAIL`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`YR_ID`);

--
-- Indexes for table `major`
--
ALTER TABLE `major`
  ADD PRIMARY KEY (`MAJOR_ID`);

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`PHOTO_ID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`ROOM_ID`);

--
-- Indexes for table `schoolyr`
--
ALTER TABLE `schoolyr`
  ADD PRIMARY KEY (`SYID`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`SEM_ID`);

--
-- Indexes for table `studentsubjects`
--
ALTER TABLE `studentsubjects`
  ADD PRIMARY KEY (`STUDSUBJ_ID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`SUBJ_ID`);

--
-- Indexes for table `tblrequirements`
--
ALTER TABLE `tblrequirements`
  ADD PRIMARY KEY (`REQ_ID`);

--
-- Indexes for table `tblstuddetails`
--
ALTER TABLE `tblstuddetails`
  ADD PRIMARY KEY (`DETAIL_ID`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`S_ID`),
  ADD UNIQUE KEY `IDNO` (`IDNO`);

--
-- Indexes for table `useraccounts`
--
ALTER TABLE `useraccounts`
  ADD PRIMARY KEY (`ACCOUNT_ID`),
  ADD UNIQUE KEY `ACCOUNT_USERNAME` (`ACCOUNT_USERNAME`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ay`
--
ALTER TABLE `ay`
  MODIFY `AY_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `CLASS_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `COURSE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `DEPT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `GRADE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `INST_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `YR_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `major`
--
ALTER TABLE `major`
  MODIFY `MAJOR_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `PHOTO_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `ROOM_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `schoolyr`
--
ALTER TABLE `schoolyr`
  MODIFY `SYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `SEM_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `studentsubjects`
--
ALTER TABLE `studentsubjects`
  MODIFY `STUDSUBJ_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `SUBJ_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=477;

--
-- AUTO_INCREMENT for table `tblrequirements`
--
ALTER TABLE `tblrequirements`
  MODIFY `REQ_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tblstuddetails`
--
ALTER TABLE `tblstuddetails`
  MODIFY `DETAIL_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `S_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `useraccounts`
--
ALTER TABLE `useraccounts`
  MODIFY `ACCOUNT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `dbempinformation`
--
CREATE DATABASE IF NOT EXISTS `dbempinformation` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbempinformation`;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `ID` int(11) NOT NULL,
  `EMPLOYEE_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `MIDDLE_NAME` varchar(255) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `PHONE_NUMBER` varchar(255) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `BIRTH_DATE` datetime DEFAULT NULL,
  `BIRTH_PLACE` varchar(255) DEFAULT NULL,
  `GENDER` varchar(255) DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  `EMERG_CONTACT` varchar(255) DEFAULT NULL,
  `EMPIMAGE` varchar(255) NOT NULL,
  `EmailAdd` varchar(90) NOT NULL,
  `SocialAccnt` varchar(90) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`ID`, `EMPLOYEE_ID`, `FIRST_NAME`, `LAST_NAME`, `MIDDLE_NAME`, `ADDRESS`, `PHONE_NUMBER`, `STATUS`, `BIRTH_DATE`, `BIRTH_PLACE`, `GENDER`, `AGE`, `EMERG_CONTACT`, `EMPIMAGE`, `EmailAdd`, `SocialAccnt`) VALUES
(3, 222, 'Janno', 'Palacios', 'esas', 'Kabankalan City', '898-999-999', 'Single', '2015-04-18 00:00:00', 'asdasdasasd', 'Male', 25, '898-999-999', 'cebu1.png', '', ''),
(6, 1000001, 'James', 'Yap', 'Marjen', 'Aklan', '123213123', 'Single', '1994-06-01 00:00:00', 'aklan', 'Male', 24, '23213123', 'cebu.png', '', ''),
(9, 213123, 'asd', 'sad', 'sad', 'sad', '2312312312', 'Single', '1990-08-31 00:00:00', 'sadasdasd', 'Male', 28, NULL, '38483630_274933653285108_2554784918622175232_n.jpg', 'sad', 'sad'),
(10, 2131232, 'asd', 'asd', 'sad', 'sadasd', '1312312', 'Single', '1992-08-31 00:00:00', 'sadasd', 'Male', 26, NULL, 'kisspng-reset-button-clip-art-update-cliparts-5aae91224c2291.1980798515213898583119.jpg', 'asdasd', 'sad');

-- --------------------------------------------------------

--
-- Table structure for table `employeesworkinfo`
--

CREATE TABLE `employeesworkinfo` (
  `ID` int(11) NOT NULL,
  `EMPLOYEE_ID` varchar(255) NOT NULL,
  `D_HIRED` date DEFAULT NULL,
  `JobStatus` varchar(30) NOT NULL,
  `JobType` varchar(30) NOT NULL,
  `EndDate` date NOT NULL,
  `SalaryGrade` double NOT NULL,
  `Salary` double NOT NULL,
  `Position` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employeesworkinfo`
--

INSERT INTO `employeesworkinfo` (`ID`, `EMPLOYEE_ID`, `D_HIRED`, `JobStatus`, `JobType`, `EndDate`, `SalaryGrade`, `Salary`, `Position`) VALUES
(3, '222', '2015-04-18', 'Contractual', 'Teaching', '2016-10-31', 0, 0, ''),
(6, '1000001', '1999-09-25', 'Permanent', 'Teaching', '2016-10-01', 222, 222, 'Staff'),
(8, '1000001', '1999-09-25', 'Permanent', 'Teaching', '2016-10-01', 444, 444, 'Rank2'),
(9, '222', '2015-04-18', 'Contractual', 'Teaching', '2016-10-31', 0, 0, ''),
(11, '213123', '2018-08-31', 'Contractual', 'Teaching', '2018-08-31', 12312, 12312, 'sadasd'),
(12, '213123', '2018-08-31', 'Contractual', 'Teaching', '2018-08-31', 12312, 12312, 'sadasd'),
(13, '213123', '2018-08-31', 'Contractual', 'Teaching', '2018-08-31', 12312, 12312, 'sadasd'),
(14, '213123', '2018-08-31', 'Contractual', 'Teaching', '2018-08-31', 12312, 12312, 'sadasd'),
(15, '2131232', '2018-08-31', 'Permanent', 'Non-Teaching', '2018-08-31', 213, 213, 'sadas');

-- --------------------------------------------------------

--
-- Table structure for table `tblauto`
--

CREATE TABLE `tblauto` (
  `autoID` int(11) NOT NULL,
  `AutoStart` varchar(30) NOT NULL,
  `AutoEnd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblauto`
--

INSERT INTO `tblauto` (`autoID`, `AutoStart`, `AutoEnd`) VALUES
(1, 'User00', 6),
(2, '100000', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tblscannedfiles`
--

CREATE TABLE `tblscannedfiles` (
  `ScannedId` int(11) NOT NULL,
  `EmpId` int(11) NOT NULL,
  `IMGCaption` varchar(90) NOT NULL,
  `ImgType` varchar(90) NOT NULL,
  `FilesLocation` varchar(90) NOT NULL,
  `DateUpload` date NOT NULL,
  `IMGBLOB` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblscannedfiles`
--

INSERT INTO `tblscannedfiles` (`ScannedId`, `EmpId`, `IMGCaption`, `ImgType`, `FilesLocation`, `DateUpload`, `IMGBLOB`) VALUES
(3, 222, 's.pdf', 'pds', 's.pdf', '2018-08-31', ''),
(4, 1000001, 's.pdf', 'pds', 's.pdf', '2018-08-31', ''),
(5, 222, 's.pdf', 'pds', 's.pdf', '2018-08-31', ''),
(7, 1000001, 's.pdf', 'otr', 's.pdf', '2018-08-31', ''),
(11, 1000001, 'Easy Way to Search Data in ListView Using C.docx', 'pds', 'Easy Way to Search Data in ListView Using C.docx', '2019-05-13', ''),
(12, 222, 'determine the date based on the given days in c#.docx', 'pds', 'determine the date based on the given days in c#.docx', '2019-05-13', '');

-- --------------------------------------------------------

--
-- Table structure for table `useraccounts`
--

CREATE TABLE `useraccounts` (
  `ID` int(11) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `UNAME` varchar(255) DEFAULT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASS` varchar(255) DEFAULT NULL,
  `USERTYPE` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `useraccounts`
--

INSERT INTO `useraccounts` (`ID`, `USER_ID`, `UNAME`, `USERNAME`, `PASS`, `USERTYPE`) VALUES
(7, 'User001', 'Janobe', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator'),
(9, 'User003', 'Kenjie Earl', 'staff', '6ccb4b7c39a6e77f76ecfa935a855c6c46ad5611', 'Staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`);

--
-- Indexes for table `employeesworkinfo`
--
ALTER TABLE `employeesworkinfo`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`);

--
-- Indexes for table `tblauto`
--
ALTER TABLE `tblauto`
  ADD PRIMARY KEY (`autoID`);

--
-- Indexes for table `tblscannedfiles`
--
ALTER TABLE `tblscannedfiles`
  ADD PRIMARY KEY (`ScannedId`);

--
-- Indexes for table `useraccounts`
--
ALTER TABLE `useraccounts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `USER_ID` (`USER_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `employeesworkinfo`
--
ALTER TABLE `employeesworkinfo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblauto`
--
ALTER TABLE `tblauto`
  MODIFY `autoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblscannedfiles`
--
ALTER TABLE `tblscannedfiles`
  MODIFY `ScannedId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `useraccounts`
--
ALTER TABLE `useraccounts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Database: `db_ecommerce`
--
CREATE DATABASE IF NOT EXISTS `db_ecommerce` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_ecommerce`;

-- --------------------------------------------------------

--
-- Table structure for table `messagein`
--

CREATE TABLE `messagein` (
  `Id` int(11) NOT NULL,
  `SendTime` datetime DEFAULT NULL,
  `ReceiveTime` datetime DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `SMSC` varchar(80) DEFAULT NULL,
  `MessageText` text,
  `MessageType` varchar(80) DEFAULT NULL,
  `MessageParts` int(11) DEFAULT NULL,
  `MessagePDU` text,
  `Gateway` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messagein`
--

INSERT INTO `messagein` (`Id`, `SendTime`, `ReceiveTime`, `MessageFrom`, `MessageTo`, `SMSC`, `MessageText`, `MessageType`, `MessageParts`, `MessagePDU`, `Gateway`, `UserId`) VALUES
(1, '2017-11-02 05:19:29', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FB0302,870906890101C651018715060350524F585932000187070603534D415254204D4D530001C65201872F060350524F5859325F3100018720060331302E3130322E36312E343600018721068501872206034E4150475052535F320001C6530187230603383038300001010101C600015501873606037734000187070603534D4152', NULL, NULL, NULL, NULL, NULL),
(2, '2017-11-02 05:19:34', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FB0303,54204D4D5300018739060350524F585932000187340603687474703A2F2F31302E3130322E36312E3233383A383030322F00010101', NULL, NULL, NULL, NULL, NULL),
(3, '2017-11-02 05:19:14', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FA0201,6C062F1F2DB69180923646443032463643313042394231363544354242413143304143413232424334343239453236423600030B6A00C54503312E310001C6560187070603534D41525420494E5445524E4554000101C65501871106034E4150475052535F330001871006AB0187070603534D41525420494E5445524E455400', NULL, NULL, NULL, NULL, NULL),
(4, '2017-11-02 05:19:19', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FA0202,0187140187080603696E7465726E65740001870906890101C600015501873606037732000187070603534D41525420494E5445524E45540001872206034E4150475052535F330001C65901873A0603687474703A2F2F6D2E736D6172742E636F6D2E7068000187070603484F4D450001871C01010101', NULL, NULL, NULL, NULL, NULL),
(5, '2017-11-02 05:19:24', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FB0301,6D062F1F2DB69180923432373832413042464145313131463335303137323744303141433530304134373930423843334500030B6A00C54503312E310001C6560187070603534D415254204D4D53000101C65501871106034E4150475052535F320001871006AB0187070603534D415254204D4D530001870806036D6D730001', NULL, NULL, NULL, NULL, NULL),
(6, '2017-11-02 05:19:29', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FB0302,870906890101C651018715060350524F585932000187070603534D415254204D4D530001C65201872F060350524F5859325F3100018720060331302E3130322E36312E343600018721068501872206034E4150475052535F320001C6530187230603383038300001010101C600015501873606037734000187070603534D4152', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messagelog`
--

CREATE TABLE `messagelog` (
  `Id` int(11) NOT NULL,
  `SendTime` datetime DEFAULT NULL,
  `ReceiveTime` datetime DEFAULT NULL,
  `StatusCode` int(11) DEFAULT NULL,
  `StatusText` varchar(80) DEFAULT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text,
  `MessageType` varchar(80) DEFAULT NULL,
  `MessageId` varchar(80) DEFAULT NULL,
  `ErrorCode` varchar(80) DEFAULT NULL,
  `ErrorText` varchar(80) DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `MessageParts` int(11) DEFAULT NULL,
  `MessagePDU` text,
  `Connector` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messagelog`
--

INSERT INTO `messagelog` (`Id`, `SendTime`, `ReceiveTime`, `StatusCode`, `StatusText`, `MessageTo`, `MessageFrom`, `MessageText`, `MessageType`, `MessageId`, `ErrorCode`, `ErrorText`, `Gateway`, `MessageParts`, `MessagePDU`, `Connector`, `UserId`, `UserInfo`) VALUES
(1, '2018-01-27 20:38:08', NULL, 300, NULL, '09305235027', 'Hello Poh', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2018-01-27 20:39:06', NULL, 300, NULL, '09305235027', 'Hello Poh', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2018-01-27 20:49:14', NULL, 300, NULL, '09305235027', 'hi poh', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2018-01-27 20:50:56', NULL, 300, NULL, '09508767867', 'hi poh', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2018-02-09 17:52:26', NULL, 300, NULL, '09486457414', 'Test to send', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2018-02-09 17:54:27', NULL, 300, NULL, '09486457414', 'Test to send', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '2018-02-09 17:55:11', NULL, 300, NULL, '09486457414', 'Test to send', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '2018-02-09 17:59:11', NULL, 300, NULL, '09486457414', 'Test to send', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '2018-02-09 18:00:12', NULL, 200, NULL, '+639486457414', 'yes', NULL, NULL, '1:+639486457414:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '2018-02-09 18:01:12', NULL, 200, NULL, '+639486457414', 'Test to send', NULL, NULL, '1:+639486457414:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '2018-02-09 18:02:58', NULL, 200, NULL, '+639486457414', 'FROM JANNO : Confirmed', NULL, NULL, '1:+639486457414:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '2018-02-09 18:05:22', NULL, 200, NULL, '+639486457414', 'FROM Bachelor of Science and Entrepreneurs : Your order has been .Confirmed', NULL, NULL, '1:+639486457414:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '2018-02-09 18:08:14', NULL, 200, NULL, '+639486457414', 'FROM Bachelor of Science and Entrepreneurs : Your order has been .Confirmed', NULL, NULL, '1:+639486457414:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '2018-02-09 18:21:41', NULL, 200, NULL, '+639486457414', 'FROM Bachelor of Science and Entrepreneurs : Your order has been .Confirmed', NULL, NULL, '1:+639486457414:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '2018-04-01 22:17:34', NULL, 300, NULL, '09123586545', 'Your code is .6048', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '2018-04-01 22:18:20', NULL, 300, NULL, '09123586545', 'Your code is .9305', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '2018-04-01 22:20:15', NULL, 300, NULL, '09123586545', 'Your code is .2924', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '2018-04-01 22:42:36', NULL, 300, NULL, '09123586545', 'Your code is .6938', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '2018-04-02 00:40:53', NULL, 300, NULL, '9956112920', 'Your code is .7290', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '2018-04-02 00:42:14', NULL, 300, NULL, '9956112920', 'Your code is .4506', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '2018-04-02 00:43:46', NULL, 300, NULL, '9956112920', 'Your code is .4506', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '2018-04-02 00:45:56', NULL, 300, NULL, '09956112920', 'Your code is .6988', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '2018-04-02 00:47:17', NULL, 300, NULL, '09956112920', 'Your code is .4380', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '2018-04-02 00:48:53', NULL, 200, NULL, '639956112920', 'Your code is .5936', NULL, NULL, '1:639956112920:129', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '2018-04-02 00:50:29', NULL, 200, NULL, '639956112920', 'Your code is .5349', NULL, NULL, '1:639956112920:130', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '2018-04-02 00:53:32', NULL, 200, NULL, '639956112920', 'Your code is', NULL, NULL, '1:639956112920:131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '2018-04-02 00:54:43', NULL, 200, NULL, '639956112920', 'Your code is 3407', NULL, NULL, '1:639956112920:132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messageout`
--

CREATE TABLE `messageout` (
  `Id` int(11) NOT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text,
  `MessageType` varchar(80) DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text,
  `Priority` int(11) DEFAULT NULL,
  `Scheduled` datetime DEFAULT NULL,
  `ValidityPeriod` int(11) DEFAULT NULL,
  `IsSent` tinyint(1) NOT NULL DEFAULT '0',
  `IsRead` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumber`
--

CREATE TABLE `tblautonumber` (
  `ID` int(11) NOT NULL,
  `AUTOSTART` varchar(11) NOT NULL,
  `AUTOINC` int(11) NOT NULL,
  `AUTOEND` int(11) NOT NULL,
  `AUTOKEY` varchar(12) NOT NULL,
  `AUTONUM` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblautonumber`
--

INSERT INTO `tblautonumber` (`ID`, `AUTOSTART`, `AUTOINC`, `AUTOEND`, `AUTOKEY`, `AUTONUM`) VALUES
(1, '2017', 1, 43, 'PROID', 10),
(2, '0', 1, 95, 'ordernumber', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `CATEGID` int(11) NOT NULL,
  `CATEGORIES` varchar(255) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`CATEGID`, `CATEGORIES`, `USERID`) VALUES
(5, 'SHOES', 0),
(11, 'BAGS', 0),
(12, 'CLOTHING', 0),
(13, 'INTERIORS', 0),
(14, 'HOUSEHOLDS', 0),
(15, 'FASHION', 0),
(16, 'KIDS', 0),
(17, 'WOMENS', 0),
(18, 'MENS', 0),
(19, 'SPORTSWEAR', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `CUSTOMERID` int(11) NOT NULL,
  `FNAME` varchar(30) NOT NULL,
  `LNAME` varchar(30) NOT NULL,
  `MNAME` varchar(30) NOT NULL,
  `CUSHOMENUM` varchar(90) NOT NULL,
  `STREETADD` text NOT NULL,
  `BRGYADD` text NOT NULL,
  `CITYADD` text NOT NULL,
  `PROVINCE` varchar(80) NOT NULL,
  `COUNTRY` varchar(30) NOT NULL,
  `DBIRTH` date NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `PHONE` varchar(20) NOT NULL,
  `EMAILADD` varchar(40) NOT NULL,
  `ZIPCODE` int(6) NOT NULL,
  `CUSUNAME` varchar(20) NOT NULL,
  `CUSPASS` varchar(90) NOT NULL,
  `CUSPHOTO` varchar(255) NOT NULL,
  `TERMS` tinyint(4) NOT NULL,
  `DATEJOIN` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomer`
--

INSERT INTO `tblcustomer` (`CUSTOMERID`, `FNAME`, `LNAME`, `MNAME`, `CUSHOMENUM`, `STREETADD`, `BRGYADD`, `CITYADD`, `PROVINCE`, `COUNTRY`, `DBIRTH`, `GENDER`, `PHONE`, `EMAILADD`, `ZIPCODE`, `CUSUNAME`, `CUSPASS`, `CUSPHOTO`, `TERMS`, `DATEJOIN`) VALUES
(1, 'janobe', 'Palacios', '', '321', 'Coloso Street', 'brgy. 1', 'Kabankalan City', 'Negros Occidental', 'Philippines', '0000-00-00', 'Male', '+639956112920', '', 6111, 'kenjie@yahoo.com', '1dd4efc811372cd1efe855981a8863d10ddde1ca', 'customer_image/a1157016c5d8272126380b27a59e2e7e.jpg', 1, '2015-11-26'),
(2, 'Mark Anthony', 'Geasin', '', '1234', 'paglaom', 'dancalan', 'ilog', 'negros occ', 'philippines', '0000-00-00', '', '091023333234', '', 6111, 'bboy', '0377588176145a8f0d837ff6e9bf0c1616268387', 'customer_image/10801930_959054964122877_391305007291646162_n.jpg', 1, '2015-11-26'),
(3, 'Jano', 'Palacios', '', '12312', 's', 'brgy 1', 'kabankalan city', 'negross occidental', 'philippines', '0000-00-00', 'Male', '21312312312', '', 6111, 'jan', '53199fa57fdf5676d03d89fbdd26e69a927766fc', 'customer_image/Tropical-Beach-Wallpaper.jpg', 1, '2017-12-08'),
(4, 'Jamei', 'Laveste', '', '', '', '', 'kabankalan city', '', '', '0000-00-00', 'Female', '362656556', '', 0, 'jame', 'f144dcce05af4d40fa0aeba34b05f4472472a4de', 'customer_image/1351064148bpguarhW.jpg', 1, '2018-01-23'),
(5, 'Jeanniebe', 'Palacios', '', '', '', '', 'Kab City', '', '', '0000-00-00', 'Female', '+639486457414', '', 0, 'bebe', 'd079a1c06803587ea09bff3f44a567e19169e7b5', '', 1, '2018-02-09'),
(6, 'Janry', 'Tan', '', '', '', '', 'Kab City', '', '', '0000-00-00', 'Male', '0234234', '', 0, 'jan', '0271c5467994a9e88e01be5b7e1f5f43d0ab93d2', '', 1, '2018-04-01'),
(7, 'Jake', 'Cuenca', '', '', '', '', 'Kabankalan City', '', '', '0000-00-00', 'Male', '639305235027', '', 0, 'jake', '403ba16f713c8371eef121530a922824be29b68a', '', 1, '2018-04-16'),
(8, 'Jake', 'Tam', '', '', '', '', 'Kab City', '', '', '0000-00-00', 'Male', '021312312', '', 0, 'j', '30e1fe53111f7e583c382596a32885fd27283970', '', 1, '2018-09-23'),
(9, 'Annie', 'Paredes', '', '', '', '', 's', '', '', '0000-00-00', 'Female', '12312312', '', 0, 'an', 'aa46142b604e671794a84129896d4dec508dec81', 'customer_image/shirt2.jpg', 1, '2019-08-20'),
(10, 'Twist', 'Tonny', '', '', '', '', '23 Accress Port', '', '', '0000-00-00', 'Male', '2302323423423', '', 0, 'Twist', '70ccd9007338d6d81dd3b6271621b9cf9a97ea00', '', 1, '2020-01-31');

-- --------------------------------------------------------

--
-- Table structure for table `tblorder`
--

CREATE TABLE `tblorder` (
  `ORDERID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `ORDEREDQTY` int(11) NOT NULL,
  `ORDEREDPRICE` double NOT NULL,
  `ORDEREDNUM` int(11) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorder`
--

INSERT INTO `tblorder` (`ORDERID`, `PROID`, `ORDEREDQTY`, `ORDEREDPRICE`, `ORDEREDNUM`, `USERID`) VALUES
(1, 201737, 4, 476, 93, 0),
(2, 201740, 3, 447, 93, 0),
(3, 201738, 1, 199, 94, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `PROID` int(11) NOT NULL,
  `PRODESC` varchar(255) DEFAULT NULL,
  `INGREDIENTS` varchar(255) NOT NULL,
  `PROQTY` int(11) DEFAULT NULL,
  `ORIGINALPRICE` double NOT NULL,
  `PROPRICE` double DEFAULT NULL,
  `CATEGID` int(11) DEFAULT NULL,
  `IMAGES` varchar(255) DEFAULT NULL,
  `PROSTATS` varchar(30) DEFAULT NULL,
  `OWNERNAME` varchar(90) NOT NULL,
  `OWNERPHONE` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`PROID`, `PRODESC`, `INGREDIENTS`, `PROQTY`, `ORIGINALPRICE`, `PROPRICE`, `CATEGID`, `IMAGES`, `PROSTATS`, `OWNERNAME`, `OWNERPHONE`) VALUES
(201737, 'KILY Korean Casual Sleeveless Dress Printed Dress 5a0019                      ', '', 5, 100, 119, 12, 'uploaded_photos/korean.jpeg', 'Available', 'janobe', ''),
(201738, 'terno top and pants korean fashion boho terno summer terno for women  ', '', 3, 150, 199, 12, 'uploaded_photos/terno.jpg', 'Available', 'janobe', ''),
(201739, '4Color Menâ€²S Denim Pants STRETCHABLE Skinny Black/Blue', '', 5, 250, 289, 18, 'uploaded_photos/jeans.jpg', 'Available', 'janobe', ''),
(201740, 'SIMPLE Fashion Men`S Casual T Shirt Short Sleeve Round neck Top', '', 1, 100, 149, 18, 'uploaded_photos/shirt.jpg', 'Available', 'janobe', ''),
(201741, 'ICM #T146 BESTSELLER TOPS TSHIRT FOR MEN', '', 4, 50, 89, 18, 'uploaded_photos/shirt2.jpg', 'Available', 'janobe', ''),
(201742, 'CJY-001 Coat Rack Creative Simple CoatRack Bedroom Wardrobe (Gray)', '', 4, 250, 287, 14, 'uploaded_photos/bed.jpeg', 'Available', 'janobe', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblpromopro`
--

CREATE TABLE `tblpromopro` (
  `PROMOID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `PRODISCOUNT` double NOT NULL,
  `PRODISPRICE` double NOT NULL,
  `PROBANNER` tinyint(4) NOT NULL,
  `PRONEW` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpromopro`
--

INSERT INTO `tblpromopro` (`PROMOID`, `PROID`, `PRODISCOUNT`, `PRODISPRICE`, `PROBANNER`, `PRONEW`) VALUES
(1, 201737, 0, 119, 0, 0),
(2, 201738, 0, 199, 0, 0),
(3, 201739, 0, 289, 0, 0),
(4, 201740, 0, 149, 0, 0),
(5, 201741, 0, 89, 0, 0),
(6, 201742, 0, 287, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblsetting`
--

CREATE TABLE `tblsetting` (
  `SETTINGID` int(11) NOT NULL,
  `PLACE` text NOT NULL,
  `BRGY` varchar(90) NOT NULL,
  `DELPRICE` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsetting`
--

INSERT INTO `tblsetting` (`SETTINGID`, `PLACE`, `BRGY`, `DELPRICE`) VALUES
(1, 'Kabankalan City', 'Brgy. 1', 50),
(2, 'Himamaylan City', 'Brgy. 1', 70);

-- --------------------------------------------------------

--
-- Table structure for table `tblstockin`
--

CREATE TABLE `tblstockin` (
  `STOCKINID` int(11) NOT NULL,
  `STOCKDATE` datetime DEFAULT NULL,
  `PROID` int(11) DEFAULT NULL,
  `STOCKQTY` int(11) DEFAULT NULL,
  `STOCKPRICE` double DEFAULT NULL,
  `USERID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblsummary`
--

CREATE TABLE `tblsummary` (
  `SUMMARYID` int(11) NOT NULL,
  `ORDEREDDATE` datetime NOT NULL,
  `CUSTOMERID` int(11) NOT NULL,
  `ORDEREDNUM` int(11) NOT NULL,
  `DELFEE` double NOT NULL,
  `PAYMENT` double NOT NULL,
  `PAYMENTMETHOD` varchar(30) NOT NULL,
  `ORDEREDSTATS` varchar(30) NOT NULL,
  `ORDEREDREMARKS` varchar(125) NOT NULL,
  `CLAIMEDADTE` datetime NOT NULL,
  `HVIEW` tinyint(4) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsummary`
--

INSERT INTO `tblsummary` (`SUMMARYID`, `ORDEREDDATE`, `CUSTOMERID`, `ORDEREDNUM`, `DELFEE`, `PAYMENT`, `PAYMENTMETHOD`, `ORDEREDSTATS`, `ORDEREDREMARKS`, `CLAIMEDADTE`, `HVIEW`, `USERID`) VALUES
(1, '2019-08-21 06:24:24', 9, 93, 0, 0, 'Cash on Delivery', 'Pending', 'Your order is on process.', '0000-00-00 00:00:00', 1, 0),
(3, '2019-08-21 06:27:09', 9, 94, 70, 269, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2019-08-21 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbluseraccount`
--

CREATE TABLE `tbluseraccount` (
  `USERID` int(11) NOT NULL,
  `U_NAME` varchar(122) NOT NULL,
  `U_USERNAME` varchar(122) NOT NULL,
  `U_PASS` varchar(122) NOT NULL,
  `U_ROLE` varchar(30) NOT NULL,
  `USERIMAGE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluseraccount`
--

INSERT INTO `tbluseraccount` (`USERID`, `U_NAME`, `U_USERNAME`, `U_PASS`, `U_ROLE`, `USERIMAGE`) VALUES
(124, 'Kenjie Palacios', 'kenjie', '4752fe635442d048e8e8d2d1d845e6a578f30470', 'Administrator', 'photos/COC-war-base-design.jpg'),
(126, 'Janobe Palacios', 'janobe', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', 'photos/10329236_874204835938922_6636897990257224477_n.jpg'),
(127, 'Craig Palacios', 'craig', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblwishlist`
--

CREATE TABLE `tblwishlist` (
  `id` int(11) NOT NULL,
  `CUSID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `WISHDATE` date NOT NULL,
  `WISHSTATS` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblwishlist`
--

INSERT INTO `tblwishlist` (`id`, `CUSID`, `PROID`, `WISHDATE`, `WISHSTATS`) VALUES
(2, 9, 201742, '2019-08-21', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messagein`
--
ALTER TABLE `messagein`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `messagelog`
--
ALTER TABLE `messagelog`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_MessageId` (`MessageId`,`SendTime`);

--
-- Indexes for table `messageout`
--
ALTER TABLE `messageout`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_IsRead` (`IsRead`);

--
-- Indexes for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`CATEGID`);

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`CUSTOMERID`);

--
-- Indexes for table `tblorder`
--
ALTER TABLE `tblorder`
  ADD PRIMARY KEY (`ORDERID`),
  ADD KEY `USERID` (`USERID`),
  ADD KEY `PROID` (`PROID`),
  ADD KEY `ORDEREDNUM` (`ORDEREDNUM`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`PROID`),
  ADD KEY `CATEGID` (`CATEGID`);

--
-- Indexes for table `tblpromopro`
--
ALTER TABLE `tblpromopro`
  ADD PRIMARY KEY (`PROMOID`),
  ADD UNIQUE KEY `PROID` (`PROID`);

--
-- Indexes for table `tblsetting`
--
ALTER TABLE `tblsetting`
  ADD PRIMARY KEY (`SETTINGID`);

--
-- Indexes for table `tblstockin`
--
ALTER TABLE `tblstockin`
  ADD PRIMARY KEY (`STOCKINID`),
  ADD KEY `PROID` (`PROID`,`USERID`),
  ADD KEY `USERID` (`USERID`);

--
-- Indexes for table `tblsummary`
--
ALTER TABLE `tblsummary`
  ADD PRIMARY KEY (`SUMMARYID`),
  ADD UNIQUE KEY `ORDEREDNUM` (`ORDEREDNUM`),
  ADD KEY `CUSTOMERID` (`CUSTOMERID`),
  ADD KEY `USERID` (`USERID`);

--
-- Indexes for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  ADD PRIMARY KEY (`USERID`);

--
-- Indexes for table `tblwishlist`
--
ALTER TABLE `tblwishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messagein`
--
ALTER TABLE `messagein`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `messagelog`
--
ALTER TABLE `messagelog`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `messageout`
--
ALTER TABLE `messageout`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `CATEGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `CUSTOMERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `ORDERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpromopro`
--
ALTER TABLE `tblpromopro`
  MODIFY `PROMOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblsetting`
--
ALTER TABLE `tblsetting`
  MODIFY `SETTINGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblstockin`
--
ALTER TABLE `tblstockin`
  MODIFY `STOCKINID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblsummary`
--
ALTER TABLE `tblsummary`
  MODIFY `SUMMARYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  MODIFY `USERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `tblwishlist`
--
ALTER TABLE `tblwishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `db_gym1`
--
CREATE DATABASE IF NOT EXISTS `db_gym1` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `db_gym1`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(500) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(500) NOT NULL,
  `gender` varchar(500) NOT NULL,
  `dob` text NOT NULL,
  `contact` text NOT NULL,
  `address` varchar(500) NOT NULL,
  `image` varchar(2000) NOT NULL,
  `created_on` date NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `fname`, `lname`, `gender`, `dob`, `contact`, `address`, `image`, `created_on`, `group_id`) VALUES
(1, 'admin', 'admin@admin.com', 'password1', 'admin', 'admina', 'Male', '2018-11-26', '7755332211', 'Nashik', 'uploadImage/Profile/avatar_nick.png', '2018-04-30', 1),
(3, 'user', 'niki@gmail.com', 'bbcff4db4d8057800d59a68224efd87e545fa1512dfc3ef68298283fbb3b6358', 'nikita', 'sharma', 'Female', '1994-12-03', '7744112255', 'nashik', '6.jpg', '2018-12-11', 2);

-- --------------------------------------------------------

--
-- Table structure for table `manage_website`
--

CREATE TABLE `manage_website` (
  `id` int(11) NOT NULL,
  `title` varchar(600) NOT NULL,
  `short_title` varchar(600) NOT NULL,
  `logo` text NOT NULL,
  `footer` text NOT NULL,
  `currency_code` varchar(600) NOT NULL,
  `currency_symbol` varchar(600) NOT NULL,
  `login_logo` text NOT NULL,
  `invoice_logo` text NOT NULL,
  `background_login_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manage_website`
--

INSERT INTO `manage_website` (`id`, `title`, `short_title`, `logo`, `footer`, `currency_code`, `currency_symbol`, `login_logo`, `invoice_logo`, `background_login_image`) VALUES
(1, 'Gym Management System', 'Gym Management', 'png.png', '<a target=\"_blank\" rel=\"nofollow\">-</a>', 'INR', 'â‚¹', 'png.png', 'png.png', 'gym-background.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `id` int(11) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `curr_date` text NOT NULL,
  `curr_time` text NOT NULL,
  `present` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`id`, `user_id`, `curr_date`, `curr_time`, `present`) VALUES
(14, '2', '2018-11-07', '05:04 PM', 0),
(15, '4', '2018-12-07', '05:04 PM', 0),
(16, '4', '2018-12-10', '03:35 PM', 0),
(17, '2', '2018-12-11', '01:01 PM', 0),
(19, '1', '2020-02-16', '07:09 PM', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `username` varchar(500) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(500) NOT NULL,
  `gender` varchar(500) NOT NULL,
  `dob` text NOT NULL,
  `anniversary_date` text NOT NULL,
  `contact` text NOT NULL,
  `married_status` varchar(300) NOT NULL,
  `age` int(200) NOT NULL,
  `address` varchar(500) NOT NULL,
  `feet` varchar(300) NOT NULL,
  `inches` varchar(200) NOT NULL,
  `weight` varchar(500) NOT NULL,
  `image` varchar(2000) NOT NULL,
  `created_on` date NOT NULL,
  `group_id` int(11) NOT NULL,
  `attendance_count` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `username`, `email`, `password`, `fname`, `lname`, `gender`, `dob`, `anniversary_date`, `contact`, `married_status`, `age`, `address`, `feet`, `inches`, `weight`, `image`, `created_on`, `group_id`, `attendance_count`) VALUES
(1, 'user', 'echongat33@gmail.com', 'password1', 'Yasha', 'Bora', 'Female', '2018-12-01', '', '7755332211', 'Unmarried', 0, 'nashik', '1', '5', '3', '', '2018-11-30', 0, 1),
(4, 'user', 'suhani@gmail.com', 'bbcff4db4d8057800d59a68224efd87e545fa1512dfc3ef68298283fbb3b6358', 'suhani', 'labhade', 'Female', '2016-12-19', '', '4422255522', 'Unmarried', 2, 'nashik', '3', '2', '15', '', '2018-12-07', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_deposit`
--

CREATE TABLE `tbl_deposit` (
  `id` int(11) NOT NULL,
  `subscription_id` int(11) NOT NULL,
  `installment_amount` decimal(15,2) NOT NULL,
  `remaining_amount` decimal(15,2) NOT NULL,
  `payment_source` varchar(200) NOT NULL,
  `created_date` text NOT NULL,
  `remark` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_deposit`
--

INSERT INTO `tbl_deposit` (`id`, `subscription_id`, `installment_amount`, `remaining_amount`, `payment_source`, `created_date`, `remark`) VALUES
(1, 1, '10.00', '990.00', 'Cash', '2018-12-07', 'fhf'),
(2, 1, '200.00', '800.00', 'Cash', '2018-12-07', 'fggf'),
(3, 2, '300.00', '1200.00', 'Cash', '2018-12-07', 'remark'),
(4, 2, '200.00', '1300.00', 'Cash', '2018-12-09', 'rt'),
(5, 2, '100.00', '1400.00', 'Cash', '2018-12-10', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_email_config`
--

CREATE TABLE `tbl_email_config` (
  `e_id` int(21) NOT NULL,
  `email_setting` varchar(500) NOT NULL,
  `mail_driver_host` varchar(5000) NOT NULL,
  `mail_port` int(50) NOT NULL,
  `mail_username` varchar(50) NOT NULL,
  `mail_password` varchar(30) NOT NULL,
  `mail_encrypt` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_email_config`
--

INSERT INTO `tbl_email_config` (`e_id`, `email_setting`, `mail_driver_host`, `mail_port`, `mail_username`, `mail_password`, `mail_encrypt`) VALUES
(1, 'safsw', 'as', 23212, 'aa', 'av', 'av');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_enquiry`
--

CREATE TABLE `tbl_enquiry` (
  `id` int(11) NOT NULL,
  `cust_name` varchar(700) NOT NULL,
  `mobile` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `dob` text NOT NULL,
  `age` int(15) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `height_feet` int(15) NOT NULL,
  `height_inch` int(15) NOT NULL,
  `weight` int(15) NOT NULL,
  `occupation` varchar(1000) NOT NULL,
  `reference` varchar(700) NOT NULL,
  `goal` varchar(700) NOT NULL,
  `weight_loss` int(15) NOT NULL,
  `weight_gain` int(15) NOT NULL,
  `exercise` varchar(700) NOT NULL,
  `type` varchar(700) NOT NULL,
  `where_gym` varchar(1500) NOT NULL,
  `gym_time` varchar(500) NOT NULL,
  `package_offer` varchar(1500) NOT NULL,
  `remark` varchar(300) NOT NULL,
  `package_amount` decimal(15,2) NOT NULL,
  `enquiry_date` text NOT NULL,
  `follow_date` text NOT NULL,
  `last_follow_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_enquiry`
--

INSERT INTO `tbl_enquiry` (`id`, `cust_name`, `mobile`, `email`, `address`, `dob`, `age`, `gender`, `height_feet`, `height_inch`, `weight`, `occupation`, `reference`, `goal`, `weight_loss`, `weight_gain`, `exercise`, `type`, `where_gym`, `gym_time`, `package_offer`, `remark`, `package_amount`, `enquiry_date`, `follow_date`, `last_follow_date`) VALUES
(2, 'Nikhil Bhalerao', '9423979339', 'ndbhalerao91@gmail.com', 'Nashik', '2018-11-20', 25, 'Male', 0, 0, 34, 'Business', 'News paper', 'Strength Endurance', 0, 0, 'Yes', 'Jogging', '', '', 'Half Yearly', '', '0.00', '2018-11-30', '', '2018-12-11'),
(3, 'Nikita Bothra', '9512365444', 'niki@gmail.com', 'Nashik', '1914-12-13', 23, 'Female', 5, 2, 44, 'Business', 'Existing Member', 'Stress Management', 0, 0, 'Yes', 'Walking', '', '', 'Half Yearly', '', '0.00', '2018-12-07', '', ''),
(4, 'Akshay ', '7532146988', 'akshay@gmail.com', 'Nashik', '1994-12-10', 24, 'Male', 5, 5, 51, 'Service', 'Hoarding', 'Yoga', 0, 0, 'No', 'Walking', 'nashik', '2 hrs', 'Monthly', '\r\nouio', '100.00', '2018-12-10', '2018-12-15', '2018-12-11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expense`
--

CREATE TABLE `tbl_expense` (
  `id` int(11) NOT NULL,
  `item_name` varchar(600) NOT NULL,
  `purchase_shop_name` varchar(600) NOT NULL,
  `purchase_date` text NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `bill` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_expense`
--

INSERT INTO `tbl_expense` (`id`, `item_name`, `purchase_shop_name`, `purchase_date`, `price`, `bill`) VALUES
(1, 'item1', 'shop1', '2018-11-28', '100.00', '../uploadImage/Expense/sample.txt'),
(2, 'item2', 'shop2', '2018-12-06', '350.00', '../uploadImage/Expense/sample.txt');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group`
--

CREATE TABLE `tbl_group` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_group`
--

INSERT INTO `tbl_group` (`id`, `name`, `description`) VALUES
(1, 'admin', 'admin'),
(2, 'Group1', 'Group1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_membership`
--

CREATE TABLE `tbl_membership` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `duration` varchar(600) NOT NULL,
  `details` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_membership`
--

INSERT INTO `tbl_membership` (`id`, `name`, `price`, `duration`, `details`) VALUES
(2, 'Fitness Mantra', '1000.00', '1 Month', 'To enjoy the glow of good health, you must exercise.'),
(3, 'fitness2', '150.00', '1 Month', 'good health'),
(6, 'Gold Plan', '1500.00', '3 Month', 'Best');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permission`
--

CREATE TABLE `tbl_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `display_name` varchar(200) NOT NULL,
  `operation` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_permission`
--

INSERT INTO `tbl_permission` (`id`, `name`, `display_name`, `operation`) VALUES
(1, 'manage_client', 'Manage Client', 'manage_client'),
(2, 'add_client', 'Add Client', 'add_client'),
(3, 'edit_client', 'Edit Client', 'edit_client'),
(4, 'delete_client', 'Delete Client', 'delete_client'),
(5, 'manage_subscription', 'Manage Subscription', 'manage_subscription'),
(6, 'add_subscription', 'Add Subscription', 'add_subscription'),
(7, 'edit_subscription', 'Edit Subscription', 'edit_subscription'),
(8, 'delete_subscription', 'Delete Subscription', 'delete_subscription'),
(9, 'manage_membership', 'Manage Membership', 'manage_membership'),
(10, 'add_membership', 'Add Membership', 'add_membership'),
(11, 'edit_membership', 'Edit Membership', 'edit_membership'),
(12, 'delete_membership', 'Delete Membership', 'delete_membership'),
(13, 'manage_enquiry', 'Manage Enquiry', 'manage_enquiry'),
(14, 'add_enquiry', 'Add Enquiry', 'add_enquiry'),
(15, 'edit_enquiry', 'Edit Enquiry', 'edit_enquiry'),
(16, 'delete_enquiry', 'Delete Enquiry', 'delete_enquiry'),
(17, 'manage_expense', 'Manage Expense', 'manage_expense'),
(18, 'add_expense', 'Add Expense', 'add_expense'),
(19, 'edit_expense', 'Edit Expense', 'edit_expense'),
(20, 'delete_expense', 'Delete Expense', 'delete_expense'),
(21, 'manage_reports', 'Manage Reports', 'manage_reports'),
(22, 'manage_attendance', 'Manage Attendance', 'manage_attendance'),
(23, 'manage_user', 'Manage User', 'manage_user'),
(24, 'add_user', 'Add User', 'add_user'),
(25, 'edit_user', 'Edit User', 'edit_user'),
(26, 'delete_user', 'Delete User', 'delete_user');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permission_role`
--

CREATE TABLE `tbl_permission_role` (
  `id` int(30) NOT NULL,
  `permission_id` int(30) NOT NULL,
  `role_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_permission_role`
--

INSERT INTO `tbl_permission_role` (`id`, `permission_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(20, 20, 1),
(21, 21, 1),
(22, 22, 1),
(23, 23, 1),
(24, 24, 1),
(25, 25, 1),
(26, 26, 1),
(40, 1, 2),
(41, 2, 2),
(42, 3, 2),
(43, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sms_config`
--

CREATE TABLE `tbl_sms_config` (
  `smsid` int(20) NOT NULL,
  `senderid` int(20) NOT NULL,
  `sms_username` varchar(30) NOT NULL,
  `sms_password` varchar(20) NOT NULL,
  `auth_key` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sms_config`
--

INSERT INTO `tbl_sms_config` (`smsid`, `senderid`, `sms_username`, `sms_password`, `auth_key`) VALUES
(1, 101, 'username', 'password', 'dfrst3535');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscription`
--

CREATE TABLE `tbl_subscription` (
  `id` int(11) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `membership_id` varchar(200) NOT NULL,
  `membership_cost` varchar(200) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `registration_date` text NOT NULL,
  `start_date` text NOT NULL,
  `remark` varchar(200) NOT NULL,
  `discount` decimal(15,2) NOT NULL,
  `expiry_date` text NOT NULL,
  `more_payment_required` varchar(300) NOT NULL,
  `next_payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subscription`
--

INSERT INTO `tbl_subscription` (`id`, `user_id`, `membership_id`, `membership_cost`, `amount`, `registration_date`, `start_date`, `remark`, `discount`, `expiry_date`, `more_payment_required`, `next_payment_date`) VALUES
(1, '2', '2', '1000', '1000.00', '2018-12-06', '2018-12-20', 'sada', '0.00', '2019-01-20', 'Yes', '2018-12-06'),
(2, '4', '6', '1500', '1500.00', '2018-12-07', '2018-12-12', 'remark', '0.00', '2018-12-12', 'No', ''),
(3, '1', '2', '1000', '1000.00', '2018-12-10', '2018-12-15', '', '0.00', '2018-12-15', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_website`
--
ALTER TABLE `manage_website`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_deposit`
--
ALTER TABLE `tbl_deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_email_config`
--
ALTER TABLE `tbl_email_config`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `tbl_enquiry`
--
ALTER TABLE `tbl_enquiry`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- Indexes for table `tbl_expense`
--
ALTER TABLE `tbl_expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_group`
--
ALTER TABLE `tbl_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_membership`
--
ALTER TABLE `tbl_membership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_permission_role`
--
ALTER TABLE `tbl_permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sms_config`
--
ALTER TABLE `tbl_sms_config`
  ADD PRIMARY KEY (`smsid`);

--
-- Indexes for table `tbl_subscription`
--
ALTER TABLE `tbl_subscription`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `manage_website`
--
ALTER TABLE `manage_website`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_deposit`
--
ALTER TABLE `tbl_deposit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_email_config`
--
ALTER TABLE `tbl_email_config`
  MODIFY `e_id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_enquiry`
--
ALTER TABLE `tbl_enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_expense`
--
ALTER TABLE `tbl_expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_group`
--
ALTER TABLE `tbl_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_membership`
--
ALTER TABLE `tbl_membership`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_permission_role`
--
ALTER TABLE `tbl_permission_role`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbl_sms_config`
--
ALTER TABLE `tbl_sms_config`
  MODIFY `smsid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_subscription`
--
ALTER TABLE `tbl_subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `db_hotel`
--
CREATE DATABASE IF NOT EXISTS `db_hotel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_hotel`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(500) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(500) NOT NULL,
  `gender` varchar(500) NOT NULL,
  `dob` text NOT NULL,
  `contact` text NOT NULL,
  `address` varchar(500) NOT NULL,
  `image` varchar(2000) NOT NULL,
  `created_on` date NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `fname`, `lname`, `gender`, `dob`, `contact`, `address`, `image`, `created_on`, `group_id`) VALUES
(1, 'admin', 'ndbhalerao91@gmail.com', 'aa7f019c326413d5b8bcad4314228bcd33ef557f5d81c7cc977f7728156f4357', 'Nikhil', 'Bhalerao', 'Male', '2011-05-02', '9423979339', 'Nashik', 'nikhilpng.png', '2018-04-30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `manage_website`
--

CREATE TABLE `manage_website` (
  `id` int(11) NOT NULL,
  `title` varchar(600) NOT NULL,
  `short_title` varchar(600) NOT NULL,
  `logo` text NOT NULL,
  `footer` text NOT NULL,
  `currency_code` varchar(600) NOT NULL,
  `currency_symbol` varchar(600) NOT NULL,
  `login_logo` text NOT NULL,
  `invoice_logo` text NOT NULL,
  `background_login_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manage_website`
--

INSERT INTO `manage_website` (`id`, `title`, `short_title`, `logo`, `footer`, `currency_code`, `currency_symbol`, `login_logo`, `invoice_logo`, `background_login_image`) VALUES
(1, '', '', 'logo png.png', '', '', '', 'logo png.png', '', '1 (1).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking`
--

CREATE TABLE `tbl_booking` (
  `id` int(200) NOT NULL,
  `name` varchar(500) NOT NULL,
  `roomname` varchar(500) NOT NULL,
  `kidno` int(200) NOT NULL,
  `adultno` int(200) NOT NULL,
  `fromdate` date NOT NULL,
  `todate` date NOT NULL,
  `taxamount` int(200) NOT NULL,
  `totalamount` int(200) NOT NULL,
  `paid` int(200) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_booking`
--

INSERT INTO `tbl_booking` (`id`, `name`, `roomname`, `kidno`, `adultno`, `fromdate`, `todate`, `taxamount`, `totalamount`, `paid`, `created_date`) VALUES
(12, '1', '11', 1, 2, '2019-09-03', '2019-09-01', 1199, 1100, 500, '2019-09-09'),
(13, '1', '11', 1, 2, '2019-09-11', '2019-09-02', 5841, 4950, 0, '2019-09-09'),
(14, '1', '11', 1, 2, '2019-09-04', '2019-09-03', 649, 550, 0, '2019-09-09'),
(15, '2', '14', 1, 2, '2019-09-01', '2019-09-30', 25288, 23200, 0, '2019-09-10'),
(16, '2', '12', 1, 1, '2019-09-01', '2019-09-30', 16240, 14500, 0, '2019-09-10'),
(17, '2', '11', 1, 1, '2019-09-01', '2019-09-30', 15399, 13050, 0, '2019-09-10'),
(19, '3', '11', 0, 3, '2019-09-17', '2019-09-10', 6867, 6300, 0, '2019-09-10'),
(20, '3', '12', 0, 2, '2019-09-04', '2019-09-03', 784, 700, 0, '2019-09-10'),
(21, '3', '13', 0, 1, '2019-09-02', '2019-09-01', 436, 400, 0, '2019-09-10'),
(22, '2', '12', 1, 2, '2019-09-18', '2019-09-11', 7021, 5950, 0, '2019-09-10'),
(23, '3', '18', 3, 2, '2019-10-21', '2019-10-24', 3924, 3600, 0, '0000-00-00'),
(24, '2', '14,', 1, 12, '2020-02-19', '2020-02-29', 41420, 38000, 0, '2020-02-18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_currency`
--

CREATE TABLE `tbl_currency` (
  `id` int(11) NOT NULL,
  `currcode` varchar(50) NOT NULL,
  `currsymbol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_currency`
--

INSERT INTO `tbl_currency` (`id`, `currcode`, `currsymbol`) VALUES
(2, 'INR', 'Rs'),
(3, 'USD', '$');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `birthdate` date NOT NULL,
  `contact` varchar(200) NOT NULL,
  `address` varchar(300) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `email`, `gender`, `birthdate`, `contact`, `address`, `created_date`) VALUES
(1, 'Atul Pethkar', 'atul@gmail.com', 'Female', '1991-05-29', '9423979339', 'India', '2019-09-09'),
(2, 'John Smith', 'john@gmail.com', 'Male', '1998-06-17', '9090909090', 'India', '2019-09-09'),
(3, 'Dhanu G', 'dhanu@gmail.com', 'Female', '2013-06-15', '9090909090', 'India', '2019-09-10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discount`
--

CREATE TABLE `tbl_discount` (
  `id` int(50) NOT NULL,
  `discountname` varchar(50) NOT NULL,
  `percentage` int(50) NOT NULL,
  `expirydate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_discount`
--

INSERT INTO `tbl_discount` (`id`, `discountname`, `percentage`, `expirydate`) VALUES
(1, 'Flat', 25, '2019-07-27'),
(2, 'upto', 50, '2019-07-31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_email_config`
--

CREATE TABLE `tbl_email_config` (
  `e_id` int(21) NOT NULL,
  `name` varchar(500) NOT NULL,
  `mail_driver_host` varchar(5000) NOT NULL,
  `mail_port` int(50) NOT NULL,
  `mail_username` varchar(50) NOT NULL,
  `mail_password` varchar(30) NOT NULL,
  `mail_encrypt` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_email_config`
--

INSERT INTO `tbl_email_config` (`e_id`, `name`, `mail_driver_host`, `mail_port`, `mail_username`, `mail_password`, `mail_encrypt`) VALUES
(1, '<hotal_booking> ', 'mail.upturnit.com', 587, 'contact.info@upturnit.com', 'x(ilz?cWumI2', 'sdsad');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(100) NOT NULL,
  `bookingid` int(100) NOT NULL,
  `amount` int(100) NOT NULL,
  `datee` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`id`, `bookingid`, `amount`, `datee`) VALUES
(3, 14, 649, '2019-09-09'),
(4, 13, 5000, '2019-09-07'),
(6, 12, 500, '2019-09-10'),
(7, 12, 500, '2019-09-25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rooms`
--

CREATE TABLE `tbl_rooms` (
  `id` int(50) NOT NULL,
  `floorno` int(50) NOT NULL,
  `roomname` varchar(50) NOT NULL,
  `peradultprice` int(50) NOT NULL,
  `perkidprice` int(50) NOT NULL,
  `color` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_rooms`
--

INSERT INTO `tbl_rooms` (`id`, `floorno`, `roomname`, `peradultprice`, `perkidprice`, `color`) VALUES
(11, 1, 'Superior', 300, 150, 'SLATEBLUE'),
(12, 1, 'double', 350, 150, 'pink'),
(13, 1, 'superior', 400, 300, 'orange'),
(14, 1, 'triple', 300, 200, 'yellow'),
(15, 1, 'Quad', 300, 200, 'green'),
(18, 1, 'deluxe', 300, 200, 'pink');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tax`
--

CREATE TABLE `tbl_tax` (
  `id` int(50) NOT NULL,
  `taxname` varchar(50) NOT NULL,
  `percentage` int(50) NOT NULL,
  `shortcode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tax`
--

INSERT INTO `tbl_tax` (`id`, `taxname`, `percentage`, `shortcode`) VALUES
(1, 'Goods And Services Tax', 18, 'GST'),
(2, 'Central GST', 9, 'CGST'),
(4, 'service tax', 12, 'st'),
(6, 'Goods Tax', 9, 'GT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_website`
--
ALTER TABLE `manage_website`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_currency`
--
ALTER TABLE `tbl_currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_discount`
--
ALTER TABLE `tbl_discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_email_config`
--
ALTER TABLE `tbl_email_config`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rooms`
--
ALTER TABLE `tbl_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tax`
--
ALTER TABLE `tbl_tax`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `manage_website`
--
ALTER TABLE `manage_website`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_currency`
--
ALTER TABLE `tbl_currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_discount`
--
ALTER TABLE `tbl_discount`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_email_config`
--
ALTER TABLE `tbl_email_config`
  MODIFY `e_id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_rooms`
--
ALTER TABLE `tbl_rooms`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_tax`
--
ALTER TABLE `tbl_tax`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `id5755675_inventoryforyou`
--
CREATE DATABASE IF NOT EXISTS `id5755675_inventoryforyou` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id5755675_inventoryforyou`;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `active`) VALUES
(4, 'color', 1),
(6, 'Size', 1);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value`
--

CREATE TABLE `attribute_value` (
  `id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `attribute_parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attribute_value`
--

INSERT INTO `attribute_value` (`id`, `value`, `attribute_parent_id`) VALUES
(5, 'Blue', 2),
(6, 'White', 2),
(7, 'M', 3),
(8, 'L', 3),
(9, 'Green', 2),
(10, 'Black', 2),
(12, 'Grey', 2),
(13, 'S', 3),
(17, 'yellow', 4),
(20, 'small', 6),
(21, 'medium', 6),
(22, 'large', 6);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `active`) VALUES
(15, 'Computer', 1),
(16, 'Clothes', 1),
(17, 'Mobile', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `active`) VALUES
(7, 'Electronic', 1),
(8, 'Dress', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `service_charge_value` varchar(255) NOT NULL,
  `vat_charge_value` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `currency` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `service_charge_value`, `vat_charge_value`, `address`, `phone`, `country`, `message`, `currency`) VALUES
(1, 'Webrider', '13', '10', 'Madrid', '758676851', 'sri lanka', 'hello everyone one', 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `permission`) VALUES
(1, 'Administrator', 'a:36:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:11:\"createBrand\";i:9;s:11:\"updateBrand\";i:10;s:9:\"viewBrand\";i:11;s:11:\"deleteBrand\";i:12;s:14:\"createCategory\";i:13;s:14:\"updateCategory\";i:14;s:12:\"viewCategory\";i:15;s:14:\"deleteCategory\";i:16;s:11:\"createStore\";i:17;s:11:\"updateStore\";i:18;s:9:\"viewStore\";i:19;s:11:\"deleteStore\";i:20;s:15:\"createAttribute\";i:21;s:15:\"updateAttribute\";i:22;s:13:\"viewAttribute\";i:23;s:15:\"deleteAttribute\";i:24;s:13:\"createProduct\";i:25;s:13:\"updateProduct\";i:26;s:11:\"viewProduct\";i:27;s:13:\"deleteProduct\";i:28;s:11:\"createOrder\";i:29;s:11:\"updateOrder\";i:30;s:9:\"viewOrder\";i:31;s:11:\"deleteOrder\";i:32;s:11:\"viewReports\";i:33;s:13:\"updateCompany\";i:34;s:11:\"viewProfile\";i:35;s:13:\"updateSetting\";}'),
(5, 'Testing', 'a:24:{i:0;s:10:\"updateUser\";i:1;s:8:\"viewUser\";i:2;s:11:\"createGroup\";i:3;s:11:\"updateGroup\";i:4;s:9:\"viewGroup\";i:5;s:11:\"createBrand\";i:6;s:11:\"updateBrand\";i:7;s:9:\"viewBrand\";i:8;s:14:\"createCategory\";i:9;s:14:\"updateCategory\";i:10;s:12:\"viewCategory\";i:11;s:11:\"createStore\";i:12;s:11:\"updateStore\";i:13;s:9:\"viewStore\";i:14;s:15:\"createAttribute\";i:15;s:15:\"updateAttribute\";i:16;s:13:\"viewAttribute\";i:17;s:13:\"createProduct\";i:18;s:13:\"updateProduct\";i:19;s:11:\"viewProduct\";i:20;s:11:\"createOrder\";i:21;s:11:\"updateOrder\";i:22;s:9:\"viewOrder\";i:23;s:13:\"updateCompany\";}');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `gross_amount` varchar(255) NOT NULL,
  `service_charge_rate` varchar(255) NOT NULL,
  `service_charge` varchar(255) NOT NULL,
  `vat_charge_rate` varchar(255) NOT NULL,
  `vat_charge` varchar(255) NOT NULL,
  `net_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `paid_status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `bill_no`, `customer_name`, `customer_address`, `customer_phone`, `date_time`, `gross_amount`, `service_charge_rate`, `service_charge`, `vat_charge_rate`, `vat_charge`, `net_amount`, `discount`, `paid_status`, `user_id`) VALUES
(4, 'BILPR-239D', 'Shafraz', 'kolombo', '0778650336', '1526279725', '450000.00', '13', '58500.00', '10', '45000.00', '553500.00', '', 2, 1),
(5, 'BILPR-0266', 'Chris', 'California', '05552242', '1526358119', '761700.00', '13', '99021.00', '10', '76170.00', '936891.00', '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_item`
--

CREATE TABLE `orders_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_item`
--

INSERT INTO `orders_item` (`id`, `order_id`, `product_id`, `qty`, `rate`, `amount`) VALUES
(6, 4, 8, '3', '150000', '450000.00'),
(7, 5, 11, '13', '900', '11700.00'),
(8, 5, 10, '5', '150000', '750000.00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `attribute_value_id` text,
  `brand_id` text NOT NULL,
  `category_id` text NOT NULL,
  `store_id` int(11) NOT NULL,
  `availability` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `price`, `qty`, `image`, `description`, `attribute_value_id`, `brand_id`, `category_id`, `store_id`, `availability`) VALUES
(8, 'computer', '', '150000', '45', 'assets/images/product_image/5af844384c067.jpg', '<p>dsadsad<br></p>', 'null', 'null', '[\"5\"]', 5, 1),
(10, 'Mac', '', '150000', '39', 'assets/images/product_image/5afa5fe395f9d.jpg', '<p>sample <br></p>', '[\"17\",\"20\"]', '[\"15\"]', '[\"7\"]', 5, 1),
(11, 'Rubuke', '', '900', '37', 'assets/images/product_image/5afa6026d808e.jpg', '<p>sample<br></p>', '[\"17\",\"21\"]', '[\"15\"]', '[\"7\"]', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `active`) VALUES
(5, 'colombo', 1),
(6, 'kandy', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `phone`, `gender`) VALUES
(1, 'super admin', '$2y$10$yfi5nUQGXUZtMdl27dWAyOd/jMOmATBpiUvJDmUu9hJ5Ro6BE5wsK', 'admin@admin.com', 'john', 'doe', '65646546', 1),
(11, 'shafraz', '$2y$10$LK91ERpEJxortR86lkDjwu7MClazgIrvDqehqOnq5ZKm30elKAkUa', 'shafraz@gmail.com', 'mohamed', 'nizam', '0778650669', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(7, 6, 4),
(8, 7, 4),
(9, 8, 4),
(10, 9, 5),
(11, 10, 5),
(12, 11, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_value`
--
ALTER TABLE `attribute_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_item`
--
ALTER TABLE `orders_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `attribute_value`
--
ALTER TABLE `attribute_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders_item`
--
ALTER TABLE `orders_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Database: `pharmacy1`
--
CREATE DATABASE IF NOT EXISTS `pharmacy1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pharmacy1`;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `delete_status` tinyint(4) DEFAULT '0',
  `delete_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`, `created_at`, `delete_status`, `delete_date`) VALUES
(1, 'admin', 'admin', '2017-06-06 11:23:04', 0, NULL),
(2, 'role 1', 'role 1', '2019-04-08 10:51:05', 0, NULL),
(3, 'role2', 'role2', '2019-04-08 10:52:00', 0, NULL),
(4, 'role 3', 'role 3', '2019-04-08 10:54:18', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medicine_category`
--

CREATE TABLE `medicine_category` (
  `id` int(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `short_name` varchar(15) NOT NULL,
  `added_date` date NOT NULL,
  `delete_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine_category`
--

INSERT INTO `medicine_category` (`id`, `name`, `short_name`, `added_date`, `delete_status`) VALUES
(1, 'Phytopathology', 'Phyto', '0000-00-00', 0),
(2, 'Injuries', 'Injuries', '0000-00-00', 0),
(3, 'Cancer', 'Cancer', '0000-00-00', 0),
(4, 'Animal diseases', 'AD', '0000-00-00', 0),
(5, 'Growth disorders', 'GD', '0000-00-00', 0),
(6, 'Rare diseases', 'RD', '0000-00-00', 0),
(7, 'Neoplasms', 'Neo', '0000-00-00', 0),
(8, 'Inflammations', 'Inflam', '0000-00-00', 0),
(9, 'Sleep disorders', 'SD', '0000-00-00', 0),
(11, 'Infectious diseases', 'ID', '2019-04-02', 0),
(12, 'sdfsdfsdf', 'sdf', '2019-04-02', 0),
(13, 'cvnvcnvncvncvn', 'cnv', '2019-04-02', 0),
(14, 'fghjgjhfgjh', 'fgh', '2019-04-02', 0),
(15, 'Category 14', 'Cat 14', '2019-04-05', 0);

-- --------------------------------------------------------

--
-- Table structure for table `modal`
--

CREATE TABLE `modal` (
  `id` int(5) NOT NULL,
  `header` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modal`
--

INSERT INTO `modal` (`id`, `header`, `title`, `description`) VALUES
(1, 'Modal Header Title', 'Hello, this is version 2.0 and I am still working on this.\r\n', 'Please don\'t forget to give credit to original developer because I really worked hard to develop this project and please don\'t forget to like and share it if you found it useful :) For students or anyone else who needs program or source code for thesis writing or any Professional Software Development,Website Development,Mobile Apps Development at affordable cost contact me at Email : mayuri.infospace@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `role_name`) VALUES
(1, 'manage_medicinals', 'Manage Medicinals', 'Manage Medicinals', NULL),
(2, 'manage_pos', 'Manage POS', 'Manage POS', NULL),
(3, 'manage_roles', 'Manage User Roles', 'Manage User Roles', NULL),
(4, 'manage_users', 'Manage Users', 'Manage Users', NULL),
(5, 'manage_sales', 'Manage Sales', 'Manage Sales', NULL),
(6, 'manage_categories', 'Manage Categories', 'Manage Categories', NULL),
(7, 'manage_suppliers', 'Manage Suppliers', 'Manage Suppliers', NULL),
(8, 'manage_customers', 'Manage Customers', 'Manage Customers', NULL),
(9, 'manage_reports', 'Manage Reports', 'Manage Reports', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(7, 5, 1),
(8, 6, 1),
(9, 7, 1),
(10, 8, 1),
(11, 9, 1),
(16, 6, 3),
(17, 7, 3),
(18, 3, 4),
(19, 4, 4),
(20, 8, 4),
(21, 9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(2) NOT NULL,
  `fevicon` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `title` varchar(300) NOT NULL,
  `login_image` varchar(100) NOT NULL,
  `footer` varchar(300) NOT NULL,
  `currency` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `fevicon`, `logo`, `title`, `login_image`, `footer`, `currency`) VALUES
(1, 'fevicon-179.png', 'logo-597.png', 'Pharmacy', 'login_image-324.png', 'Footer', 'Rs.');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `fax` varchar(200) NOT NULL,
  `info` text NOT NULL,
  `added_date` date NOT NULL,
  `delete_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `address`, `telephone`, `fax`, `info`, `added_date`, `delete_status`) VALUES
(1, 'Peso', 'dfgdf111', '+919767424611', '422208111', 'dfgdfgdfg11111', '2019-04-02', 0),
(2, 'Renna', 'Bukasa', '+25680129012', '+08998212', 'Red or die man', '2019-11-01', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'admin',
  `avator` varchar(255) DEFAULT NULL,
  `group_id` int(50) NOT NULL,
  `delete_status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `email`, `login`, `role`, `avator`, `group_id`, `delete_status`) VALUES
(1, 'admin@admin.com', '$2y$10$eqnU/hsNjq3M7h3TvFfwYOKIP/6jHmzBLEFiHyhMaKjf4X3HenLWa', 'admin', '82477.png', 1, 0),
(3, 'user@gmail.com', '$2y$10$eqnU/hsNjq3M7h3TvFfwYOKIP/6jHmzBLEFiHyhMaKjf4X3HenLWa', 'users', NULL, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_alerts`
--

CREATE TABLE `tbl_alerts` (
  `id` int(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_alerts`
--

INSERT INTO `tbl_alerts` (`id`, `code`, `description`, `type`) VALUES
(1, '001', 'Invalid email or password', 'warning'),
(2, '002', 'Settings are updated', 'success'),
(3, '003', 'Record Added Successfully', 'success'),
(4, '004', 'Record Successfully Updated', 'success'),
(5, '005', 'Record Sudccessfully Deleted', 'success');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_category`
--
ALTER TABLE `medicine_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modal`
--
ALTER TABLE `modal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tbl_alerts`
--
ALTER TABLE `tbl_alerts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `medicine_category`
--
ALTER TABLE `medicine_category`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `modal`
--
ALTER TABLE `modal`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_alerts`
--
ALTER TABLE `tbl_alerts`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'table', 'tour', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"allrows\":\"1\",\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@TABLE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"json_structure_or_data\":\"data\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"htmlword_columns\":null,\"json_pretty_print\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'server', 'remedydb', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"career\",\"carrental\",\"columbandb\",\"dbempinformation\",\"db_ecommerce\",\"db_gym1\",\"db_hotel\",\"id5755675_inventoryforyou\",\"pharmacy1\",\"phpmyadmin\",\"phpsamples\",\"remedydb\",\"test\",\"tour\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"json_structure_or_data\":\"data\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"htmlword_columns\":null,\"json_pretty_print\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"remedydb\",\"table\":\"user\"},{\"db\":\"remedydb\",\"table\":\"review\"},{\"db\":\"remedydb\",\"table\":\"remedies\"},{\"db\":\"remedydb\",\"table\":\"ratings\"},{\"db\":\"remedydb\",\"table\":\"location\"},{\"db\":\"remedydb\",\"table\":\"disease\"},{\"db\":\"career\",\"table\":\"tbljobcategory\"},{\"db\":\"db_ecommerce\",\"table\":\"tblcustomer\"},{\"db\":\"db_gym1\",\"table\":\"tbl_subscription\"},{\"db\":\"db_gym1\",\"table\":\"tbl_deposit\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-10-27 17:37:49', '{\"collation_connection\":\"utf8mb4_unicode_ci\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `phpsamples`
--
CREATE DATABASE IF NOT EXISTS `phpsamples` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `phpsamples`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_staff`
--

CREATE TABLE `tbl_staff` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `experience` int(11) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_staff`
--

INSERT INTO `tbl_staff` (`id`, `name`, `experience`, `major`) VALUES
(1, 'Fernando', 12, 'Computer Science'),
(2, 'Reena', 7, 'Artificial Intelligence'),
(3, 'Robert', 8, 'Statistics'),
(4, 'Abraham', 19, 'Mathematics'),
(5, 'Jonathan', 10, 'Operation Research'),
(6, 'Oliver', 13, 'Computer Science'),
(7, 'David', 12, 'Artificial Intelligence'),
(8, 'Mclane', 13, 'Statistics'),
(9, 'Rosario', 14, 'Mathematics'),
(10, 'Antony', 15, 'Operation Research'),
(11, 'Abel', 16, 'Computer Science'),
(12, 'Jennifer', 17, 'Artificial Intelligence'),
(13, 'Jane Thomas', 12, 'Statistics'),
(14, 'Sara', 19, 'Mathematics'),
(15, 'Sebastian', 20, 'Operation Research'),
(16, 'Sophia', 13, 'Computer Science'),
(17, 'Isabella', 22, 'Digital Systems'),
(18, 'Gabriel', 7, 'Artificial Intelligence'),
(19, 'Grace Lilly', 16, 'Statistics'),
(20, 'victoria', 5, 'Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `toy`
--

CREATE TABLE `toy` (
  `id` int(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(20) NOT NULL,
  `category` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `stock_count` bigint(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toy`
--

INSERT INTO `toy` (`id`, `name`, `code`, `category`, `price`, `stock_count`) VALUES
(9, 'Music Aeroplane', 'TOY#MA01', 'Music Toys', 250, 500),
(10, 'Power Ranger', 'TOY#BT01', 'Battery Toys', 1000, 100),
(11, 'Remote Car', 'TOY#RMT01', 'Remote Control Toys', 280, 800),
(12, 'Bubbles', 'TOY#WT01', 'Water Games', 100, 1000),
(13, 'Cricket Cards', 'TOY#CD01', 'Card Games', 200, 80),
(14, 'Basket Ball', 'TOY#BB01', 'Outdoor Toys', 2000, 500),
(15, 'Word Puzzles', 'TOY#PZ01', 'Puzzles', 200, 200),
(16, 'Water Gun', 'TOY#WG01', 'Water Games', 100, 1000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toy`
--
ALTER TABLE `toy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `toy`
--
ALTER TABLE `toy`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Database: `remedydb`
--
CREATE DATABASE IF NOT EXISTS `remedydb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `remedydb`;

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE `disease` (
  `Disease_ID` int(11) NOT NULL,
  `Disease_Name` varchar(50) NOT NULL,
  `Disease_Description` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `Address_ID` int(11) NOT NULL,
  `Address` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Remedy_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `Rating_ID` int(11) NOT NULL,
  `Rate` int(11) NOT NULL,
  `Remedy_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `remedies`
--

CREATE TABLE `remedies` (
  `Remedy_ID` int(11) NOT NULL,
  `Remedy` varchar(60) NOT NULL,
  `Instruction` varchar(40) NOT NULL,
  `Disease_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `User_ID` int(11) NOT NULL,
  `Comments` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_ID` int(11) NOT NULL,
  `User_Name` varchar(50) NOT NULL,
  `User_code` int(11) NOT NULL,
  `Status` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `disease`
--
ALTER TABLE `disease`
  ADD PRIMARY KEY (`Disease_ID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`Address_ID`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`Rating_ID`);

--
-- Indexes for table `remedies`
--
ALTER TABLE `remedies`
  ADD PRIMARY KEY (`Remedy_ID`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`User_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `disease`
--
ALTER TABLE `disease`
  MODIFY `Disease_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `Address_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `Rating_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `remedies`
--
ALTER TABLE `remedies`
  MODIFY `Remedy_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `tour`
--
CREATE DATABASE IF NOT EXISTS `tour` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tour`;

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `admin_id` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblattractions`
--

CREATE TABLE `tblattractions` (
  `attraction_id` char(10) NOT NULL,
  `name` varchar(40) NOT NULL,
  `image` varchar(30) NOT NULL,
  `package_id` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblbookings`
--

CREATE TABLE `tblbookings` (
  `booking_id` char(10) NOT NULL,
  `checkin_date` date NOT NULL,
  `checkout_date` date NOT NULL,
  `no_of_guests` int(5) NOT NULL,
  `client_id` char(10) NOT NULL,
  `membership_id` char(10) NOT NULL,
  `smoking_id` int(5) NOT NULL,
  `room_id` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblclients`
--

CREATE TABLE `tblclients` (
  `client_id` char(10) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `contact_no` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `contact_id` char(10) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `message` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblhotels`
--

CREATE TABLE `tblhotels` (
  `hotel_id` char(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(40) NOT NULL,
  `image` varchar(30) NOT NULL,
  `ratings` decimal(4,2) NOT NULL,
  `price per night` int(30) NOT NULL,
  `city` varchar(20) NOT NULL,
  `no_of_rooms` int(20) NOT NULL,
  `address` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblmiscellaneous_charges`
--

CREATE TABLE `tblmiscellaneous_charges` (
  `miscellanous_id` char(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `chargesUSD` decimal(15,2) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpackage`
--

CREATE TABLE `tblpackage` (
  `package_id` char(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `image` varchar(30) NOT NULL,
  `ratings` int(10) NOT NULL,
  `country` varchar(20) NOT NULL,
  `city` varchar(30) NOT NULL,
  `priceUSD` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `page_id` int(10) NOT NULL,
  `pageName` varchar(30) NOT NULL,
  `type` varchar(40) NOT NULL,
  `details` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblrooms`
--

CREATE TABLE `tblrooms` (
  `room_id` int(11) NOT NULL,
  `roomtype` char(10) NOT NULL,
  `floor_number` int(30) NOT NULL,
  `status` char(10) NOT NULL,
  `hotel` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblroomtype`
--

CREATE TABLE `tblroomtype` (
  `roomtype_id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `max_guest` int(30) NOT NULL,
  `smoking` int(5) NOT NULL,
  `priceUSD` decimal(15,2) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `subscriber_id` char(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `date_subscribed` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonials`
--

CREATE TABLE `tbltestimonials` (
  `testimonial_id` char(10) NOT NULL,
  `client_id` char(10) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `testimonial` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbltransactions`
--

CREATE TABLE `tbltransactions` (
  `transction_id` char(10) NOT NULL,
  `payment_type` varchar(30) NOT NULL DEFAULT 'Cash, Cheque, Credit',
  `hotel_id` char(10) NOT NULL,
  `miscellanous_charges` char(10) NOT NULL,
  `client_id` char(10) NOT NULL,
  `employer_id` char(10) NOT NULL,
  `payment_status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tblattractions`
--
ALTER TABLE `tblattractions`
  ADD PRIMARY KEY (`attraction_id`);

--
-- Indexes for table `tblbookings`
--
ALTER TABLE `tblbookings`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `tblclients`
--
ALTER TABLE `tblclients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `tblhotels`
--
ALTER TABLE `tblhotels`
  ADD PRIMARY KEY (`hotel_id`);

--
-- Indexes for table `tblmiscellaneous_charges`
--
ALTER TABLE `tblmiscellaneous_charges`
  ADD PRIMARY KEY (`miscellanous_id`);

--
-- Indexes for table `tblpackage`
--
ALTER TABLE `tblpackage`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `tblroomtype`
--
ALTER TABLE `tblroomtype`
  ADD PRIMARY KEY (`roomtype_id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`subscriber_id`);

--
-- Indexes for table `tbltestimonials`
--
ALTER TABLE `tbltestimonials`
  ADD PRIMARY KEY (`testimonial_id`);

--
-- Indexes for table `tbltransactions`
--
ALTER TABLE `tbltransactions`
  ADD PRIMARY KEY (`transction_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `page_id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
