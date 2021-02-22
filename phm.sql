-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2020 at 12:38 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phm`
--

-- --------------------------------------------------------

--
-- Table structure for table `addsale`
--

CREATE TABLE `addsale` (
  `Transaction_id` int(11) NOT NULL,
  `Transaction_date` date DEFAULT NULL,
  `batch_no` int(11) DEFAULT NULL,
  `medicine_name` varchar(20) DEFAULT NULL,
  `Qantityofsell` double NOT NULL DEFAULT 0,
  `selling_price` double DEFAULT NULL,
  `Discount` double DEFAULT NULL,
  `vat` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `addsalecmr`
--

CREATE TABLE `addsalecmr` (
  `Transaction_id` int(11) NOT NULL,
  `Transaction_date` date DEFAULT NULL,
  `batch_no` int(11) DEFAULT NULL,
  `medicine_name` varchar(20) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `Qantityofsell` double NOT NULL,
  `selling_price` double DEFAULT NULL,
  `Discount` double DEFAULT NULL,
  `vat` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addsalecmr`
--

INSERT INTO `addsalecmr` (`Transaction_id`, `Transaction_date`, `batch_no`, `medicine_name`, `customer_id`, `Qantityofsell`, `selling_price`, `Discount`, `vat`) VALUES
(103, '2020-04-21', 44776, ' visrol ', 10, 1, 5, 1, 0.1),
(104, '2020-04-21', 0, '', 10, 0, 0, 0, 0),
(105, '2020-04-23', 54112, ' napa ', 10, 20, 19.6078431372549, 3.92156862745098, 11.7647058823529),
(106, '2020-04-23', 0, '', 10, 0, 0, 0, 0),
(107, '2020-04-23', 210, 'dipa', 10, 5, 25, 5, 15.5),
(108, '2020-04-23', 0, '', 10, 0, 0, 0, 0),
(109, '2020-04-24', 210, 'dipa', 10, 6, 30, 12, 24),
(110, '2020-04-24', 0, '', 10, 0, 0, 0, 0),
(111, '2020-04-25', 88774564, ' glizid ', 10, 4, 26.6666666666667, 0, 0),
(112, '2020-04-25', 0, '', 10, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `add_medicine`
--

CREATE TABLE `add_medicine` (
  `medicine_id` int(11) NOT NULL,
  `medicine_name` varchar(20) DEFAULT NULL,
  `generic_name` varchar(20) DEFAULT NULL,
  `batch_no` int(11) DEFAULT NULL,
  `catagory` varchar(20) DEFAULT NULL,
  `dose` double DEFAULT NULL,
  `Quantity` double DEFAULT NULL,
  `manufracturer` varchar(20) DEFAULT NULL,
  `entity_date` date DEFAULT NULL,
  `manufractur_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `buing_price` double DEFAULT NULL,
  `selling_price` double DEFAULT NULL,
  `Box` double DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_medicine`
--

INSERT INTO `add_medicine` (`medicine_id`, `medicine_name`, `generic_name`, `batch_no`, `catagory`, `dose`, `Quantity`, `manufracturer`, `entity_date`, `manufractur_date`, `expire_date`, `buing_price`, `selling_price`, `Box`, `supplier_id`) VALUES
(52, ' minium ', ' fiunarizine ', 3204, ' Tablet ', 5, 50, ' opsonine   pharma ', '2020-04-17', '2019-11-17', '2021-11-17', 50, 1.2, 1, 102),
(53, ' losectil ', ' omeprazole ', 9208, ' Capsul ', 20, 125, ' sk+f ', '2020-04-17', '2019-05-17', '2022-04-17', 600, 0.0466666666666666, 1, 100),
(54, 'esoral', 'esomeprazole', 200, '', 20, 120, 'sk+f', '2020-04-17', '2019-04-17', '2022-04-17', 200, 2.5, 1, 100),
(55, 'reelife', 'chlordiazepoxide', 9023, 'Tablet', 12.5, 40, 'sk+f', '2020-04-17', '2019-10-17', '2022-05-15', 320, 10, 1, 102),
(56, ' napa ', ' paracetamol ', 54112, '  ', 500, 510, ' sk+f ', '2020-04-17', '2020-04-17', '2020-04-17', 408, 0.980392156862745, 1, 102),
(57, 'dipa', 'each film coated', 210, 'Tablet', 10, 30, 'sk+f', '2020-04-17', '2019-04-17', '2022-04-17', 100, 5, 1, 100),
(58, ' visrol ', ' tiemonium methyisul', 44776, ' Tablet ', 50, 50, ' sk+f ', '2020-04-17', '2019-04-17', '2022-04-17', 200, 5, 1, 102),
(59, 'benzit', 'flupentixol', 327, 'Tablet', 10, 5, 'sk+f', '2020-04-17', '2019-04-17', '2022-04-17', 50, 20, 1, 100),
(60, ' glizid ', ' gliclazide ', 88774564, ' Tablet ', 40, 30, ' sk+f ', '2020-04-17', '2019-04-17', '2022-04-17', 100, 6.66666666666667, 1, 100),
(62, 'Stay Gold', 'male sex stimulant ', 48, 'Capsul', 14.29, 4, 'proMedics', '2020-04-27', '2019-01-01', '2021-01-01', 400, 105, 1, 100),
(63, 'fafa', 'fdsf', 45456, 'Tablet', 20, 16, 'fdsfasf', '2020-04-27', '2020-04-21', '2022-04-27', 1680, 112.5, 4, 100);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `phone_number` varchar(11) DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `Address` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `name`, `phone_number`, `Email`, `Address`) VALUES
(10, ' Tain ', ' 0152143263', ' tanvirahmedtain@gma', ' Sarishabari  '),
(11, 'Tanjil', '01937020540', 'hshhshhshds.com', 'Sarishabari'),
(12, 'Tasnimul', '01937020540', 'sdsmdk.com', 'sarishabari'),
(13, 'Tanvir ', '01521432632', 'sdsmdk.com', 'sarishabari');

-- --------------------------------------------------------

--
-- Table structure for table `logintable`
--

CREATE TABLE `logintable` (
  `User_name` varchar(20) DEFAULT NULL,
  `pin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logintable`
--

INSERT INTO `logintable` (`User_name`, `pin`) VALUES
('admin', 1234),
(NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `random2`
--

CREATE TABLE `random2` (
  `medicine_name` varchar(30) DEFAULT NULL,
  `medicine_id` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `qnty` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `random2`
--

INSERT INTO `random2` (`medicine_name`, `medicine_id`, `price`, `qnty`) VALUES
(' minium ', 3204, 1.2, 34.9745098039215),
('losectil', 9208, 23.3333333333333, 34.9745098039215),
(' napa ', 54112, 2.94117647058823, 34.9745098039215),
('esoral', 200, 2.5, 34.9745098039215),
('dipa', 210, 5, 34.9745098039215),
('', 0, 0, 34.9745098039215);

-- --------------------------------------------------------

--
-- Table structure for table `randomaddsale`
--

CREATE TABLE `randomaddsale` (
  `Transaction_id` int(11) NOT NULL,
  `Transaction_date` date DEFAULT NULL,
  `batch_no` int(11) DEFAULT NULL,
  `medicine_name` varchar(20) DEFAULT NULL,
  `Qantityofsell` double NOT NULL,
  `selling_price` double DEFAULT NULL,
  `Discount` double DEFAULT NULL,
  `vat` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `randomaddsale`
--

INSERT INTO `randomaddsale` (`Transaction_id`, `Transaction_date`, `batch_no`, `medicine_name`, `Qantityofsell`, `selling_price`, `Discount`, `vat`) VALUES
(95, '2020-04-25', 9208, 'losectil', 1, 5.83333333333333, 1.16666666666667, 1.16666666666667),
(96, '2020-04-25', 54112, ' napa ', 1, 0.980392156862745, 0.196078431372549, 0.196078431372549),
(97, '2020-04-25', 44776, ' visrol ', 1, 5, 1, 1),
(98, '2020-04-25', 44776, ' visrol ', 1, 5, 1, 1),
(99, '2020-04-25', 54112, ' napa ', 1, 0.980392156862745, 0.196078431372549, 0.196078431372549),
(100, '2020-04-25', 9208, 'losectil', 1, 5.83333333333333, 1.16666666666667, 1.16666666666667),
(101, '2020-04-25', 210, 'dipa', 1, 5, 1, 1),
(102, '2020-04-25', 210, 'dipa', 4, 20, 1, 1.2);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `phone_number` varchar(11) DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `Address` varchar(60) DEFAULT NULL,
  `designation` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `name`, `phone_number`, `Email`, `Address`, `designation`) VALUES
(100, 'fdfd', '01521432632', 'csdsas.com', 'sdasdas', 'asdasdasd'),
(102, 'Tanjil', '01311844241', 'asasd.com', 'dasda', 'Sr');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addsale`
--
ALTER TABLE `addsale`
  ADD PRIMARY KEY (`Transaction_id`),
  ADD UNIQUE KEY `Transaction_id` (`Transaction_id`,`Transaction_date`,`batch_no`,`medicine_name`,`Qantityofsell`,`selling_price`,`Discount`,`vat`);

--
-- Indexes for table `addsalecmr`
--
ALTER TABLE `addsalecmr`
  ADD PRIMARY KEY (`Transaction_id`);

--
-- Indexes for table `add_medicine`
--
ALTER TABLE `add_medicine`
  ADD PRIMARY KEY (`medicine_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `randomaddsale`
--
ALTER TABLE `randomaddsale`
  ADD PRIMARY KEY (`Transaction_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addsale`
--
ALTER TABLE `addsale`
  MODIFY `Transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `addsalecmr`
--
ALTER TABLE `addsalecmr`
  MODIFY `Transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `add_medicine`
--
ALTER TABLE `add_medicine`
  MODIFY `medicine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `randomaddsale`
--
ALTER TABLE `randomaddsale`
  MODIFY `Transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
