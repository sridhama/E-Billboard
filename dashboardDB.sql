SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `dashboardDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `cafe0`
--

CREATE TABLE `cafe0` (
  `uuid` int(11) NOT NULL,
  `item` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cafe0`
--

INSERT INTO `cafe0` (`uuid`, `item`) VALUES
(1, 'C1 - Item 0'),
(2, 'C1 - Item 1'),
(3, 'C1 - Item 2'),
(4, 'C1 - Item 3'),
(5, 'C1 - Item 4'),
(6, 'C1 - Item 5'),
(7, 'C1 - Item 6');

-- --------------------------------------------------------

--
-- Table structure for table `cafe1`
--

CREATE TABLE `cafe1` (
  `uuid` int(11) NOT NULL,
  `item` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cafe1`
--

INSERT INTO `cafe1` (`uuid`, `item`) VALUES
(1, 'C2 - Item 0'),
(2, 'C2 - Item 1'),
(3, 'C2 - Item 2'),
(4, 'C2 - Item 3'),
(5, 'C2 - Item 4'),
(6, 'C2 - Item 5'),
(7, 'C2 - Item 6');

-- --------------------------------------------------------

--
-- Table structure for table `csc`
--

CREATE TABLE `csc` (
  `uuid` int(2) NOT NULL,
  `day` tinyint(1) NOT NULL,
  `time` varchar(16) NOT NULL,
  `class` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `csc`
--

INSERT INTO `csc` (`uuid`, `day`, `time`, `class`) VALUES
(1, 1, '09:00 - 09:50', 'No Class'),
(2, 1, '10:00 - 10:50', 'Design & Analysis of Algorithms '),
(3, 1, '11:00 - 11:50', 'Computer Organization Lab'),
(4, 1, '12:00 - 12:50', 'Emerging Material Sciences'),
(5, 1, '13:00 - 13:50', 'Lunch'),
(6, 1, '14:00 - 14:50', 'No Class'),
(7, 1, '15:00 - 15:50', 'Object Oriented Programming'),
(8, 1, '16:00 - 16:50', 'Database Systems');

-- --------------------------------------------------------

--
-- Table structure for table `mec`
--

CREATE TABLE `mec` (
  `uuid` int(2) NOT NULL,
  `day` tinyint(1) NOT NULL,
  `time` varchar(16) NOT NULL,
  `class` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mec`
--

INSERT INTO `mec` (`uuid`, `day`, `time`, `class`) VALUES
(1, 1, '09:00 - 09:50', 'Thermodynamics'),
(2, 1, '10:00 - 10:50', 'Probability & Statistics'),
(3, 1, '11:00 - 11:50', 'No Class'),
(4, 1, '12:00 - 12:50', 'Lunch'),
(5, 1, '13:00 - 13:50', 'Properties of Materials'),
(6, 1, '14:00 - 14:50', 'No Class'),
(7, 1, '15:00 - 15:50', 'Workshop'),
(8, 1, '16:00 - 16:50', 'Emerging Life Sciences');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uuid` int(4) NOT NULL,
  `roll_no` varchar(10) NOT NULL,
  `name` varchar(64) NOT NULL,
  `cafeteria` varchar(5) NOT NULL,
  `branch` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uuid`, `roll_no`, `name`, `cafeteria`, `branch`) VALUES
(1, '1', 'Sridhama Prakhya', 'cafe0', 'csc'),
(2, '2', 'John Doe', 'cafe1', 'mec');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cafe0`
--
ALTER TABLE `cafe0`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `cafe1`
--
ALTER TABLE `cafe1`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `csc`
--
ALTER TABLE `csc`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `mec`
--
ALTER TABLE `mec`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uuid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cafe0`
--
ALTER TABLE `cafe0`
  MODIFY `uuid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `cafe1`
--
ALTER TABLE `cafe1`
  MODIFY `uuid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `csc`
--
ALTER TABLE `csc`
  MODIFY `uuid` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `mec`
--
ALTER TABLE `mec`
  MODIFY `uuid` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uuid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
