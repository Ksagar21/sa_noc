-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2021 at 03:25 PM
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
-- Table structure for table `dc_dr`
--

CREATE TABLE `dc_dr` (
  `SN` int(100) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `ISP` varchar(100) NOT NULL,
  `ILL_Bandwidth` varchar(100) NOT NULL,
  `CE_IP` varchar(1000) NOT NULL,
  `Netmask` varchar(1000) NOT NULL,
  `Default Gateway` varchar(1000) NOT NULL,
  `Logical Circuit ID` varchar(1000) NOT NULL,
  `Address` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dc_dr`
--

INSERT INTO `dc_dr` (`SN`, `Location`, `ISP`, `ILL_Bandwidth`, `CE_IP`, `Netmask`, `Default Gateway`, `Logical Circuit ID`, `Address`) VALUES
(1, 'Sanpada', 'Jio', '10 Mb', '182.74.246.218', '255.255.255.252', '182.74.246.217', 'ILL_9335342572_300862285754', 'Sanpada railway station building, Office no? E-302, 3RD?Floor, Sector 3, Sanpada ( E ), Navi Mumbai ? 400705');

-- --------------------------------------------------------

--
-- Table structure for table `lit_up_data`
--

CREATE TABLE `lit_up_data` (
  `id` varchar(100) NOT NULL,
  `package` varchar(100) NOT NULL,
  `district` varchar(1000) NOT NULL,
  `taluka` varchar(1000) NOT NULL,
  `gp_name` varchar(1000) NOT NULL,
  `ip_address` varchar(1000) NOT NULL,
  `status` varchar(1000) NOT NULL,
  `sys_lgd_code` varchar(100) NOT NULL,
  `device_profile` varchar(1000) NOT NULL,
  `router_type` varchar(1000) NOT NULL,
  `reg_created` varchar(1000) NOT NULL,
  `snmp_agent` varchar(1000) NOT NULL,
  `span_id` varchar(1000) NOT NULL,
  `csc_port` varchar(1000) NOT NULL,
  `csc_port_id` varchar(100) NOT NULL,
  `polling_status` varchar(1000) NOT NULL,
  `polling_configuration` varchar(100) NOT NULL,
  `litup` varchar(100) NOT NULL,
  `litup_status` varchar(100) NOT NULL,
  `remote_at_date` varchar(100) NOT NULL,
  `remote_at` varchar(100) NOT NULL,
  `field_engineer_name` varchar(100) NOT NULL,
  `noc_engineer_name` varchar(100) NOT NULL,
  `remarks` varchar(1000) NOT NULL,
  `end_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lit_up_data`
--

INSERT INTO `lit_up_data` (`id`, `package`, `district`, `taluka`, `gp_name`, `ip_address`, `status`, `sys_lgd_code`, `device_profile`, `router_type`, `reg_created`, `snmp_agent`, `span_id`, `csc_port`, `csc_port_id`, `polling_status`, `polling_configuration`, `litup`, `litup_status`, `remote_at_date`, `remote_at`, `field_engineer_name`, `noc_engineer_name`, `remarks`, `end_time`) VALUES
('17:59 PM', 'A', 'America', ' San deigo', 'San', '172.1.0.0', 'Active', '741852AMSASA', 'RAM', 'TYPE 4', '13-09-2021', 'TEST', 'TEST123', 'TEST', 'TEST', 'YES', 'YES', 'YES', 'SEQUENTIAL', '13-09-2021', '13-09-2021', 'RAHUL', 'ZAID', 'DONE', '18:03 PM');

-- --------------------------------------------------------

--
-- Table structure for table `master_sia`
--

CREATE TABLE `master_sia` (
  `SN` int(100) NOT NULL,
  `Package` varchar(1000) NOT NULL,
  `District Name` varchar(1000) NOT NULL,
  `MahaNet Resource Name` varchar(1000) NOT NULL,
  `Designation` varchar(1000) NOT NULL,
  `Talukas Assigned 1` varchar(1000) NOT NULL,
  `Talukas Assigned 2 (if applicable)` varchar(1000) NOT NULL,
  `Talukas Assigned 3 (if applicable)` varchar(1000) NOT NULL,
  `Contact Number` varchar(1000) NOT NULL,
  `Email ID` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_sia`
--

INSERT INTO `master_sia` (`SN`, `Package`, `District Name`, `MahaNet Resource Name`, `Designation`, `Talukas Assigned 1`, `Talukas Assigned 2 (if applicable)`, `Talukas Assigned 3 (if applicable)`, `Contact Number`, `Email ID`) VALUES
(1, 'A', 'Kolhapur', 'Jayant Jaysing Patil', 'DPM', 'All Tahasil', '', '', '9823130247', 'dpmkolhapur.itcell@maharashtra.gov.in, jayant_patil@email.com'),
(2, 'A', 'Kolhapur', 'Kavita Prakash Mali', 'Project Lead (PL)', 'All Tahasil', '', '', '8446707858', 'dplkolhapur.itcell@maharashtra.gov.in, kavita.mali8@gmail.com'),
(3, 'A', 'Kolhapur', 'Vaibhav Vishnu Kamble', 'Sr. Network Engineer', 'All Tahasil', '', '', '9970167666', 'snekolhapur.itcell@maharashtra.gov.in, vaibhav4889@gmail.com'),
(4, 'A', 'Kolhapur', 'RAJESHWARI RANJITSINH JADHAV', 'Network Engineer 1', 'Bhudargad', 'Ajara', '', '7775998958', 'ne4kolhapur.itcell@maharashtra.gov.in, rajjadhav4632@gmail.com'),
(5, 'A', 'Kolhapur', 'IMRAN MUSHTAQUE TAKILDAR', 'Network Engineer 2', 'Chandgad', '', '', '8421027644', 'ne5kolhapur.itcell@maharashtra.gov.in, meet2imran007@gmail.com'),
(6, 'A', 'Kolhapur', 'Supriya Hanamantrao Mane', 'Network Engineer 3', 'Ajara', '', '', '9673016005', 'ne6kolhapur.itcell@maharashtra.gov.in, manesupriya667@gmail.com'),
(7, 'A', 'Kolhapur', 'Manali Madhav Inamdar', 'Network Engineer 4', 'SHAHUWADI', '', '', '8625073982', 'ne1kolhapur.itcell@maharashtra.gov.in, manali9manali@gmail.com'),
(8, 'A', 'Kolhapur', 'Tejaswini Udaysing Rajput', 'Network Engineer 5', 'RADHANAGARI', '', '', '9604114600', 'ne3kolhapur.itcell@maharashtra.gov.in, tejurajput4600@gmail.com'),
(9, 'A', 'Kolhapur', 'Salim Mubarak Nadaf', 'Network Engineer 6', 'KAGAL', 'SHAHUWADI', '', '7972897304', 'ne2kolhapur.itcell@maharashtra.gov.in, smnadaf4988@gmail.com'),
(10, 'A', 'Nashik', 'Chetan Sonje', 'DPM', 'All Taluka', '', '', '9011700707', 'sonje.chetan@gmail.com'),
(11, 'A', 'Nashik', 'Jaydeep Sonawane', 'Project Lead (PL)', 'All Taluka', '', '', '8237549296', '?jaysonawane07@gmail.com ?'),
(12, 'A', 'Nashik', 'Nikhil Mahajan', 'SR Network Engineer', '', '', '', '8007579797', 'nikhil.mahajan18@yahoo.in'),
(13, 'A', 'Nashik', 'Yogesh Patil', 'Network Engineer 1', 'Trimbakeshwar', '', '', '7507257789', 'yspatil750@gmail.com'),
(14, 'A', 'Nashik', 'Sandip Bhamre', 'Network Engineer 2', 'Peth', '', '', '9890452134', 'sbbhamre@gmail.com'),
(15, 'A', 'Nashik', 'Kalpesh Ahire', 'Network Engineer 3', 'Malegaon,Baglan', '', '', '9503166292', 'kdahire.kk@gmail.com'),
(16, 'A', 'Nashik', 'Rahul Bhagre', 'Network Engineer 4', 'Deola', '', '', '9049379835', 'rahulbhagre@gmail.com'),
(17, 'A', 'Nashik', 'Avinash Khairnar', 'Network Engineer 5', 'Yeola', '', '', '8275306489', 'avikhairnar123@gmail.com'),
(18, 'A', 'Nashik', 'Pramod Hire', 'Network Engineer 6', 'Surgana', '', '', '8180875494', 'pramodhire@ymail.com'),
(19, 'A', 'Palghar', 'Urjit Barve ', 'DPM', 'All Taluka', '', '', '9769836699', 'edpm.palghar@maharashtra.gov.in'),
(20, 'A', 'Palghar', 'Sunil Bagul', 'Project Lead (PL)', 'All Taluka', '', '', '9960311859', 'pl.zppalghar@gmail.com'),
(21, 'A', 'Palghar', 'Ravindra Chaure', 'Network Engineer 1', 'Dahanu', 'Talasari', '', '9975741808', 'ravichaure1@gmail.com'),
(22, 'A', 'Palghar', 'Ashwini Patil', 'Network Engineer 2', 'Vikramgad', '', '', '7030198519', 'ashwinigpatil29@gmail.com'),
(23, 'A', 'Palghar', 'Harshad Patil', 'Network Engineer 3', 'Jawhar', 'Mokhada', '', '9270006790', 'harshadpatil227@gmail.com'),
(24, 'A', 'Palghar', 'Sagar Gite ', 'Network Engineer 4', 'Vasai', '', '', '9987521707', 'sagargite@yahoo.com'),
(25, 'A', 'Pune', 'Manoj Jadhav', 'DPM', 'All Taluka', '', '', '9970930446', ' '),
(26, 'A', 'Pune', 'Pravin Javir', 'Sr. Network Engineer ', ' ', '', '', '9028755542', ' '),
(27, 'A', 'Pune', 'Nitin Thakre', 'Project Lead (PL)', 'All Taluka', '', '', '9404868245', ' '),
(28, 'A', 'Pune', 'Nitin Dhumal', 'Sr. Support Engineer ', ' ', '', '', '9158299696', ' '),
(29, 'A', 'Pune', 'Prashant Sathavne', 'Network Engineer 1', 'Haveli', '', '', '7387678954', 'prashant07.kits@gmail.com'),
(30, 'A', 'Pune', 'Bapu Jadhav', 'Network Engineer 2 - Bhor Velhe ', ' ', '', '', '9822552812', 'bapujadhav2@gmail.com'),
(31, 'A', 'Pune', 'Nilesh Harle', 'Network Engineer 3  ', 'Khed', '', '', '8087074416', 'harle.nilesh1234@gmail.com'),
(32, 'A', 'Pune', 'Pawan Dudhal', 'Network Engineer 4', 'Purandar', '', '', '9730413042', 'pawan.dudhal@gmail.com'),
(33, 'A', 'Pune', 'Amol Jadhav', 'Network Engineer 5', 'Indapur', '', '', '8087997848', 'amoljadhav1398@gmail.com'),
(34, 'A', 'Pune', 'Network Engineer Position is vacant', '', 'Maval', '', '', '', ''),
(35, 'A', 'Pune', 'Network Engineer Position is vacant', '', 'Mulshi', '', '', '', ''),
(36, 'A', 'Pune', 'Network Engineer Position is vacant', '', 'Junnar', '', '', '', ''),
(37, 'A', 'Ratnagiri', 'Yashwant Chougale', 'DPM', 'Sangmeshwar', '', '', '7507264539', 'edpm.ratnagiri@maharashtra.gov.in/yashwantchougale3@gmail.com'),
(38, 'A', 'Ratnagiri', 'Post Vaccant', 'Project Lead (PL)', '', '', '', '', ''),
(39, 'A', 'Ratnagiri', 'Kiran Jedhe', 'Sr.Network Engineer ', 'Lanja', '', '', '9209293079', 'jedhe.kiran@gmail.com'),
(40, 'A', 'Ratnagiri', 'Amol Sawant', 'Network Engineer 1', 'Rajapur', '', '', '9890687232', 'amolsawant7232@gmail.com'),
(41, 'A', 'Ratnagiri', 'Udaysingh Gayakwad', 'Network Engineer 2', 'Chiplun', 'Guhagar', '', '9421233666', 'udaygaikawad003@gmail.com'),
(42, 'A', 'Ratnagiri', 'Aakash Kale', 'Network Engineer 3', 'Dapoli', '', '', '9689484546', 'aakashkale112@yahoo.com'),
(43, 'A', 'Ratnagiri', 'Pranali Mayekar', 'Sr. Support Engineer ', '', '', '', '8999564516', 'sseratnagiri.itcell@maharashtra.gov.in'),
(44, 'A', 'Sangli', 'Sanchit Pawar', 'DPM', 'All Taluka', '', '', '9021026898', 'sanchit.s.pawar@gmail.com'),
(45, 'A', 'Sangli', 'Dilip Jadhav', 'Project Lead (PL)', 'All Taluka', '', '', '8237549296', 'jadhavdilip1111@gmail.com'),
(46, 'A', 'Sangli', 'Sagar Kotmire', 'Network Engineer 1', '', '', '', '7066191294/9970704840', 'sagarsamrat404@gmail.com'),
(47, 'A', 'Sangli', 'Rupesh Bajbale', 'Network Engineer 2', 'Jat', '', '', '9096323609', 'rupesh.bajabale@gmail.com'),
(48, 'A', 'Sangli', 'Yakub Landage', 'Network Engineer 3', 'Kadegaon', '', '', '9922885630', 'yakublandage@gmail.com'),
(49, 'A', 'Satara', 'Pankaj Veer', 'DPM', 'All Talukas [980 GPs]', '', '', '9970575700', 'pmveer@gmail.com'),
(50, 'A', 'Satara', 'Sachin Hajare', 'Project Lead (PL)', 'Jaoli [126 GPs]', '', '', '9850158445', 'sachinhajare@gmail.com'),
(51, 'A', 'Satara', 'Deepak Bhurke', 'Sr.Network Engineer', 'Satara [195 GPs]', '', '', '9011011089', 'bhurkedeepak@gmail.com'),
(52, 'A', 'Satara', 'Pranav Unune', 'Network Engineer 1', 'Mahabaleshwar [ 79 GPs]', 'Wai [4 GPs]', '', '8308048596', '686pranav@gmail.com'),
(53, 'A', 'Satara', 'Hanmant Virkar', 'Network Engineer 2', 'Khatav [133 GPs]', 'Maan [4 GPs]', '', '8552859665', 'hvirkar111@gmail.com'),
(54, 'A', 'Satara', 'Pratiksha Mane', 'Network Engineer 3', 'Karad [198 GPs]', '', '', '9637763716', 'pratumane121@gmail.com'),
(55, 'A', 'Satara', 'Yogesh Bhadale', 'Network Engineer 4', 'Patan [241 GPs]', '', '', '9404727475', 'yogesh9363@gmail.com'),
(56, 'A', 'Sindhudurg', 'Mr. Rupesh S.Mirajgaonkar', 'DPM', '', 'Vaibhavwadi', '', '9518743939/9975440959', 'edpm.sindhudurg@maharashtra.gov.in'),
(57, 'A', 'Sindhudurg', 'Mr. Basavraj V Chikodi', 'Project Lead (PL)', 'Dodamarg', '', '', '9420741841/7977827158', 'rajuchikodi1122@gmail.com'),
(58, 'A', 'Sindhudurg', 'Mr. Shashank P. Naik', 'Senior Network Engineer ', '', 'Vaibhavwadi', '', '9421236438/9607073225', 'snesindhudurg.itcell@maharashtra.gov.in\n'),
(59, 'A', 'Sindhudurg', 'Mr. Santosh H. Kamble', 'Network Engineer 2', 'Dodamarg', '', '', '9423558825/9975587655', 'ne2sindhudurg.itcell@maharashtra.gov.in'),
(60, 'A', 'Sindhudurg', 'Mr. Sukesh S. Patil', 'Network Engineer 3', '', 'Vaibhavwadi', '', '9096044149/8856976969', 'ne1sindhudurg.itcell@maharashtra.gov.in'),
(61, 'A', 'Sindhudurg', 'Ms. Pooja G. Samant', 'Network Engineer 3', 'Dodamarg', '', '', '9545155948/7083459660', 'samantpuja@gmail.com'),
(62, 'A', 'Thane', 'Mahendra Patil', 'DPM', 'All Taluka', '', '', '8828003028', 'edpm.thane@maharashtra.gov.in'),
(63, 'A', 'Thane', 'Utkarsh Mulmule', 'Project Lead (PL)', 'Kalyan', '', '', '9869359427', 'utkarshmm@gmail.com'),
(64, 'A', 'Thane', 'Adnyan Nanaware', 'Senior Network Engineer', 'Ambernath', '', '', '7387412242', 'snethane.itcell@maharashtra.gov.in'),
(65, 'A', 'Thane', 'Narendra Nerkar', 'Network Engineer 1', 'Murbad', '', '', '9082484164', 'narendranerkar4@gmail.com'),
(66, 'A', 'Thane', 'Faheem Ansari', 'Network Engineer 2', 'Shahapur', '', '', '9850269450', 'faheemansari19@yahoo.co.in'),
(67, 'A', 'Thane', 'Kinshuk Ray', 'Network Engineer 3', 'Bhiwandi', '', '', '9850269450', 'ray.kinshuk@gmail.com'),
(68, 'B', 'Akola', 'Pramod Singh Thakur', 'DPM', 'All Taluka', '', '', '9096904114', 'edpm.akola@maharashtra.gov.in'),
(69, 'B', 'Akola', 'Rahul Patil', 'Project Lead (PL)', 'Barshi Takali', '', '', '9923606040', 'dplakola.itcell@maharashtra.gov.in'),
(70, 'B', 'Akola', 'Suraj Kharde', 'Network Engineer 1', 'Murtijapur', '', '', '9420077079', 'ne1akola.itcell@maharashtra.gov.in'),
(71, 'B', 'Akola', 'Navin Kawal', 'Network Engineer 2', 'Patur', '', '', '9823504334', 'ne3akola.itcell@maharashtra.gov.in'),
(72, 'B', 'Akola', 'Noman Durrani Khan', 'Network Engineer 3', 'Telhara', '', '', '8149063539', '?nomankhan1437@gmail.com?'),
(73, 'B', 'Akola', 'Nilesh Sawalatkar', 'Sr. Network Engineer', 'Akola', '', '', '9881883113', 'sneakola.itcell@maharashtra.gov.in'),
(74, 'B', 'Amravati', 'Mr. Prafulla Mehar', 'DPM', 'All Taluka', '', '', '7066819874/8999401945', 'dpmamravati.itcell@maharashtra.gov.in/edpm.amravati@maharashtra.gov.in'),
(75, 'B', 'Amravati', 'Mr. Bushan Mehare', 'Project Lead (PL)', 'Bhatkuli', '', '', '7972192408', 'dplamravati.itcell@maharashtra.gov.in/mehare.bhushan@gmail.com'),
(76, 'B', 'Amravati', 'Mr. Manoj Kale', 'Senior Network Engineer', 'Amravati', '', '', '9890639290', 'sneamravati.itcell@maharashtra.gov.in'),
(77, 'B', 'Amravati', 'Bhavesh Mandwe', 'Network Engineer 1', 'Tiwasa', '', '', '9021304370', 'bmmandwe@gmail.com '),
(78, 'B', 'Amravati', 'Ayush Jumade', 'Network Engineer 2', 'Nandgaon-Khandeshwar', '', '', '8793550314', 'ayushjumade@rediffmail.com '),
(79, 'B', 'Amravati', 'Pravin Tayde', 'Network Engineer 3', 'Dhamangaon ', '', '', '8149795494', 'parthtayde@gmail.com'),
(80, 'B', 'Amravati', 'Kunal Jogdande', 'Network Engineer 4', 'Chandurbzar', '', '', '9561222919', 'kjogdande@gmail.com /  ne5amravati.itcell@maharashtra.gov.in'),
(81, 'B', 'Amravati', 'Akshay Pantawane', 'Network Engineer 5', 'Anjangaon Surji', '', '', '9960739170', 'pantawaneak@gmail.com'),
(82, 'B', 'Chandrapur', 'Sunil G. Mokde', 'DPM', 'All Taluka', '', '', '9511219537', 'edpm.chandrapur@maharashtra.gov.in'),
(83, 'B', 'Chandrapur', 'Amol Raghatate', 'Project Lead (PL)', '', '', '', '9579060487', 'dplchandrapur.itcell@maharashtra.gov.in'),
(84, 'B', 'Chandrapur', 'Sharadchandra H. Gurle', 'Senior Network Engineer', '', '', '', '9881552721', 'snechandrapur.itcell@maharashtra.gov.in'),
(85, 'B', 'Chandrapur', 'Manoj Gharatkar', 'Network Engineer 1', 'Chandrapur', '', '', '9503725743', 'ne7chandrapur.itcell@maharashtra.gov.in'),
(86, 'B', 'Chandrapur', 'Pratik P. Vishrojwar', 'Network Engineer 2', 'Rajura', 'Korpana', 'Jiwati', '8956275738', 'ne1chandrapur.itcell@maharashtra.gov.in'),
(87, 'B', 'Chandrapur', 'Pradeep Umathe', 'Network Engineer 3', 'Gondpipri', 'Pombhurna', '', '9730216968', 'pradeepumathe@gmail.com'),
(88, 'B', 'Chandrapur', 'Sachin S Hivarkar', 'Network Engineer 4', 'Bramhapuri', '', '', '8999297239', 'ne4chandrapur.itcell@maharashtra.gov.in'),
(89, 'B', 'Chandrapur', 'Girijanand S Meshram', 'Network Engineer 5', 'Warora', 'Bhadrawati', '', '7350735381', 'ne2chandrapur.itcell@maharashtra.gov.in'),
(90, 'B', 'Chandrapur', 'Chetan Gainewar', 'Network Engineer 6', 'NA', '', '', '9730568850', 'chetangainewar@gmail.com'),
(91, 'B', 'Chandrapur', 'Mahesh Patil', 'Network Engineer 7', 'NA', '', '', '7757866553', 'msp9891@yahoo.com'),
(92, 'B', 'Gadchiroli', 'Jayant M. Mukundwar', 'DPM', 'Aheri', '', '', '9561462979', 'dpmgadchiroli.itcell@maharashtra.gov.in'),
(93, 'B', 'Gadchiroli', 'Harshal H. Gongale', 'Project Lead (PL)', 'Etapalli', '', '', '9921875174', 'dplgadchiroli.itcell@maharashtra.gov.in'),
(94, 'B', 'Gadchiroli', 'Kamlesh Akare', 'SNE', '', '', '', '9271702234', 'kam007akare@gmail.com'),
(95, 'B', 'Gadchiroli', 'Bhupendra N. Kamble', 'Network Engineer 1', 'Dhanora', '', '', '8308225773', 'bkam.cool@gmail.com'),
(96, 'B', 'Gadchiroli', 'Kunal E. Gumfalwar', 'Network Engineer 2', 'Korchi', '', '', '8698429743', 'kunalgumfalwar@gmail.com'),
(97, 'B', 'Gadchiroli', 'Shrikant Adgopulwar', 'Network Engineer 3', 'Bhamragad', '', '', '7588780023', 'shriadagopulwar@gmail.com'),
(98, 'B', 'Gadchiroli', 'New resource will be available in next month', 'Network Engineer 4', 'Sironcha', '', '', '', ''),
(99, 'B', 'Nanded', 'Kapil Pendalwar ', 'DPM', 'Loha', '', '', '9823555595', 'dpmnanded.itcell@maharashtra.gov.in'),
(100, 'B', 'Nanded', 'Kuldeep Joshi', 'Project Lead (PL)', 'Modkhed', '', '', '8275052227', 'dplnanded.itcell@maharashtra.gov.in'),
(101, 'B', 'Nanded', 'Dnyaneshwar Rajne', 'Sr. Network Engineer', 'Kinwat', '', '', '9764053026', 'snenanded.itcell@maharashtra.gov.in'),
(102, 'B', 'Nanded', 'Niraj Kulkarni', 'Network Engineer', 'Biloli', 'Deglur', '', '9860720771', 'ne6nanded.itcell@maharashtra.gov.in'),
(103, 'B', 'Nanded', 'Anup Shinde', 'Network Engineer', 'Bhokar', 'Himayat Nagar', '', '9922895942', 'ne5nanded.itcell@maharashtra.gov.in'),
(104, 'B', 'Nanded', 'Rahul Gavade', 'Network Engineer', 'Umri', 'Mahur', '', '9423222276', 'ne3nanded.itcell@maharashtra.gov.in'),
(105, 'B', 'Nanded', 'Rajesh Waghmare', 'Network Engineer', 'Mokhed', '', '', '8149642228', 'ne1nanded.itcell@maharashtra.gov.in'),
(106, 'B', 'Nanded', 'Vikas Ravate', 'Network Engineer', 'Hadgaon', '', '', '9028004999', 'ne2nanded.itcell@maharashtra.gov.in'),
(107, 'B', 'Wardha', 'Mr. Shahjad H. Shaikh', 'DPM', 'Seloo', 'Wardha', '', '7738535288', 'dpmwardha.itcell@maharashtra.gov.in'),
(108, 'B', 'Wardha', 'MR. Roshan Lokhande', 'Project Lead (PL)', 'Arvi', '', '', '9096397483', 'dplwardha.itcell@maharashtra.gov.in'),
(109, 'B', 'Wardha', 'MR.Sachin Taksande', 'Network Engineer 1', 'Samudrapur', '', '', '9975345447', 'ne1wardha.itcell@maharashtra.gov.in'),
(110, 'B', 'Wardha', 'MR.Nishant Wankhede', 'Network Engineer 2', 'Hinganghat', '', '', '9763358456', 'ne2wardha.itcell@maharashtra.gov.in'),
(111, 'B', 'Wardha', 'MR.Hemant kadamdhad', 'Network Engineer 3', 'Karanja', '', '', '8055249214', 'ne3wardha.itcell@maharashtra.gov.in'),
(112, 'B', 'Washim', 'Mr. Juned Shaikh ', 'DPM', 'All Taluka', '', '', '9326772447', 'dpmwashim.itcell@maharashtra.gov.in/edpm.washim@maharashtra.gov.in'),
(113, 'B', 'Washim', 'Mr. Dipak Wagh ', 'Project Lead (PL)', 'Risod ', '', '', '8668977955', 'dplwashim.itcell@maharashtra.gov.in/ wagh.dipak79@gmail.com'),
(114, 'B', 'Washim', 'Mr. Mohan Pande ', 'Senior Network Engineer', 'Washim ', '', '', '8830752142', 'snewashim.itcell@maharashtra.gov.in/ pande.mohan62@gmail.com'),
(115, 'B', 'Washim', 'Jayant Belsare ', 'Network Engineer 1', 'Malegaon ', '', '', '9860661169', 'belsarejayant1990@gmail.com'),
(116, 'B', 'Washim', 'Khushal Palaskar ', 'Network Engineer 2', 'Karanja ', 'Manora', '', '7755993521', 'krpalaskar@gmail.com'),
(117, 'B', 'Yavatmal', 'Sandeep Warudkar', 'DPM', 'All Taluka', '', '', '8999553792', 'edpm.yavatmal@maharashtra.gov.in'),
(118, 'B', 'Yavatmal', 'Bhushan Mehare', 'Project Lead (PL)', 'All Taluka', '', '', '8087921525', 'dplyavatmal.itcell@maharashtra.gov.in'),
(119, 'B', 'Yavatmal', 'Vijay Chotpagar', 'Sr.Network Engineer', 'Darwha', '', '', '9922449443', 'sneyavatmal.itcell@maharashtra.gov.in'),
(120, 'B', 'Yavatmal', 'Milind Uplenchwar', 'Network Engineer 1', 'Yavatmal', 'Arni', '', '8087900369', 'ne1yavatmal.itcell@maharashtra.gov.in'),
(121, 'B', 'Yavatmal', 'Rohit Bhore', 'Network Engineer 2', 'Ralegaon', 'Kalamb (4 GP)', '', '9561850054', 'ne2yavatmal.itcell@maharashtra.gov.in'),
(122, 'B', 'Yavatmal', 'Samir Vithalkar', 'Network Engineer 3', 'Maregaon', 'Wani', '', '7620912405', 'ne3yavatmal.itcell@maharashtra.gov.in'),
(123, 'B', 'Yavatmal', 'Sanjay Lodam', 'Network Engineer 4', 'Mahagaon', 'Umarkhed', '', '9767058415', 'ne4yavatmal.itcell@maharashtra.gov.in'),
(124, 'B', 'Yavatmal', 'Tejas Shukla', 'Network Engineer 5', 'Ghatanji', 'Pandharkawada', '', '9766863563', 'ne5yavatmal.itcell@maharashtra.gov.in'),
(125, 'B', 'Yavatmal', 'Prashant Raut', 'Network Engineer 6', 'Digras', 'Pusad', '', '8888019235', 'ne6yavatmal.itcell@maharashtra.gov.in'),
(126, 'C', 'Ahmed Nagar', 'Niraj Shekatkar', 'DPM', 'All Taluka', '', '', '9673694444', 'dpmahmednagar.itcell@maharashtra.gov.in'),
(127, 'C', 'Ahmed Nagar', 'Ravindra Mangulkar', 'DPM', 'All Taluka', '', '', '9595755942', 'dplahmednagar.itcell@maharashtra.gov.in'),
(128, 'C', 'Ahmed Nagar', 'Suresh Vidhate', 'Senior Network Engineer', 'Ahmednagar', '', '', '9403247978', 'sneahmednagar.itcell@maharashtra.gov.in'),
(129, 'C', 'Ahmed Nagar', 'Shivaji Walunj', 'Network Engineer 1', 'Parner', 'Shrigonda', 'Newasa', '8983789226', 'ne2ahmednagar.itcell@maharashtra.gov.in'),
(130, 'C', 'Ahmed Nagar', 'Vishnu Palve', 'Network Engineer 2', 'Shevgaon', 'Pathardi', 'Karjat', '8805565732', 'ne1ahmednagar.itcell@maharashtra.gov.in'),
(131, 'C', 'Ahmed Nagar', 'Atul Gadekar', 'Network Engineer 3', 'Sangamner', 'Akole', 'Rahuri', '7020711706', 'ne4ahmednagar.itcell@maharashtra.gov.in'),
(132, 'C', 'Ahmed Nagar', 'Rajesh Kawane', 'Network Engineer 4', 'Rahata', 'Shrirampur', 'Kopargaon', '9130003905', 'ne3ahmednagar.itcell@maharashtra.gov.in'),
(133, 'C', 'Aurangabad', 'Sharad Divekar', 'DPM', 'All Taluka', '', '', '9404351100', 'edpm.aurangabad@maharashtra.gov.in'),
(134, 'C', 'Aurangabad', 'Pramod Shrawangi Waghmare', 'Project Lead (PL)', 'All Taluka', '', '', '9822029017', 'pramod_waghmare007@rediffmail.com'),
(135, 'C', 'Aurangabad', 'Irphan Shaikh', 'Senior Network Engineer', '', '', '', '9209201171', 'irfan.cse11@gmail.com'),
(136, 'C', 'Aurangabad', 'Farhan Ahmed', 'Network Engineer 1', 'Aurangabad', '', '', '9665686714', 'farhan.ahmeds577@gmail.com'),
(137, 'C', 'Aurangabad', 'Shoaib Ahmed', 'Network Engineer 2', '', 'Kannad', '', '7507110579', 'timeshoaibahmed@gmail.com'),
(138, 'C', 'Aurangabad', 'Amar Mungikar', 'Network Engineer 3', '', '', 'Paithan', '8329001704', 'amarmungikar229@gmail.com'),
(139, 'C', 'Aurangabad', 'Aatif Ahmed', 'Network Engineer 4', '', '', 'Vaijapur', '9689374613', 'siddiquiatifahmed91@gmail.com'),
(140, 'C', 'Beed', 'Mahesh Gole', 'DPM', 'Beed (Dist)', '', '', '9860792551', 'edpm.beed@maharashtra.gov.in'),
(141, 'C', 'Beed', 'Wajed Tamboli', 'Project Lead (PL)', 'Beed (Dist)', '', '', '9423708025', 'dpl.beed@maharashtra.gov.com'),
(142, 'C', 'Beed', 'Sachin Ujagare', 'Sr. Network Engineer', 'Beed (Dist)', '', '', '9665185062', 'snebeed.itcell@maharashtra.gov.in'),
(143, 'C', 'Beed', 'Sachin Sawant', 'Network Engineer 1', 'Ashti', '', '', '9767905737', 'ne3beed.itcell@maharashtra.gov.in'),
(144, 'C', 'Beed', 'Mahesh Shendage', 'Network Engineer 2', 'Shirur', 'Georai', '', '8857089889', 'ne2beed.itcell@maharashtra.gov.in'),
(145, 'C', 'Buldhana', 'Yogesh Jadhav', 'DPM', 'All Taluka', '', '', '9423289822', 'edpm.buldhana@maharashtra.gov.in'),
(146, 'C', 'Buldhana', 'Suhas B ingle', 'Project Lead (PL)', 'All Taluka', '', '', '8623002222', 'dplbuldhana.itcell@maharashtra.gov.in'),
(147, 'C', 'Buldhana', 'Ganesh Rajguru', 'Network Engineer 1', 'Buldhana', 'Motala', 'Mehkar', '9604649564', 'ne1buldhana.itcell@maharashtra.gov.in'),
(148, 'C', 'Buldhana', 'Sandeep Payghan', 'Network Engineer 2', 'Khamgaon', 'Shegaon', '', '8275332137', 'ne3buldhana.itcell@maharashtra.gov.in'),
(149, 'C', 'Buldhana', 'Shakil Patel', 'Network Engineer 3', 'Khamgaon', '', '', '9860909044', 'shakilnpatel@gmail.com'),
(150, 'C', 'Buldhana', 'Ram Parekar', 'Network Engineer 4', 'Mehkar', 'Lonar', '', '9767404950', 'parekarram@gmail.com'),
(151, 'C', 'Buldhana', 'Shyam Bhatkar', 'Network Engineer 5', 'Sindkhedraja', 'Deulgaonraja', '', '9028477290', 'bhatkarshyam@gmail.com'),
(152, 'C', 'Buldhana', 'Girish Narkhede', 'Network Engineer 6', 'Jalgaon Jamod', 'Sangrampur', '', '9922761933', 'ne2buldhana.itcell@maharashtra.gov.in'),
(153, 'C', 'Hingoli', 'Umakant Mokare', 'DPM', 'All Taluka', '', '', '9970680612', 'edpm.hingoli@maharshtra.gov.in'),
(154, 'C', 'Hingoli', 'Ravichandra Navghare', 'Project Lead (PL)', 'All Taluka', '', '', '9823190992', 'dplhingoli.itcell@maharashtra.gov.in'),
(155, 'C', 'Hingoli', 'Gaurav Dahale', 'Network Engineer 1', 'Sengoan', '', '', '9850132194', 'gauravdahale31@gmail.com'),
(156, 'C', 'Hingoli', 'Mangesh Sawarkar', 'Network Engineer 2', 'Basmat', 'Aundha', '', '8788667806', 'mangeshsawarkar555@gmail.com '),
(157, 'C', 'Hingoli', 'Syed siraj ahmed', 'Network Engineer 3', 'Kalamuri', '', '', '8983729919', 'syedsirajahemad@gmail.com '),
(158, 'C', 'Jalgaon', 'Rahul Jadhav', 'DPM', 'Jamner', '', '', '9921040104', 'edpm.jalgaon@maharashtra.gov.in'),
(159, 'C', 'Jalgaon', 'Jitendra Koli', 'Project Lead (PL)', 'Parola', '', '', '7066339499', 'dpljalgaon.itcell@maharashtra.gov.in'),
(160, 'C', 'Jalgaon', 'Amol Chaudhari', 'Network Engineer 1', 'Pachora', '', '', '9823314817', 'amol25051992@gmail.com'),
(161, 'C', 'Jalgaon', 'Ashish Nemade', 'Network Engineer 2', 'Bhusawal', '', '', '9545689281', 'nemadeashish5533@gmail.com'),
(162, 'C', 'Jalgaon', 'Girish Bhadane', 'Network Engineer 3', 'Chopda', '', '', '9370963216', 'gsbhadane@gmail.com'),
(163, 'C', 'Jalgaon', 'Salman Pathan', 'Network Engineer', 'Erandol', '', '', '9766003144', 'hskhan99@gmail.com'),
(164, 'C', 'Jalgaon', 'Vishal Amrutkar', 'Sr. Network Engineer', 'Jalgaon', '', '', '9011788778', 'snejalgaon.itcell@maharashtra.gov.in'),
(165, 'C', 'Jalgaon', 'Vishal Agrawal', 'Network Engineer', 'Bhadgaon', '', '', '9595689057', 'agrawalvishal120@gmail.com'),
(166, 'C', 'Jalgaon', 'Pravin Bhangale', 'Network Engineer', 'Yawal', '', '', '9890897830', 'bhangalepravin07@gmail.com'),
(167, 'C', 'Latur', 'Mr. Shaikh Jawed B.', 'DPM', 'ALL', '', '', '9422745059/8830027004', 'edpm.latur@maharashtra.gov.in'),
(168, 'C', 'Latur', 'Mr. Sachin Kshirsagar', 'Project Lead (PL)', 'ALL', '', '', '7038146543', 'dpllatur.itcell@maharashtra.gov.in'),
(169, 'C', 'Latur', 'Mr. Lalit Navhare', 'Senior Network Engineer', 'ALL', '', '', '7385232593', 'snelatur.itcell@maharashtra.gov.in'),
(170, 'C', 'Latur', 'Mr. Ashok Kade', 'Network Engineer 1', 'Latur', '', '', '9096205782', 'ne1latur.itcell@maharashtra.gov.in'),
(171, 'C', 'Latur', 'Mr. Pravin Swami', 'Network Engineer 2', 'Udgir', '', '', '9763026836', 'ne4latur.itcell@maharashtra.gov.in'),
(172, 'C', 'Latur', 'MR. Deepak Salgar', 'Network Engineer 3', 'Nilanga', '', '', '9028365002', 'ne2latur.itcell@maharashtra.gov.in'),
(173, 'C', 'Latur', 'Mr. Abhijeet Garad', 'Network Engineer 4', 'Jolkot', '', '', '9823595003', 'ne3latur.itcell@maharashtra.gov.in'),
(174, 'C', 'Parbhani', 'Niraj Dhamangave', 'DPM', 'PARBHANI (Collector Office)', '', '', '9730465531', 'dpmparbhani.itcell@maharashtra.gov.in'),
(175, 'C', 'Parbhani', 'NARAYAN MAGHADE', 'Project Lead (PL)', 'PARBHANI (Zilla Parishad Office)', '', '', '9270364643', 'dplparbhani.itcell@maharashtra.gov.in'),
(176, 'C', 'Parbhani', 'MIRZA HUMAYUN BAIG', 'Senior Network Engineer (SNE) ', 'PARBHANI (Collector Office)', '', '', '9960034030', 'sneparbhani.itcell@maharashtra.gov.in'),
(177, 'C', 'Parbhani', 'RAKESH GARJE', 'Network Engineer 1', 'PARBHANI (SDO)', 'PARBHANI', '', '7738384964', 'rakeshrg14@gmail.com'),
(178, 'C', 'Parbhani', 'BANDU GADE', 'Network Engineer 2', 'GANGAKHED (SDO)', 'SONPETH', '', '8857084897', 'gade.bharat@gmail.com'),
(179, 'C', 'Parbhani', 'UDHAV KUNDKAR', 'Network Engineer 3', 'PATHRI (SDO)', 'MANWAT', '', '9403787975', 'uddhavkundkar@yahoo.co.in'),
(180, 'C', 'Parbhani', 'SONALI GHONGADE', 'Network Engineer 4', 'SELU (SDO)', 'JINTUR', '', '7709994879', 'sonalighongade123@gmail.com'),
(181, 'C', 'Solapur', 'Rizvan Mulla', 'DPM', 'All Taluka', '', '', '9975892798', 'edpm.solapur@maharashtra.gov.in'),
(182, 'C', 'Solapur', 'Bapu Kedar', 'Project Lead (PL)', 'All Taluka', '', '', '9527208559', 'dplsolapur.itcell@maharashtra.gov.in'),
(183, 'C', 'Solapur', 'Tukaram Bargude', 'Network Engineer 1', 'Barshi', '', '', '9511892793', 'ne1solapur.itcell@maharashtra.gov.in'),
(184, 'C', 'Solapur', 'Ayaz Gudmitte', 'Network Engineer 2', 'Akkalkot', '', '', '9834677123', 'ne2solapur.itcell@maharashtra.gov.in'),
(185, 'C', 'Solapur', 'Amol Bhosale', 'Network Engineer 3', 'Malshiras', 'Karmala', '', '8605050656', 'ne3solapur.itcell@maharashtra.gov.in'),
(186, 'C', 'Solapur', 'Hanumant Gaikwad', 'Network Engineer 4', 'Mohol', '', '', '9890229129 / 8668806877', 'ne4solapur.itcell@maharashtra.gov.in'),
(187, 'C', 'Solapur', 'Pratik Patil', 'Network Engineer 5', 'Madha', '', '', '7798387357/ / 9284982296', 'ne5solapur.itcell@maharashtra.gov.in');

-- --------------------------------------------------------

--
-- Table structure for table `noc_team`
--

CREATE TABLE `noc_team` (
  `SN` int(100) NOT NULL,
  `Name` varchar(1000) NOT NULL,
  `Designation` varchar(1000) NOT NULL,
  `Contact Number` varchar(1000) NOT NULL,
  `Email` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `noc_team`
--

INSERT INTO `noc_team` (`SN`, `Name`, `Designation`, `Contact Number`, `Email`) VALUES
(1, 'Ganesh Sarfare', 'AVP (Network & System)', '7718845141', 'ganesh.sarfare@aksenttechserv.com'),
(2, 'Ganesh Yadav', 'AVP (Network Operation)', '9096940003', 'ganesh.yadav@aksenttechserv.com'),
(3, 'Arvind Venkatachalam', 'AVP (System Operation)', '8108245558', 'arvind.v@aksenttechserv.com'),
(4, 'Sagar Chavan', 'Human Resource ', '7045354242', 'sagar.chavan@aksenttechserv.com'),
(5, 'Sameer Sawant', 'Network Manager', '981971611', 'sameer.s@aksenttechserv.com'),
(6, 'Suraj Salunke', 'Network Manager', '8779193030', 'suraj.salunkhe@aksenttechserv.com'),
(8, 'Parag Vaidya', 'Administrator /NOC Engineer', '9975635445', 'parag.vaidya@aksenttechserv.com'),
(9, 'Sagar Kamble', 'System Engineer / Developer', '8454079952', 'sagar.kamble@aksenttechserv.com'),
(10, 'Zaid Mohamaad', 'NOC Engineer /Package C Leader', '8655302925', 'zaid.shaikh@aksenttechserv.com'),
(11, 'Sushmita Yadav', 'NOC Engineer/ Package B Leader', '7710941409', 'sushmita.yadav@aksenttechserv.com'),
(12, 'Prajakta Waydande', 'NOC Engineer/ Package A Leader', '9637479820', 'prajakta.waydande@aksenttechserv.com'),
(13, 'Ranjit Singh', 'NOC Engineer', '9702534471', 'ranjitsingh.bhuller@aksenttechserv.com'),
(14, 'Vipin Pal', 'NOC Engineer', '8080227892', 'vipin.pal@aksenttechserv.com'),
(15, 'Suraj Modi', 'NOC Engineer', '8446173907', 'suraj.modi@aksenttechserv.com'),
(16, 'Akshay Roman', 'NOC Engineer', '8655668658', 'akshay.roman@aksenttechserv.com'),
(17, 'Minal Mohite', 'NOC Engineer', '9405392798', 'minal.mohite@aksenttechserv.com'),
(18, 'Umesh Jadhav', 'NOC Engineer', '9769442448', 'umesh.jadhav@aksenttechserv.com'),
(19, 'Prathmesh Kawad', 'NOC Engineer', '9082448941', 'prathmesh.kawad@aksenttechserv.com'),
(20, 'Monika Jadhav', 'NOC Engineer', '8669320839', 'monika.jadhav@aksenttechserv.com'),
(21, 'Vishal Chaudhary', 'NOC Engineer', '9552423018', 'vishal.chaudhary@aksenttechserv.com'),
(0, '', '', '', ''),
(0, '', '', '', '');

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
  `Address` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package_a`
--

INSERT INTO `package_a` (`SN`, `Location`, `ISP`, `ILL_Bandwidth`, `CE IP`, `Netmask`, `Default Gateway`, `Logical Circuit ID`, `Address`) VALUES
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
(27, 'Vikramgadh', 'Airtel', '2MBPS', '182.78.247.194', '255.255.255.252', '182.78.247.193', '13577584', '4165??? Panchayat Samiti Vikramgad Taluka Vikramgad Distict Palghar Pin Code-4165 .???? Thane Maharashtra India');

-- --------------------------------------------------------

--
-- Table structure for table `package_b`
--

CREATE TABLE `package_b` (
  `SN` int(100) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `ISP` varchar(100) NOT NULL,
  `ILL_Bandwidth` varchar(100) NOT NULL,
  `CE_IP` varchar(100) NOT NULL,
  `Netmask` varchar(100) NOT NULL,
  `Default Gateway` varchar(100) NOT NULL,
  `Logical Circuit ID` varchar(100) NOT NULL,
  `Address` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package_b`
--

INSERT INTO `package_b` (`SN`, `Location`, `ISP`, `ILL_Bandwidth`, `CE_IP`, `Netmask`, `Default Gateway`, `Logical Circuit ID`, `Address`) VALUES
(1, 'Akola', 'Jio', ' 10 Mb', '136.232.61.194', '255.255.255.252', '136.232.61.193', 'ILL_9335060166_300860271487', 'Dist. collector office, Hospital Main Rd, Near Government Medical College, Akola, Maharashtra 444001'),
(2, 'AMRAVATI', 'Jio', '200Mb', '136.232.234.14', '255.255.255.252', '136.232.234.13', 'ILL_9335342572_300849691484 ', 'Shyam chowk Near head post office Amrawati 444601'),
(3, 'ANJANGAON-SURJI', 'Airtel', '2Mb', '136.232.61.62', '255.255.255.252', '136.232.61.61', '13573903', 'Anjangaon Tehsil office, Akot road, Near Bharat petroleum, anjangaon surji 444705'),
(4, 'ARNI', '0', '0', '0', '', '0', '', ''),
(5, 'Barshitakli', 'Jio', ' 10 Mb', '136.232.61.98', '255.255.255.252', '136.232.61.97', 'ILL_9335060166_300860364622', ''),
(6, 'BHADRAWATI', 'Jio', '10Mb', '172.31.174.129', '255.255.255.252', '136.232.61.13', 'ILL_9335060166_300859646036', ''),
(7, 'BHATKULI', 'Jio', '10Mb', '136.232.61.110', '255.255.255.252', '136.232.61.109', 'ILL_9335060166_300860348653', 'Government hospital, Ganoja Devi Road, Bhatkuli 444602'),
(8, 'Bhokar', '', '', '', '', '', '', ''),
(9, 'Biloli', 'Jio', '200Mb', '136.232.235.210', '255.255.255.252', '136.232.235.209', 'ILL_9335342572_300857573045', 'Tahshil office Biloli, Opp Police station, Near old bus stand Biloli. Pin 431710'),
(10, 'BRAMHAPURI', 'Jio', '10Mb', '136.232.61.26', '255.255.255.252', '136.232.61.25', 'ILL_9335060166_300859501002', ''),
(11, 'CHANDRAPUR', 'Jio', '10Mb', '182.73.245.158', '255.255.255.252', '182.73.245.157', 'ILL_9335060166_300859533004', 'NEAR OFFICE OF DISTRICT COLLECTOR, CHAUHAN COLONY, CHANDRAPUR TAHSIL OFFICE, CHANDRAPUR,MAHARASHTRA (MH), India (IN), Pin Code 442402'),
(12, 'CHANDUR BAZAR', 'Airtel', '200Mb', '182.74.42.154', '255.255.255.252', '182.74.42.153', '', ''),
(13, 'DARWHA', 'Jio', '10Mb', '136.232.61.190', '255.255.255.252', '136.232.61.189', 'ILL_9335060166_300860277011', ''),
(14, 'Deglur', '', '', '', '', '', '', ''),
(15, 'DHAMANGAON RLY', 'Jio', '10Mb', '136.232.61.10', '255.255.255.252', '136.232.61.9', 'ILL_9335060166_300859943994', ''),
(16, 'DIGRAS', 'Airtel', '2Mb', '115.242.240.174', '255.255.255.252', '115.242.240.173', '13573882', 'Tehsil Office,Gurudev Nagar, Digras, Maharashtra 445203'),
(17, 'GHATANJI', '0', '0', '0', '', '0', '', ''),
(18, 'GONDPIPRI', 'Jio', '10Mb', '136.232.61.94', '255.255.255.252', '136.232.61.93', 'ILL_9335060166_300860363845', 'CHANDRAPUR-KOTHARI-GONDPIPRI-AHERI ROAD,GONDPIPRI TAHSIL OFFICE,CHANDRAPUR,MAHARASHTRA (MH), India (IN), Pin Code:- 442702'),
(19, 'Hadgaon', 'Jio', '10Mb', '115.242.195.130', '255.255.255.252', '115.242.195.129', '', 'Tahsil office Hadgaon Ambedkar chowk, Tamsa road-431712'),
(20, 'Himayat Nagar', 'Airtel', '2Mb', '182.74.217.162', '255.255.255.253', '182.74.217.161', '13573829', 'Panchayat Samiti Office, First Floor,Tahsil Office Building,Himayatnagar,Maharashtra 431802'),
(21, 'HINGANGHAT', 'Jio', '10Mb', '136.232.60.254', '255.255.255.252', '136.232.60.253', 'ILL_9335060166_300859541926', 'Tahsil Office,Railway Station Road Civil Line Hinganghat Dist-Wardha 442301'),
(22, 'JIWATI', '', '', '', '', '', '', ''),
(23, 'KARANJA', 'Jio', '10Mb', '136.232.61.50', '255.255.255.252', '136.232.61.49', 'ILL_9335060166_300859808490', 'At Post MSVAN Room Karanja ,Tahsil Karanja Dist-Wardha-442203'),
(24, 'KARANJA(WAR)', 'Jio', '10Mb', '136.232.61.54', '255.255.255.252', '136.232.61.53', 'ILL_9335060166_300859808490', ''),
(25, 'KORPANA', 'Jio', '10Mb', '136.232.61.70', '255.255.255.252', '136.232.61.69', 'ILL_9335060166_300859775033', 'MAIN ROAD, KORPANA TAHSIL OFFICE, CHANDRAPUR, MAHARASHTRA (MH), India (IN), 442916'),
(26, 'Loha', 'Airtel', '200Mb', '182.75.145.166', '255.255.255.252', '182.75.145.165', '13331934', 'Tahsil office Loha Near Shivaji Chowk, Kandhar Road, Nanded 431708'),
(27, 'MAHAGAON', 'Jio', '10Mb', '115.242.216.206', '255.255.255.252', '115.242.216.205', 'ILL_9335060166_300867367452', 'Tahsil office, Patil Nagar, Mahagaon Road, Taluka-Umarkhed, Pin code-445206'),
(28, 'Mahur', '', '', '', '', '', '', ''),
(29, 'Malegaon', 'Airtel', '2Mb', '182.74.200.197', '255.255.255.252', '182.74.200.196', '13573893', 'Tehsil Office Malegaon Jahngir Washim 444503'),
(30, 'MAREGAON', '0', '0', '', '', '', '', ''),
(31, 'Mokhed', 'Jio', '10Mb', '115.242.240.106', '255.255.255.252', '115.242.240.105', 'ILL_9335060166_300869285517', ''),
(32, 'Mudkhed', 'Jio', '10Mb', '115.242.240.101', '255.255.255.252', '115.242.240.100', 'ILL_9335060166_300869287095', ''),
(33, 'Murtizapur', 'Airtel', '200Mb', '182.73.19.102', '255.255.255.252', '182.73.19.101', '13331938', ''),
(34, 'NANDGAON KH', 'Jio', '10Mb', '136.232.61.30', '255.255.255.252', '136.232.61.29', 'ILL_9335060166_300859501017', ''),
(35, 'PANDHARKWADA(KELAPUR)', 'Jio', '10Mb', '136.232.61.166', '255.255.255.252', '136.232.61.165', 'ILL_9335060166_300860018639', ''),
(36, 'Patur', 'Jio', '10Mb', '136.232.61.58', '255.255.255.252', '136.232.61.57', 'ILL_9335060166_300859809260', 'Tahasil office Patur, Akola Wahim highway, Patur, Maharashtra 444501'),
(37, 'POMBHURNA', 'Jio', '10Mb', '136.232.61.82', '255.255.255.252', '136.232.61.81', 'ILL_9335060166_300860202550', 'NEAR POLICE STATION,POMBHURNA TAHSIL OFFICE, CHANDRAPUR, MAHARASHTRA (MH), India (IN), 441224'),
(38, 'PUSAD', 'Airtel', '200Mb', '182.75.85.122', '255.255.255.252', '182.75.85.121', '', ''),
(39, 'RAJURA', 'Jio', '10Mb', '136.232.61.186', '255.255.255.252', '136.232.61.185', 'ILL_9335060166_300860276226', 'MANCHERIAL-CHANDRAPUR-NAGPUR ROAD,RAJURA TAHSIL OFFICE, CHANDRAPUR, MAHARASHTRA (MH), India (IN), Pin Code:- 442905'),
(40, 'RALEGAON', 'Jio', '10Mb', '136.232.61.18', '255.255.255.252', '136.232.61.17', 'ILL_9335060166_300859488428', 'Ralegaon tehsil office opp to hindustan petroleum pump wadki , Pin 445402'),
(41, 'Risod', 'Jio', '10Mb', '115.242.218.86', '255.255.255.252', '115.242.218.85', 'ILL_9335060166_300867569656', 'Tehsil Office Risod,Washim,444506'),
(42, 'SAMUDRAPUR', 'Jio', '10Mb', '136.232.60.246', '255.255.255.252', '136.232.60.245', 'ILL_9335060166_300859670885', 'Tahsil Office Near Samudrapur Bus Stop,Dist- Wardha-442305'),
(43, 'Telhara', 'Jio', '10Mb', '136.232.61.34', '255.255.255.252', '136.232.61.33', 'ILL_9335060166_300859501206', 'Telhara Tahasil Office, Sai Nagar, Telhara, Maharashtra 444108'),
(44, 'TIOSA', 'Jio', '10Mb', '136.232.61.22', '255.255.255.252', '136.232.61.21', 'ILL_9335060166_300859500991', 'Madhyawarti  Prashashkiya bhawan,  nagpur amravati road,  taluka tiwsa 444903'),
(45, 'UMARKHED', 'Jio', '10Mb', '115.242.216.222', '255.255.255.252', '115.242.216.221', 'ILL_9335060166_300867162165', 'Tahsil Office Near Bus stand Umarkhed road, Mahagaon 445206'),
(46, 'Umri', 'Jio', '10Mb', '115.242.218.82', '255.255.255.252', '115.242.218.81', 'ILL_9335060166_300867592821', 'Teshil Office Umri, Mudkhed -Umri Road , Nanded, Maharashtra -431807'),
(47, 'WANI', 'Jio', '10Mb', '136.232.61.74', '255.255.255.252', '136.232.61.73', 'ILL_9335060166_300859517351', 'Taluka Office Wani Opposite police station wani near by Tilak chowk '),
(48, 'WARDHA_MTHQ', '', '', '136.232.234.150', '255.255.255.252', '136.232.234.149', '', ''),
(49, 'WARORA', 'Jio', '10mb', '136.232.61.78', '255.255.255.252', '136.232.61.77', 'ILL_9335060166_300857522467', 'WARORA TAHSIL OFFICE, CHANDRAPUR, MAHARASHTRA (MH), India (IN), Pin Code:- 442907'),
(50, 'Washim', 'Jio', '10Mb', '136.232.61.254', '255.255.255.252', '136.232.61.253', 'ILL_9335060166_300860521068', 'Tehsil Office Civil Road Washim,444505'),
(51, 'YAVATMAL', 'Jio', '10Mb/200Mb', '136.232.46.42', '255.255.255.252', '136.232.46.41', 'ILL_9335342572_300857927185?', 'Tanga Chouk, Tahsil Office, Yavatmal 445001'),
(0, '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `package_c`
--

CREATE TABLE `package_c` (
  `SN` int(100) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `ISP` varchar(100) NOT NULL,
  `ILL_Bandwidth` varchar(100) NOT NULL,
  `CE_IP` varchar(100) NOT NULL,
  `Netmask` varchar(100) NOT NULL,
  `Default Gateway` varchar(100) NOT NULL,
  `Logical Circuit ID` varchar(100) NOT NULL,
  `Address` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package_c`
--

INSERT INTO `package_c` (`SN`, `Location`, `ISP`, `ILL_Bandwidth`, `CE_IP`, `Netmask`, `Default Gateway`, `Logical Circuit ID`, `Address`) VALUES
(1, 'Ahmad nagr', 'Jio', '200 mb', '136.232.38.18', '255.255.255.252', '136.232.38.17', 'ILL_9335342572_300862129639', 'New Administrative Building, Near TV Centre, Professor Colony Savedi, Ahmednagar? 414003 Dist. Ahmednagar'),
(2, 'Akkalkot', 'Jio', '200 mb', '115.242.194.10', '255.255.255.252', '115.242.194.9', 'ILL_9335342572_300866047721', 'Akkalkot New Tahasil office Behind Mehta Gas Agency Mhada Colony, Akkalkot Pin code:- 413216'),
(3, 'Ashti mthq', 'Jio', '10 mb', '115.242.218.58', '255.255.255.252', '115.242.218.57', 'ILL_9355011177_300864985256', ''),
(4, 'Aundha', 'Airtel', '2 mb', '202.56.246.94', '255.255.255.252', '202.56.246.93', '13587719', 'TAHASIL KARYALAY AUNDHA NAGNTHA - 431705'),
(5, 'Aurangabad', 'Airtel', '200 mb', '182.73.19.226', '255.255.255.252', '182.73.19.225', '13331927', 'TEHSIL OFFICE AURANGABAD NEAR TREASURY OFFICE LABOUR COLONY AURANGABAD 431001'),
(6, 'Barshi', 'Airtel', '200 mb', '182.75.3.142', '255.255.255.252', '182.75.3.141', '13331921', 'Tahsildar Office17,Alipur Rd,Jijau Nagar, Krantisingha Nagar, Barshi, ?Dist.Solapur Maharashtra -413401'),
(7, 'Basmatnagar', 'Jio', '200 mb', '136.232.60.174', '255.255.255.252', '136.232.60.173', 'ILL_9335342572_300858573306', 'Near Bus stand, Nanded - Parbhani Road, Tahsil Office, Basmat Nagar'),
(8, 'Bhadgaon', 'Airtel', '200 mb', '182.73.90.126', '255.255.255.252', '182.73.90.125', '13331933', '0 , Tahasil Karyalay Near Bus Stand , Bhadgaon , Jalgaon , Jalgaon , MAHARASHTRA , 424105'),
(9, 'Chopda', 'Airtel', '2 mb', '122.185.150.150', '255.255.255.252', '122.185.150.149', '13684427', 'TAHASIL OFFICE NEAR SHAHAR POLICE STATION CHOPDA - 415107'),
(10, 'Erandol thq', 'Airtel', '2 mb', '122.185.154.118', '255.255.255.252', '122.185.154.117', '', ''),
(11, 'Jalkot', 'Jio', '10 mb', '115.242.218.102', '255.255.255.252', '115.242.218.101', 'ILL_9335342572_300859079832', 'Jalkot Tahsil Office, Near sambhaji kendriy mahavidyalaya, Jalkot.'),
(12, 'Jamner thq', 'Jio', '10 mb', '115.242.194.230', '255.255.255.252', '115.242.194.229', 'ILL_9335060166_300866521012', 'tahsil office Waki Rd, Mahavir Nagar, Jamner Dist Jalgaon-424206'),
(13, 'Jintur', 'Jio', '10 mb', '115.242.241.2', '255.255.255.252', '115.242.241.1', 'ILL_9335060166_300869164658', 'TAHASIL OFFICE INFRONT OF SBI BANK BESIDE PANCHAYAT SAMITI JINTUR - 431509'),
(14, 'Kalamnuri', 'Airtel', '200 mb', '122.185.150.234', '255.255.255.252', '122.185.150.233', '13687666', 'Tehsil karyalay Kalamnuri Dist Hingoli MH - 431702'),
(15, 'Karjat', 'Jio', '10 mb', '115.242.217.30', '255.255.255.252', '115.242.217.29', 'ILL_9335060166_300867202599', 'Tahsil off.Karjat, Maharashtra 414402'),
(16, 'Karmala', 'Airtel', '2 mb', '122.185.154.110', '255.255.255.252', '122.185.154.109', '13719370', ''),
(17, 'Kopargaon', 'Airtel', '2 mb', '182.78.247.198', '255.255.255.252', '182.78.247.197', '13577582', '? ?Tahsil Karyalay ?Gurudwara Road Tal:Kopargaon Dist:Ahmednagar- 42361 . ? ? AHMEDNAGAR Maharashtra India'),
(18, 'Latur', 'Airtel', '200 mb', '182.72.24.130', '255.255.255.252', '182.72.24.129', '13331402', 'Latur Tahsil office,?Main Road, Latur 413512'),
(19, 'Madha', 'Airtel', '2 mb', '122.185.154.218', '255.255.255.252', '122.185.154.217', '13719378', ''),
(20, 'Malshiras thq', 'Jio', '10 mb', '115.243.242.42', '255.255.255.248', '115.243.242.41', 'ILL_9335060166_300872032242', ''),
(21, 'Mehkar', 'Jio', '10 mb', '115.242.243.166', '255.255.255.252', '115.242.243.165', 'ILL_9335060166_300861011716', 'Tahsil off,Bilal Nagar, Mehkar, Maharashtra 443301'),
(22, 'Mohol', 'Jio', '10 mb', '115.242.194.38', '255.255.255.252', '115.242.194.37', 'ILL_9335060166_300866124834', 'Siddharth Nagar, Mohol, Ghatne - 413213'),
(23, 'Newasa', 'Airtel', '2 mb', '182.78.249.86', '255.255.255.252', '182.78.249.85', '13577580', 'At Post Newasa Newasa Shrirampur Road Tal Newasa Dist Ahmednagar State ?Maharashtra- 41461 ? ? AHMEDNAGAR Maharashtra India'),
(24, 'Nilanga', 'Airtel', '2 mb', '182.75.202.194', '255.255.255.252', '182.75.202.193', '13587723', 'Aurangpura Dattanagar Nilanga Maharashtra - 413521 . ? ? Latur Maharashtra India'),
(25, 'Pachora', 'Local ISP', '2 mb', '103.141.52.155', '255.255.255.248', '103.141.52.153', '', ''),
(26, 'Paithan', 'Jio', '10 mb', '115.242.216.54', '255.255.255.252', '115.242.216.53', 'ILL_9335060166_300866960263', 'Tahsil office,Court Area, Paithan, Maharashtra 431107'),
(27, 'Parbhani', 'Airtel', '200 mb', '182.71.136.206', '255.255.255.252', '182.71.136.205', '13331936', 'Tahsil Office Beside Railway Station Road Parbhani 431401'),
(28, 'Parner', 'Local ISP', '2 mb', '45.119.57.110', '255.255.255.252', '45.119.57.109', '', ''),
(29, 'Parola', 'Airtel', '2 mb', '182.78.247.222', '255.255.255.252', '182.78.247.221', '13577560', '425111 ? ?PANCHAYAT SAMITI NEAR POLICE STATION NH6 PAROLA - 425111 . ? ? Jalgaon Maharashtra India'),
(30, 'Pathardi', 'Airtel', '2 mb', '122.185.154.138?', '255.255.255.252', '122.185.154.137?', '13719308', 'Nearby Pathardi police Station Pathardi Ahmednagar Road NH Hiway 222.Pathardi Dist. Ahmednagar Pin-414102'),
(31, 'Ratha', 'Airtel', '2 mb', '182.76.6.166', '255.255.255.252', '182.76.6.165', '13577581', 'Panchyat Samiti Karyalay Rahata NEARNAGARMANMAD ROAD TAL:RAHATA DIST ?AHMEDNAGAR- 42367 ? ? AHMEDNAGAR Maharashtra India'),
(32, 'Sailu', 'Airtel', '2 mb', '182.78.250.234', '255.255.255.252', '182.78.250.233', '13587722', 'TAHASIL KARYALAY AATRE NAGAR SAILU - 43153 . ? ? Parbhani Maharashtra India'),
(33, 'Sangrampur', 'Jio', '10 mb', '136.233.244.178', '255.255.255.248', '136.233.244.177', 'ILL_9335060166_300869588132', 'Tahasil Karyalay , Near Panchayat Samiti Sangrampur , Buldana , Buldana , MAHARASHTRA , 444202 , SNRMBD000006'),
(34, 'Sengaon', 'Jio', '10 mb', '115.242.240.110', '255.255.255.252', '115.242.240.109', 'ILL_9335060166_300869287924', 'TAHASIL KARYALAY RISOD ROAD SENGAON - 431542'),
(35, 'Shrigonda thq', 'Airtel', '2 mb', '122.185.154.190?', '255.255.255.252', '122.185.154.189?', '13719282', '- Shanichauk THQ shrigonda tal shrigonda dist ahmednagar'),
(36, 'Srirampur', 'Airtel', '2 mb', '122.185.154.146', '255.255.255.252', '122.185.154.145', '13719312', 'Court road ?Shrirampur Pin Code - 413709'),
(37, 'Vaijapur mthq', 'Jio', '10 mb', '136.233.249.82', '255.255.255.258', '136.233.249.81', 'ILL_9335060166_300862374650', 'Tehsil office vaijapur ,near Panchayat samiti Vaijapur'),
(38, 'Yawal', 'Airtel', '10 mb', '182.72.55.250', '255.255.255.252', '182.72.55.249', '', 'TAHASIL KARYALAY VADRY KOLWAD ROAD YAWAL - 425307'),
(0, '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `resource_pack_a`
--

CREATE TABLE `resource_pack_a` (
  `SN` int(100) NOT NULL,
  `Package` varchar(1000) NOT NULL,
  `District` varchar(1000) NOT NULL,
  `Mahataluka` varchar(1000) NOT NULL,
  `Taluka` varchar(1000) NOT NULL,
  `Taluka Assigned` varchar(1000) NOT NULL,
  `GP Assigned` varchar(1000) NOT NULL,
  `DM` varchar(1000) NOT NULL,
  `DM_Contact Number` varchar(1000) NOT NULL,
  `DM_Email ID` varchar(1000) NOT NULL,
  `BM` varchar(1000) NOT NULL,
  `BM_Contact Number` varchar(1000) NOT NULL,
  `BM_Email ID` varchar(1000) NOT NULL,
  `Remarks` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resource_pack_a`
--

INSERT INTO `resource_pack_a` (`SN`, `Package`, `District`, `Mahataluka`, `Taluka`, `Taluka Assigned`, `GP Assigned`, `DM`, `DM_Contact Number`, `DM_Email ID`, `BM`, `BM_Contact Number`, `BM_Email ID`, `Remarks`) VALUES
(1, 'A', 'NASHIK', 'Igatpuri', 'Igatpuri', '', '', 'Prashant Gore', '9619600616', 'prashant.gore@aksenttechserv.com', '', '', '', 'BM not assigned to THQ'),
(2, 'A', 'NASHIK', 'Satana', 'Satana', 'Kishor Jagtap', 'Pankaj Jadhav', '', '', '', 'Kishor Jagtap', '9673875550', 'kishor6988@gmail.com', ''),
(3, 'A', 'NASHIK', '', 'Deola ', 'Kiran Deore', 'Kiran Deore', '', '', '', 'Kiran Deore', '9503646869', 'Deokiran_2007@rediffmail.com', ''),
(4, 'A', 'NASHIK', '', 'Malegaon(N)', 'Kiran Deore', 'Pankaj Jadhav', '', '', '', 'Kiran Deore', '9503646869', 'Deokiran_2007@rediffmail.com', ''),
(5, 'A', 'NASHIK', '', 'Nashik', 'Samadhan Chavan', 'Samadhan Chavan', '', '', '', 'Samadhan Chavan', '9921090572', 'samchavan3488@gmail.com', ''),
(6, 'A', 'NASHIK', '', 'Peint', '', '', '', '', '', '', '', '', 'BM not assigned to THQ'),
(7, 'A', 'NASHIK', '', 'Sinnar', 'Suyog Bhagat', 'Suyog Bhagat', '', '', '', 'Suyog Bhagat', '9762541677', 'suyogbhagat.2009@gmail.com', ''),
(8, 'A', 'NASHIK', '', 'Surgana', '', '', '', '', '', '', '', '', 'BM not assigned to THQ'),
(9, 'A', 'NASHIK', '', 'Trimbak', 'Samadhan Chavan', 'Samadhan Chavan', '', '', '', 'Samadhan Chavan', '9921090572', 'samchavan3488@gmail.com', ''),
(10, 'A', 'NASHIK', '', 'Yeola', 'Yogesh Barhate', 'Yogesh Barhate', '', '', '', 'Yogesh Barhate', '8983187289', 'yogesh12te@gmail.com', ''),
(11, 'A', 'PALGHAR', 'Vasai', 'Vasai', 'Sachin Farde', 'Sachin Farde', 'Hitesh Banait', '9060231182', 'hiteshbanait@aksenttechserv.com', 'Sachin Farde', '8668928364', '', ''),
(12, 'A', 'PALGHAR', 'Dahanu', 'Dahanu', 'Hemant Raut', 'Hemant Raut', '', '', '', 'Hemant Raut', '7028331123', 'hemant.raut123@gmail.com', ''),
(13, 'A', 'PALGHAR', '', 'Jawhar', '', '', '', '', '', '', '', '', 'BM not assigned to THQ'),
(14, 'A', 'PALGHAR', '', 'Mokhada', 'Dattatray Rasal', 'Dattatray Rasal', '', '', '', 'Dattatray Rasal', '8657595799', '', ''),
(15, 'A', 'PALGHAR', '', 'Vikramgad', 'Kedar S Patil', 'Vishal Thombare', '', '', '', 'Kedar S Patil', '7020744640/91689766229', '', ''),
(16, 'A', 'PUNE', 'Indapur', 'Indapur', 'Dattatray Gholap', 'Abhijit  Bhise', 'Sagar Bora', '8698155858', 'sagar.bora@aksenttechserv.com', 'Dattatray Gholap', '9766380102', '', ''),
(17, 'A', 'PUNE', 'Haveli', 'Haveli', 'Vishal Thombare', 'Vishal Thombare', '', '', '', 'Vishal Thombare', '9766380102', '', ''),
(18, 'A', 'PUNE', '', 'JUNNAR', 'Sundar Waghmare', 'Shobit Jain', '', '', '', 'Sundar Waghmare', '7499102201', '', ''),
(19, 'A', 'PUNE', '', 'MAVAL', '', '', '', '', '', '', '', '', ''),
(20, 'A', 'PUNE', '', 'MULSHI', '', '', '', '', '', '', '', '', ''),
(21, 'A', 'PUNE', '', 'PURANDAR', 'Gaurav Khenat', 'Abhijit  Bhise', '', '', '', 'Gaurav Khenat', '9923399868', '', ''),
(22, 'A', 'KOLHAPUR', 'Shahuwadi', 'Shahuwadi', 'SHUBHAM GAJANAN PATIL', 'Abhijit Magdum', 'Pratik Patil', '7507993000', 'pratikpatilcsc@gmail.com', 'SHUBHAM GAJANAN PATIL', '9890446195', 'patilshubh2122@gmail.com', ''),
(23, 'A', 'KOLHAPUR', 'BHUDARGAD', 'BHUDARGAD', 'Sachin Patil ', 'Abhijit Magdum', '', '', '', 'Sachin Patil ', '9403107080', 'sachinhpatil9595@gmail.com', ''),
(24, 'A', 'KOLHAPUR', '', 'AJARA', 'Ranjit Namdev Ingale', 'Abhijit Magdum', '', '', '', 'Ranjit Namdev Ingale', '9665571819', 'ranjitingale@gmail.com', ''),
(25, 'A', 'KOLHAPUR', '', 'KAGAL', '', '', '', '', '', '', '', '', 'BM not assigned to THQ'),
(26, 'A', 'KOLHAPUR', '', 'CHANDGAD', 'HRISHIKESH GANPATI SATARDEKAR', 'Abhijit Magdum', '', '', '', 'HRISHIKESH GANPATI SATARDEKAR', '8806655782', 'satardekar.hrishikesh669@gmail.com', ''),
(27, 'A', 'KOLHAPUR', '', 'RADHANAGARI', '', '', '', '', '', '', '', '', 'BM not assigned to THQ'),
(28, 'A', 'RATNAGIRI', 'Rajapur', 'Rajapur', '', '', 'NA', 'NA', 'NA', '', '', '', ''),
(29, 'A', 'RATNAGIRI', 'Chiplun', 'Chiplun', '', '', '', '', '', '', '', '', ''),
(30, 'A', 'RATNAGIRI', '', 'DAPOLI', '', '', '', '', '', '', '', '', ''),
(31, 'A', 'RATNAGIRI', '', 'GUHAGHAR', '', '', '', '', '', '', '', '', ''),
(32, 'A', 'RATNAGIRI', '', 'LANJA', '', '', '', '', '', '', '', '', ''),
(33, 'A', 'RATNAGIRI', '', 'Sangmeshwar', '', '', '', '', '', '', '', '', ''),
(34, 'A', 'SANGLI', 'Jath', 'Jath', 'Nilesh  Gondhali ', 'Karan Nikose', 'Sagar Bora', '8698155858', 'sagar.bora@aksenttechserv.com', 'Nilesh  Gondhali ', '9767077595', '', ''),
(35, 'A', 'SANGLI', 'Kadegaon', 'Kadegaon', 'Pravin Pratap More', 'Karan Nikose', '', '', '', 'Pravin Pratap More', '7387844988', '', ''),
(36, 'A', 'SINDHUDURG', 'Dodamarg', 'Dodamarg', '', '', '', '', '', '', '', '', ''),
(37, 'A', 'SINDHUDURG', 'Vaibhavadi', 'Vaibhavadi', '', '', '', '', '', '', '', '', ''),
(38, 'A', 'SATARA', 'Jawali', 'Jawali', 'Vijay Jadhav', 'Vijay Jadhav', 'Ravindra Shinde ', '9689819673', 'ravindra.shinde@aksenttechserv.com', 'Vijay Jadhav', '9860616566', 'vijay88shingade@gmail.com', ''),
(39, 'A', 'SATARA', 'Satara', 'Satara', 'Ajinkya Kapase', 'Ajinkya Kapase', '', '', '', 'Ajinkya Kapase', '9890803228', 'kapaseajinkya1@gmail.com', ''),
(40, 'A', 'SATARA', '', 'KARAD', 'Akshay Shinde', 'Akshay Shinde', '', '', '', 'Akshay Shinde', '9096839934', 'shindea179@gmail.com', ''),
(41, 'A', 'SATARA', '', 'KHATAV', 'Kiran Mane', 'Kiran Mane', '', '', '', 'Kiran Mane', '9823777875', 'manekiran0@gmail.com', ''),
(42, 'A', 'SATARA', '', 'MAHABALESWAR', 'Omakar Mahadik', 'Omakar Mahadik', '', '', '', 'Omakar Mahadik', '7666522611', 'omi7666@gmail.com', ''),
(43, 'A', 'SATARA', '', 'MAN', '', '', '', '', '', '', '', '', 'BM not assigned to THQ'),
(44, 'A', 'SATARA', '', 'PATAN', 'Nilesh Pawar', '', '', '', '', 'Nilesh Pawar', '9970169289', 'nilesh.e.pawar@gmail.com', ''),
(45, 'A', 'SATARA', '', 'WAI', '', '', '', '', '', '', '', '', 'BM not assigned to THQ'),
(46, 'A', 'THANE', 'Bhiwandi', 'Bhiwandi', 'Satyajeet Ashok Korde', 'Tejas Rasal', 'Tejas Rasal ', '8928365315', '', 'Satyajeet Ashok Korde', '8975919543', '', ''),
(47, 'A', 'THANE', 'Kalyan', 'Kalyan', 'Mahesh Vilas Gaikar', 'Tejas Rasal', '', '', '', 'Mahesh Vilas Gaikar', '9011721660', '', ''),
(48, 'A', 'THANE', '', 'Ambarnath', 'Rohidas Vitthal Dhangar', 'Tejas Rasal', '', '', '', 'Rohidas Vitthal Dhangar', '9021766841', '', ''),
(49, 'A', 'THANE', '', 'Murbad', 'Tushar Kembari', 'Tejas Rasal', '', '', '', 'Tushar Kembari', '7977740646', '', ''),
(50, 'A', 'THANE', '', 'Shahapur', 'Pankaj Gavhane', 'Tejas Rasal', '', '', '', 'Pankaj Gavhane', '8149195597', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `resource_pack_b`
--

CREATE TABLE `resource_pack_b` (
  `SN` int(100) NOT NULL,
  `District Name` varchar(100) NOT NULL,
  `MahaNet Resource Name` varchar(1000) NOT NULL,
  `Designation` varchar(1000) NOT NULL,
  `Talukas Assigned 1` varchar(1000) NOT NULL,
  `Talukas Assigned 2 (if applicable)` varchar(1000) NOT NULL,
  `Talukas Assigned 3 (if applicable)` varchar(1000) NOT NULL,
  `Contact Number` varchar(1000) NOT NULL,
  `Email ID` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resource_pack_b`
--

INSERT INTO `resource_pack_b` (`SN`, `District Name`, `MahaNet Resource Name`, `Designation`, `Talukas Assigned 1`, `Talukas Assigned 2 (if applicable)`, `Talukas Assigned 3 (if applicable)`, `Contact Number`, `Email ID`) VALUES
(1, 'Akola', 'Amit Ramesh Dhage', 'DPM', 'All Taluka', '', '', '9657678461', 'edpm.akola@maharashtra.gov.in'),
(2, 'Akola', 'Rahul Patil', 'Project Lead (PL)', 'Barshi Takali', '', '', '9923606040', 'dplakola.itcell@maharashtra.gov.in'),
(3, 'Akola', 'Suraj Kharde', 'Network Engineer 1', 'Murtijapur', '', '', '9420077079', 'ne1akola.itcell@maharashtra.gov.in'),
(4, 'Akola', 'Navin Kawal', 'Network Engineer 2', 'Patur', '', '', '9823504334', 'ne3akola.itcell@maharashtra.gov.in'),
(5, 'Akola', 'Noman Durrani Khan', 'Network Engineer 3', 'Telhara', '', '', '8149063539', '?nomankhan1437@gmail.com?'),
(6, 'Akola', 'Nilesh Sawalatkar', 'Sr. Network Engineer', 'Akola', '', '', '9881883113', 'sneakola.itcell@maharashtra.gov.in'),
(7, 'Amravati', 'Mr. Prafulla Mehar', 'DPM', 'All Taluka', '', '', '7066819874/8999401945', 'dpmamravati.itcell@maharashtra.gov.in/edpm.amravati@maharashtra.gov.in'),
(8, 'Amravati', 'Mr. Bushan Mehare', 'Project Lead (PL)', 'Bhatkuli', '', '', '7972192408', 'dplamravati.itcell@maharashtra.gov.in/mehare.bhushan@gmail.com'),
(9, 'Amravati', 'Mr. Manoj Kale', 'Senior Network Engineer', 'Amravati', '', '', '9890639290', 'sneamravati.itcell@maharashtra.gov.in'),
(10, 'Amravati', 'Bhavesh Mandwe', 'Network Engineer 1', 'Tiwasa', '', '', '9021304370', 'bmmandwe@gmail.com '),
(11, 'Amravati', 'Ayush Jumade', 'Network Engineer 2', 'Nandgaon-Khandeshwar', '', '', '8793550314', 'ayushjumade@rediffmail.com '),
(12, 'Amravati', 'Pravin Tayde', 'Network Engineer 3', 'Dhamangaon ', '', '', '8149795494', 'parthtayde@gmail.com'),
(13, 'Amravati', 'Kunal Jogdande', 'Network Engineer 4', 'Chandurbzar', '', '', '9561222919', 'kjogdande@gmail.com /  ne5amravati.itcell@maharashtra.gov.in'),
(14, 'Amravati', 'Akshay Pantawane', 'Network Engineer 5', 'Anjangaon Surji', '', '', '9960739170', 'pantawaneak@gmail.com'),
(15, 'Chandrapur', 'Sunil G. Mokde', 'DPM', 'All Taluka', '', '', '9511219537', 'edpm.chandrapur@maharashtra.gov.in'),
(16, 'Chandrapur', 'Amol Raghatate', 'Project Lead (PL)', '', '', '', '9579060487', 'dplchandrapur.itcell@maharashtra.gov.in'),
(17, 'Chandrapur', 'Sharadchandra H. Gurle', 'Senior Network Engineer', '', '', '', '9881552721', 'snechandrapur.itcell@maharashtra.gov.in'),
(18, 'Chandrapur', 'Kushal kamble', 'Network Engineer 1', 'Chandrapur', '', '', '9503725743/9637317321', 'ne7chandrapur.itcell@maharashtra.gov.in'),
(19, 'Chandrapur', 'Sandip meshram', 'Network Engineer 2', 'Rajura', 'Korpana', 'Jiwati', '8956275738 / 9822221672', 'sandip.meshram@gmail.com'),
(20, 'Chandrapur', 'Pradeep Umathe', 'Network Engineer 3', 'Gondpipri', 'Pombhurna', '', '9730216968', 'pradeepumathe@gmail.com'),
(21, 'Chandrapur', 'Sachin S Hivarkar', 'Network Engineer 4', 'Bramhapuri', '', '', '8999297239', 'ne4chandrapur.itcell@maharashtra.gov.in'),
(22, 'Chandrapur', 'Kuldeep Kumar', 'Network Engineer 5', 'Warora', 'Bhadrawati', '', '7350735381 / 9096577543', 'ne2chandrapur.itcell@maharashtra.gov.in'),
(23, 'Chandrapur', 'Chetan Gainewar', 'Network Engineer 6', 'NA', '', '', '9730568850', 'chetangainewar@gmail.com'),
(24, 'Chandrapur', 'Mahesh Patil', 'Network Engineer 7', 'NA', '', '', '7757866553', 'msp9891@yahoo.com'),
(25, 'Gadchiroli', 'Jayant M. Mukundwar', 'DPM', 'Aheri', '', '', '9561462979', 'dpmgadchiroli.itcell@maharashtra.gov.in'),
(26, 'Gadchiroli', 'Harshal H. Gongale', 'Project Lead (PL)', 'Etapalli', '', '', '9921875174', 'dplgadchiroli.itcell@maharashtra.gov.in'),
(27, 'Gadchiroli', 'Kamlesh Akare', 'SNE', '', '', '', '9271702234', 'kam007akare@gmail.com'),
(28, 'Gadchiroli', 'Bhupendra N. Kamble', 'Network Engineer 1', 'Dhanora', '', '', '8308225773', 'bkam.cool@gmail.com'),
(29, 'Gadchiroli', 'Kunal E. Gumfalwar', 'Network Engineer 2', 'Korchi', '', '', '8698429743', 'kunalgumfalwar@gmail.com'),
(30, 'Gadchiroli', 'Shrikant Adgopulwar', 'Network Engineer 3', 'Bhamragad', '', '', '7588780023', 'shriadagopulwar@gmail.com'),
(31, 'Gadchiroli', 'New resource will be available in next month', 'Network Engineer 4', 'Sironcha', '', '', '', ''),
(32, 'Nanded', 'KAPIL PENDALWAR', 'DPM', 'Shifted from Parbhani', '', '', '9823555595', 'dpmparbhani.itcell@maharashtra.gov.in'),
(33, 'Nanded', 'Kuldeep Joshi', 'Project Lead (PL)', 'Modkhed', '', '', '8275052227', 'dplnanded.itcell@maharashtra.gov.in'),
(34, 'Nanded', 'Dnyaneshwar Rajne', 'Sr. Network Engineer', 'Kinwat', '', '', '9764053026', 'snenanded.itcell@maharashtra.gov.in'),
(35, 'Nanded', 'Niraj Kulkarni', 'Network Engineer', 'Biloli', 'Deglur', '', '9860720771', 'ne6nanded.itcell@maharashtra.gov.in'),
(36, 'Nanded', 'Anup Shinde', 'Network Engineer', 'Bhokar', '', 'MUDKHED', '9922895942', 'anupshinde94@gmail.com'),
(37, 'Nanded', 'Rahul Gavade', 'Network Engineer', 'Umri', 'Mahur', '', '9423222276', 'ne3nanded.itcell@maharashtra.gov.in'),
(38, 'Nanded', 'Prasanjeet Balsane', 'Network Engineer', 'Loha', '', '', ' 70399 07937 / 87884 36481', 'prasenjeet.balsane@gmail.com'),
(39, 'Nanded', 'Rajesh Waghmare(left Job)', 'Network Engineer', 'Mokhed', '', '', '8149642228', 'ne1nanded.itcell@maharashtra.gov.in'),
(40, 'Nanded', 'Shriram Tate', 'Network Engineer', 'Mokhed', '', '', '98908 92142', 'shriramtate@gmail.com'),
(41, 'Nanded', 'Vikas Ravate', 'Network Engineer', 'Hadgaon', 'Himayat Nagar', '', '9028004999', 'ne2nanded.itcell@maharashtra.gov.in'),
(42, 'Nanded', 'Sarvesh Tiwari(SHIFTED TO TELANGANA)', 'Network Engineer', 'Biloli', '', '', '9340943090', ''),
(43, 'Wardha', 'MR.SHAHJAD H. SHAIKH', 'DPM', 'Seloo', 'Wardha', '', '7738535288', 'dpmwardha.itcell@maharashtra.gov.in'),
(44, 'Wardha', 'MR. Roshan Lokhande', 'Project Lead (PL)', 'Arvi', '', '', '9096397483', 'dplwardha.itcell@maharashtra.gov.in'),
(45, 'Wardha', 'MR.Sachin Taksande', 'Network Engineer 1', 'Samudrapur', '', '', '9975345447', 'ne1wardha.itcell@maharashtra.gov.in'),
(46, 'Wardha', 'MR.Nishant Wankhede', 'Network Engineer 2', 'Hinganghat', '', '', '9763358456', 'ne2wardha.itcell@maharashtra.gov.in'),
(47, 'Wardha', 'MR.Hemant kadamdhad', 'Network Engineer 3', 'Karanja', '', '', '8055249214', 'ne3wardha.itcell@maharashtra.gov.in'),
(48, 'Washim', 'Mr. Juned Shaikh ', 'DPM', 'All Taluka', '', '', '9326772447', 'dpmwashim.itcell@maharashtra.gov.in/edpm.washim@maharashtra.gov.in'),
(49, 'Washim', 'Mr. Dipak Wagh ', 'Project Lead (PL)', 'Risod ', '', '', '8668977955', 'dplwashim.itcell@maharashtra.gov.in/ wagh.dipak79@gmail.com'),
(50, 'Washim', 'Mr. Mohan Pande ', 'Senior Network Engineer', 'Washim ', '', '', '8830752142', 'snewashim.itcell@maharashtra.gov.in/ pande.mohan62@gmail.com'),
(51, 'Washim', 'Jayant Belsare ', 'Network Engineer 1', 'Malegaon ', '', '', '9860661169', 'belsarejayant1990@gmail.com'),
(52, 'Washim', 'Khushal Palaskar ', 'Network Engineer 2', 'Karanja ', 'Manora', '', '7755993521', 'krpalaskar@gmail.com'),
(53, 'Yavatmal', 'Sandeep Warudkar', 'DPM', 'All Taluka', '', '', '8999553792', 'edpm.yavatmal@maharashtra.gov.in'),
(54, 'Yavatmal', 'Bhushan Mehare', 'Project Lead (PL)', 'All Taluka', '', '', '8087921525', 'dplyavatmal.itcell@maharashtra.gov.in'),
(55, 'Yavatmal', 'Vijay Chotpagar', 'Sr.Network Engineer', 'Darwha', '', '', '9922449443', 'sneyavatmal.itcell@maharashtra.gov.in'),
(56, 'Yavatmal', 'Milind Uplenchwar', 'Network Engineer 1', 'Yavatmal', 'Arni', '', '8087900369', 'ne1yavatmal.itcell@maharashtra.gov.in'),
(57, 'Yavatmal', 'Rohit Bhore', 'Network Engineer 2', 'Ralegaon', 'Kalamb (4 GP)', '', '9561850054', 'rohitbhore33@gmail.com'),
(58, 'Yavatmal', 'Tejas Shukla', 'Network Engineer 3', 'Ghatanji', 'Pandharkawada', '', '9766863563', 'tejas21shukla@gmail.com'),
(59, 'Yavatmal', 'Samir Vithalkar', 'Network Engineer 4', 'Maregaon', 'Wani', '', '7620912405', 'svithalkar923@gmail.com'),
(60, 'Yavatmal', 'Prashant Raut', 'Network Engineer 5', 'Digras', 'Pusad', '', '8888019235', 'rautprashant1312@gmail.com'),
(61, 'Yavatmal', 'Sanjay Lodam', 'Network Engineer 6', 'Mahagaon', 'Umarkhed', '', '9767058415', 'sanjaylodam@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `sia_central_team`
--

CREATE TABLE `sia_central_team` (
  `SN` int(100) NOT NULL,
  `Name of Employee` varchar(1000) NOT NULL,
  `Contact Number` varchar(1000) NOT NULL,
  `Email ID` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sia_central_team`
--

INSERT INTO `sia_central_team` (`SN`, `Name of Employee`, `Contact Number`, `Email ID`) VALUES
(0, 'Name of Employee ', 'Contact Number', 'Email ID'),
(1, 'Karthikeyan K', '9366693606', 'karthikeyan.k@mahait.org'),
(2, 'Rajesh More', '9321558034', 'rajesh.more@mahait.org'),
(3, 'Ramesh Rajbhar', '9702745228', 'ramesh.rajbhar@mahait.org'),
(4, 'Shaik  Basha', '9769465869', 'shaik.basha@mahait.org'),
(5, 'Mohammed Parve', '9664639862', 'mohammed.parve@mahait.org'),
(6, 'Priti Vilas Berde', '9029229784', 'priti.berde@mahait.org'),
(7, 'Ketan Mhatre', '9004417449', 'ketan.mhatre@mahait.org'),
(8, 'Dipesh Mistry', '9870189835', 'dipesh.mistry@mahait.org'),
(9, 'Prasad Chavan', '8975313145', 'prasad.chavan@mahait.org'),
(10, 'Prarthana Tandel', '9561382222', 'prarthana.tandel@mahait.org'),
(11, 'Mohini Jadhav', '9224303573', 'mohini.jadhav@mahait.org'),
(12, 'Priyanka Kamthe', '9870867632', 'priyanka.kamthe@mahait.org'),
(13, 'Datta Narkar', '8767771324', ''),
(14, 'Brijeshkumar Yadav', '9321215051', 'Brijeshkumar.Yadav@mahait.org'),
(15, 'Rupesh Salvi', '9867306132', 'rupesh.salvi@pwc.com'),
(16, 'Abhishek Dixit', '9833837619', 'abhishek.b.dixit@pwc.com'),
(17, 'Yashpal Saimbi', '9820734791', 'yashpal.saimbi@pwc.com'),
(18, 'Aastha Anand', '9840103220', 'aastha.anand@pwc.com'),
(19, 'Sooraj Krishnan', '', 'sooraj.krishnan@pwc.com'),
(20, 'Murali Kishore', '8304830414', 'murali.kishore@pwc.com'),
(21, 'Vinod Ravindran', '8086833109', 'vinod.ravindran.tpr@in.pwc.com'),
(22, 'Abhay Gabhiye', '9850601332', 'abhay.g@aksenttechserv.com'),
(23, 'Ramkrishna Shukla', '8268423179', 'ramkrishna.shukla@aksenttechserv.com'),
(24, 'Barun Shukla', '9773980380', 'barun.shukla@aksenttechserv.com'),
(25, 'Sanjay KulKarni', '8080001338', 'sanjay.kulkarni@aksenttechserv.com'),
(26, 'Anil Mohrir', '9004495510', 'anilkumar.mohrir@sterlite.com'),
(27, 'Deepak Jabade', '8779132378', 'shreeram.jabade@stltech.in'),
(28, 'Prashant Jeph', '7208605798', 'prashantjeph@tcil.net.in'),
(29, 'Yogesh Khedekar', '9821759976', 'yogesh.egov@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`) VALUES
(1, 'Elias Abdurrahman', 'eliasfsdev@gmail.com', '$2y$10$Nqq/y251QX2Ccvb1Ax7hUuMqQSkG3yRLCxN2KPdetnSP3oaXVH70a'),
(2, 'Sagar Kamble', 'sagar.kamble@aksenttechserv.com', '$2y$10$aVSdaaxvD2wkoo6ujTV31Oyz4PASoWRVvMx1ONhNF/2ZB7Ny3VEbK'),
(3, 'Ganesh Yadav', 'ganesh.yadav@aksenttechserv.com', '$2y$10$1VsvYroC8zzPFJshsus8Xec32oS7cysomDLFYPXsu1Iea00kGqYgG'),
(4, 'Arvind V', 'arvind.v@aksenttechserv.com', '$2y$10$zqeqVD3rnscWjPly77iuvuJ6QJh0wYAPM2anmRc.6jqvShyzTIRUK'),
(5, 'Zaid Mohammad Shaikh', 'zaid.shaikh@aksenttechserv.com', '$2y$10$fFmiDeALOg38yFJqibvKbuPDREZTRH92.oEkvJNqW1p3K0lgfgDMO'),
(6, 'Suraj Modi', 'suraj.modi@aksenttechserv.com', '$2y$10$YfhyMM3LhmtRROeewafI6.YGxcuBF7XzBTBVdMLXX5ifxy7rIYRgu'),
(7, 'Akshay Roman', 'akshay.roman@aksenttechserv.com', '$2y$10$E1f/T8Yvbm5ADR7Daczvje0qr0Et4xT5JyT3bxoz.Z4asOc41Rilu'),
(8, 'Vishal Chaudhary', 'vishal.chaudhary@aksenttechserv.com', '$2y$10$B8RF7SHSPMXzpLgqhT/rr.mY5LeOFezlCWXoG29hPfKFWv.31H7te'),
(9, 'VIP - Pal', 'vipin.pal@aksenttechserv.com', '$2y$10$rjOindMi1j2mDuLnuTit2.M6kYxVGxNOvEFGh0Si.WqEfnsHpDcPq'),
(10, 'Umesh Jadhav', 'umesh.jadhav@aksenttechserv.com', '$2y$10$OaSvAZUfwVwJiUdfX9awE.TX/SlvWiuixUMrtu98a3bIpRZr5COEm'),
(11, 'Ranjit Singh Bhullar', 'ranjitsingh.bhuller@aksenttechserv.com', '$2y$10$28TNTE3HqDop/Bm6J.jBE.5wgjsYoO/ICx8zXvqaXT5U81tYUIpQm'),
(12, 'Minal Mohite', 'minal.mohite@aksenttechserv.com', '$2y$10$Mc9oPAiq2InZUgNMdggbgeX8fxcCx2IBQmRzTP2egGoExRmfnDjAW'),
(13, 'Prathmesh Kawad', 'prathmesh.kawad@aksenttechserv.com', '$2y$10$5F7zLK9OhWwTttdWMvcivOGzIRCoS1u0aadckeD/T6ONxKTKhy1VO'),
(14, 'Sushmita Yadav', 'sushmita.yadav@aksenttechserv.com', '$2y$10$5JyfQtQhTmjzRGSc7GUp1.PwyCJWvX95onzO2nA2pZ9QaoGTZKlye'),
(15, 'Monika Jadhav', 'monika.jadhav@aksenttechserv.com', '$2y$10$a8fvyY1Pi57ST6pcVyq6BeBWiZF/V/72eVBy8AN3VvVRr69HANLw6'),
(16, 'Parag Vaidya', 'parag.vaidya@aksenttechserv.com', '$2y$10$VuLwdmQtc2V9TvjypJ8SEecdeHrVAg4R0F42qQQk/ctP.OfTi8vAm'),
(17, 'Dakshata Patil', 'dakshata.patil@aksenttechserv.com', '$2y$10$m/hfIxrGkpEiyZz1cegNYuSopj1vbzJh6f24WmmSETh2owwhGzFry'),
(18, 'Prajakta Waydande', 'prajakta.waydande@aksenttechserv.com', '$2y$10$mPMr8us.fPJ7GFbmAXKeQuczqllS1ypgvr/f65iYYos/ZHA7Qy3R2');

-- --------------------------------------------------------

--
-- Table structure for table `website_all`
--

CREATE TABLE `website_all` (
  `SN` int(255) NOT NULL,
  `Name` varchar(1000) NOT NULL,
  `Address` varchar(1000) NOT NULL,
  `Abbreviations` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `website_all`
--

INSERT INTO `website_all` (`SN`, `Name`, `Address`, `Abbreviations`) VALUES
(1, 'NETWORK NODE MANAGER i', 'http://nmsqadbp1.mahait.com/nnm/', 'NNMi'),
(2, 'SERVIVE MANAGER', 'http://10.9.54.11/SM/index.do', 'SM'),
(3, 'OPERATIONS BRIDGE MANAGER', 'http://nmdopmngrappp1.mahait.com/topaz/login.jsp?penInNewWindow=false&if_redirect=true&portlet_url=%2Fopr-web%2Fframework%2Fapp%3F%23/myWorkspace/', 'OBM'),
(4, 'ASSET MANAGER', 'http://10.9.55.13:8080/AssetManager/cwc/aclogin.jsp?conversationContext=1', 'AM'),
(5, 'NMS NODES', 'http://10.9.55.24:8081/nnmnew/NMS_Nodes.php', 'NMS Node'),
(6, 'NETWORK AUTOMATION', 'https://nmsnetautdb1.mahait.com/statistics.dashboard.htm', 'NA'),
(7, 'MICROFOCUS', 'https://my.microfocus.com/signin', 'Microfocus');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
