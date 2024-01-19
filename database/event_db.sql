-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2024 at 07:52 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `audience`
--

CREATE TABLE `audience` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `event_id` int(30) NOT NULL,
  `payment_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0= pending, 1 =Paid',
  `attendance_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1= present',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = for verification,  1 = confirmed,2= declined',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audience`
--

INSERT INTO `audience` (`id`, `name`, `contact`, `email`, `address`, `event_id`, `payment_status`, `attendance_status`, `status`, `date_created`) VALUES
(2, 'Abdul Rehman', '+92 432252423', 'k213364@nu.edu.pk', 'A-123, Nulla St.Mankato Mississippi ', 4, 1, 0, 1, '0000-00-00 00:00:00'),
(3, 'Samaha Batool', '+92 55345234', 'samahabatool7@gmail.com', '8562 Fusce Rd.\r\nFrederick Nebraska 20620', 2, 1, 0, 1, '2024-01-19 22:30:07'),
(4, 'Shaheer ul Islam', '+92 523423532', 'k214936@nu.edu.pk', '859 Sit Rd.\r\nAzusa New York ', 3, 0, 0, 0, '2024-01-19 22:31:01');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(30) NOT NULL,
  `venue_id` int(30) NOT NULL,
  `event` text NOT NULL,
  `description` text NOT NULL,
  `schedule` datetime NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Public, 2-Private',
  `audience_capacity` int(30) NOT NULL,
  `payment_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Free,payable',
  `amount` double NOT NULL DEFAULT 0,
  `banner` text NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `venue_id`, `event`, `description`, `schedule`, `type`, `audience_capacity`, `payment_type`, `amount`, `banner`, `date_created`) VALUES
