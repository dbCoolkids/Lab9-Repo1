-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2016 at 09:12 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lab5database`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` varchar(1) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`) VALUES
('d', 'Drinks', 'Purees made from the finest of Venusian insects, government-inspected.', 'catd.png'),
('m', 'Mains', 'Made from only the finest ingredients found deep in the Martian jungle, and harvested or slaughtered by academy-trained druids, we bring you 45 day aged premium "meat".', 'catm.png'),
('s', 'Sides', 'Perfect accompaniments to our mains, these side dish pairings have been exclsisvely formulated by Ben & Jerry.', 'cats.png');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('6babddeb3f53afb20666ce446e692467af3cdb2b', '127.0.0.1', 1478284108, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383238333939313b),
('e491ca37fe26111885613793a55c63c51f12bd20', '127.0.0.1', 1478284363, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383238343334383b),
('24ff20b5bafaf7697802c52f08b7d2e49cb8a653', '127.0.0.1', 1478286628, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383238363533323b75736572726f6c657c733a343a2275736572223b),
('7b1e54757f1ed751c764048136c6d11de25c02e1', '127.0.0.1', 1478813342, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383831333230303b75736572726f6c657c733a353a2261646d696e223b),
('de5d091495d97687ebbe5875bc9e016ccf46fd9e', '127.0.0.1', 1478814403, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383831343138303b75736572726f6c657c733a343a2275736572223b),
('f77e98fd5c22417ec69f403504b0a040ed17d694', '127.0.0.1', 1478814532, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383831343533303b75736572726f6c657c733a343a2275736572223b),
('3b75fc44199665bb7b06f857747ae9788f3561be', '127.0.0.1', 1478815169, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383831343837393b75736572726f6c657c733a353a2261646d696e223b),
('b20b1f2599f0b99c450351cce0eb07a799f8b6b7', '127.0.0.1', 1478815680, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383831353339383b75736572726f6c657c733a353a2261646d696e223b),
('da1f329e6376e04660855abe701c47695dbd00e8', '127.0.0.1', 1478816076, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383831353737363b75736572726f6c657c733a353a2261646d696e223b6b65797c733a313a2231223b7265636f72647c4f3a383a22737464436c617373223a363a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a363a22436865657365223b733a31313a226465736372697074696f6e223b733a39383a224c65617665207468697320726177206d696c6b2c20626565667920616e6420737765657420636865657365206f757420666f7220616e20686f7572206265666f72652073657276696e6720616e64207061697220776974682070656172206a616d2e223b733a353a227072696365223b733a343a22322e3935223b733a373a2270696374757265223b733a353a22312e706e67223b733a383a2263617465676f7279223b733a313a2273223b7d),
('9ef9b9a944a9da2eb4fe1849d7bb76696f3b2b82', '127.0.0.1', 1478816283, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383831363038343b75736572726f6c657c733a353a2261646d696e223b6b65797c733a313a2231223b7265636f72647c4f3a383a22737464436c617373223a363a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a363a22436865657365223b733a31313a226465736372697074696f6e223b733a39383a224c65617665207468697320726177206d696c6b2c20626565667920616e6420737765657420636865657365206f757420666f7220616e20686f7572206265666f72652073657276696e6720616e64207061697220776974682070656172206a616d2e223b733a353a227072696365223b733a343a22322e3935223b733a373a2270696374757265223b733a353a22312e706e67223b733a383a2263617465676f7279223b733a313a2273223b7d),
('d2cfbe470e2e119ed0897647aef7f9ae0a90f024', '127.0.0.1', 1478816656, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383831363632353b75736572726f6c657c733a353a2261646d696e223b6b65797c733a313a2231223b7265636f72647c4f3a383a22737464436c617373223a363a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a363a22436865657365223b733a31313a226465736372697074696f6e223b733a39383a224c65617665207468697320726177206d696c6b2c20626565667920616e6420737765657420636865657365206f757420666f7220616e20686f7572206265666f72652073657276696e6720616e64207061697220776974682070656172206a616d2e223b733a353a227072696365223b733a343a22322e3935223b733a373a2270696374757265223b733a353a22312e706e67223b733a383a2263617465676f7279223b733a313a2273223b7d),
('58e4fd7404249ca89bcf87b10624bf4508cd1d71', '127.0.0.1', 1478818355, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383831383134303b75736572726f6c657c733a353a2261646d696e223b6b65797c733a313a2236223b7265636f72647c4f3a383a22737464436c617373223a363a7b733a323a226964223b733a313a2236223b733a343a226e616d65223b733a353a22446f6e7574223b733a31313a226465736372697074696f6e223b733a39323a2244697367757374696e676c792073776565742c20746f7070656420776974682061727465727920636c6f6767696e672063686f636f6c61746520616e64207468656e20737072696e6b6c656420776974682050697869652064757374223b733a353a227072696365223b733a343a22312e3235223b733a373a2270696374757265223b733a353a22362e706e67223b733a383a2263617465676f7279223b733a313a2273223b7d),
('961fbcda8179c54ccf6a519824a6f7589396a373', '127.0.0.1', 1478818529, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383831383532373b75736572726f6c657c733a353a2261646d696e223b6b65797c733a313a2238223b7265636f72647c4f3a383a22737464436c617373223a363a7b733a323a226964223b733a313a2238223b733a343a226e616d65223b733a373a22486f7420446f67223b733a31313a226465736372697074696f6e223b733a3230323a22506f726b207472696d6d696e6773206d69786564207769746820706f77646572656420707265736572766174697665732c20666c61766f7572696e67732c2072656420636f6c6f7572696e6720616e64206472656e6368656420696e207761746572206265666f7265206265696e672073717565657a656420696e746f20706c61737469632074756265732e20546f707065642077697468206f6e696f6e732c206261636f6e2c206368696c69206f7220636865657365202d206e6f206578747261206368617267652e223b733a353a227072696365223b733a343a22362e3930223b733a373a2270696374757265223b733a353a22382e706e67223b733a383a2263617465676f7279223b733a313a226d223b7d),
('4fe354c98d041d136d48a5527d9312ad01e73c1b', '127.0.0.1', 1478819062, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383831393035383b75736572726f6c657c733a353a2261646d696e223b6b65797c733a323a223130223b7265636f72647c4f3a383a22737464436c617373223a363a7b733a323a226964223b733a323a223130223b733a343a226e616d65223b733a363a22427562626c79223b733a31313a226465736372697074696f6e223b733a38383a2231393634204d6f657420436861726d6f6e2c206d6164652066726f6d20677261706573206372757368656420627920656c766573207769746820636c65616e20666565742c20706572666563746c79206368696c6c65642e223b733a353a227072696365223b733a353a2231342e3530223b733a373a2270696374757265223b733a363a2231302e706e67223b733a383a2263617465676f7279223b733a313a2264223b7d),
('51c4dcc8c03ceaba3afd244ad723767c3ad02b55', '127.0.0.1', 1478821188, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383832313031373b75736572726f6c657c733a353a2261646d696e223b6b65797c733a313a2231223b7265636f72647c4f3a383a22737464436c617373223a363a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a363a22436865657365223b733a31313a226465736372697074696f6e223b733a39383a224c65617665207468697320726177206d696c6b2c20626565667920616e6420737765657420636865657365206f757420666f7220616e20686f7572206265666f72652073657276696e6720616e64207061697220776974682070656172206a616d2e223b733a353a227072696365223b733a343a22322e3935223b733a373a2270696374757265223b733a353a22312e706e67223b733a383a2263617465676f7279223b733a313a2273223b7d),
('a7d350c31e991f1b3b88cd464a33ec08f208d4dc', '127.0.0.1', 1478821391, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383832313338393b75736572726f6c657c733a353a2261646d696e223b6b65797c733a313a2231223b7265636f72647c4f3a383a22737464436c617373223a363a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a363a22436865657365223b733a31313a226465736372697074696f6e223b733a39383a224c65617665207468697320726177206d696c6b2c20626565667920616e6420737765657420636865657365206f757420666f7220616e20686f7572206265666f72652073657276696e6720616e64207061697220776974682070656172206a616d2e223b733a353a227072696365223b733a343a22322e3935223b733a373a2270696374757265223b733a353a22312e706e67223b733a383a2263617465676f7279223b733a313a2273223b7d),
('758aeb6ed0770da77bd0dca96ae4bac18d66f7fa', '127.0.0.1', 1478822020, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383832313839363b75736572726f6c657c733a353a2261646d696e223b6b65797c733a313a2231223b7265636f72647c4f3a383a22737464436c617373223a363a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a363a22436865657365223b733a31313a226465736372697074696f6e223b733a39383a224c65617665207468697320726177206d696c6b2c20626565667920616e6420737765657420636865657365206f757420666f7220616e20686f7572206265666f72652073657276696e6720616e64207061697220776974682070656172206a616d2e223b733a353a227072696365223b733a343a22322e3935223b733a373a2270696374757265223b733a353a22312e706e67223b733a383a2263617465676f7279223b733a313a2273223b7d),
('0143623ca1e7350d5a13e3f81ed496db09ecd9b1', '127.0.0.1', 1478822573, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383832323237343b75736572726f6c657c733a353a2261646d696e223b6b65797c733a313a2231223b7265636f72647c4f3a383a22737464436c617373223a363a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a363a22436865657365223b733a31313a226465736372697074696f6e223b733a39383a224c65617665207468697320726177206d696c6b2c20626565667920616e6420737765657420636865657365206f757420666f7220616e20686f7572206265666f72652073657276696e6720616e64207061697220776974682070656172206a616d2e223b733a353a227072696365223b733a343a22322e3935223b733a373a2270696374757265223b733a353a22312e706e67223b733a383a2263617465676f7279223b733a313a2273223b7d),
('5adceb31f842f0407bc5228d26c1495afbe56e2a', '127.0.0.1', 1478822661, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383832323630303b75736572726f6c657c733a353a2261646d696e223b6b65797c733a313a2231223b7265636f72647c4f3a383a22737464436c617373223a363a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a363a22436865657365223b733a31313a226465736372697074696f6e223b733a39383a224c65617665207468697320726177206d696c6b2c20626565667920616e6420737765657420636865657365206f757420666f7220616e20686f7572206265666f72652073657276696e6720616e64207061697220776974682070656172206a616d2e223b733a353a227072696365223b733a343a22322e3935223b733a373a2270696374757265223b733a353a22312e706e67223b733a383a2263617465676f7279223b733a313a2273223b7d),
('b44d1b091665b1c2468f69ddf9125ccc56dce060', '127.0.0.1', 1478823150, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383832323936363b75736572726f6c657c733a353a2261646d696e223b6b65797c733a313a2231223b7265636f72647c4f3a383a22737464436c617373223a363a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a363a22436865657365223b733a31313a226465736372697074696f6e223b733a39383a224c65617665207468697320726177206d696c6b2c20626565667920616e6420737765657420636865657365206f757420666f7220616e20686f7572206265666f72652073657276696e6720616e64207061697220776974682070656172206a616d2e223b733a353a227072696365223b733a343a22322e3935223b733a373a2270696374757265223b733a353a22312e706e67223b733a383a2263617465676f7279223b733a313a2273223b7d),
('4a468261839fc3f1b9ac104c7bc41eca6c31e8e2', '127.0.0.1', 1478825183, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383832353137343b75736572726f6c657c733a353a2261646d696e223b6b65797c733a323a223131223b7265636f72647c4f3a383a22737464436c617373223a363a7b733a323a226964223b733a323a223131223b733a343a226e616d65223b733a393a2249636520437265616d223b733a31313a226465736372697074696f6e223b733a3134383a22436f6d62696e6174696f6e206f66206465636164656e742063686f636f6c61746520746f707065642077697468206c757363696f757320737472617762657272792c20636875726e6564206279206769667465642076697267696e73207573696e67206f6e6c7920637265616d2066726f6d207468652054616a696d612073747261696e206f6620776167797520636174746c65223b733a353a227072696365223b733a343a22332e3735223b733a373a2270696374757265223b733a363a2231312e706e67223b733a383a2263617465676f7279223b733a313a2273223b7d),
('203cce7185bbc984b9d39534c682f94253e7498c', '127.0.0.1', 1478986294, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383938363235333b75736572726f6c657c733a353a2261646d696e223b),
('63ccd2b957818fd5b09f4c0399fa47569bcc41db', '127.0.0.1', 1478989470, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383938393333303b75736572726f6c657c733a353a2261646d696e223b6b65797c733a313a2232223b7265636f72647c4f3a383a22737464436c617373223a363a7b733a323a226964223b733a313a2232223b733a343a226e616d65223b733a363a225475726b6579223b733a31313a226465736372697074696f6e223b733a35383a22526f61737465642c2073756363756c656e742c20737475666665642c206c6f76696e676c7920736c69636564207475726b657920627265617374223b733a353a227072696365223b733a343a22352e3935223b733a373a2270696374757265223b733a353a22322e706e67223b733a383a2263617465676f7279223b733a313a226d223b7d),
('bbddb79017d0acd268ea91175a4889ef63edc0a2', '127.0.0.1', 1478989953, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383938393836393b75736572726f6c657c733a353a2261646d696e223b6b65797c733a313a2232223b7265636f72647c4f3a383a22737464436c617373223a363a7b733a323a226964223b733a313a2232223b733a343a226e616d65223b733a363a225475726b6579223b733a31313a226465736372697074696f6e223b733a35383a22526f61737465642c2073756363756c656e742c20737475666665642c206c6f76696e676c7920736c69636564207475726b657920627265617374223b733a353a227072696365223b733a343a22352e3935223b733a373a2270696374757265223b733a353a22322e706e67223b733a383a2263617465676f7279223b733a313a226d223b7d),
('d0066edbaed89be69f2ebad5e9ce987727c0db91', '127.0.0.1', 1478990179, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383939303137393b75736572726f6c657c733a353a2261646d696e223b6b65797c733a313a2232223b7265636f72647c4f3a383a22737464436c617373223a363a7b733a323a226964223b733a313a2232223b733a343a226e616d65223b733a363a225475726b6579223b733a31313a226465736372697074696f6e223b733a35383a22526f61737465642c2073756363756c656e742c20737475666665642c206c6f76696e676c7920736c69636564207475726b657920627265617374223b733a353a227072696365223b733a343a22352e3935223b733a373a2270696374757265223b733a353a22322e706e67223b733a383a2263617465676f7279223b733a313a226d223b7d),
('a406fd141e94d5517732d826360be4d934390e8e', '127.0.0.1', 1478991253, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383939313031323b75736572726f6c657c733a353a2261646d696e223b6b65797c733a313a2232223b7265636f72647c4f3a383a22737464436c617373223a363a7b733a323a226964223b733a313a2232223b733a343a226e616d65223b733a363a225475726b6579223b733a31313a226465736372697074696f6e223b733a35383a22526f61737465642c2073756363756c656e742c20737475666665642c206c6f76696e676c7920736c69636564207475726b657920627265617374223b733a353a227072696365223b733a343a22352e3935223b733a373a2270696374757265223b733a353a22322e706e67223b733a383a2263617465676f7279223b733a313a226d223b7d),
('a38819ca4efb0d510f39e3d3c4d3165ccb56e4aa', '127.0.0.1', 1478991749, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383939313435323b75736572726f6c657c733a353a2261646d696e223b6b65797c733a313a2232223b7265636f72647c4f3a383a22737464436c617373223a363a7b733a323a226964223b733a313a2232223b733a343a226e616d65223b733a363a225475726b6579223b733a31313a226465736372697074696f6e223b733a35383a22526f61737465642c2073756363756c656e742c20737475666665642c206c6f76696e676c7920736c69636564207475726b657920627265617374223b733a353a227072696365223b733a343a22352e3935223b733a373a2270696374757265223b733a353a22322e706e67223b733a383a2263617465676f7279223b733a313a226d223b7d),
('247585b67b0f36be6fb60675f52ab4673b69a0df', '127.0.0.1', 1478991927, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383939313736373b75736572726f6c657c733a353a2261646d696e223b6b65797c733a313a2232223b7265636f72647c4f3a383a22737464436c617373223a363a7b733a323a226964223b733a323a227070223b733a343a226e616d65223b733a363a225475726b6579223b733a31313a226465736372697074696f6e223b733a35383a22526f61737465642c2073756363756c656e742c20737475666665642c206c6f76696e676c7920736c69636564207475726b657920627265617374223b733a353a227072696365223b733a343a22352e3935223b733a373a2270696374757265223b733a353a22322e706e67223b733a383a2263617465676f7279223b733a313a226d223b7d),
('b999a14da0fea32427ea601324cd062577fb74d8', '127.0.0.1', 1478995044, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383939343737353b75736572726f6c657c733a353a2261646d696e223b6b65797c733a313a2232223b7265636f72647c4f3a383a22737464436c617373223a363a7b733a323a226964223b733a323a227070223b733a343a226e616d65223b733a363a225475726b6579223b733a31313a226465736372697074696f6e223b733a35383a22526f61737465642c2073756363756c656e742c20737475666665642c206c6f76696e676c7920736c69636564207475726b657920627265617374223b733a353a227072696365223b733a343a22352e3935223b733a373a2270696374757265223b733a353a22322e706e67223b733a383a2263617465676f7279223b733a313a226d223b7d),
('c4392ed8de54c8bf6f16bef7653cf5535047a71e', '127.0.0.1', 1478995484, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383939353232323b75736572726f6c657c733a353a2261646d696e223b6b65797c733a313a2231223b7265636f72647c4f3a383a22737464436c617373223a363a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a363a22436865657365223b733a31313a226465736372697074696f6e223b733a39383a224c65617665207468697320726177206d696c6b2c20626565667920616e6420737765657420636865657365206f757420666f7220616e20686f7572206265666f72652073657276696e6720616e64207061697220776974682070656172206a616d2e223b733a353a227072696365223b733a343a22322e3935223b733a373a2270696374757265223b733a353a22312e706e67223b733a383a2263617465676f7279223b733a313a2273223b7d),
('96b74324b42f79a461a8b09811e42b8c8cb2df51', '127.0.0.1', 1478996382, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383939363337393b75736572726f6c657c733a353a2261646d696e223b6b65797c733a313a2231223b7265636f72647c4f3a383a22737464436c617373223a363a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a363a22436865657365223b733a31313a226465736372697074696f6e223b733a39383a224c65617665207468697320726177206d696c6b2c20626565667920616e6420737765657420636865657365206f757420666f7220616e20686f7572206265666f72652073657276696e6720616e64207061697220776974682070656172206a616d2e223b733a353a227072696365223b733a343a22322e3935223b733a373a2270696374757265223b733a353a22312e706e67223b733a383a2263617465676f7279223b733a313a2273223b7d),
('800f33c9d4c8d88c5952d6fa839831e2c1eddb18', '127.0.0.1', 1478996808, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383939363738353b75736572726f6c657c733a353a2261646d696e223b6b65797c733a313a2231223b7265636f72647c4f3a383a22737464436c617373223a363a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a363a22436865657365223b733a31313a226465736372697074696f6e223b733a39383a224c65617665207468697320726177206d696c6b2c20626565667920616e6420737765657420636865657365206f757420666f7220616e20686f7572206265666f72652073657276696e6720616e64207061697220776974682070656172206a616d2e223b733a353a227072696365223b733a343a22322e3935223b733a373a2270696374757265223b733a353a22312e706e67223b733a383a2263617465676f7279223b733a313a2273223b7d),
('cc6267bb37f467eeaf041f4adb3176c2314a9c2e', '127.0.0.1', 1479080809, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393038303830333b75736572726f6c657c733a353a2261646d696e223b6b65797c733a323a223130223b7265636f72647c4f3a383a22737464436c617373223a363a7b733a323a226964223b733a323a223130223b733a343a226e616d65223b733a363a22427562626c79223b733a31313a226465736372697074696f6e223b733a38383a2231393634204d6f657420436861726d6f6e2c206d6164652066726f6d20677261706573206372757368656420627920656c766573207769746820636c65616e20666565742c20706572666563746c79206368696c6c65642e223b733a353a227072696365223b733a353a2231342e3530223b733a373a2270696374757265223b733a363a2231302e706e67223b733a383a2263617465676f7279223b733a313a2264223b7d),
('6271bb23a2cb1ac975bf648275c7b0a2932837a7', '127.0.0.1', 1479425897, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393432353839303b75736572726f6c657c733a353a2261646d696e223b6b65797c733a313a2236223b7265636f72647c4f3a383a22737464436c617373223a363a7b733a323a226964223b733a313a2236223b733a343a226e616d65223b733a353a22446f6e7574223b733a31313a226465736372697074696f6e223b733a39323a2244697367757374696e676c792073776565742c20746f7070656420776974682061727465727920636c6f6767696e672063686f636f6c61746520616e64207468656e20737072696e6b6c656420776974682050697869652064757374223b733a353a227072696365223b733a343a22312e3235223b733a373a2270696374757265223b733a353a22362e706e67223b733a383a2263617465676f7279223b733a313a2273223b7d),
('3a44750ae337b9b9598b4c33c6a37f11899fdb2d', '127.0.0.1', 1479426546, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393432363333333b75736572726f6c657c733a353a2261646d696e223b6b65797c733a313a2236223b7265636f72647c4f3a383a22737464436c617373223a363a7b733a323a226964223b733a313a2236223b733a343a226e616d65223b733a353a22446f6e7574223b733a31313a226465736372697074696f6e223b733a39323a2244697367757374696e676c792073776565742c20746f7070656420776974682061727465727920636c6f6767696e672063686f636f6c61746520616e64207468656e20737072696e6b6c656420776974682050697869652064757374223b733a353a227072696365223b733a343a22312e3235223b733a373a2270696374757265223b733a353a22362e706e67223b733a383a2263617465676f7279223b733a313a2273223b7d),
('8e3eb6f0d21ea08a7d103626af36c72c391b147b', '127.0.0.1', 1479426989, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393432363831333b75736572726f6c657c733a353a2261646d696e223b6b65797c733a313a2236223b7265636f72647c4f3a383a22737464436c617373223a363a7b733a323a226964223b733a313a2236223b733a343a226e616d65223b733a353a22446f6e7574223b733a31313a226465736372697074696f6e223b733a39323a2244697367757374696e676c792073776565742c20746f7070656420776974682061727465727920636c6f6767696e672063686f636f6c61746520616e64207468656e20737072696e6b6c656420776974682050697869652064757374223b733a353a227072696365223b733a343a22312e3235223b733a373a2270696374757265223b733a353a22362e706e67223b733a383a2263617465676f7279223b733a313a2273223b7d),
('c1e3e2da1286f969178dd6050ad9296d924dec34', '127.0.0.1', 1479427375, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393432373133353b75736572726f6c657c733a353a2261646d696e223b6b65797c733a313a2236223b7265636f72647c4f3a383a22737464436c617373223a363a7b733a323a226964223b733a313a2236223b733a343a226e616d65223b733a353a22446f6e7574223b733a31313a226465736372697074696f6e223b733a39323a2244697367757374696e676c792073776565742c20746f7070656420776974682061727465727920636c6f6767696e672063686f636f6c61746520616e64207468656e20737072696e6b6c656420776974682050697869652064757374223b733a353a227072696365223b733a343a22312e3235223b733a373a2270696374757265223b733a353a22362e706e67223b733a383a2263617465676f7279223b733a313a2273223b7d6f726465727c4f3a353a224f72646572223a333a7b733a363a226e756d626572223b693a303b733a383a226461746574696d65223b4e3b733a353a226974656d73223b613a303a7b7d7d),
('f60ef3a928cbe00a12c958bb940083781c7a8f59', '127.0.0.1', 1479427904, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393432373633353b75736572726f6c657c733a353a2261646d696e223b6b65797c733a313a2236223b7265636f72647c4f3a383a22737464436c617373223a363a7b733a323a226964223b733a313a2236223b733a343a226e616d65223b733a353a22446f6e7574223b733a31313a226465736372697074696f6e223b733a39323a2244697367757374696e676c792073776565742c20746f7070656420776974682061727465727920636c6f6767696e672063686f636f6c61746520616e64207468656e20737072696e6b6c656420776974682050697869652064757374223b733a353a227072696365223b733a343a22312e3235223b733a373a2270696374757265223b733a353a22362e706e67223b733a383a2263617465676f7279223b733a313a2273223b7d6f726465727c4f3a353a224f72646572223a333a7b733a363a226e756d626572223b693a303b733a383a226461746574696d65223b4e3b733a353a226974656d73223b613a303a7b7d7d),
('66627d09aa1cebdfc1df40e5ca8c23aead63e4c8', '127.0.0.1', 1479428227, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393432383037333b75736572726f6c657c733a353a2261646d696e223b6b65797c733a313a2236223b7265636f72647c4f3a383a22737464436c617373223a363a7b733a323a226964223b733a313a2236223b733a343a226e616d65223b733a353a22446f6e7574223b733a31313a226465736372697074696f6e223b733a39323a2244697367757374696e676c792073776565742c20746f7070656420776974682061727465727920636c6f6767696e672063686f636f6c61746520616e64207468656e20737072696e6b6c656420776974682050697869652064757374223b733a353a227072696365223b733a343a22312e3235223b733a373a2270696374757265223b733a353a22362e706e67223b733a383a2263617465676f7279223b733a313a2273223b7d6f726465727c4f3a353a224f72646572223a333a7b733a363a226e756d626572223b693a303b733a383a226461746574696d65223b4e3b733a353a226974656d73223b613a303a7b7d7d),
('22a31d6a87ef5b44fa48c8759daa7e713e88e11b', '127.0.0.1', 1479495625, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393439353534393b75736572726f6c657c733a343a2275736572223b6f726465727c4f3a353a224f72646572223a333a7b733a363a226e756d626572223b693a303b733a383a226461746574696d65223b4e3b733a353a226974656d73223b613a303a7b7d7d),
('d3c795d0b8c3e5b5e736257c75144147ac0ed22a', '127.0.0.1', 1479497207, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393439363935333b75736572726f6c657c733a343a2275736572223b6f726465727c613a333a7b733a363a226e756d626572223b693a303b733a383a226461746574696d65223b4e3b733a353a226974656d73223b613a323a7b693a323b693a313b693a313b693a313b7d7d),
('9c4bec90c0ecd0e8d3239e22f78e9c4784779d1c', '127.0.0.1', 1479497762, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393439373438363b75736572726f6c657c733a343a2275736572223b),
('b7a1006ffd9b4c17719e3a5fe9523f5f25a9593f', '127.0.0.1', 1479498162, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393439373836373b75736572726f6c657c733a343a2275736572223b),
('5e871cdf3eb2bfbf4aab3ff91364b8aa5db530de', '127.0.0.1', 1479498510, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393439383235353b75736572726f6c657c733a343a2275736572223b),
('fb4aebe9235ffb904338f70ab06e481c2c05284a', '127.0.0.1', 1479498610, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393439383536363b75736572726f6c657c733a343a2275736572223b),
('01714d25b873eca804efe22442e982ac282fac03', '127.0.0.1', 1479499273, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393439383937333b75736572726f6c657c733a343a2275736572223b),
('4e3fba3e0b989606fab2b5543afc0bc6d5024606', '127.0.0.1', 1479499483, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393439393238363b75736572726f6c657c733a343a2275736572223b);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(256) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `category` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `description`, `price`, `picture`, `category`) VALUES
(1, 'Cheese', 'Leave this raw milk, beefy and sweet cheese out for an hour before serving and pair with pear jam.', '2.95', '1.png', 's'),
(2, 'Turkey', 'Roasted, succulent, stuffed, lovingly sliced turkey breast', '5.95', '2.png', 'm'),
(6, 'Donut', 'Disgustingly sweet, topped with artery clogging chocolate and then sprinkled with Pixie dust', '1.25', '6.png', 's'),
(10, 'Bubbly', '1964 Moet Charmon, made from grapes crushed by elves with clean feet, perfectly chilled.', '14.50', '10.png', 'd'),
(11, 'Ice Cream', 'Combination of decadent chocolate topped with luscious strawberry, churned by gifted virgins using only cream from the Tajima strain of wagyu cattle', '3.75', '11.png', 's'),
(8, 'Hot Dog', 'Pork trimmings mixed with powdered preservatives, flavourings, red colouring and drenched in water before being squeezed into plastic tubes. Topped with onions, bacon, chili or cheese - no extra charge.', '6.90', '8.png', 'm'),
(25, 'Burger', 'Half-pound of beef, topped with bacon and served with your choice of a slice of American cheese, red onion, sliced tomato, and Heart Attack Grill''s own unique special sauce.', '9.99', 'burger.png', 'm'),
(21, 'Coffee', 'A delicious cup of the nectar of life, saviour of students, morning kick-starter; made with freshly grounds that you don''t want to know where they came from!', '2.95', 'coffee.png', 'd');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

DROP TABLE IF EXISTS `orderitems`;
CREATE TABLE `orderitems` (
  `order` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `special` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `num` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(1) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `customer` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`order`,`item`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`num`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
