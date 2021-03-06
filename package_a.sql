-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2021 at 09:27 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `package_a`
--

CREATE TABLE `package_a` (
  `SN` int(100) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `ISP` varchar(100) NOT NULL,
  `ILL_Bandwidth` varchar(100) NOT NULL,
  `CE IP` varchar(100) NOT NULL,
  `Netmask` varchar(100) NOT NULL,
  `Default Gateway` varchar(100) NOT NULL,
  `Logical Circuit ID` varchar(100) NOT NULL,
  `Adresss` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package_a`
--

INSERT INTO `package_a` (`SN`, `Location`, `ISP`, `ILL_Bandwidth`, `CE IP`, `Netmask`, `Default Gateway`, `Logical Circuit ID`, `Adresss`) VALUES
(1, 'Ajara', 'Jio', '10MBPS', '115.242.195.2', '255.255.255.252', '115.242.195.1', 'ILL_9335060166_300866883200', 'Madhyavarti Prashaskiya,imarat Main Road Ajara,416505,kolhapur,kolhapur'),
(2, 'Bhivandi', 'Jio', '10MBPS', '115.242.192.206', '255.255.255.252', '115.242.192.205', '', ''),
(3, 'Bhudargad', 'Jio', '10MBPS', '115.242.194.46', '255.255.255.252', '115.242.194.45', 'ILL_9335060166_300865545572', '0, Tehsil Office, Bhudargad, 416209, Kolhapur, Kolhapur'),
(4, 'Dahanu', 'Airtel', '200MBPS', '182.76.239.174', '255.255.255.252', '182.76.239.173', '13331935', 'Tahsil Office Dahanu, Dahanu Fort, Dahanu Gaon, Dist. Palghar 401601'),
(5, 'Indapur', 'Jio', '10MBPS', '115.242.136.10', '255.255.255.252', '115.242.136.9', 'ILL_9335060166_300870898607', 'Tehsil Office,indapur , Pune Moffusil , Pune , Maharashtra 413106??'),
(6, 'Indapur', 'Jio', '200MBPS', '115.242.142.206', '255.255.255.252', '115.242.142.205', '', ''),
(7, 'Jath', 'Jio', '10MBPS', '115.242.195.134', '255.255.255.252', '115.242.195.133', 'ILL_9335060166_300866636139', 'Tehsil Office,more Colony, Jath, Maharashtra 416404'),
(8, 'Jath', 'Jio', '200MBPS', '136.232.52.10', '255.255.255.252', '136.232.52.9', '', ''),
(9, 'Junnar', 'Airtel', '2MBPS', '160.202.156.250', '255.255.255.252', '160.202.156.249', 'ILL_9335060166_300866590242', 'Tehsil Office,junnar , Pune Moffusil , Pune , Maharashtra , 410502'),
(10, 'Junnar', 'Jio', '10MBPS', '115.242.195.170', '255.255.255.252', '115.242.195.169', '', ''),
(11, 'Kadegaon', 'Jio', '10MBPS', '115.242.195.102', '255.255.255.252', '115.242.195.101', 'ILL_9335060166_300865553628', 'Tehsil Office,kadegaon - Tadsar Rd, Kadegaon, Maharashtra 415304'),
(12, 'Karad', 'Local ISP', '10MBPS', '103.114.220.202', '255.255.255.248', '103.114.220.201', 'LOCAL ISP', ''),
(13, 'Malegaon', 'Jio', '10MBPS', '115.242.216.134', '255.255.255.252', '115.242.216.133', '13577586', 'Tahasil Karyalay Camp Road College Stop Malegaon - 423203 '),
(14, 'Patan', 'Local ISP', '10MBPS', '103.114.220.3', '255.255.255.248', '103.114.220.2', 'LOCAL ISP', ''),
(15, 'Purandhar', 'Airtel', '2MBPS', '122.185.149.98', '255.255.255.252', '122.185.149.97', 'ILL_9335060166_300866582653', 'Tehsil Office, Purandar, Saswad, Maharashtra 412301'),
(16, 'Purandhar', 'Jio', '10MBPS', '115.242.195.146', '255.255.255.252', '115.242.195.145', '', ''),
(17, 'Rajapur', 'Jio', '10MBPS', '115.242.194.94', '255.255.255.252', '115.242.194.93', 'ILL_9335060166_300865538301', '0,tehsil Office, Mulla Wada, Rajapur, 416702, Ratnagiri, Ratnagiri'),
(18, 'Satana/Baglan', 'Airtel', '200MBPS', '182.76.242.182', '255.255.255.252', '182.76.242.181', '', ''),
(19, 'Satana/baglan', 'Jio', '10MBPS', '182.73.16.38', '255.255.255.252', '182.73.16.37', '13331926', 'Tehsil Office Satana,mitra Nagar - Satana ,maharashtra Pin 423301'),
(20, 'Satara', 'Airtel', '200MBPS', '182.73.143.246', '255.255.255.252', '182.73.143.245', '13331397', 'Satara Tahsil Office, Near Dcc Old Building, Powai Naka, Satara 415001'),
(21, 'Shahuwadi', 'Jio', '10MBPS', '115.242.240.36', '255.255.255.252', '115.242.240.35', 'ILL_9335342572_300857620585 ', ' Tahasil Office, Near Police Station, Shahuwadi, Dist-kolhapur,maharashtra, 416215 '),
(22, 'Shahuwadi', 'Jio', '200MBPS', '136.232.235.238', '255.255.255.252', '136.232.235.237', '', ''),
(23, 'Trimbak', 'Airtel', '2MBPS', '182.78.247.178', '255.255.255.252', '182.78.247.177', '13577587', 'Tahasil Karyalay Near Bus Stand Main Road Trimbak - 422212 .?Nashik Maharashtra India'),
(24, 'Vaduj-khatav', 'Airtel', '2MBPS', '182.78.250.250', '255.255.255.252', '182.78.250.249', '13587721', 'Tahasil Karyalay Near St Stand At Pst Vaduga Telkhatav Dist Satara ? 415506.'),
(25, 'Vaibhavwadi', 'Jio', '10MBPS', '115.242.194.210', '255.255.255.252', '115.242.194.209', 'ILL_9335060166_300866884775', 'Panchyat Samite Vaibhavwadi,tal Vaibhavwadi,416810,sindhudurg,sindhudurg'),
(26, 'Vasai', 'Jio', '10MBPS', '103.39.29.98', '255.255.255.252', '103.39.29.97', '', ''),
(27, 'Vikramgadh', 'Airtel', '2MBPS', '182.78.247.194', '255.255.255.252', '182.78.247.193', '13577584', '4165??? Panchayat Samiti Vikramgad Taluka Vikramgad Distict Palghar Pin Code-4165 .???? Thane Maharashtra India'),
(0, '', '', '', '', '', '', '', ''),
(0, '', '', '', '', '', '', '', ''),
(0, '', '', '', '', '', '', '', ''),
(1, 'Ajaraaa', 'Airtel', '2 mb	', '122.185.150.150', '255.255.255.252', '122.185.150.149', '13684427', 'TAHASIL OFFICE NEAR SHAHAR POLICE STATION CHOPDA - 415107\r\n'),
(1, 'Ajaraaa', 'Airtel', '2 mb	', '122.185.150.150', '255.255.255.252', '122.185.150.149', '13684427', 'TAHASIL OFFICE NEAR SHAHAR POLICE STATION CHOPDA - 415107\r\n');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
