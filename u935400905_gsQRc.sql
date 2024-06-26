-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 26, 2024 at 04:54 PM
-- Server version: 10.11.7-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u935400905_gsQRc`
--

-- --------------------------------------------------------

--
-- Table structure for table `Buyer_Registration`
--

CREATE TABLE `Buyer_Registration` (
  `Buyer_id` int(11) NOT NULL,
  `Buyer_fname` varchar(255) NOT NULL,
  `Buyer_lname` varchar(255) NOT NULL,
  `Buyer_address` varchar(255) NOT NULL,
  `Buyer_pnum` int(12) NOT NULL,
  `Buyer_email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Buyer_Registration`
--

INSERT INTO `Buyer_Registration` (`Buyer_id`, `Buyer_fname`, `Buyer_lname`, `Buyer_address`, `Buyer_pnum`, `Buyer_email`, `password`) VALUES
(2, 'Achini', 'Erandi', '162 dambulla road madawala ulpatha mathale', 701261711, 'erandi@gmail.com', '$2y$10$w9R3OGzZZpEFRr67PYNPIepobe5qJKwwDz.GB/tftULgCQ8IxtY9G'),
(3, 'Luthira', 'dissanayeka', 'No.162 dambulla road', 716330921, 'luthiradissanayeka3164@gmail.com', '$2y$10$pBwT2/NkDj/pHkEOrZ639.8CGgGrFG73ysEtP5z0UilgylTBnMmMC'),
(6, 'Achini', 'Imalsha', '120/15,Flower Street,Matale', 701261711, 'achini123@gmail.com', '$2y$10$2q.5WafCEN/ZZhntRMT9weqlvm5T0QL3nUKz5p3k31uxprZDT4g.m');

-- --------------------------------------------------------

--
-- Table structure for table `Items`
--

CREATE TABLE `Items` (
  `Item_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `Item_Name` varchar(255) NOT NULL,
  `Prize` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Category` varchar(255) NOT NULL,
  `Quantity` varchar(255) NOT NULL,
  `Images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Items`
--

INSERT INTO `Items` (`Item_id`, `seller_id`, `Item_Name`, `Prize`, `Description`, `Category`, `Quantity`, `Images`) VALUES
(10, 34, 'Pen', '21', 'Group Project  Java Application', 'Babies & Toys', '21', 'ItemImg/download.png'),
(11, 34, 'example', '00', 'Group Project  Java Application', 'Electronic Items', '20', 'ItemImg/Screenshot 2024-06-24 at 11.59.28.png');

-- --------------------------------------------------------

--
-- Table structure for table `Seller_Registration`
--

CREATE TABLE `Seller_Registration` (
  `seller_id` int(11) NOT NULL,
  `Seller_fname` varchar(255) NOT NULL,
  `Seller_lname` varchar(255) NOT NULL,
  `Seller_address` varchar(255) NOT NULL,
  `Seller_pnum` int(13) NOT NULL,
  `Seller_email` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Seller_Registration`
--

INSERT INTO `Seller_Registration` (`seller_id`, `Seller_fname`, `Seller_lname`, `Seller_address`, `Seller_pnum`, `Seller_email`, `category`, `password`) VALUES
(34, 'Luthira', 'dissanayeka', 'No.162 dambulla road', 716330921, 'luthiradissanayeka3164@gmail.com', 'Electronic Items', '$2y$10$8qVmtb86AKfV7Ls2W3r7FuCVqGTddkdBcEIq2cX8pJfMpfO3gFq.O'),
(35, 'Achini', 'Imalsha', 'Aluwihare , Matale', 701261711, 'erandi@gmail.com', 'Electronic Items', '$2y$10$93Z00mBpIFxZOpETGuaT6u7s8GA8iuexG8flXJV5cZ4qMyRD0tmYq'),
(36, 'Achini', 'Imalsha', '120/15,Flower Street,Matale', 701261711, 'achini123@gmail.com', 'Fashion Items', '$2y$10$9JsR6rS7OawOY097TKL.NeMXoPj2Y/paoViTIEZffqnPm9n43Qxka');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Buyer_Registration`
--
ALTER TABLE `Buyer_Registration`
  ADD PRIMARY KEY (`Buyer_id`);

--
-- Indexes for table `Items`
--
ALTER TABLE `Items`
  ADD PRIMARY KEY (`Item_id`);

--
-- Indexes for table `Seller_Registration`
--
ALTER TABLE `Seller_Registration`
  ADD PRIMARY KEY (`seller_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Buyer_Registration`
--
ALTER TABLE `Buyer_Registration`
  MODIFY `Buyer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Items`
--
ALTER TABLE `Items`
  MODIFY `Item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `Seller_Registration`
--
ALTER TABLE `Seller_Registration`
  MODIFY `seller_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
