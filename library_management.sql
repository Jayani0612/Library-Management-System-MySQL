-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2026 at 05:31 PM
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
-- Database: `library_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `BookID` varchar(20) NOT NULL,
  `Title` varchar(200) NOT NULL,
  `Author` varchar(100) DEFAULT NULL,
  `Language` varchar(50) DEFAULT NULL,
  `PublishedYear` int(11) DEFAULT NULL,
  `CategoryID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`BookID`, `Title`, `Author`, `Language`, `PublishedYear`, `CategoryID`) VALUES
('B001', 'Introduction to Algorithms', 'Thomas H. Cormen', 'English', 2009, 'C001'),
('B002', 'A Brief History of Time', 'Stephen Hawking', 'English', 1988, 'C002'),
('B003', 'Madol Doova', 'Martin Wickramasinghe', 'Sinhala', 1947, 'C003'),
('B004', 'The Story of Ceylon', 'S. A. W. Mottau', 'English', 1950, 'C004'),
('B005', 'Clean Code', 'Robert C. Martin', 'English', 2008, 'C001');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CategoryID` varchar(20) NOT NULL,
  `CategoryName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CategoryID`, `CategoryName`) VALUES
('C001', 'Programming'),
('C002', 'Science'),
('C003', 'Novels'),
('C004', 'History'),
('C005', 'Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `IssueID` int(11) NOT NULL,
  `BookID` varchar(20) DEFAULT NULL,
  `MemberID` varchar(20) DEFAULT NULL,
  `LibrarianID` varchar(20) DEFAULT NULL,
  `IssueDate` date DEFAULT NULL,
  `ReturnDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`IssueID`, `BookID`, `MemberID`, `LibrarianID`, `IssueDate`, `ReturnDate`) VALUES
(1, 'B001', 'M001', 'L001', '2024-06-01', '2024-06-15'),
(2, 'B002', 'M002', 'L002', '2024-06-05', '2024-06-19'),
(3, 'B003', 'M003', 'L003', '2024-06-10', '2024-06-24'),
(4, 'B004', 'M004', 'L004', '2024-06-15', NULL),
(5, 'B005', 'M005', 'L005', '2024-06-20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `librarian`
--

CREATE TABLE `librarian` (
  `LibrarianID` varchar(20) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `PhoneNumber` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `librarian`
--

INSERT INTO `librarian` (`LibrarianID`, `Name`, `Email`, `PhoneNumber`) VALUES
('L001', 'Sunil Perera', 'sunil@library.com', '0711234567'),
('L002', 'Nimali Silva', 'nimali@library.com', '0779876543'),
('L003', 'Kasun Jayawardena', 'kasun@library.com', '0723456789'),
('L004', 'Dilani Weerasinghe', 'dilani@library.com', '0756789012'),
('L005', 'Ranjith Fernando', 'ranjith@library.com', '0789012345');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `MemberID` varchar(20) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `PhoneNumber` varchar(15) DEFAULT NULL,
  `JoinDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`MemberID`, `FirstName`, `LastName`, `Email`, `PhoneNumber`, `JoinDate`) VALUES
('M001', 'Jayani', 'Prarthana', 'jayani@example.com', '0712345678', '2024-01-15'),
('M002', 'Kamal', 'Gunawardena', 'kamal@example.com', '0775551234', '2024-02-10'),
('M003', 'Amali', 'Fernando', 'amali@example.com', '0763334444', '2024-03-05'),
('M004', 'Saman', 'Kumara', 'saman@example.com', '0719998888', '2024-03-20'),
('M005', 'Nethmi', 'Perera', 'nethmi@example.com', '0771112222', '2024-04-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`BookID`),
  ADD KEY `CategoryID` (`CategoryID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `issue`
--
ALTER TABLE `issue`
  ADD PRIMARY KEY (`IssueID`),
  ADD KEY `BookID` (`BookID`),
  ADD KEY `MemberID` (`MemberID`),
  ADD KEY `LibrarianID` (`LibrarianID`);

--
-- Indexes for table `librarian`
--
ALTER TABLE `librarian`
  ADD PRIMARY KEY (`LibrarianID`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`MemberID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `issue`
--
ALTER TABLE `issue`
  MODIFY `IssueID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`CategoryID`);

--
-- Constraints for table `issue`
--
ALTER TABLE `issue`
  ADD CONSTRAINT `issue_ibfk_1` FOREIGN KEY (`BookID`) REFERENCES `book` (`BookID`),
  ADD CONSTRAINT `issue_ibfk_2` FOREIGN KEY (`MemberID`) REFERENCES `member` (`MemberID`),
  ADD CONSTRAINT `issue_ibfk_3` FOREIGN KEY (`LibrarianID`) REFERENCES `librarian` (`LibrarianID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
