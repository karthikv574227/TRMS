
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 855555555, 'adminuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-10-04 06:10:04');

CREATE TABLE `tblquery` (
  `id` int(11) NOT NULL,
  `teacherId` int(11) DEFAULT NULL,
  `fName` varchar(200) DEFAULT NULL,
  `emailId` varchar(200) DEFAULT NULL,
  `mobileNumber` bigint(10) DEFAULT NULL,
  `Query` mediumtext DEFAULT NULL,
  `queryDate` timestamp NULL DEFAULT current_timestamp(),
  `teacherNote` mediumtext DEFAULT NULL

  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
ENGINE=InnoDB DEFAULT CHARSET=latin1;
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `tblquery` (`id`, `teacherId`, `fName`, `emailId`, `mobileNumber`, `Query`, `queryDate`, `teacherNote`) VALUES
(2, 1, 'karthik', 'karthik@gmail.com', 1122336655, 'This is for testing purpose. Test Query', '2022-03-12 10:03:49', 'This is for testing. Test notes');

CREATE TABLE `tblsubjects` (
  `ID` int(10) NOT NULL,
  `Subject` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--

--

INSERT INTO `tblsubjects` (`ID`, `Subject`, `CreationDate`) VALUES
(1, 'DBMS', '2023-07-23 06:11:06'),
(2, 'operating system', '2023-07-07 06:11:19'),
(3, 'computer network', '2023-10-07 06:11:32'),
(4, 'java', '2023-07-07 06:11:41'),




CREATE TABLE `tblteacher` (
  `ID` int(10) NOT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Picture` varchar(200) NOT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `Qualifications` varchar(120) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `TeacherSub` varchar(120) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `teachingExp` varchar(10) DEFAULT NULL,
  `JoiningDate` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `isPublic` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-
--

INSERT INTO `tblteacher` (`ID`, `Name`, `Picture`, `Email`, `MobileNumber`, `password`, `Qualifications`, `Address`, `TeacherSub`, `description`, `teachingExp`, `JoiningDate`, `RegDate`, `isPublic`) VALUES
(1, 'meghana', '171bb7da1ad6f5b744af8e1693225e661647076737.png', 'meghana@gmail.com', 1234567890, '5c428d8875d2948607f3e3fe134d71b4', 'B.Tech, M.tech', 'H 343 Wisdom Society Noida 20301', 'Chemistry', 'NA', '5', '2022-01-01', '2022-03-05 12:41:37', 1),
(2, 'karthik', 'ebcd036a0db50db993ae98ce380f64191647072141.png', 'karthik02@gmail.com', 1425369874, 'f925916e2754e5e03f75dd58a5733251', 'BSC, MSC', 'New Delhi India', 'Science', 'NA', '10', '2018-01-01', '2022-03-12 08:02:21', 1);

--
--
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
ALTER TABLE `tblquery`
  ADD PRIMARY KEY (`id`);

--

--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`ID`);

--

--
ALTER TABLE `tblteacher`
  ADD PRIMARY KEY (`ID`);

--

--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--

--
ALTER TABLE `tblquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--

--
ALTER TABLE `tblsubjects`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;


--
ALTER TABLE `tblteacher`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;


