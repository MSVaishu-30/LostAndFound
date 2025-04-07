-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2024 at 07:30 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lostandfound`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` varchar(255) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `description`) VALUES
('cat1', 'Electronics', 'includes items such as smartphones, laptops, and tablets'),
('cat10', 'Miscellaneous', 'for items that do not fit into other categories'),
('cat2', 'Clothing', 'includes various types of apparels such as shirts, pants, and dresses'),
('cat3', 'Pets', 'for reporting lost pets such as cats, dogs or birds'),
('cat4', 'Documents', 'includes important documents like ids, passport and certificates'),
('cat5', 'Accesories', 'Includes items like bags, belts, and hats'),
('cat6', 'jewellary', 'includes items such as rings, necklaces, and bracelets'),
('cat7', 'Books', 'includes various types of books such as novels, textbooks, magazines'),
('cat8', 'Toys', 'includes toys for  children such as action figures, puzzles, and board games'),
('cat9', 'Sporting', 'includes sports equipments like balls, bats, and rackets');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` varchar(255) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `location_id` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('lost','found') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `user_id`, `category_id`, `location_id`, `item_name`, `description`, `status`) VALUES
('item1', 'gowthami123', 'cat6', 'Location3\r\n', 'Earrings', 'gold earrings ', 'lost'),
('item10', 'chethu123', 'cat1', 'Location4', 'phone', 'iphone 14', 'lost'),
('item1234', 'deeksha123', 'cat6', 'Location2', 'bracelet', 'near 1st floor steps', 'lost'),
('item123456', 'chethu123', 'cat1', 'loc11', 'phone', 'nothing', 'found'),
('item14', 'chethu123', 'cat10', 'loc11', 'car', 'left at mysur palace', 'lost'),
('item15', 'gowthu123', 'cat6', 'Location4', 'bangles', 'i lost bangle at mg road food street at stall number 30', 'lost'),
('item2', 'chethu123', 'cat2', 'location1', 'lehenga set', 'orange colour lehenga with printed design', 'lost'),
('item3', 'amulya12', 'cat6', 'Location3\r\n', 'Earrings', 'i found the earrings in vishal mart', 'found'),
('item4', 'divya123', 'cat5', 'Location4', 'laptop bag', 'black colours hp laptop bag', 'lost');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `location_id` varchar(255) NOT NULL,
  `location_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`location_id`, `location_name`, `description`) VALUES
('loc11', 'bangalore', 'nothing'),
('location1', 'malnad coffee shop', 'Near the entrance of the coffee shop'),
('Location2', 'MCE College library', 'on the ground floor near the book shelves'),
('Location3\r\n', 'vishal mart', 'in the 2nd floor kids section near the slippers shelves'),
('Location4', 'Food Court', 'near the mg road food court stall no 36'),
('Location5', 'Bus Stand', 'near the new bus stand exit gate'),
('Location6', 'New location', 'give place description with location');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `password`, `email`) VALUES
('amulya12', 'Amulya', 'amulya@123', 'amulya@gmail.com'),
('ana', 'anagha', 'ana', 'anagh@gmail.com'),
('anu123', 'Ananya', 'ananya123', 'ananya@gmail.com'),
('ayesha12', 'Ayesha', 'ayesha@123', 'ayesha@gmail.com'),
('chethu123', 'Chethana m', 'chethana123', 'chethu@gmail.com'),
('deeksha123', 'Deeksha', 'deeksha123', 'deeksha@gmail.com'),
('dhanya12', 'dhanya', 'dhanya12', 'dhanya@gmail.com'),
('divya123', 'Divya', 'jyothi123', 'divya@123'),
('gowthami123', 'Gowthami M S', 'gowthami@123', 'gowthamims123@gmail.com'),
('gowthu123', 'Gowthami', 'vaishu', 'vaishu2003@gmail.com'),
('Hithaishi123', 'Hithaisi', 'hitha@123', 'hithaisi@gmail.com'),
('sangeetha123', 'sangeetha ravishankar', 'sangiii123', 'sangeetha1234@gmail.com'),
('vaishu123', 'vaishnavi', 'vaishu123', 'vaishu@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `items_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`),
  ADD CONSTRAINT `items_ibfk_3` FOREIGN KEY (`location_id`) REFERENCES `locations` (`location_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
