-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2015 at 07:32 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ci_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `version` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(21);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_articles`
--

CREATE TABLE IF NOT EXISTS `tbl_articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `content` varchar(10000) DEFAULT NULL,
  `category_id` int(10) unsigned DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `image_title` varchar(100) DEFAULT NULL,
  `video` varchar(100) DEFAULT NULL,
  `video_title` varchar(100) DEFAULT NULL,
  `video_url` varchar(200) DEFAULT NULL,
  `embed_code` varchar(10000) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `author` int(10) DEFAULT NULL,
  `modified_by` int(10) DEFAULT NULL,
  `meta_key` varchar(100) DEFAULT NULL,
  `meta_desc` varchar(10000) DEFAULT NULL,
  `meta_robots` varchar(100) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `tbl_articles_ibfk_1` (`category_id`),
  KEY `tbl_articles_ibfk_3` (`author`),
  KEY `tbl_articles_ibfk_4` (`modified_by`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `tbl_articles`
--

INSERT INTO `tbl_articles` (`id`, `name`, `slug`, `content`, `category_id`, `image`, `image_title`, `video`, `video_title`, `video_url`, `embed_code`, `status`, `created_at`, `author`, `modified_by`, `meta_key`, `meta_desc`, `meta_robots`, `updated_at`) VALUES
(1, 'home', 'home', '<div class="span9"  left; min-height: 30px; margin-left: 0px; width: 869.984375px; box-sizing: border-box; color: rgb(52, 73, 94); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;">\r\n<h4>WHAT&#39;S NEXT? CONNECTING THE IT WORLD</h4>\r\n\r\n<p >Joing IT Courses at THE IIT &amp; Change the your Life &amp; World.</p>\r\n</div>\r\n\r\n<div class="span3"  left; min-height: 30px; margin-left: 30px; width: 270px; box-sizing: border-box; color: rgb(52, 73, 94); font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;"><a class="btn btn-success btn-large pull-right" href="http://localhost/cel/2015/mar/projects/mercy/ci_cms/front/#"  rgb(255, 255, 255); text-decoration: none; -webkit-transition: 300ms; transition: 300ms; display: inline-block; padding: 11px 19px; margin-bottom: 0px; font-size: 17.5px; text-align: center; vertical-align: middle; cursor: pointer; text-shadow: none; border: 0px; border-radius: 0px; -webkit-box-shadow: rgba(255, 255, 255, 0.2) 0px 1px 0px inset, rgba(0, 0, 0, 0.0470588) 0px 1px 2px; box-shadow: none; float: right; background-image: none; background-color: rgb(7, 89, 158); background-repeat: repeat-x;">Best Institue @ RAPTI</a></div>', 15, '4-logo.png', NULL, NULL, NULL, NULL, NULL, 1, '2015-03-01 21:35:50', NULL, 25, NULL, NULL, NULL, '2015-03-21 20:04:32'),
(2, 'About Us', 'about-us', '<div class="row-fluid">\r\n<div class="span15">\r\n<div class="row-fluid">\r\n<div class="span15">\r\n<p>The IIT is a Computer Institute which provides fully IT courses. The fulform of The IIT is (The Institute of Information Technology). Established In 2015, The IIT provides Quality and professional IT education to the students. Expert &amp; Experience IT teacher is the main features of The IIT. The IIT provides 24hrs electricity &amp; Internet with Wi-Fi Zone. We organiz weekly seminar, monthly workshop. We provides free PD &amp; Interview perpration classes. Our Institute is well stocked library with latest Books &amp; Journals, Laptop &amp; Desktop Computer Lab. We provides projector based training, practical time 90 mins, Online class, industrial training &amp; visit, Own Books &amp; 100% Job Guarantee. The IIT is a Computer Institute which provides fully IT courses. The fulform of The IIT is (The Institute of Information Technology). Established In 2015, The IIT provides Quality and professional IT education to the students. Expert &amp; Experience IT teacher is the main features of The IIT. The IIT provides 24hrs electricity &amp; Internet with Wi-Fi Zone. We organiz weekly seminar, monthly workshop. We provides free PD &amp; Interview perpration classes. Our Institute is well stocked library with latest Books &amp; Journals, Laptop &amp; Desktop Computer Lab. We provides projector based training, practical time 90 mins, Online class, industrial training &amp; visit, Own Books &amp; 100% Job Guarantee.</p>\r\n</div>\r\n</div>\r\nMeet Our Faculty\r\n\r\n<div class="row-fluid">\r\n<div class="span3">\r\n<div class="box">\r\n<p><img alt="" src="http://localhost/cel/2015/mar/projects/iit/front/iit_v2/images/sample/team1.jpg" /></p>\r\n\r\n<h5>Bhanu Gurung (Executive Head)</h5>\r\n\r\n<p>Bhanu Gurung is a certified Hardware &amp; Networking faculty &amp; Executive Head of The IIT with above 12yrs experience in IT.</p>\r\n</div>\r\n</div>\r\n\r\n<div class="span3">\r\n<div class="box">\r\n<p><img alt="" src="http://localhost/cel/2015/mar/projects/iit/front/iit_v2/images/sample/team2.jpg" /></p>\r\n\r\n<h5>David J. Robbins</h5>\r\n\r\n<p>Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat.</p>\r\n</div>\r\n</div>\r\n\r\n<div class="span3">\r\n<div class="box">\r\n<p><img alt="" src="http://localhost/cel/2015/mar/projects/iit/front/iit_v2/images/sample/team4.jpg" /></p>\r\n\r\n<h5>Thomas M. Morgan</h5>\r\n\r\n<p>Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat.</p>\r\n</div>\r\n</div>\r\n\r\n<div class="span3">\r\n<div class="box">\r\n<p><img alt="" src="http://localhost/cel/2015/mar/projects/iit/front/iit_v2/images/sample/team3.jpg" /></p>\r\n\r\n<h5>Agustin E. Hightower</h5>\r\n\r\n<p>Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat.</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="row-fluid">\r\n<div class="span15">\r\n<h3>Why Choose Us?</h3>\r\n\r\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 15, '2.jpg', NULL, NULL, NULL, NULL, '&lt;iframe width="560" height="315" src="https://www.youtube.com/embed/HJTAUXbvJNo" frameborder="0" allowfullscreen&gt;&lt;/iframe>', 1, '2015-03-01 21:35:50', NULL, 25, NULL, NULL, NULL, '2015-03-29 18:55:42'),
(3, 'Admission', 'admission', '<ul>\r\n <li>01\r\n <h4>How to Apply</h4>\r\n\r\n <p>Students who would like to join at our institute, have to choose first the course/programs wish to apply for. Student can choose the program from the website or can directly contact at the institute or its admission or regional centers.</p>\r\n </li>\r\n <li>02\r\n <h4>Local Students</h4>\r\n\r\n <p>Local student can directly communication with the Academic Advisors for any advice on career related issues and collect the related papers and admission form.</p>\r\n </li>\r\n <li>03\r\n <h4>Out of Valley Students</h4>\r\n\r\n <p>Students who are not from home may apply online independently through the website. Out of valley students can download the application form from our website and send it to our Academic Advisors with all Scanned Copy of Academic Papers, Photographs, and References from their local authority. After checking out all documents the Academic Advisor will give confirmation for your study at our college.</p>\r\n </li>\r\n <li>04\r\n <h4>If you want to apply directly please check that you have attached the following documents</h4>\r\n\r\n <ul>\r\n  <li>Attested photocopies of all your educational certificates of all education levels achieved.</li>\r\n  <li>References from the Schools/Colleges Authority. The References must be on Headed Paper from an academic or an employer and the original, not photocopies.</li>\r\n  <li>Two passport size photographs.</li>\r\n  <li>Citizenship Photocopy if applicable.</li>\r\n  <li>A statement from the student why you want to study at The IIT and why you choose The IIT.</li>\r\n  <li>Guardian Form.</li>\r\n </ul>\r\n </li>\r\n <li>05\r\n <h4>Admission Eligibility</h4>\r\n\r\n <ul>\r\n  <li>Minimum 50% aggregate in +2 (any faculty).</li>\r\n  <li>Minimum 2 A level.</li>\r\n </ul>\r\n </li>\r\n</ul>', NULL, '10689846_831019860283166_7409871010409812837_n.jpg', 'imgte', '4.mp4', 'vte', 'r', '&lt;iframe width="560" height="315" src="https://www.youtube.com/embed/pLJzNRdDTI4" frameborder="0" allowfullscreen&gt;&lt;/iframe>', 1, '2015-03-15 09:18:30', 25, 25, 'mke', 'mde', 'mre', '2015-03-29 19:28:23'),
(4, 'Mona Byers', 'mona-byers', '', 8, NULL, 'Minim nobis quidem rerum adipisci illo non ut ut alias modi aut consequatur Doloribus blanditiis sus', NULL, NULL, NULL, NULL, 3, '2015-03-16 15:40:41', 25, NULL, NULL, NULL, NULL, NULL),
(6, 'dfd', 'dfd', '<p><img alt="" src="http://localhost/cel/2015/mar/projects/mercy/ci_cms/uploads/files/pics/articles/1.png" /></p>\r\n\r\n<p>&lt;iframe frameborder=&quot;0&quot; height=&quot;315&quot; src=&quot;http://localhost/cel/2015/mar/projects/mercy/ci_cms/uploads/files/videos/articles/2.mp4&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;</p>', 14, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2015-03-16 16:55:29', 25, NULL, NULL, NULL, NULL, NULL),
(7, 'Projector Based Training', 'projector-based-training', '<p><span  245, 245); color:rgb(52, 73, 94); font-family:helvetica neue,helvetica,arial,sans-serif; font-size:12px">Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio.</span></p>', 16, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2015-03-19 18:57:08', 25, NULL, NULL, NULL, NULL, NULL),
(8, 'Laptop & Desktop Computer Lab', 'laptop-desktop-computer-lab', '<p><span  245, 245); color:rgb(52, 73, 94); font-family:helvetica neue,helvetica,arial,sans-serif; font-size:12px">Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio.</span></p>', 16, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2015-03-19 18:57:31', 25, NULL, NULL, NULL, NULL, NULL),
(9, 'contact us', 'contact-us', '<section class="no-margin1">\r\n       &lt;iframe width="95%" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3521.4867110862915!2d82.48436199999999!3d28.040160000000004!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3997947b6ea52f51:0x1dd0a21566fc6f88!2sTHE+IIT+Pvt.Ltd.!5e0!3m2!1sen!2snp!4v1426612655535" &gt;&lt;/iframe>\r\n\r\n\r\n    </section>\r\n<div class="row-fluid">\r\n<div class="span8">\r\n<h4>Please leave us a message if you have any queries.</h4>\r\n\r\n<div class="status alert alert-success">&nbsp;</div>\r\n\r\n<div class="row-fluid">\r\n<div class="span5">First Name Last Name Email Address</div>\r\n\r\n<div class="span7">Message</div>\r\n</div>\r\nSend Message\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div class="span3">\r\n<h4>Our Address</h4>\r\n\r\n<p>The IIT is a Professional Institue which provides Quality IT Education.</p>\r\n\r\n<p>Tulshipur Chowk, Ghorahi-Dang<br />\r\nRapti (Nepal)</p>\r\n\r\n<p>info@iitinfotrain.com</p>\r\n\r\n<p>&nbsp;+977-9801329699</p>\r\n\r\n<p>&nbsp;www.iitinfotrain.com</p>\r\n</div>\r\n</div>', 26, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2015-03-19 19:26:38', 25, 25, NULL, NULL, NULL, '2015-03-19 20:34:04'),
(10, 'address', 'address', '<ul class="unstyled address">\r\n                    <li>\r\n                        <i class="icon-home"></i><strong>Address:</strong> Tulshipur Chowk, Ghorahi<br>Dang-Rapti (Nepal)\r\n                    </li>\r\n                    <li>\r\n                        <i class="icon-envelope"></i>\r\n                        <strong>Email: </strong> info@iitinfotrain.com\r\n                    </li>\r\n                    <li>\r\n                        <i class="icon-globe"></i>\r\n                        <strong>Website:</strong> www.iitinfotrain.com\r\n                    </li>\r\n                    <li>\r\n                        <i class="icon-phone"></i>\r\n                        <strong>Cell:</strong> 9801329699\r\n                    </li>\r\n                </ul>', 27, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2015-03-19 19:30:54', 25, 25, NULL, NULL, NULL, '2015-03-22 21:41:43'),
(11, 'useful links', 'useful-links', '<ul>\r\n <li><a href="http://localhost/cel/2015/mar/projects/iit/front/iit_v2/contact_us.php#">www.hcch.net</a></li>\r\n <li><a href="http://localhost/cel/2015/mar/projects/iit/front/iit_v2/contact_us.php#">www.imo.org</a></li>\r\n <li><a href="http://localhost/cel/2015/mar/projects/iit/front/iit_v2/contact_us.php#">www.icrc.org</a></li>\r\n <li><a href="http://localhost/cel/2015/mar/projects/iit/front/iit_v2/contact_us.php#">www.senate.gov</a></li>\r\n <li><a href="http://localhost/cel/2015/mar/projects/iit/front/iit_v2/contact_us.php#">www.ustr.gov</a></li>\r\n <li><a href="http://localhost/cel/2015/mar/projects/iit/front/iit_v2/contact_us.php#">www.icrc.org</a></li>\r\n <li><a href="http://localhost/cel/2015/mar/projects/iit/front/iit_v2/contact_us.php#">www.senate.gov</a></li>\r\n <li><a href="http://localhost/cel/2015/mar/projects/iit/front/iit_v2/contact_us.php#">www.ustr.gov</a></li>\r\n</ul>', 27, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2015-03-19 19:32:20', 25, 25, NULL, NULL, NULL, '2015-03-22 21:48:47'),
(12, 'partner1', 'partner1', '', 28, 'client1.png', NULL, NULL, NULL, NULL, NULL, 1, '2015-03-19 19:36:57', 25, 25, NULL, NULL, NULL, '2015-03-19 20:42:47'),
(13, 'partner2', 'partner2', '', 28, 'client2.png', NULL, NULL, NULL, NULL, NULL, 1, '2015-03-19 19:37:16', 25, 25, NULL, NULL, NULL, '2015-03-19 20:43:05'),
(14, 'partner3', 'partner3', '', 28, 'client3.png', NULL, NULL, NULL, NULL, NULL, 1, '2015-03-19 19:37:36', 25, 25, NULL, NULL, NULL, '2015-03-19 20:43:20'),
(15, 'd', 'd', '', 28, 'client4.png', NULL, NULL, NULL, NULL, NULL, 3, '2015-03-19 19:40:16', 25, 25, NULL, NULL, NULL, '2015-03-19 20:42:29'),
(16, 'Partner4', 'partner4', '', 28, '', NULL, NULL, NULL, NULL, NULL, 1, '2015-03-19 19:45:37', 25, 25, NULL, NULL, NULL, '2015-03-19 20:46:00'),
(17, 'Diploma in', 'diploma-in', '<p><span  245, 245); color:rgb(52, 73, 94); font-family:helvetica neue,helvetica,arial,sans-serif; font-size:12px">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old</span></p>', 17, 'client1.png', NULL, NULL, NULL, NULL, NULL, 1, '2015-03-19 19:36:57', 25, 25, NULL, NULL, NULL, '2015-03-20 13:51:50'),
(18, 'Diploma in Graphic', 'diploma-in-graphic', '<p><span  245, 245); color:rgb(52, 73, 94); font-family:helvetica neue,helvetica,arial,sans-serif; font-size:12px">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</span></p>', 17, 'client2.png', NULL, NULL, NULL, NULL, NULL, 1, '2015-03-19 19:37:16', 25, 25, NULL, NULL, NULL, '2015-03-20 13:51:31'),
(19, 'Diploma in Graphic Designing news', 'diploma-in-graphic-designing-news', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word</p>', 17, 'client3.png', NULL, NULL, NULL, NULL, NULL, 1, '2015-03-19 19:37:36', 25, 25, NULL, NULL, NULL, '2015-03-29 14:41:37'),
(20, 'n4', 'n4', '', 17, 'client4.png', NULL, NULL, NULL, NULL, NULL, 3, '2015-03-19 19:40:16', 25, 25, NULL, NULL, NULL, '2015-03-19 20:42:29'),
(21, 'pd1e', 'pd1e', '', 24, 'client1.png', NULL, NULL, NULL, NULL, NULL, 1, '2015-03-19 19:36:57', 25, 25, NULL, NULL, NULL, '2015-03-20 20:01:55'),
(25, 'wd2', 'wd2', '<p><em>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Non, suscipit dicta unde quia culpa eius blanditiis fugit. Tenetur delectus quas quibusdam vero, reiciendis animi magni aperiam dolor ipsum qui sequi. .</em></p>', 22, 'client1.png', NULL, NULL, NULL, NULL, NULL, 1, '2015-03-19 19:36:57', 25, 25, NULL, NULL, NULL, '2015-03-20 20:06:47'),
(26, 'wd3', 'wd3', '<p><em>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Non, suscipit dicta unde&nbsp;</em></p>', 22, 'client1.png', NULL, NULL, NULL, NULL, NULL, 1, '2015-03-19 19:36:57', 25, 25, NULL, NULL, NULL, '2015-03-20 20:06:27'),
(27, 'pd2', 'pd2', '', 24, 'client1.png', NULL, NULL, NULL, NULL, NULL, 1, '2015-03-19 19:36:57', 25, 25, NULL, NULL, NULL, '2015-03-20 18:46:08'),
(28, 'wd1e', 'wd1e', '<p><em>Lorem ipsum dolor sit amet, consectetur&nbsp;</em></p>', 22, 'client1.png', NULL, NULL, NULL, NULL, NULL, 1, '2015-03-19 19:36:57', 25, 25, NULL, NULL, NULL, '2015-03-20 20:06:07'),
(29, 'ld2', 'ld2', '', 23, 'client1.png', NULL, NULL, NULL, NULL, NULL, 1, '2015-03-19 19:36:57', 25, 25, NULL, NULL, NULL, '2015-03-20 18:46:08'),
(30, 'Ld1', 'ld1', '', 23, 'client1.png', NULL, NULL, NULL, NULL, NULL, 1, '2015-03-19 19:36:57', 25, 25, NULL, NULL, NULL, '2015-03-20 18:46:08'),
(31, 'Services', 'services', '<div class="row-fluid">\r\n<div class="span4">\r\n<div class="center">\r\n<h4>Projector Based Training</h4>\r\n\r\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio.</p>\r\n</div>\r\n</div>\r\n\r\n<div class="span4">\r\n<div class="center">\r\n<p>&nbsp;</p>\r\n\r\n<h4>Laptop &amp; Desktop Computer Lab</h4>\r\n\r\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio.</p>\r\n</div>\r\n</div>\r\n\r\n<div class="span4">\r\n<div class="center">\r\n<p>&nbsp;</p>\r\n\r\n<h4>PD &amp; Intreview Perparation Classes</h4>\r\n\r\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio.</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<hr />\r\n<div class="row-fluid">\r\n<div class="span4">\r\n<div class="center">\r\n<p>&nbsp;</p>\r\n\r\n<h4>Globle Certification Courses</h4>\r\n\r\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio.</p>\r\n</div>\r\n</div>\r\n\r\n<div class="span4">\r\n<div class="center">\r\n<p>&nbsp;</p>\r\n\r\n<h4>Online Live Classes</h4>\r\n\r\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio.</p>\r\n</div>\r\n</div>\r\n\r\n<div class="span4">\r\n<div class="center">\r\n<p>&nbsp;</p>\r\n\r\n<h4>24hrs Internet &amp; Electricity Backup</h4>\r\n\r\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio.</p>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>', 15, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2015-03-21 06:46:57', 25, 25, NULL, NULL, NULL, '2015-03-21 10:40:59'),
(32, 'Downloads', 'downloads', '<p >You can download files below. Some of the files need username and password for download.</p>\r\n\r\n<h4>Institute Documents</h4>\r\n\r\n<ul>\r\n <li><img src="http://localhost/cel/2015/mar/projects/iit/front/iit_v2/images/sample/download-li-up.gif"  !important; float:center; height:20px; line-height:40px; margin-right:15px; max-width:100%; opacity:0.8; vertical-align:middle" />THE IIT Brochure 2015<a href="http://localhost/cel/2015/mar/projects/iit/front/iit_v2/pdf/6.ppsx"  rgb(45, 204, 112); text-decoration: none; transition: 300ms; -webkit-transition: 300ms;" target="_blank"><img class="btn" src="http://localhost/cel/2015/mar/projects/iit/front/iit_v2/images/sample/downloadbtn.png"  255, 255, 0.2) 0px 1px 0px inset, rgba(0, 0, 0, 0.0470588) 0px 1px 2px; background-image:none; background-repeat:repeat-x; border-radius:0px; box-shadow:none; color:rgb(51, 51, 51); cursor:pointer; display:inline-block; float:right; font-size:14px; height:20px; line-height:40px; margin-bottom:0px; margin-right:20px; margin-top:17px; max-width:100%; opacity:0.8; padding:4px 12px; text-align:center; text-shadow:none; vertical-align:middle" /></a></li>\r\n <li><img src="http://localhost/cel/2015/mar/projects/iit/front/iit_v2/images/sample/download-li-up.gif"  !important; float:center; height:20px; line-height:40px; margin-right:15px; max-width:100%; opacity:0.8; vertical-align:middle" />Fee Structure 2015<a href="http://localhost/cel/2015/mar/projects/iit/front/iit_v2/pdf/COURSE FEE DETAILS.docx"  rgb(45, 204, 112); text-decoration: none; transition: 300ms; -webkit-transition: 300ms;"><img class="btn" src="http://localhost/cel/2015/mar/projects/iit/front/iit_v2/images/sample/downloadbtn.png"  255, 255, 0.2) 0px 1px 0px inset, rgba(0, 0, 0, 0.0470588) 0px 1px 2px; background-image:none; background-repeat:repeat-x; border-radius:0px; box-shadow:none; color:rgb(51, 51, 51); cursor:pointer; display:inline-block; float:right; font-size:14px; height:20px; line-height:40px; margin-bottom:0px; margin-right:20px; margin-top:17px; max-width:100%; opacity:0.8; padding:4px 12px; text-align:center; text-shadow:none; vertical-align:middle" /></a></li>\r\n <li><img src="http://localhost/cel/2015/mar/projects/iit/front/iit_v2/images/sample/download-li-up.gif"  !important; float:center; height:20px; line-height:40px; margin-right:15px; max-width:100%; opacity:0.8; vertical-align:middle" />THE IIT Student Handbook - 2015<a href="http://localhost/cel/2015/mar/projects/iit/front/iit_v2/downloads.php#"  rgb(45, 204, 112); text-decoration: none; transition: 300ms; -webkit-transition: 300ms;"><img class="btn" src="http://localhost/cel/2015/mar/projects/iit/front/iit_v2/images/sample/downloadbtn.png"  255, 255, 0.2) 0px 1px 0px inset, rgba(0, 0, 0, 0.0470588) 0px 1px 2px; background-image:none; background-repeat:repeat-x; border-radius:0px; box-shadow:none; color:rgb(51, 51, 51); cursor:pointer; display:inline-block; float:right; font-size:14px; height:20px; line-height:40px; margin-bottom:0px; margin-right:20px; margin-top:17px; max-width:100%; opacity:0.8; padding:4px 12px; text-align:center; text-shadow:none; vertical-align:middle" /></a></li>\r\n <li><img src="http://localhost/cel/2015/mar/projects/iit/front/iit_v2/images/sample/download-li-up.gif"  !important; float:center; height:20px; line-height:40px; margin-right:15px; max-width:100%; opacity:0.8; vertical-align:middle" />THE IIT Programme Presentation 2015<a href="http://localhost/cel/2015/mar/projects/iit/front/iit_v2/downloads.php#"  rgb(45, 204, 112); text-decoration: none; transition: 300ms; -webkit-transition: 300ms;"><img class="btn" src="http://localhost/cel/2015/mar/projects/iit/front/iit_v2/images/sample/downloadbtn.png"  255, 255, 0.2) 0px 1px 0px inset, rgba(0, 0, 0, 0.0470588) 0px 1px 2px; background-image:none; background-repeat:repeat-x; border-radius:0px; box-shadow:none; color:rgb(51, 51, 51); cursor:pointer; display:inline-block; float:right; font-size:14px; height:20px; line-height:40px; margin-bottom:0px; margin-right:20px; margin-top:17px; max-width:100%; opacity:0.8; padding:4px 12px; text-align:center; text-shadow:none; vertical-align:middle" /></a></li>\r\n</ul>\r\n\r\n<h4>News &amp; Articles about IT</h4>\r\n\r\n<ul>\r\n <li><img src="http://localhost/cel/2015/mar/projects/iit/front/iit_v2/images/sample/download-li-up.gif"  !important; float:center; height:20px; line-height:40px; margin-right:15px; max-width:100%; opacity:0.8; vertical-align:middle" />Career in Software 29th April, 2011. Kantipur Newspaper<a href="http://localhost/cel/2015/mar/projects/iit/front/iit_v2/downloads.php#"  rgb(45, 204, 112); text-decoration: none; transition: 300ms; -webkit-transition: 300ms;"><img class="btn" src="http://localhost/cel/2015/mar/projects/iit/front/iit_v2/images/sample/downloadbtn.png"  255, 255, 0.2) 0px 1px 0px inset, rgba(0, 0, 0, 0.0470588) 0px 1px 2px; background-image:none; background-repeat:repeat-x; border-radius:0px; box-shadow:none; color:rgb(51, 51, 51); cursor:pointer; display:inline-block; float:right; font-size:14px; height:20px; line-height:40px; margin-bottom:0px; margin-right:20px; margin-top:17px; max-width:100%; opacity:0.8; padding:4px 12px; text-align:center; text-shadow:none; vertical-align:middle" /></a></li>\r\n <li><img src="http://localhost/cel/2015/mar/projects/iit/front/iit_v2/images/sample/download-li-up.gif"  !important; float:center; height:20px; line-height:40px; margin-right:15px; max-width:100%; opacity:0.8; vertical-align:middle" />THE IIT Placement news in kantipurnews<a href="http://localhost/cel/2015/mar/projects/iit/front/iit_v2/downloads.php#"  rgb(45, 204, 112); text-decoration: none; transition: 300ms; -webkit-transition: 300ms;"><img class="btn" src="http://localhost/cel/2015/mar/projects/iit/front/iit_v2/images/sample/downloadbtn.png"  255, 255, 0.2) 0px 1px 0px inset, rgba(0, 0, 0, 0.0470588) 0px 1px 2px; background-image:none; background-repeat:repeat-x; border-radius:0px; box-shadow:none; color:rgb(51, 51, 51); cursor:pointer; display:inline-block; float:right; font-size:14px; height:20px; line-height:40px; margin-bottom:0px; margin-right:20px; margin-top:17px; max-width:100%; opacity:0.8; padding:4px 12px; text-align:center; text-shadow:none; vertical-align:middle" /></a></li>\r\n <li><img src="http://localhost/cel/2015/mar/projects/iit/front/iit_v2/images/sample/download-li-up.gif"  !important; float:center; height:20px; line-height:40px; margin-right:15px; max-width:100%; opacity:0.8; vertical-align:middle" />THE IIT Software training<a href="http://localhost/cel/2015/mar/projects/iit/front/iit_v2/downloads.php#"  rgb(45, 204, 112); text-decoration: none; transition: 300ms; -webkit-transition: 300ms;"><img class="btn" src="http://localhost/cel/2015/mar/projects/iit/front/iit_v2/images/sample/downloadbtn.png"  255, 255, 0.2) 0px 1px 0px inset, rgba(0, 0, 0, 0.0470588) 0px 1px 2px; background-image:none; background-repeat:repeat-x; border-radius:0px; box-shadow:none; color:rgb(51, 51, 51); cursor:pointer; display:inline-block; float:right; font-size:14px; height:20px; line-height:40px; margin-bottom:0px; margin-right:20px; margin-top:17px; max-width:100%; opacity:0.8; padding:4px 12px; text-align:center; text-shadow:none; vertical-align:middle" /></a></li>\r\n <li><img src="http://localhost/cel/2015/mar/projects/iit/front/iit_v2/images/sample/download-li-up.gif"  !important; float:center; height:20px; line-height:40px; margin-right:15px; max-width:100%; opacity:0.8; vertical-align:middle" />THE IIT Technology Presentation 2015</li>\r\n</ul>', 15, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2015-03-21 09:08:33', 25, NULL, NULL, NULL, NULL, NULL),
(33, 'Partner5', 'partner5', '', 28, 'client4.png', NULL, NULL, NULL, NULL, NULL, 1, '2015-03-21 11:51:35', 25, 25, NULL, NULL, NULL, '2015-03-29 11:59:27'),
(34, 'Cretification Courses', 'cretification-courses', '<p><span  245, 245); color:rgb(52, 73, 94); font-family:helvetica neue,helvetica,arial,sans-serif; font-size:12px">Certification provides independent verification of a certain level of expertise in a particular area. Basically, it means you have completed the steps required to receive a particular designation. But this basic definition comes with a weakness--in some cases, individuals can become &quot;certified&quot; simply by paying a particular membership fee or by attending the required seminar. Such certifications are meaningless and a waste of time and money.</span></p>', 14, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2015-03-21 15:39:59', 25, NULL, NULL, NULL, NULL, NULL),
(35, 'Diploma in Accounting & Tally', 'diploma-in-accounting-tally', '<p>Tally is powerful accounting software, which is driven by a technology called concurrent multi-lingual accelerated technology engine. It is easy to use software and is designed to simply complex day to day activities associated in an enterprise. Tally provides comprehensive solution around accounting principles, inventory and data integrity. Tally also has feature encompassing global business.</p>', 14, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2015-03-21 15:40:26', 25, 25, NULL, NULL, NULL, '2015-03-21 16:49:31'),
(36, 'Hardware & Networking', 'hardware-networking', '<p>This course will mainly focus on developing knowledge and skills of a person in computer hardware and network. A computer system has various integrated parts commonly known as hardware. All the integrated parts work together for proper functioning of a computer system. If a computer does not work, it may be due to problem in anyone of the components. We offer Advanced &amp; Diploma in Hardware &amp; Networking Courses.</p>', 14, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2015-03-21 15:40:49', 25, 25, NULL, NULL, NULL, '2015-03-21 16:49:35'),
(37, 'Mobile Apps & Programming', 'mobile-apps-programming', '<p>Mobile application development by which application software is developed for handheld devices, such as personal digital assistants, enterprise digital assistants or mobile phones. These applications can be pre-installed on phones during manufacturing platforms, or delivered as web applications using server-side or client-side processing (e.g. JavaScript) to provide an &quot;application-like&quot; experience within a Web browser.</p>', 14, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2015-03-21 15:41:05', 25, 25, NULL, NULL, NULL, '2015-03-21 16:49:42'),
(38, 'Graphic Designing', 'graphic-designing', '<p>Graphic designing, also known as communication design, is the art and practice of planning and projecting ideas and experiences with visual and textual content. The form of the communication can be physical or virtual, and may include images, words, or graphic forms. Some of the courses like (Photoshop, Corel draw, FreeHand MX etc).</p>', 14, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2015-03-21 15:41:27', 25, 25, NULL, NULL, NULL, '2015-03-21 16:49:47'),
(39, 'WebPage Designing', 'webpage-designing', '<p>Web design encompasses many different skills and disciplines in the production and maintenance of websites. The different areas of web design include web graphic design; interface design; authoring, including standardised code and proprietary software; user experience design; and search engine optimization. We offer WebPage Designing Courses Like (PHP, .NET, JAVA, HTML XML, XHTML etc).</p>', 14, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2015-03-21 15:41:51', 25, 25, NULL, NULL, NULL, '2015-03-21 16:49:52'),
(40, 'best', 'best', '<h1><img alt="Saturn V carrying Apollo 11" class="right" src="http://c.cksource.com/a/1/img/sample.jpg" />Apollo 11efg</h1>\r\n\r\n<p><strong>Apollo 11</strong>&nbsp;was the spaceflight that landed the first humans, Americans&nbsp;<a href="http://en.wikipedia.org/wiki/Neil_Armstrong">Neil Armstrong</a>&nbsp;and&nbsp;<a href="http://en.wikipedia.org/wiki/Buzz_Aldrin">Buzz Aldrin</a>, on the Moon on July 20, 1969, at 20:18 UTC. Armstrong became the first to step onto the lunar surface 6 hours later on July 21 at 02:56 UTC.</p>\r\n\r\n<p>Armstrong spent about&nbsp;<s>three and a half</s>&nbsp;two and a half hours outside the spacecraft, Aldrin slightly less; and together they collected 47.5 pounds (21.5&nbsp;kg) of lunar material for return to Earth. A third member of the mission,&nbsp;<a href="http://en.wikipedia.org/wiki/Michael_Collins_(astronaut)">Michael Collins</a>, piloted the&nbsp;<a href="http://en.wikipedia.org/wiki/Apollo_Command/Service_Module">command</a>&nbsp;spacecraft alone in lunar orbit until Armstrong and Aldrin returned to it for the trip back to Earth.</p>\r\n\r\n<h2>Broadcasting and&nbsp;<em>quotes</em>&nbsp;<a id="quotes" name="quotes"></a></h2>\r\n\r\n<p>Broadcast on live TV to a world-wide audience, Armstrong stepped onto the lunar surface and described the event as:</p>\r\n\r\n<blockquote>\r\n<p>One small step for [a] man, one giant leap for mankind.</p>\r\n</blockquote>\r\n\r\n<p>Apollo 11 effectively ended the&nbsp;<a href="http://en.wikipedia.org/wiki/Space_Race">Space Race</a>&nbsp;and fulfilled a national goal proposed in 1961 by the late U.S. President&nbsp;<a href="http://en.wikipedia.org/wiki/John_F._Kennedy">John F. Kennedy</a>&nbsp;in a speech before the United States Congress:</p>\r\n\r\n<blockquote>\r\n<p>[...] before this decade is out, of landing a man on the Moon and returning him safely to the Earth.</p>\r\n</blockquote>\r\n\r\n<h2>Technical details&nbsp;<a id="tech-details" name="tech-details"></a></h2>\r\n\r\n<table align="right" border="1" cellpadding="5" cellspacing="0">\r\n <caption><strong>Mission crew</strong></caption>\r\n <thead>\r\n  <tr>\r\n   <th scope="col">Position</th>\r\n   <th scope="col">Astronaut</th>\r\n  </tr>\r\n </thead>\r\n <tbody>\r\n  <tr>\r\n   <td>Commander</td>\r\n   <td>Neil A. Armstrong</td>\r\n  </tr>\r\n  <tr>\r\n   <td>Command Module Pilot</td>\r\n   <td>Michael Collins</td>\r\n  </tr>\r\n  <tr>\r\n   <td>Lunar Module Pilot</td>\r\n   <td>Edwin &quot;Buzz&quot; E. Aldrin, Jr.</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p>Launched by a&nbsp;<strong>Saturn V</strong>&nbsp;rocket from&nbsp;<a href="http://en.wikipedia.org/wiki/Kennedy_Space_Center">Kennedy Space Center</a>&nbsp;in Merritt Island, Florida on July 16, Apollo 11 was the fifth manned mission of&nbsp;<a href="http://en.wikipedia.org/wiki/NASA">NASA</a>&#39;s Apollo program. The Apollo spacecraft had three parts:</p>\r\n\r\n<ol>\r\n <li><strong>Command Module</strong>&nbsp;with a cabin for the three astronauts which was the only part which landed back on Earth</li>\r\n <li><strong>Service Module</strong>&nbsp;which supported the Command Module with propulsion, electrical power, oxygen and water</li>\r\n <li><strong>Lunar Module</strong>&nbsp;for landing on the Moon.</li>\r\n</ol>\r\n\r\n<p>After being sent to the Moon by the Saturn V&#39;s upper stage, the astronauts separated the spacecraft from it and travelled for three days until they entered into lunar orbit. Armstrong and Aldrin then moved into the Lunar Module and landed in the&nbsp;<a href="http://en.wikipedia.org/wiki/Mare_Tranquillitatis">Sea of Tranquility</a>. They stayed a total of about 21 and a half hours on the lunar surface. After lifting off in the upper part of the Lunar Module and rejoining Collins in the Command Module, they returned to Earth and landed in the&nbsp;<a href="http://en.wikipedia.org/wiki/Pacific_Ocean">Pacific Ocean</a>&nbsp;on July 24.</p>\r\n\r\n<hr />\r\n<p><small>Source:&nbsp;<a href="http://en.wikipedia.org/wiki/Apollo_11">Wikipedia.org</a></small></p>', 15, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2015-03-21 19:03:59', 25, 25, NULL, NULL, NULL, '2015-03-22 19:43:23'),
(41, 'autrailia', 'autrailia', '', 33, 'sli4.jpg', NULL, NULL, NULL, NULL, NULL, 1, '2015-03-22 17:50:57', 25, 25, NULL, NULL, NULL, '2015-03-29 11:51:23'),
(42, 'WebPage Designing & programming', 'webpage-designing-programming', '', 33, 'sli5.jpg', NULL, NULL, NULL, NULL, NULL, 1, '2015-03-22 17:55:29', 25, 25, NULL, NULL, NULL, '2015-03-29 11:51:18'),
(43, 'banking', 'banking', '', 33, 'sli3.jpg', NULL, NULL, NULL, NULL, NULL, 1, '2015-03-22 18:47:40', 25, 25, NULL, NULL, NULL, '2015-03-29 11:51:13'),
(44, 'it', 'it', '', 33, 'sli2.jpg', NULL, NULL, NULL, NULL, NULL, 1, '2015-03-22 18:47:47', 25, 25, NULL, NULL, NULL, '2015-03-29 11:51:07'),
(45, 'academy', 'academy', '', 33, 'sli1.jpg', NULL, NULL, NULL, NULL, NULL, 1, '2015-03-22 18:48:03', 25, 25, NULL, NULL, NULL, '2015-03-29 11:50:55'),
(46, 'new article', 'new-article', '', 4, NULL, 'Anim Nam officiis ad et excepturi repellendus Autem et elit possimus quis', NULL, NULL, NULL, NULL, 1, '2015-03-28 07:36:04', 25, NULL, NULL, NULL, NULL, NULL),
(47, 'Diploma in Graphic Designing', 'diploma-in-graphic-designing', '<p>Accounting, or accountancy, is the measurement, processing and communication of financial information about economic entities. Accounting, which has been called the &quot;language of business&quot;, measures the results of an organization&#39;s economic activities and conveys this information to a variety of users including investors, creditors, management, and regulators.</p>\r\n\r\n<h4>Courses Contents</h4>\r\n\r\n<ul>\r\n <li>Ms-Excel Training</li>\r\n <li>Online Banking Training</li>\r\n <li>TAX &amp; VAT Tranjection Training</li>\r\n <li>BalanceSheet Training</li>\r\n <li>Final Account Training</li>\r\n <li>Vaucher Training</li>\r\n</ul>', 36, 'grp_icon.png', NULL, NULL, NULL, NULL, NULL, 1, '2015-03-29 12:42:45', 25, 25, NULL, NULL, NULL, '2015-03-29 14:49:33'),
(48, 'Diploma in WebPage Designing & Programming', 'diploma-in-webpage-designing-programming', '<p>Accounting, or accountancy, is the measurement, processing and communication of financial information about economic entities. Accounting, which has been called the &quot;language of business&quot;, measures the results of an organization&#39;s economic activities and conveys this information to a variety of users including investors, creditors, management, and regulators.</p>\r\n\r\n<h4>Courses Contents</h4>\r\n\r\n<ul>\r\n <li>Ms-Excel Training</li>\r\n <li>Online Banking Training</li>\r\n <li>TAX &amp; VAT Tranjection Training</li>\r\n <li>BalanceSheet Training</li>\r\n <li>Final Account Training</li>\r\n <li>Vaucher Training</li>\r\n</ul>', 36, 'wep_icon.png', NULL, NULL, NULL, NULL, NULL, 1, '2015-03-29 12:43:22', 25, 25, NULL, NULL, NULL, '2015-03-29 14:49:20'),
(49, 'Diploma in Accounting Software', 'diploma-in-accounting-software', '<p>Accounting, or accountancy, is the measurement, processing and communication of financial information about economic entities. Accounting, which has been called the &quot;language of business&quot;, measures the results of an organization&#39;s economic activities and conveys this information to a variety of users including investors, creditors, management, and regulators.</p>\r\n\r\n<h4>Courses Contents</h4>\r\n\r\n<ul>\r\n <li>Ms-Excel Training</li>\r\n <li>Online Banking Training</li>\r\n <li>TAX &amp; VAT Tranjection Training</li>\r\n <li>BalanceSheet Training</li>\r\n <li>Final Account Training</li>\r\n <li>Vaucher Training</li>\r\n</ul>', 36, 'ac_icon.jpg', NULL, NULL, NULL, NULL, NULL, 1, '2015-03-29 12:43:45', 25, 25, NULL, NULL, NULL, '2015-03-29 14:49:06'),
(50, 'Diploma in Mobile Repairing L1, L2 & L3', 'diploma-in-mobile-repairing-l1-l2-l3', '<p>Accounting, or accountancy, is the measurement, processing and communication of financial information about economic entities. Accounting, which has been called the &quot;language of business&quot;, measures the results of an organization&#39;s economic activities and conveys this information to a variety of users including investors, creditors, management, and regulators.</p>\r\n\r\n<h4>Courses Contents</h4>\r\n\r\n<ul>\r\n <li>Ms-Excel Training</li>\r\n <li>Online Banking Training</li>\r\n <li>TAX &amp; VAT Tranjection Training</li>\r\n <li>BalanceSheet Training</li>\r\n <li>Final Account Training</li>\r\n <li>Vaucher Training</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', 36, 'mob_logo.png', NULL, NULL, NULL, NULL, NULL, 1, '2015-03-29 12:44:07', 25, 25, NULL, NULL, NULL, '2015-03-29 18:56:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blogs_comments`
--

CREATE TABLE IF NOT EXISTS `tbl_blogs_comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `comment` varchar(250) NOT NULL,
  `by` varchar(30) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tbl_blogs_comments`
--

INSERT INTO `tbl_blogs_comments` (`comment_id`, `blog_id`, `comment`, `by`, `created_date`, `updated_date`) VALUES
(2, 206, 'a Comment', 'a', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 206, 'b Comment', 'b', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 206, 'c Comment', 'c', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 206, 'Comment', 'ramesh gurung', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 206, 'Comment', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 206, 'awesome', 'miz', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 206, 'awesome', 'miz', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 206, 'nid to pace myself', 'ram grg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 206, 's', 's', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 206, 'this is first comment ', 'rax', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 206, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 206, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE IF NOT EXISTS `tbl_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `image_title` varchar(50) DEFAULT NULL,
  `url` varchar(100) NOT NULL,
  `order` int(10) unsigned DEFAULT NULL,
  `published` tinyint(3) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `author` int(10) DEFAULT NULL,
  `modified_by` int(10) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`name`),
  KEY `tbl_categories_ibfk_1` (`parent_id`),
  KEY `tbl_categories_ibfk_2` (`author`),
  KEY `tbl_categories_ibfk_3` (`modified_by`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`id`, `parent_id`, `name`, `slug`, `content`, `image`, `image_title`, `url`, `order`, `published`, `created_at`, `author`, `modified_by`, `updated_at`, `status`) VALUES
(4, NULL, 'faculty', 'faculty', 'faculty', '2.jpg', '', '', 3, 1, '2015-03-01 06:32:53', 25, NULL, NULL, 1),
(5, 10, 'Page 1.2.2', 'page-122', '', '', '', '', 4, 1, '2015-03-01 06:34:15', 25, NULL, NULL, 0),
(6, NULL, 'cat 3', 'cat-3', '', '03.jpg', '', '', 5, 1, '2015-03-01 07:07:26', 25, NULL, NULL, 2),
(7, 14, 'Cretification Courses', 'cretification-courses', '', '', '', '', 6, 1, '2015-03-01 17:58:35', 25, NULL, NULL, 2),
(8, 7, 'cat4.1.1', 'cat411', '', 'Tulips.jpg', '', '', 7, 1, '2015-03-01 18:14:34', 25, NULL, NULL, 2),
(9, 6, 'cat3.1', 'cat31', '', 'feature_1.png', '', '', 8, 1, '2015-03-01 18:33:33', 25, NULL, NULL, 2),
(10, 14, 'Diploma in Accounting & Tally', 'diploma-in-accounting-tal', '', '', '', '', 9, 1, '2015-03-01 18:38:05', 25, NULL, NULL, 2),
(11, 10, 'Page 1.2.1', 'page-121', '', '', '', '', 10, 1, '2015-03-01 18:55:44', 25, NULL, NULL, 2),
(12, 10, 'cat4.2.1', 'cat421', '', '', '', '', 11, 1, '2015-03-01 18:58:45', 25, NULL, NULL, 2),
(13, 7, 'page 1.1.1', 'page-111', '', '', '', '', 12, 1, '2015-03-07 12:53:34', 25, NULL, NULL, 2),
(14, NULL, 'Courses', 'courses', '<p>Look at some of our courses we are providing for our students</p>', '', '', '', 13, 1, '2015-03-07 13:06:03', 25, NULL, NULL, 0),
(15, NULL, 'pages', 'pages', '', '', '', '', 14, 1, '2015-03-16 16:17:54', 25, NULL, NULL, 0),
(16, NULL, 'Services', 'services', '', '', '', '', 8, 1, '2015-03-19 18:45:38', 25, NULL, NULL, 0),
(17, NULL, 'News & Events', 'news-events', '', '', '', '', 9, 1, '2015-03-19 18:58:20', 25, NULL, NULL, 0),
(18, NULL, 'Gallery', 'gallery', '', '', '', '', 10, 1, '2015-03-19 18:59:40', 25, NULL, NULL, 0),
(21, NULL, 'Downloads', 'downloads', '', '', '', '', 11, 1, '2015-03-19 19:02:46', 25, NULL, NULL, 1),
(22, 18, 'Web design', 'web-design', '', '', '', '', 12, 1, '2015-03-19 19:14:08', 25, NULL, NULL, 1),
(23, 18, 'logo design', 'logo-design', '', '', '', '', 13, 1, '2015-03-19 19:14:22', 25, NULL, NULL, 1),
(24, 18, 'print design', 'print-design', '', '', '', '', 14, 1, '2015-03-19 19:14:35', 25, NULL, NULL, 1),
(25, NULL, 'D', 'd', '', '', '', '', 15, 1, '2015-03-19 19:18:11', 25, NULL, NULL, 2),
(26, NULL, 'contact us', 'contact-us', '', '', '', '', 13, 1, '2015-03-19 19:26:22', 25, NULL, NULL, 1),
(27, NULL, 'footer', 'footer', '', '', '', '', 14, 1, '2015-03-19 19:30:20', 25, NULL, NULL, 1),
(28, NULL, 'partners', 'partners', '<p><span  73, 94); font-family:helvetica neue,helvetica,arial,sans-serif; font-size:12px">Our Education Partners are CISCO (Network Academy, RedHat, Microsoft etc.</span></p>', '', '', '', 15, 1, '2015-03-19 19:35:11', 25, NULL, NULL, 1),
(29, 14, 'WebPage Designing', 'webpage-designing', '', '', '', '', 6, 1, '2015-03-01 17:58:35', 25, NULL, NULL, 2),
(30, 14, 'Graphic Designing', 'graphic-designing', '', '', '', '', 9, 1, '2015-03-01 18:38:05', 25, NULL, NULL, 2),
(31, 14, 'Mobile Apps & Programming', 'mobile-apps-programming', '', '', '', '', 6, 1, '2015-03-01 17:58:35', 25, NULL, NULL, 2),
(32, 14, 'Hardware & Networking', 'hardware-networking', '', '', '', '', 9, 1, '2015-03-01 18:38:05', 25, NULL, NULL, 2),
(33, NULL, 'slider', 'slider', '', '', '', '', 16, 1, '2015-03-22 15:33:08', 25, NULL, NULL, 1),
(34, NULL, 'new cat', 'new-cat', '', '', 'Harum non deserunt et nisi dolorem quia illum eos', 'A animi velit repudiandae voluptas eos tempor aute dolore dolorem aliquip fugit incidunt elit quis o', 17, 1, '2015-03-28 07:34:54', 25, NULL, NULL, 1),
(35, NULL, 'Courses main', 'courses-main', '', '', '', '', 17, 1, '2015-03-29 11:00:37', 25, NULL, NULL, 1),
(36, 35, 'Diploma Level Courses', 'diploma-level-courses', '', '', '', '', 18, 1, '2015-03-29 11:00:55', 25, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_groups`
--

CREATE TABLE IF NOT EXISTS `tbl_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_group_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `tbl_groups_ibfk_1` (`parent_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_groups`
--

INSERT INTO `tbl_groups` (`id`, `parent_group_id`, `name`, `slug`, `desc`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'superadmin', 'superadmin', 'superadmin desc', 1, '2015-01-27 18:51:41', NULL),
(2, 1, 'admin', 'admin', 'admin desc', 1, '2015-01-27 18:52:01', NULL),
(3, NULL, 'AddisonMontoya', '', 'Quibusdam at sint voluptas eum debitis accusamus voluptatem voluptatem, non eu et in et illum, ab et sed ut.', 3, '2015-03-28 07:37:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group_permissions`
--

CREATE TABLE IF NOT EXISTS `tbl_group_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(10) unsigned DEFAULT NULL,
  `permission_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tbl_group_permissions_ibfk_1` (`group_id`),
  KEY `tbl_group_permissions_ibfk_2` (`permission_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=897 ;

--
-- Dumping data for table `tbl_group_permissions`
--

INSERT INTO `tbl_group_permissions` (`id`, `group_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(288, 2, 5, '2015-02-21 08:34:57', NULL),
(289, 2, 6, '2015-02-21 08:34:57', NULL),
(290, 2, 7, '2015-02-21 08:34:57', NULL),
(291, 2, 8, '2015-02-21 08:34:57', NULL),
(292, 2, 9, '2015-02-21 08:34:57', NULL),
(293, 2, 10, '2015-02-21 08:34:57', NULL),
(294, 2, 17, '2015-02-21 08:34:58', NULL),
(295, 2, 11, '2015-02-21 08:34:58', NULL),
(296, 2, 14, '2015-02-21 08:34:58', NULL),
(297, 2, 18, '2015-02-21 08:34:58', NULL),
(298, 2, 19, '2015-02-21 08:34:58', NULL),
(299, 2, 20, '2015-02-21 08:34:58', NULL),
(300, 2, 21, '2015-02-21 08:34:58', NULL),
(301, 2, 22, '2015-02-21 08:34:58', NULL),
(302, 2, 15, '2015-02-21 08:34:58', NULL),
(303, 2, 16, '2015-02-21 08:34:58', NULL),
(850, 1, 5, '2015-03-19 20:19:04', NULL),
(851, 1, 6, '2015-03-19 20:19:04', NULL),
(852, 1, 7, '2015-03-19 20:19:04', NULL),
(853, 1, 8, '2015-03-19 20:19:04', NULL),
(854, 1, 9, '2015-03-19 20:19:04', NULL),
(855, 1, 10, '2015-03-19 20:19:04', NULL),
(856, 1, 17, '2015-03-19 20:19:04', NULL),
(857, 1, 11, '2015-03-19 20:19:04', NULL),
(858, 1, 14, '2015-03-19 20:19:04', NULL),
(859, 1, 18, '2015-03-19 20:19:05', NULL),
(860, 1, 19, '2015-03-19 20:19:05', NULL),
(861, 1, 20, '2015-03-19 20:19:05', NULL),
(862, 1, 21, '2015-03-19 20:19:05', NULL),
(863, 1, 22, '2015-03-19 20:19:05', NULL),
(864, 1, 15, '2015-03-19 20:19:05', NULL),
(865, 1, 16, '2015-03-19 20:19:05', NULL),
(866, 1, 23, '2015-03-19 20:19:05', NULL),
(867, 1, 24, '2015-03-19 20:19:05', NULL),
(868, 1, 25, '2015-03-19 20:19:05', NULL),
(869, 1, 26, '2015-03-19 20:19:05', NULL),
(870, 1, 27, '2015-03-19 20:19:05', NULL),
(871, 1, 28, '2015-03-19 20:19:05', NULL),
(872, 1, 29, '2015-03-19 20:19:05', NULL),
(873, 1, 30, '2015-03-19 20:19:05', NULL),
(874, 1, 31, '2015-03-19 20:19:05', NULL),
(875, 1, 32, '2015-03-19 20:19:05', NULL),
(876, 1, 33, '2015-03-19 20:19:05', NULL),
(877, 1, 34, '2015-03-19 20:19:05', NULL),
(878, 1, 35, '2015-03-19 20:19:05', NULL),
(879, 1, 36, '2015-03-19 20:19:05', NULL),
(880, 1, 37, '2015-03-19 20:19:05', NULL),
(881, 1, 38, '2015-03-19 20:19:05', NULL),
(882, 1, 39, '2015-03-19 20:19:05', NULL),
(883, 1, 40, '2015-03-19 20:19:05', NULL),
(884, 1, 41, '2015-03-19 20:19:05', NULL),
(885, 1, 42, '2015-03-19 20:19:05', NULL),
(886, 1, 43, '2015-03-19 20:19:05', NULL),
(887, 1, 47, '2015-03-19 20:19:06', NULL),
(888, 1, 48, '2015-03-19 20:19:06', NULL),
(889, 1, 49, '2015-03-19 20:19:06', NULL),
(890, 1, 50, '2015-03-19 20:19:06', NULL),
(891, 1, 51, '2015-03-19 20:19:06', NULL),
(892, 1, 52, '2015-03-19 20:19:06', NULL),
(893, 1, 53, '2015-03-19 20:19:06', NULL),
(894, 1, 54, '2015-03-19 20:19:06', NULL),
(895, 1, 55, '2015-03-19 20:19:06', NULL),
(896, 1, 56, '2015-03-19 20:19:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menus`
--

CREATE TABLE IF NOT EXISTS `tbl_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `level` int(11) DEFAULT '0',
  `order` int(10) unsigned DEFAULT NULL,
  `page_type_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(10) unsigned DEFAULT NULL,
  `article_id` int(10) DEFAULT NULL,
  `slug` varchar(100) NOT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `author` int(10) DEFAULT NULL,
  `modified_by` int(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `tbl_menus_ibfk_1` (`parent_id`),
  KEY `tbl_menus_ibfk_2` (`author`),
  KEY `tbl_menus_ibfk_3` (`modified_by`),
  KEY `tbl_menus_ibfk_4` (`page_type_id`),
  KEY `tbl_menus_ibfk_5` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `tbl_menus`
--

INSERT INTO `tbl_menus` (`id`, `parent_id`, `level`, `order`, `page_type_id`, `name`, `category_id`, `article_id`, `slug`, `desc`, `status`, `author`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, NULL, 0, 1, 1, 'Home', NULL, 1, 'home', 'home desc', 1, NULL, NULL, '2015-03-01 20:39:54', NULL),
(10, NULL, 0, 9, 2, 'page 1', NULL, NULL, 'page-1', '', 2, NULL, NULL, '2015-03-02 20:51:03', NULL),
(11, 10, 1, 10, 2, 'page 1.1', NULL, NULL, 'page-11', '', 1, NULL, NULL, '2015-03-02 20:51:24', NULL),
(13, 10, 1, 13, 2, 'page 1.2', NULL, NULL, 'page-12', '', 1, NULL, NULL, '2015-03-02 20:51:54', NULL),
(14, 11, 2, 11, 2, 'page 1.1.1', NULL, NULL, 'page-111', '', 1, NULL, NULL, '2015-03-02 20:52:16', NULL),
(15, 13, 2, 14, 2, 'page 1.2.1', NULL, NULL, 'page-121', '', 1, NULL, NULL, '2015-03-02 20:52:38', NULL),
(16, 13, 2, 15, 2, 'page 1.2.2', NULL, NULL, 'page-122', '', 1, NULL, NULL, '2015-03-02 20:53:04', NULL),
(17, NULL, 0, 1, 1, 'n', NULL, NULL, 'n', 'D', 3, NULL, NULL, '2015-03-13 19:09:48', NULL),
(18, NULL, 0, 2, 1, 'about us', NULL, 2, 'about-us', '', 1, NULL, NULL, '2015-03-16 15:47:55', NULL),
(19, NULL, 0, 3, 2, 'Courses', NULL, NULL, 'courses', '', 1, NULL, NULL, '2015-03-16 15:48:11', NULL),
(25, NULL, 0, 9, 1, 'Admission', NULL, 3, 'admission', '', 1, NULL, NULL, '2015-03-16 15:52:14', NULL),
(26, NULL, 0, 10, 1, 'Services', NULL, 31, 'services', '', 1, NULL, NULL, '2015-03-16 15:52:27', NULL),
(27, NULL, 0, 11, 4, 'news & events', 17, NULL, 'news-events', '', 1, NULL, NULL, '2015-03-16 15:52:41', NULL),
(28, 14, 3, 12, 1, 'page 1.1.1.1', NULL, NULL, 'page-1111', '', 1, NULL, NULL, '2015-03-16 16:16:34', NULL),
(29, 19, 1, 4, 2, 'Diploma Level Courses', 36, NULL, 'diploma-level-courses', '', 1, NULL, NULL, '2015-03-19 16:50:19', NULL),
(31, 19, 1, 5, 2, 'Advanced Level Courses', NULL, NULL, 'advanced-level-courses', '', 1, NULL, NULL, '2015-03-19 16:50:51', NULL),
(32, 19, 1, 16, 1, 'Courses 3', NULL, NULL, 'courses-3', '', 0, NULL, NULL, '2015-03-19 18:33:53', NULL),
(33, NULL, 0, 12, 3, 'Gallery', 18, NULL, 'gallery', '', 1, NULL, NULL, '2015-03-19 19:00:09', NULL),
(35, NULL, 0, 13, 1, 'Downloads', NULL, 32, 'downloads', '', 1, NULL, NULL, '2015-03-19 19:03:57', NULL),
(36, NULL, 0, 14, 6, 'Contact', NULL, 9, 'contact', '', 1, NULL, NULL, '2015-03-19 19:13:08', NULL),
(37, 39, 2, 8, 1, 'new menu', 34, 46, 'new-menu', 'Voluptatum tempore, pariatur? Illum, nihil numquam soluta similique rerum aut aut dignissimos enim at aliquam et consectetur sed iste harum.', 1, NULL, NULL, '2015-03-28 07:25:50', NULL),
(38, 19, 1, 6, 2, 'Chip Level Courses', NULL, NULL, 'chip-level-courses', '', 1, NULL, NULL, '2015-03-29 10:37:06', NULL),
(39, 19, 1, 7, 1, 'Cretification Level Courses', NULL, NULL, 'cretification-level-courses', '', 1, NULL, NULL, '2015-03-29 10:37:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_options`
--

CREATE TABLE IF NOT EXISTS `tbl_options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `value` varchar(1000) NOT NULL,
  `autoload` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_options`
--

INSERT INTO `tbl_options` (`id`, `name`, `slug`, `value`, `autoload`) VALUES
(1, 'email', 'email', 'info@iitinfotrain.com', 1),
(2, 'cell', 'cell', '9801329699', 0),
(3, 'address', 'address', 'Tulshipur Chowk, Ghorahi\r\nDang-Rapti (Nepal)', 0),
(4, 'website', 'website', 'www.iitinfotrain.com', 0),
(5, 'facebook_link', 'facebook_link', 'https://www.facebook.com/s2productions', 0),
(6, 'twitter_link', 'twitter_link', 'https://www.facebook.com/s2productions', 0),
(7, 'google_plus_link', 'google_plus_link', 'https://www.facebook.com/s2productions', 0),
(8, 'youtube_link', 'youtube_link', 'https://www.facebook.com/s2productions', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page_types`
--

CREATE TABLE IF NOT EXISTS `tbl_page_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_page_types`
--

INSERT INTO `tbl_page_types` (`id`, `name`, `desc`) VALUES
(1, 'article', NULL),
(2, 'category', NULL),
(3, 'gallery', NULL),
(4, 'news', NULL),
(5, 'picture', NULL),
(6, 'contact', NULL),
(7, 'timeline', NULL),
(8, '404', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permissions`
--

CREATE TABLE IF NOT EXISTS `tbl_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_permission_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fk_parent_permission_id` (`parent_permission_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `tbl_permissions`
--

INSERT INTO `tbl_permissions` (`id`, `parent_permission_id`, `name`, `slug`, `desc`, `created_at`) VALUES
(5, NULL, 'Administrator User', 'administrator-user', '', '2015-01-28 19:11:32'),
(6, 5, 'add user', 'add-user', '', '2015-01-28 19:13:23'),
(7, 5, 'edit user', 'edit-user', '', '2015-01-28 19:13:38'),
(8, NULL, 'Administrator  Permission', 'administrator-permission', '', '2015-01-28 19:14:51'),
(9, 8, 'add Permission', 'add-permission', '', '2015-01-28 19:15:02'),
(10, 8, 'edit Permission', 'edit-permission', '', '2015-01-28 19:15:11'),
(11, NULL, 'Administrator Testimonial', 'administrator-testimonial', '', '2015-02-01 08:57:53'),
(14, 11, 'list testimonial', 'list-testimonial', 'list testimonial desc', '2015-02-01 09:53:12'),
(15, NULL, 'Administrator Group', 'administrator-group', '', '2015-02-01 09:55:08'),
(16, 15, 'Add Group', 'add-group', '', '2015-02-01 10:00:09'),
(17, 8, 'delete Permission', 'delete-permission', '', '2015-02-20 16:36:45'),
(18, 11, 'add testimonial', 'add-testimonial', 'add testimonial desc', '2015-02-20 18:00:58'),
(19, 11, 'edit testimonial', 'edit-testimonial', 'edit testimonial desc', '2015-02-20 18:01:07'),
(20, 11, 'delete testimonial', 'delete-testimonial', 'delete testimonial desc', '2015-02-20 18:01:33'),
(21, 11, 'activate testimonial', 'activate-testimonial', 'activate testimonial desc', '2015-02-20 18:49:00'),
(22, 11, 'block testimonial', 'block-testimonial', 'block testimonial desc', '2015-02-20 18:49:12'),
(23, NULL, 'Administrator page', 'administrator-page', '', '2015-02-22 19:53:39'),
(24, 23, 'list page', 'list-page', 'list page desc', '2015-02-22 19:55:17'),
(25, 23, 'add page', 'add-page', 'add page desc', '2015-02-22 19:58:00'),
(26, 23, 'edit page', 'edit-page', 'edit page', '2015-02-22 19:58:17'),
(27, 23, 'delete page', 'delete-page', 'delete page', '2015-02-22 19:58:27'),
(28, 23, 'activate page', 'activate-page', 'activate page', '2015-02-22 19:58:35'),
(29, 23, 'block page', 'block-page', 'block page', '2015-02-22 19:58:43'),
(30, NULL, 'Administrator category', 'administrator-category', '', '2015-02-22 19:53:39'),
(31, 30, 'list category', 'list-category', '', '2015-02-22 19:55:17'),
(32, 30, 'add category', 'add-category', '', '2015-02-22 19:58:00'),
(33, 30, 'edit category', 'edit-category', '', '2015-02-22 19:58:17'),
(34, 30, 'delete category', 'delete-category', '', '2015-02-22 19:58:27'),
(35, 30, 'activate category', 'activate-category', '', '2015-02-22 19:58:35'),
(36, 30, 'block category', 'block-category', '', '2015-02-22 19:58:43'),
(37, NULL, 'Administrator menu', 'administrator-menu', '', '2015-02-22 19:53:39'),
(38, 37, 'list menu', 'list-menu', '', '2015-02-22 19:55:17'),
(39, 37, 'add menu', 'add-menu', '', '2015-02-22 19:58:00'),
(40, 37, 'edit menu', 'edit-menu', '', '2015-02-22 19:58:17'),
(41, 37, 'delete menu', 'delete-menu', '', '2015-02-22 19:58:27'),
(42, 37, 'activate menu', 'activate-menu', '', '2015-02-22 19:58:35'),
(43, 37, 'block menu', 'block-menu', '', '2015-02-22 19:58:43'),
(47, NULL, 'administrator article', 'administrator-article', '', '2015-02-22 19:55:17'),
(48, 47, 'add article', 'add-article', '', '2015-02-22 19:58:00'),
(49, 47, 'edit article', 'edit-article', '', '2015-02-22 19:58:17'),
(50, 47, 'delete article', 'delete-article', '', '2015-02-22 19:58:27'),
(51, 47, 'activate article', 'activate-article', '', '2015-02-22 19:58:35'),
(52, 47, 'block article', 'block-article', '', '2015-02-22 19:58:43'),
(53, 47, 'list article', 'list-article', '', '2015-02-22 19:55:17'),
(54, 47, 'view article', 'view-article', '', '2015-02-22 19:55:17'),
(55, NULL, 'List Setting', 'list-setting', '', '2015-01-28 19:11:32'),
(56, 55, 'Edit Setting', 'edit-setting', '', '2015-01-28 19:11:32'),
(60, 55, 'add setting', 'add-setting', '', '2015-03-19 20:44:50');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonials`
--

CREATE TABLE IF NOT EXISTS `tbl_testimonials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `std_pic` varchar(100) NOT NULL,
  `std_name` varchar(100) NOT NULL,
  `std_email` varchar(50) DEFAULT NULL,
  `std_add` varchar(500) NOT NULL,
  `testimonial` varchar(1000) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=97 ;

--
-- Dumping data for table `tbl_testimonials`
--

INSERT INTO `tbl_testimonials` (`id`, `std_pic`, `std_name`, `std_email`, `std_add`, `testimonial`, `slug`, `status`, `created_date`, `updated_date`) VALUES
(70, 'Hydrangeas.jpg', 'Ava Dorsey', 'havoxa@yahoo.com', 'Eum totam eum ullamco architecto tempor dolor ipsum ipsum consequat. Sed quasi.', 'Sint nostrud cum dolorem architecto commodi dolorem suscipit tempora quidem quos et porro ducimus, eu recusandae.', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'Desert.jpg', 'Charles Herring', 'ronajy@gmail.com', 'Vel culpa, ut sint, fugiat, voluptatem. Excepteur eius rerum sint nobis aliquip laboriosam, ut molestiae mollit velit eos, quis exercitationem.', 'Tempore, sint, fugiat, voluptas minus cum consequat. Dolore ratione in minus illum, autem iusto fugiat.', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'Hydrangeas.jpg', 'Bradley Robbins', 'gebaqydy@gmail.com', 'Fuga. Sint saepe exercitationem quisquam laborum cupidatat omnis nulla mollitia corporis fugit, impedit, atque magnam amet, nesciunt, veniam, ut.', 'Ullam fugit, eius labore eaque ut laboris qui similique nobis perferendis incidunt, odio officia quod.', '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'Koala.jpg', 'sn', 'sewy@hotmail.com', 'sae', 'tee', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'Tulips.jpg', 'Felix Whitney', 'koqu@gmail.com', 'Ex quasi culpa vel veniam, atque recusandae. Quia nesciunt, consectetur, accusamus cupidatat odio.', 'Dolore qui qui iure ut et ea voluptas in natus magna qui omnis officia quis veritatis doloribus excepteur corporis optio.', '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'Koala.jpg', 'Thane Fox', 'wutys@yahoo.com', 'In modi id, deserunt aliquid voluptatum et duis et voluptatum id repudiandae est, et.', 'In elit, corporis at delectus, ratione dolore officia autem ut quidem et nesciunt, eum ea.', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'Penguins.jpg', 'Fatima Chambers', 'huhu@yahoo.com', 'Velit dolore et minima quaerat ut quisquam illo in ipsam consequuntur fuga. Ea maiores enim corrupti.', 'In voluptatem consectetur sed ullam quidem et ullamco quis vitae aut nisi modi.', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'Tulips.jpg', 'Cade French', 'qaten@gmail.com', 'Ab odio non maxime modi optio, qui nesciunt, debitis fuga. Doloribus unde suscipit iure mollitia sed mollitia.', 'Dolorem vel consequatur, corrupti, voluptatum veniam, dolores voluptatum exercitationem iusto temporibus rem in sint.', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'Penguins.jpg', 'Kelly Conley', 'tadyvymy@yahoo.com', 'Officiis dolore laboris quasi nihil in eveniet, rem cupiditate amet.', 'Debitis sed fugit, laborum nulla sint est reiciendis enim non autem ipsam reprehenderit iusto culpa totam dolore.', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'Lighthouse.jpg', 'Remedios Ellis', 'xabepofehy@gmail.com', 'Id voluptatem, cupidatat est cillum sunt, nostrum dolor atque laudantium, dolores rem autem elit, autem eiusmod sed quidem iusto veniam.', 'Excepturi qui et nihil sequi aperiam voluptas laboriosam, ea eligendi et voluptatum.', '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'Koala.jpg', 'Bethany Solomon', 'qehen@yahoo.com', 'Ipsum, perferendis aute nihil irure natus fugiat, nulla illo qui quae ea omnis.', 'Do doloribus voluptatem. Inventore dolorem vel placeat, sit, quisquam at debitis quia quia tempore, eu.e', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, '01.jpg', 'Chiquita Small', 'nezag@hotmail.com', 'Excepturi numquam irure dignissimos dolor rerum in voluptatem. Eligendi quasi iusto quo voluptas autem in.', 'Vel ut sed incidunt, culpa, voluptates sit, ut dolorem eaque qui praesentium nulla magni sequi ex est cillum.', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, '04.jpg', 'Ishmael Morse', 'kesisuzy@gmail.com', 'Molestias magni ratione ab ut voluptatem sunt et sunt, perspiciatis.', 'Et ut incididunt quo animi, ut do natus dolorum laborum. Quia aliqua. Dolore a maiores laboris eius veniam, voluptate.', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'images.jpg', 'EHerrod Clemons', 'Eduparajex@yahoo.com', 'EAnimi, ea pariatur. Non cupiditate labore obcaecati impedit, iusto dolor voluptatem.', 'EDolore nulla illo praesentium sed laborum ipsam nulla autem exercitation aut quasi.', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'Jellyfish.jpg', 'Jameson Morrow', 'zetywijuw@gmail.com', 'Ad libero in sint delectus, ab numquam delectus, nostrud porro earum voluptatem.', 'Repellendus. Velit voluptate dicta sed necessitatibus inventore deserunt et ea irure nobis quaerat ratione sunt minima autem molestiae placeat, ut.', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, '10897124_683563788425573_5853013528555819243_n.jpg', 'Simon Hamilton', 'byzutyta@yahoo.com', 'Aliquam anim suscipit iusto accusantium vel quis in magnam ipsum.', 'Minus eligendi cum qui qui cumque sed rem eaque doloremque debitis illum, facilis similique saepe odio ea hic.', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, '10501670_879689398738306_4672049685180392065_n.jpg', 'Risa Snow', 'rykupivy@gmail.com', 'Vitae amet, et quia et eaque accusantium ipsum et aliquip consequatur? Vitae sint rerum voluptatum omnis.', 'Incididunt dolore ut est nisi animi, incidunt, odio a sit, quos dolorum non deserunt mollit.', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, '02.jpg', 'eConan Buck', 'egabyl@gmail.com', 'eEum ipsum, autem qui recusandae. Ratione non magni ad tempore, quisquam adipisci.', 't', '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'principal.jpg', 'Galena Pickett', 'panegy@gmail.com', 'Itaque iusto consequatur, accusantium lorem et pariatur? Est, quis dolore nemo sed deserunt nulla molestias quasi.', 'eDignissimos qui est consequatur? Unde error a dolore rerum facere.', '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, '03.jpg', 'Timothy Middleton', 'nymakamoto@hotmail.com', 'Animi, voluptate id voluptas et quia praesentium nihil non excepteur assumenda eos, dolor dolorum.', 'eQuae aliquam sit, at dolor qui voluptatem explicabo. Est, pariatur. Voluptate quaerat occaecat aut veniam.', '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, '10897050_773760019343811_1726917434105566457_n.jpg', 'eErin Hammond', 'ebeqysurehu@hotmail.com', 'eIncidunt, est in corrupti, quas doloremque id, nostrum voluptatibus autem voluptatum exercitation nisi magni ea quis deserunt.', 'eQuia ex laudantium, nisi Nam saepe repellendus. Dolor ad dolore quia.', '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, '10923587_10153015109212010_2658068126353076008_n.jpg', 'e Brittany Powell', 'ecinaq@yahoo.com', 'eQuis voluptatem anim repellendus. Ut voluptatum cumque incididunt optio, deserunt omnis iste ullamco sint fugiat do debitis.', 'e Dolore adipisci eligendi aliquip a occaecat ipsam dolore unde nobis architecto et magna similique cumque et.', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, '75716_10152197313025198_1086246900_n.jpg', 'Winter Gill', 'wyfumikave@hotmail.com', 'Est quaerat eveniet, esse corporis sit maxime delectus, rerum consectetur minus alias aperiam nisi sint.', 'Eum odit quis voluptate nesciunt, deleniti est quia lorem earum nihil et et voluptates labore ut sit corrupti, hic molestiae.', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, '75716_10152197313025198_1086246900_n.jpg', 'Winter Gill', 'wyfumikave@hotmail.com', 'Est quaerat eveniet, esse corporis sit maxime delectus, rerum consectetur minus alias aperiam nisi sint.', 'Eum odit quis voluptate nesciunt, deleniti est quia lorem earum nihil et et voluptates labore ut sit corrupti, hic molestiae.', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, '10654085_10204036342844948_1750014297_n.jpg', 'Yvonne Harrell', 'pikurihu@yahoo.com', 'Et sed anim pariatur. Consequatur veniam, sint ex voluptates ut.', 'Duis fugit, pariatur? Anim quae rerum itaque et cumque rerum eos sed amet, lorem accusantium enim.', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, '10660754_10204036343404962_177007224_n.jpg', 'Tatum Malone', 'mudehafal@hotmail.com', 'Aute velit ut id, in excepteur dolore ullamco quia est velit, sit, repudiandae molestiae corporis consequat. Eaque a voluptas consequatur.', 'Quia expedita laboris dignissimos sint, quo enim ullamco et facilis rerum nostrum numquam inventore quisquam et ut ex.', 'quia-expedita-laboris-dignissimos-sint-quo-enim-ullamco-et-facilis-rerum-nostrum-numquam-inventore-q', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'main_semi_bold.png', 'Skyler Cantu', 'daximegix@yahoo.com', 'Aut dicta tempor deserunt officiis commodi perspiciatis, velit odio non labore et est et optio, repellendus. Facilis ducimus.', 'Qui molestiae placeat, anim aliquip autem eius commodo dolores unde reiciendis saepe velit quas autem deleniti laudantium, tenetur.', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `group_id` int(10) unsigned NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `fk_group_id` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `group_id`, `username`, `email`, `pass`, `created_at`, `updated_at`, `status`) VALUES
(25, 1, 'ramesh', 'ramesh@gmail.come', '53edd6990376d7b5f512d2b5556613ca2567f04c', '2015-01-28 22:58:21', '2015-01-28 22:58:22', 1),
(37, 1, 's1', 's1@gmail.com', '8ddf878039b70767c4a5bcf4f0c4f65e', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3),
(38, 2, 'bhime', 'bhim@gmail.come', '64a4e670f7388da98068c41615d19af76a0cbecb', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(39, 1, 'admin', 'cafe@yahoo.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_articles`
--
ALTER TABLE `tbl_articles`
  ADD CONSTRAINT `tbl_articles_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `tbl_categories` (`id`),
  ADD CONSTRAINT `tbl_articles_ibfk_2` FOREIGN KEY (`author`) REFERENCES `tbl_users` (`id`),
  ADD CONSTRAINT `tbl_articles_ibfk_3` FOREIGN KEY (`author`) REFERENCES `tbl_users` (`id`),
  ADD CONSTRAINT `tbl_articles_ibfk_4` FOREIGN KEY (`modified_by`) REFERENCES `tbl_users` (`id`);

--
-- Constraints for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD CONSTRAINT `tbl_categories_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `tbl_categories` (`id`),
  ADD CONSTRAINT `tbl_categories_ibfk_2` FOREIGN KEY (`author`) REFERENCES `tbl_users` (`id`),
  ADD CONSTRAINT `tbl_categories_ibfk_3` FOREIGN KEY (`modified_by`) REFERENCES `tbl_users` (`id`);

--
-- Constraints for table `tbl_groups`
--
ALTER TABLE `tbl_groups`
  ADD CONSTRAINT `tbl_groups_ibfk_1` FOREIGN KEY (`parent_group_id`) REFERENCES `tbl_groups` (`id`);

--
-- Constraints for table `tbl_group_permissions`
--
ALTER TABLE `tbl_group_permissions`
  ADD CONSTRAINT `tbl_group_permissions_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `tbl_groups` (`id`),
  ADD CONSTRAINT `tbl_group_permissions_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `tbl_permissions` (`id`);

--
-- Constraints for table `tbl_permissions`
--
ALTER TABLE `tbl_permissions`
  ADD CONSTRAINT `fk_parent_permission_id` FOREIGN KEY (`parent_permission_id`) REFERENCES `tbl_permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD CONSTRAINT `fk_group_id` FOREIGN KEY (`group_id`) REFERENCES `tbl_groups` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