(1, 1, 'CS:GO War', '&lt;p&gt;&lt;/p&gt;&lt;h2 style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;&quot;&gt;&lt;b&gt;CS:GO War&lt;/b&gt;&lt;/h2&gt;&lt;p style=&quot;text-align: center; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;&quot;&gt;&lt;b style=&quot;color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur in pretium lorem. Nunc et egestas nibh. Nunc nec dui at elit aliquet fringilla. Pellentesque erat ligula, blandit nec metus aliquet, euismod suscipit libero. Nulla posuere posuere enim sit amet mollis. Proin nisi nisi, dapibus id hendrerit nec, dictum sed odio. Aenean leo purus, rhoncus at est vitae, dignissim cursus sapien. Etiam sit amet elit mi. Suspendisse dapibus fermentum velit, id consequat mi maximus et. Vestibulum a quam quis nisl maximus auctor ac vitae lacus. Etiam in purus posuere, consequat quam in, semper ante. Nullam imperdiet hendrerit nisl nec feugiat. Etiam sed maximus ante. Nunc a venenatis urna. Donec sed cursus ipsum, a porta sapien&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;&quot;&gt;Phasellus nec erat libero. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus id mattis augue, id lobortis arcu. Quisque vitae tempus orci. Etiam facilisis fermentum placerat. Cras vestibulum, lorem eget sollicitudin placerat, justo velit sollicitudin odio, sed auctor eros dui bibendum massa. Maecenas finibus efficitur elementum. Vivamus posuere mauris in vestibulum maximus. Donec in velit ac ipsum ornare tempor a ac quam. Quisque vitae lacus a metus pulvinar convallis at et massa. Phasellus congue, sem quis iaculis consequat, diam nulla rhoncus mi, at posuere enim neque quis metus. Mauris ut lectus quis ipsum fringilla convallis. Etiam eleifend euismod mauris, sit amet auctor nisl varius vel. Duis ut mattis mi. Mauris imperdiet, ipsum at pharetra molestie, neque est ornare velit, id auctor magna metus sed mauris. Duis sit amet felis in dolor finibus dapibus.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;&quot;&gt;Fusce porta vitae diam sit amet maximus. Donec turpis neque, laoreet a tempus vel, vehicula vel est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer vitae metus non nisi tempus lobortis. Morbi dictum, tellus sit amet rhoncus sollicitudin, diam justo tempus nisi, nec sollicitudin justo metus et odio. Donec ullamcorper mollis urna, sed commodo leo tristique id. Aliquam vitae semper elit, sit amet bibendum dui. Vestibulum sodales nisi quis tempus efficitur. Sed laoreet libero nec est tincidunt placerat. Etiam quis orci nec dolor tristique faucibus at ac justo. Aliquam nec ligula et eros hendrerit facilisis et eget purus. Aliquam mi leo, ullamcorper non ex ac, congue aliquam dui. Morbi molestie, odio ac auctor volutpat, risus est euismod magna, in egestas lacus nisi non magna.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;&quot;&gt;Vestibulum varius vitae felis tincidunt dignissim. Nulla mattis leo viverra porta efficitur. Fusce et justo odio. Ut nisi est, maximus in feugiat ac, rutrum ut risus. Pellentesque dictum quam vel nunc fringilla, eget euismod nulla aliquam. Aliquam tempus mauris nec sapien cursus fringilla. Nullam pulvinar sapien id risus tempor, a cursus velit ullamcorper. Sed sodales quis urna nec luctus. Proin mattis ligula quis sem euismod, vitae laoreet urna iaculis. Sed a mauris vestibulum, accumsan felis id, vestibulum dolor. Ut interdum, quam vitae gravida dignissim, elit enim pharetra tellus, eget venenatis tortor justo sed massa. Ut posuere accumsan sem in accumsan. Cras vehicula augue ac turpis dignissim, et porta ligula consectetur. Nunc molestie enim vel nisl consectetur, vitae auctor ante cursus.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;&quot;&gt;Vestibulum tristique diam ullamcorper odio consequat, in aliquet lacus fringilla. In ullamcorper ex eros, ac convallis mauris imperdiet eget. Phasellus dignissim lacinia mi, ac maximus ligula mollis a. Nulla id volutpat eros. Suspendisse eget euismod nulla. Nullam volutpat turpis id tellus tincidunt, ac ultrices mi dignissim. Aenean sed ex nunc. Proin aliquet lectus a luctus porttitor.&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '2024-01-25 19:00:00', 1, 150, 1, 500, '1705684740_image_2024-01-19_221901592.png', '0000-00-00 00:00:00'),
(2, 2, 'Tekken Showdown', '&lt;h1&gt;&lt;span style=&quot;color:rgb(102,0,0);&quot;&gt;Tekken Showdown&lt;/span&gt;&lt;/h1&gt;&lt;p&gt;&lt;p style=&quot;text-align: center; margin-bottom: 15px; padding: 0px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;&lt;b style=&quot;text-align: center; margin-bottom: 15px; padding: 0px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Phasellus nec erat libero. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus id mattis augue, id lobortis arcu. Quisque vitae tempus orci. Etiam facilisis fermentum placerat. Cras vestibulum, lorem eget sollicitudin placerat, justo velit sollicitudin odio, sed auctor eros dui bibendum massa. Maecenas finibus efficitur elementum. Vivamus posuere mauris in vestibulum maximus. Donec in velit ac ipsum ornare tempor a ac quam. Quisque vitae lacus a metus pulvinar convallis at et massa. Phasellus congue, sem quis iaculis consequat, diam nulla rhoncus mi, at posuere enim neque quis metus. Mauris ut lectus quis ipsum fringilla convallis. Etiam eleifend euismod mauris, sit amet auctor nisl varius vel. Duis ut mattis mi. Mauris imperdiet, ipsum at pharetra molestie, neque est ornare velit, id auctor magna metus sed mauris. Duis sit amet felis in dolor finibus dapibus.&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Fusce porta vitae diam sit amet maximus. Donec turpis neque, laoreet a tempus vel, vehicula vel est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer vitae metus non nisi tempus lobortis. Morbi dictum, tellus sit amet rhoncus sollicitudin, diam justo tempus nisi, nec sollicitudin justo metus et odio. Donec ullamcorper mollis urna, sed commodo leo tristique id. Aliquam vitae semper elit, sit amet bibendum dui. Vestibulum sodales nisi quis tempus efficitur. Sed laoreet libero nec est tincidunt placerat. Etiam quis orci nec dolor tristique faucibus at ac justo. Aliquam nec ligula et eros hendrerit facilisis et eget purus. Aliquam mi leo, ullamcorper non ex ac, congue aliquam dui. Morbi molestie, odio ac auctor volutpat, risus est euismod magna, in egestas lacus nisi non magna.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Vestibulum varius vitae felis tincidunt dignissim. Nulla mattis leo viverra porta efficitur. Fusce et justo odio. Ut nisi est, maximus in feugiat ac, rutrum ut risus. Pellentesque dictum quam vel nunc fringilla, eget euismod nulla aliquam. Aliquam tempus mauris nec sapien cursus fringilla. Nullam pulvinar sapien id risus tempor, a cursus velit ullamcorper. Sed sodales quis urna nec luctus. Proin mattis ligula quis sem euismod, vitae laoreet urna iaculis. Sed a mauris vestibulum, accumsan felis id, vestibulum dolor. Ut interdum, quam vitae gravida dignissim, elit enim pharetra tellus, eget venenatis tortor justo sed massa. Ut posuere accumsan sem in accumsan. Cras vehicula augue ac turpis dignissim, et porta ligula consectetur. Nunc molestie enim vel nisl consectetur, vitae auctor ante cursus.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Vestibulum tristique diam ullamcorper odio consequat, in aliquet lacus fringilla. In ullamcorper ex eros, ac convallis mauris imperdiet eget. Phasellus dignissim lacinia mi, ac maximus ligula mollis a. Nulla id volutpat eros. Suspendisse eget euismod nulla. Nullam volutpat turpis id tellus tincidunt, ac ultrices mi dignissim. Aenean sed ex nunc. Proin aliquet lectus a luctus porttitor.&lt;/p&gt;&lt;/p&gt;', '2024-01-22 18:00:00', 1, 100, 2, 800, '1705684920_image_2024-01-19_222139607.png', '0000-00-00 00:00:00'),
(3, 1, 'DOTTA 2 : Fun', '&lt;h1&gt;&lt;span style=&quot;color:rgb(102,0,0);&quot;&gt;DOTTA 2: FUN&lt;/span&gt;&lt;/h1&gt;&lt;p&gt;&lt;p style=&quot;text-align: center; margin-bottom: 15px; padding: 0px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;&lt;b style=&quot;text-align: center; margin-bottom: 15px; padding: 0px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Phasellus nec erat libero. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus id mattis augue, id lobortis arcu. Quisque vitae tempus orci. Etiam facilisis fermentum placerat. Cras vestibulum, lorem eget sollicitudin placerat, justo velit sollicitudin odio, sed auctor eros dui bibendum massa. Maecenas finibus efficitur elementum. Vivamus posuere mauris in vestibulum maximus. Donec in velit ac ipsum ornare tempor a ac quam. Quisque vitae lacus a metus pulvinar convallis at et massa. Phasellus congue, sem quis iaculis consequat, diam nulla rhoncus mi, at posuere enim neque quis metus. Mauris ut lectus quis ipsum fringilla convallis. Etiam eleifend euismod mauris, sit amet auctor nisl varius vel. Duis ut mattis mi. Mauris imperdiet, ipsum at pharetra molestie, neque est ornare velit, id auctor magna metus sed mauris. Duis sit amet felis in dolor finibus dapibus.&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Fusce porta vitae diam sit amet maximus. Donec turpis neque, laoreet a tempus vel, vehicula vel est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer vitae metus non nisi tempus lobortis. Morbi dictum, tellus sit amet rhoncus sollicitudin, diam justo tempus nisi, nec sollicitudin justo metus et odio. Donec ullamcorper mollis urna, sed commodo leo tristique id. Aliquam vitae semper elit, sit amet bibendum dui. Vestibulum sodales nisi quis tempus efficitur. Sed laoreet libero nec est tincidunt placerat. Etiam quis orci nec dolor tristique faucibus at ac justo. Aliquam nec ligula et eros hendrerit facilisis et eget purus. Aliquam mi leo, ullamcorper non ex ac, congue aliquam dui. Morbi molestie, odio ac auctor volutpat, risus est euismod magna, in egestas lacus nisi non magna.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Vestibulum varius vitae felis tincidunt dignissim. Nulla mattis leo viverra porta efficitur. Fusce et justo odio. Ut nisi est, maximus in feugiat ac, rutrum ut risus. Pellentesque dictum quam vel nunc fringilla, eget euismod nulla aliquam. Aliquam tempus mauris nec sapien cursus fringilla. Nullam pulvinar sapien id risus tempor, a cursus velit ullamcorper. Sed sodales quis urna nec luctus. Proin mattis ligula quis sem euismod, vitae laoreet urna iaculis. Sed a mauris vestibulum, accumsan felis id, vestibulum dolor. Ut interdum, quam vitae gravida dignissim, elit enim pharetra tellus, eget venenatis tortor justo sed massa. Ut posuere accumsan sem in accumsan. Cras vehicula augue ac turpis dignissim, et porta ligula consectetur. Nunc molestie enim vel nisl consectetur, vitae auctor ante cursus.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Vestibulum tristique diam ullamcorper odio consequat, in aliquet lacus fringilla. In ullamcorper ex eros, ac convallis mauris imperdiet eget. Phasellus dignissim lacinia mi, ac maximus ligula mollis a. Nulla id volutpat eros. Suspendisse eget euismod nulla. Nullam volutpat turpis id tellus tincidunt, ac ultrices mi dignissim. Aenean sed ex nunc. Proin aliquet lectus a luctus porttitor.&lt;/p&gt;&lt;/p&gt;', '2024-01-27 23:00:00', 2, 400, 2, 500, '1705685040_image_2024-01-19_222409448.png', '0000-00-00 00:00:00'),
(4, 4, 'PUBG Mobile : Yalgaar', '&lt;h1&gt;&lt;span style=&quot;color:rgb(102,0,0);&quot;&gt;PUBG Mobile : Yalgaar&lt;/span&gt;&lt;/h1&gt;&lt;p&gt;&lt;p style=&quot;text-align: center; margin-bottom: 15px; padding: 0px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;&lt;b style=&quot;text-align: center; margin-bottom: 15px; padding: 0px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Phasellus nec erat libero. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus id mattis augue, id lobortis arcu. Quisque vitae tempus orci. Etiam facilisis fermentum placerat. Cras vestibulum, lorem eget sollicitudin placerat, justo velit sollicitudin odio, sed auctor eros dui bibendum massa. Maecenas finibus efficitur elementum. Vivamus posuere mauris in vestibulum maximus. Donec in velit ac ipsum ornare tempor a ac quam. Quisque vitae lacus a metus pulvinar convallis at et massa. Phasellus congue, sem quis iaculis consequat, diam nulla rhoncus mi, at posuere enim neque quis metus. Mauris ut lectus quis ipsum fringilla convallis. Etiam eleifend euismod mauris, sit amet auctor nisl varius vel. Duis ut mattis mi. Mauris imperdiet, ipsum at pharetra molestie, neque est ornare velit, id auctor magna metus sed mauris. Duis sit amet felis in dolor finibus dapibus.&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Fusce porta vitae diam sit amet maximus. Donec turpis neque, laoreet a tempus vel, vehicula vel est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer vitae metus non nisi tempus lobortis. Morbi dictum, tellus sit amet rhoncus sollicitudin, diam justo tempus nisi, nec sollicitudin justo metus et odio. Donec ullamcorper mollis urna, sed commodo leo tristique id. Aliquam vitae semper elit, sit amet bibendum dui. Vestibulum sodales nisi quis tempus efficitur. Sed laoreet libero nec est tincidunt placerat. Etiam quis orci nec dolor tristique faucibus at ac justo. Aliquam nec ligula et eros hendrerit facilisis et eget purus. Aliquam mi leo, ullamcorper non ex ac, congue aliquam dui. Morbi molestie, odio ac auctor volutpat, risus est euismod magna, in egestas lacus nisi non magna.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Vestibulum varius vitae felis tincidunt dignissim. Nulla mattis leo viverra porta efficitur. Fusce et justo odio. Ut nisi est, maximus in feugiat ac, rutrum ut risus. Pellentesque dictum quam vel nunc fringilla, eget euismod nulla aliquam. Aliquam tempus mauris nec sapien cursus fringilla. Nullam pulvinar sapien id risus tempor, a cursus velit ullamcorper. Sed sodales quis urna nec luctus. Proin mattis ligula quis sem euismod, vitae laoreet urna iaculis. Sed a mauris vestibulum, accumsan felis id, vestibulum dolor. Ut interdum, quam vitae gravida dignissim, elit enim pharetra tellus, eget venenatis tortor justo sed massa. Ut posuere accumsan sem in accumsan. Cras vehicula augue ac turpis dignissim, et porta ligula consectetur. Nunc molestie enim vel nisl consectetur, vitae auctor ante cursus.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Vestibulum tristique diam ullamcorper odio consequat, in aliquet lacus fringilla. In ullamcorper ex eros, ac convallis mauris imperdiet eget. Phasellus dignissim lacinia mi, ac maximus ligula mollis a. Nulla id volutpat eros. Suspendisse eget euismod nulla. Nullam volutpat turpis id tellus tincidunt, ac ultrices mi dignissim. Aenean sed ex nunc. Proin aliquet lectus a luctus porttitor.&lt;/p&gt;&lt;/p&gt;', '2024-01-29 13:00:00', 1, 450, 2, 500, '1705685160_image_2024-01-19_222617910.png', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Event Sphere', 'k214578@nu.edu.pk', '+92 123456789', '1705690080_home.png', '&lt;p style=&quot;text-align: center; background: transparent; position: relative; color: rgb(51, 51, 51);&quot;&gt;Welcome to&lt;span style=&quot;text-align: center; background: transparent; position: relative; color: rgb(51, 51, 51);&quot;&gt;EventSphere&lt;span style=&quot;color:rgb(102,0,0);text-align: center; background: transparent; position: relative;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/b&gt;, your premier destination for seamless esports event management! Founded by three avid gaming enthusiasts&lt;span style=&quot;color:rgb(204,0,0);text-align: center; background: transparent; position: relative;&quot;&gt;&mdash;&lt;b style=&quot;text-align: center; background: transparent; position: relative; color: rgb(204, 0, 0);&quot;&gt;&lt;span style=&quot;text-align: center; background: transparent; position: relative; color: rgb(204, 0, 0);&quot;&gt;Abdul Rehman, Samaha Batool, and Shaheer ul Islam&lt;/span&gt;&lt;/b&gt;&mdash;&lt;/span&gt;EventSphere is not just a platform; it&rsquo;s a digital arena where esports events come to life with unparalleled precision and enthusiasm. As dedicated gamers ourselves, we recognize the unique dynamics of the esports world and have tailored EventSphere to cater specifically to the needs of competitive gaming events. Our platform offers a cutting-edge suite of tools designed to streamline every aspect of esports event planning, from tournament organization and team management to live streaming integration and audience engagement. Embrace the future of esports events with EventSphere, where your passion meets our expertise to create unforgettable gaming spectacles. Level up your event management game with EventSphere&mdash;because in esports, every detail matters.&lt;br style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=Admin,2=Staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Administrator', 'admin', '0192023a7bbd73250516f069df18b500', 1);

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--

CREATE TABLE `venue` (
  `id` int(30) NOT NULL,
  `venue` text NOT NULL,
  `address` text NOT NULL,
  `description` text NOT NULL,
  `rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `venue`
--

INSERT INTO `venue` (`id`, `venue`, `address`, `description`, `rate`) VALUES
(1, 'Venue 1', 'ABC Road, Karachi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur in pretium lorem. Nunc et egestas nibh. Nunc nec dui at elit aliquet fringilla. Pellentesque erat ligula, blandit nec metus aliquet, euismod suscipit libero. Nulla posuere posuere enim sit amet mollis. Proin nisi nisi, dapibus id hendrerit nec, dictum sed odio. Aenean leo purus, rhoncus at est vitae, dignissim cursus sapien. Etiam sit amet elit mi. Suspendisse dapibus fermentum velit, id consequat mi maximus et. Vestibulum a quam quis nisl maximus auctor ac vitae lacus. Etiam in purus posuere, consequat quam in, semper ante. Nullam imperdiet hendrerit nisl nec feugiat. Etiam sed maximus ante. Nunc a venenatis urna. Donec sed cursus ipsum, a porta sapien.', 450),
(2, 'Venue 2', 'DEF Road, near FED Area, Karachi', 'Phasellus nec erat libero. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus id mattis augue, id lobortis arcu. Quisque vitae tempus orci. Etiam facilisis fermentum placerat. Cras vestibulum, lorem eget sollicitudin placerat, justo velit sollicitudin odio, sed auctor eros dui bibendum massa. Maecenas finibus efficitur elementum. Vivamus posuere mauris in vestibulum maximus. Donec in velit ac ipsum ornare tempor a ac quam. Quisque vitae lacus a metus pulvinar convallis at et massa. Phasellus congue, sem quis iaculis consequat, diam nulla rhoncus mi, at posuere enim neque quis metus.', 500),
(3, 'Venue 3', 'FSW Road, Near FFE Park, Karachi', 'Fusce porta vitae diam sit amet maximus. Donec turpis neque, laoreet a tempus vel, vehicula vel est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer vitae metus non nisi tempus lobortis. Morbi dictum, tellus sit amet rhoncus sollicitudin, diam justo tempus nisi, nec sollicitudin justo metus et odio. Donec ullamcorper mollis urna, sed commodo leo tristique id. Aliquam vitae semper elit, sit amet bibendum dui. Vestibulum sodales nisi quis tempus efficitur. Sed laoreet libero nec est tincidunt placerat. Etiam quis orci nec dolor tristique faucibus at ac justo. Aliquam nec ligula et eros hendrerit facilisis et eget purus. Aliquam mi leo, ullamcorper non ex ac, congue aliquam dui. Morbi molestie, odio ac auctor volutpat, risus est euismod magna, in egestas lacus nisi non magna.', 830),
(4, 'Venue 4', 'CDS Road, Karachi', 'Vestibulum varius vitae felis tincidunt dignissim. Nulla mattis leo viverra porta efficitur. Fusce et justo odio. Ut nisi est, maximus in feugiat ac, rutrum ut risus. Pellentesque dictum quam vel nunc fringilla, eget euismod nulla aliquam. Aliquam tempus mauris nec sapien cursus fringilla. Nullam pulvinar sapien id risus tempor, a cursus velit ullamcorper. Sed sodales quis urna nec luctus. Proin mattis ligula quis sem euismod, vitae laoreet urna iaculis. Sed a mauris vestibulum, accumsan felis id, vestibulum dolor. Ut interdum, quam vitae gravida dignissim, elit enim pharetra tellus, eget venenatis tortor justo sed massa. Ut posuere accumsan sem in accumsan. Cras vehicula augue ac turpis dignissim, et porta ligula consectetur. Nunc molestie enim vel nisl consectetur, vitae auctor ante cursus.', 400);

-- --------------------------------------------------------

--
-- Table structure for table `venue_booking`
--

CREATE TABLE `venue_booking` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `venue_id` int(30) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0-for verification,1=confirmed,2=canceled'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `venue_booking`
--

INSERT INTO `venue_booking` (`id`, `name`, `address`, `email`, `contact`, `venue_id`, `duration`, `datetime`, `status`) VALUES
(1, 'Cecilia Chapman', 'Ap #651-8679 Sodales Av.\r\nTamuning PA', 'Cecilia123@gmail.com', '+92 2323123123', 2, '5 hours', '0000-00-00 00:00:00', 1),
(2, 'Forrest Ray', '191-103 Integer Rd.\r\nCorona New Mexico', 'forrest432@gmail.com', '+92 34534532', 2, '4 hours', '0000-00-00 00:00:00', 1),
(3, '', '', '', '', 4, '', '0000-00-00 00:00:00', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audience`
--
ALTER TABLE `audience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venue`
--
ALTER TABLE `venue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venue_booking`
--
ALTER TABLE `venue_booking`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audience`
--
ALTER TABLE `audience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `venue`
--
ALTER TABLE `venue`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `venue_booking`
--
ALTER TABLE `venue_booking`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
