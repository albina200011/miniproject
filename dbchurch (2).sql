-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 05, 2021 at 12:50 PM
-- Server version: 5.5.20
-- PHP Version: 5.3.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbchurch`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `Username` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`Username`, `Password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_certificatemaster`
--

CREATE TABLE IF NOT EXISTS `tbl_certificatemaster` (
  `CertificateId` int(11) NOT NULL AUTO_INCREMENT,
  `CertificateType` varchar(30) NOT NULL,
  `CertificateName` varchar(30) NOT NULL,
  `CDescription` varchar(50) NOT NULL,
  `CStatus` int(11) NOT NULL,
  PRIMARY KEY (`CertificateId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_certificatemaster`
--

INSERT INTO `tbl_certificatemaster` (`CertificateId`, `CertificateType`, `CertificateName`, `CDescription`, `CStatus`) VALUES
(1, 'Baptism', 'Baptism', 'sddfvm', 0),
(2, 'Holycommunion', 'Holycommunion', 'fhjh', 0),
(3, 'Wedding', 'Wedding', 'DDDDDD', 0),
(4, 'Death', 'Death', 'DFhuhiu', 0),
(5, 'GHJI', 'FGJKL', 'FYugiuh', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_certificaterequest`
--

CREATE TABLE IF NOT EXISTS `tbl_certificaterequest` (
  `CertRequestId` int(11) NOT NULL AUTO_INCREMENT,
  `CMId` int(11) NOT NULL,
  `CType` varchar(30) NOT NULL,
  `RequestPurpose` varchar(30) NOT NULL,
  `RequriedDate` date NOT NULL,
  `CertStatus` varchar(20) NOT NULL,
  PRIMARY KEY (`CertRequestId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tbl_certificaterequest`
--

INSERT INTO `tbl_certificaterequest` (`CertRequestId`, `CMId`, `CType`, `RequestPurpose`, `RequriedDate`, `CertStatus`) VALUES
(6, 10, '1', 'DFSTGS', '2021-01-12', 'accepted'),
(7, 11, '2', 'FRWR', '2021-01-13', 'accepted'),
(8, 12, '3', 'DFE', '2021-01-22', 'accepted'),
(9, 25, '4', 'DRGTER', '2021-01-21', 'accepted'),
(10, 27, '4', 'GHFGJHGJH', '2021-01-13', 'accepted'),
(11, 28, '1', 'GHFHJ', '2021-01-13', 'accepted'),
(12, 29, '3', 'FJGJ', '2021-01-13', 'accepted'),
(13, 28, '2', 'HFJYJY', '2021-01-13', 'accepted');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_death`
--

CREATE TABLE IF NOT EXISTS `tbl_death` (
  `DeathId` int(11) NOT NULL AUTO_INCREMENT,
  `DeathDate` date NOT NULL,
  `DeathFdate` date NOT NULL,
  `DPriest` varchar(50) NOT NULL,
  `DChurch` varchar(50) NOT NULL,
  `Comment` varchar(60) NOT NULL,
  `DMId` int(11) NOT NULL,
  `DeathStatus` varchar(20) NOT NULL,
  PRIMARY KEY (`DeathId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_death`
--

INSERT INTO `tbl_death` (`DeathId`, `DeathDate`, `DeathFdate`, `DPriest`, `DChurch`, `Comment`, `DMId`, `DeathStatus`) VALUES
(1, '2020-10-14', '2020-10-15', 'Frmathew', 'StMarys', 'GFDRD', 13, 'accepted'),
(2, '2020-11-11', '2020-11-10', 'Frmathew', 'StMarys', 'Dkhiljli', 13, 'rejected'),
(3, '2020-12-02', '2020-12-05', 'TRUT', 'GHFKUFKYU', 'TYUTILY', 23, 'accepted'),
(4, '2021-01-04', '2021-01-05', 'Frmathew', 'StMarys', '', 27, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_engagement`
--

CREATE TABLE IF NOT EXISTS `tbl_engagement` (
  `EngId` int(11) NOT NULL AUTO_INCREMENT,
  `EngMID` int(11) NOT NULL,
  `EngPN` varchar(30) NOT NULL,
  `EngDate` date NOT NULL,
  `EngPFN` varchar(30) NOT NULL,
  `EngPMN` varchar(30) NOT NULL,
  `EngPBN` varchar(20) NOT NULL,
  `EngPriest` varchar(30) NOT NULL,
  `EngChurch` varchar(50) NOT NULL,
  `EngWitness` varchar(30) NOT NULL,
  `EngStatus` varchar(20) NOT NULL,
  PRIMARY KEY (`EngId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_engagement`
--

INSERT INTO `tbl_engagement` (`EngId`, `EngMID`, `EngPN`, `EngDate`, `EngPFN`, `EngPMN`, `EngPBN`, `EngPriest`, `EngChurch`, `EngWitness`, `EngStatus`) VALUES
(1, 16, 'Beena', '2020-11-02', 'Joy', 'Mary', 'Susan', 'Frmathew', 'StThomas', 'Reji', 'accepted'),
(3, 11, 'Benny', '2020-10-21', 'Biju', 'Shiji', 'Anna', 'Frmathew', 'StMarys', 'Binoy', 'accepted'),
(4, 22, 'Shhguk', '2020-11-10', 'Joy', 'Mary', 'Shfghku', 'Frmathew', 'StThomas', 'Fkhk', 'accepted'),
(5, 23, 'FYT', '2020-12-01', 'DFST', 'DGSRT', 'DFDST', 'EREWT', 'SRERT', 'SRAER', 'accepted'),
(6, 23, 'GFYGI', '2020-12-02', 'FHGFY', 'GJFYGI', 'HJGGU', 'BVH', 'JGFKYG', 'BMVHKGI', 'accepted'),
(7, 19, 'Shhguk', '2020-12-14', 'Joy', 'Mini', 'Susan', 'Frmathew', 'StThomas', 'SFE', 'Pending'),
(8, 28, 'Bobby', '2021-01-05', 'Mathew', 'Roseamma', 'Mathew', 'Frmathew', 'StThomas', 'Reji', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_family`
--

CREATE TABLE IF NOT EXISTS `tbl_family` (
  `FamilyId` int(11) NOT NULL AUTO_INCREMENT,
  `FamilyRegNo` int(11) NOT NULL,
  `WId` int(11) NOT NULL,
  `FamilyName` varchar(30) NOT NULL,
  `FamilyHead` varchar(20) NOT NULL,
  `Contact` bigint(11) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Pwd` varchar(20) NOT NULL,
  `FamilyStatus` int(11) NOT NULL,
  PRIMARY KEY (`FamilyId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbl_family`
--

INSERT INTO `tbl_family` (`FamilyId`, `FamilyRegNo`, `WId`, `FamilyName`, `FamilyHead`, `Contact`, `UserName`, `Pwd`, `FamilyStatus`) VALUES
(1, 1001, 1, 'kollamparambil', 'Francis', 9134678456, 'Francis', '1001', 0),
(2, 1002, 2, 'Elavumootil', 'Thomas', 9134678456, 'alen', '1002', 0),
(3, 1003, 1, 'Nalunadiyil', 'Chacko', 8134568767, 'Chacko', '1003', 0),
(4, 1004, 2, 'Nadakkal', 'Joesph', 7567875467, 'joesph', '1004', 0),
(5, 1005, 1, 'nnn', 'Daniel', 7856987658, 'daniel', '1005', 0),
(6, 1006, 1, 'abcd', 'joby', 9978678765, ' abcd', '1006', 1),
(7, 1007, 4, 'Mavali', 'Joy', 8768456736, 'Joy', '1007', 0),
(8, 1008, 5, 'GKJKLJL', 'GJHKLJ', 9134678456, 'abcd', '1008', 0),
(9, 1009, 4, 'FGGJHJ', 'Joy', 9753654672, 'joesph', '1009', 0),
(10, 1010, 2, 'Kochupurakkal', 'Kuriakose', 8795786547, 'Kuriakose', '1010', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_holycommunion`
--

CREATE TABLE IF NOT EXISTS `tbl_holycommunion` (
  `HolyId` int(11) NOT NULL AUTO_INCREMENT,
  `HolyDate` date NOT NULL,
  `MemId` int(11) NOT NULL,
  `HolyPriest` varchar(50) NOT NULL,
  `HolyChurch` varchar(50) NOT NULL,
  `HolyStatus` int(11) NOT NULL,
  PRIMARY KEY (`HolyId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tbl_holycommunion`
--

INSERT INTO `tbl_holycommunion` (`HolyId`, `HolyDate`, `MemId`, `HolyPriest`, `HolyChurch`, `HolyStatus`) VALUES
(1, '2020-10-12', 15, 'Frpole', 'stmarys', 1),
(2, '2020-10-12', 14, 'Frpole', 'stmarys', 2),
(3, '2020-09-15', 12, 'Frpole', 'stmarys', 1),
(4, '2020-11-17', 9, 'Frpole', 'stmarys', 1),
(5, '2020-10-20', 8, 'Frpole', 'stmarys', 1),
(6, '2020-11-17', 12, 'Frpole', 'stmarys', 2),
(7, '2020-12-03', 10, 'Frpole', 'FJGHKJ', 1),
(8, '2020-12-02', 23, 'ERTWTT', 'FGDET', 0),
(9, '2020-12-14', 17, 'Frpole', 'Stmarys', 0),
(10, '2021-01-06', 26, '', '', 0),
(11, '2021-01-11', 28, 'Frpole', 'Stmarys', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE IF NOT EXISTS `tbl_member` (
  `MemberId` int(11) NOT NULL AUTO_INCREMENT,
  `MemberNm` varchar(30) NOT NULL,
  `MFName` varchar(30) NOT NULL,
  `MMName` varchar(30) NOT NULL,
  `MEmail` varchar(50) NOT NULL,
  `MGender` varchar(20) NOT NULL,
  `MStatus` varchar(50) NOT NULL,
  `MDob` date NOT NULL,
  `FId` int(11) NOT NULL,
  `RWithHead` varchar(30) NOT NULL,
  `BName` varchar(30) NOT NULL,
  `BDate` date NOT NULL,
  `BPriest` varchar(30) NOT NULL,
  `BChurch` varchar(50) NOT NULL,
  `BDetails` varchar(30) NOT NULL,
  `ConNo` bigint(10) NOT NULL,
  `MemberStatus` int(11) NOT NULL,
  PRIMARY KEY (`MemberId`),
  KEY `FId` (`FId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`MemberId`, `MemberNm`, `MFName`, `MMName`, `MEmail`, `MGender`, `MStatus`, `MDob`, `FId`, `RWithHead`, `BName`, `BDate`, `BPriest`, `BChurch`, `BDetails`, `ConNo`, `MemberStatus`) VALUES
(8, 'sneha', 'Thomas', 'Mini', 'sneha@gmail.com', 'Female', 'Student', '1999-12-03', 2, ' Daughter', 'elizabeth', '2000-02-14', 'fr.Alen', 'Stthomas', 'gxfxghagvah', 98637457456, 1),
(9, 'Diya', 'Joesph', 'sheeba', 'diya@gmail.com', 'Female', 'Student', '2000-10-04', 4, 'Daughter', 'Mary', '2000-12-11', 'Fr.Mathew', 'Stthomas', 'xhghjhblj', 9765798765, 1),
(10, 'somiya', 'Francis', 'Mary', 'somiya@gmail.com', 'Female', 'teacher', '1995-10-04', 1, 'Daughter', 'rosemary', '1995-12-05', 'fr.Alen', 'st.poles', 'xhjds', 9674876547, 1),
(11, 'Anu', 'Francis', 'Mary', 'anu@gmail.com', 'Female', 'Student', '2000-10-05', 1, ' Daughter', 'Mary', '2002-01-11', 'Fr.Mathew', 'StMarys', 'CXDFBHG', 9457897654, 1),
(12, 'Albin', 'Chacko', 'Daliya', 'albin@gmail.com', 'Male', 'Student', '2002-02-20', 3, 'Son', 'Antony', '2002-10-10', 'Fr.Pole', 'St.Marys', 'gdkjgbu', 9778698765, 1),
(13, 'sgfhf', 'Joesph', 'sheeba', 'sdf@gmail.com', 'Male', 'Student', '2020-10-15', 4, 'Son', 'gdh', '2020-10-05', 'fr.chacko', 'Stthomas', 'ghjf', 7685498765, 1),
(14, 'anitta', 'Francis', 'Mary', 'anitta@gmail.com', 'Female', 'teacher', '2020-09-30', 1, 'Daughter', 'rosemary', '2018-10-11', 'Fr.Mathew', 'st.poles', 'sddf', 8954789654, 1),
(15, 'Angel', 'Daniel', 'Mini', 'angel@gmail.com', 'Female', 'Student', '2014-10-15', 5, 'Daughter', 'rosemary', '2014-12-17', 'fr.chacko', 'StMarys', 'dgjk', 7985698765, 1),
(16, 'Alen', 'Joesph', 'sheeba', 'alen@gmail.com', 'Male', 'teacher', '1994-10-20', 4, 'Son', 'joesph', '1994-11-18', 'Fr.Mathew', 'Stthomas', 'gggggg', 8899778899, 1),
(17, 'Abin', 'Daniel', 'Mini', 'abin@gmail.com', 'Male', 'Student', '2000-10-14', 5, 'Son', 'daniel', '2000-11-24', 'Fr.Pole', 'st.poles', 'ggggn', 9868957896, 2),
(18, 'sonu', 'alen', 'anitta', 'sonu@gmail.com', 'Male', 'Student', '2020-09-22', 2, 'Son', 'Antony', '2020-09-14', 'Fr.Mathew', 'Stthomas', 'sssssss', 9867846754, 1),
(19, 'Beena', 'Joy', 'Mary', 'beena@gmail.com', 'Female', 'teacher', '1998-11-10', 4, 'Daughterinlaw', 'Susan', '1999-01-12', 'frThomas', 'stpeters', 'ddgdth', 9879678956, 1),
(20, 'Soniya', 'Sunny', 'Lekha', 'soniya@gmail.com', 'Female', 'Bankemployee', '1997-11-11', 2, 'Daughterinlaw', 'rosemary', '1998-01-06', 'fr.chacko', 'Stthomas', 'gggm', 8976589678, 1),
(21, 'Tomy', 'Joy', 'Marykutty', 'tomy@gmail.com', 'Male', 'farming', '1991-11-12', 7, 'Son', 'joy', '1992-01-22', 'frThomas', 'Stthomas', 'dfgg', 9868064768, 1),
(22, 'Jiffin', 'Joesph', 'Sheeba', 'jiffin@gmail.com', 'Male', 'Student', '2020-11-17', 4, 'Son', 'Atfghj', '2020-11-10', 'FrMathew', 'StMarys', 'Fhkjl', 8956798765, 1),
(23, 'Abcd', 'JGHK', 'HBKBJK', 'adf@gmail.com', 'Male', 'HJGKHGJ', '2020-12-03', 8, 'CGFJG', 'GKHKHIO', '2020-12-02', 'FrMathew', 'HJGJH', 'YFDTYFYU', 2345567898, 1),
(24, 'Mini', 'TFYU', 'VJHVHJ', 'mini@gmail.com', 'Female', 'JVHJ', '2020-11-10', 8, 'VHJ', 'BKJ', '2020-11-30', 'GHYUGYI', 'HGHKLI', 'GHFUKGFU', 4679064685, 0),
(25, 'FDGF', 'Joesph', 'Sheeba', 'fdss@gmail.com', 'Male', 'Student', '2020-12-14', 4, 'Son', 'DFG', '0001-01-09', 'FrMathew', 'StMarys', 'RFREGT', 8956798765, 0),
(26, 'FrDominic', 'Joy', 'Marykutty', 'dominic@gmail.com', 'Male', 'Unmarried', '2021-01-04', 7, 'Son', 'Joy', '2021-01-04', 'FrMathew', 'StMarys', 'JNO', 8957967894, 1),
(27, 'Kuriakose', 'K Kuriakose', 'Susamma', 'kuriakose@gmail.com', 'Male', 'Married', '2021-01-05', 10, 'Son', 'Khgyjh', '2021-01-04', 'FrMathew', 'StMarys', 'KHGKUH', 9865678567, 1),
(28, 'Manju', 'Kuriakose', 'Saramma', 'manju@gmail.com', 'Female', 'Married', '2021-01-05', 10, 'Daughter', 'DTHG', '2021-01-11', 'FrMathew', 'StMarys', 'DSFR', 4568686547, 1),
(29, 'Biju', 'Kuriakose', 'Saramma', 'biju@gmail.com', 'Male', 'Married', '2021-01-04', 10, 'Son', 'Susan', '2021-01-05', 'FrMathew', 'StMarys', 'JGHUKHIL', 7857860989, 1),
(30, 'Neethu', 'Thomas', 'Sheeba', 'neethu@gmail.com', 'Female', 'Married', '2021-01-04', 10, 'Daughterinlaw', 'Neethu', '2021-01-04', 'FrAlen', 'Stthomas', 'TFJGFHJ', 7857686758, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_priest`
--

CREATE TABLE IF NOT EXISTS `tbl_priest` (
  `PriestId` int(11) NOT NULL AUTO_INCREMENT,
  `PriestName` varchar(30) NOT NULL,
  `DOB` date NOT NULL,
  `HouseNm` varchar(50) NOT NULL,
  `FReg` int(10) NOT NULL,
  `Dio` varchar(20) NOT NULL,
  `Congregation` varchar(50) NOT NULL,
  `DateON` date NOT NULL,
  `PN` varchar(20) NOT NULL,
  `Con` bigint(10) NOT NULL,
  `PriestStatus` int(11) NOT NULL,
  PRIMARY KEY (`PriestId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_priest`
--

INSERT INTO `tbl_priest` (`PriestId`, `PriestName`, `DOB`, `HouseNm`, `FReg`, `Dio`, `Congregation`, `DateON`, `PN`, `Con`, `PriestStatus`) VALUES
(1, 'Fr.Alen', '1988-10-05', 'kollamparambil', 1001, 'idukki', 'FFF', '2020-07-14', '  Priest', 9527163865, 1),
(2, 'Fr.Jobin', '1985-10-09', 'Nalunadiyil', 1002, 'idukki', 'ddd', '2012-10-17', '  Priest', 9753654671, 0),
(3, 'Sr.Judit', '1983-10-11', 'rfgfh', 1003, 'idukki', 'dsgvf', '2012-10-11', '  Nuns', 7686286748, 0),
(4, 'FrJoby', '2020-12-02', 'GJjfkgulh', 1008, 'Idukki', 'JGUOH', '2020-12-03', '  Priest', 9457636586, 0),
(5, 'AGHJMHM', '2020-12-14', 'FEGTTG', 1009, 'Idukki', 'FGGFH', '2020-12-08', '  Priest', 9867056789, 0),
(6, 'FrDominic', '2021-01-04', 'Mavali', 1007, 'Idukki', 'UTFUT', '2021-01-05', '  Priest', 8957967894, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vicar`
--

CREATE TABLE IF NOT EXISTS `tbl_vicar` (
  `VicarId` int(11) NOT NULL AUTO_INCREMENT,
  `VicarName` varchar(30) NOT NULL,
  `HouseName` varchar(30) NOT NULL,
  `Diocese` varchar(30) NOT NULL,
  `YearofJoining` bigint(20) NOT NULL,
  `YearofLeaving` bigint(20) NOT NULL,
  `Photo` blob NOT NULL,
  `DateofBirth` date NOT NULL,
  `FeastDay` varchar(30) NOT NULL,
  `ContactNo` bigint(10) NOT NULL,
  `VicarStatus` int(11) NOT NULL,
  PRIMARY KEY (`VicarId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbl_vicar`
--

INSERT INTO `tbl_vicar` (`VicarId`, `VicarName`, `HouseName`, `Diocese`, `YearofJoining`, `YearofLeaving`, `Photo`, `DateofBirth`, `FeastDay`, `ContactNo`, `VicarStatus`) VALUES
(1, 'Fr.Thomas', 'Meledath', 'Idukki', 2000, 2004, '', '1994-07-12', 'june4', 9127935478, 1),
(2, 'Fr.Mathew', 'NadakkaJ', 'Idukki', 2004, 2008, '', '1991-10-08', 'Aug3', 8345628543, 0),
(3, 'Fr.Chacko', 'Nalunadiyil', 'Idukki', 2008, 2012, '', '1994-10-05', 'aug10', 8965478653, 0),
(4, 'Fr.George', 'Puthanpurakal', 'Idukki', 2012, 2015, '', '1982-10-05', 'may6', 9145673261, 0),
(5, 'Fr.Alen', 'Elavummootil', 'Idukki', 2015, 2020, '', '1984-10-03', 'June10', 9253768360, 0),
(6, 'Fr.john', 'parakattil', 'Idukki', 2020, 2023, '', '1994-10-10', 'Aug6', 9867945689, 0),
(7, 'FrSanthosh', 'Hhoijoi', 'Idukki', 2020, 2008, '', '2020-12-03', 'june4', 2467958543, 0),
(8, 'Syukki', 'SERFTRG', 'RGT', 2012, 2008, '', '2020-12-14', 'June10', 9345678967, 0),
(9, 'FrMathew', 'Nadakkal', 'Idukki', 2000, 2015, '', '2021-01-03', '2021-01-03', 9876542456, 1),
(10, 'Frjaoid', 'FMJHYHYJ', 'Idukki', 2001, 2020, '', '2020-12-30', '2020-12-29', 8345628543, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ward`
--

CREATE TABLE IF NOT EXISTS `tbl_ward` (
  `WardId` int(11) NOT NULL AUTO_INCREMENT,
  `WardName` varchar(20) NOT NULL,
  `WardShortName` varchar(10) NOT NULL,
  `WardDiscription` varchar(100) NOT NULL,
  `WardStatus` int(11) NOT NULL,
  PRIMARY KEY (`WardId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_ward`
--

INSERT INTO `tbl_ward` (`WardId`, `WardName`, `WardShortName`, `WardDiscription`, `WardStatus`) VALUES
(1, 'StPeters', 'sp', 'This group has 20 family', 0),
(2, 'StMary', 'sm', 'This group has 20 family', 0),
(3, 'StPoles', 'stp', 'This group has 20 family', 1),
(4, 'StJoesph', 'st', 'This group has 20 family', 0),
(5, 'Stjude', 'Sj', 'This group has 20 family', 1),
(6, 'STMHJMH', 'Sp', 'This group has 20 family', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wedding`
--

CREATE TABLE IF NOT EXISTS `tbl_wedding` (
  `WeddId` int(11) NOT NULL AUTO_INCREMENT,
  `Famid` int(11) NOT NULL,
  `Groom` varchar(30) NOT NULL,
  `Bride` varchar(30) NOT NULL,
  `BParish` varchar(30) NOT NULL,
  `BDiocese` varchar(30) NOT NULL,
  `WChurch` varchar(30) NOT NULL,
  `BFamilyName` varchar(30) NOT NULL,
  `WDate` date NOT NULL,
  `WPriest` varchar(30) NOT NULL,
  `WW1` varchar(30) NOT NULL,
  `WW2` varchar(30) NOT NULL,
  `WStatus` varchar(20) NOT NULL,
  PRIMARY KEY (`WeddId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_wedding`
--

INSERT INTO `tbl_wedding` (`WeddId`, `Famid`, `Groom`, `Bride`, `BParish`, `BDiocese`, `WChurch`, `BFamilyName`, `WDate`, `WPriest`, `WW1`, `WW2`, `WStatus`) VALUES
(1, 4, '16', '19', 'Stpeters', 'Idukki', 'StMarys', 'Mammoottil', '1995-11-25', 'FrMathew', 'Thomas', 'Jijo', 'accepted'),
(2, 2, '18', '20', 'Stpeters', 'Idukki', 'StMarys', 'Thalakal', '2020-11-11', 'Frpole', 'Peter', 'Mathew', 'rejected'),
(3, 4, '22', '19', 'Stpeters', 'Idukki', 'StMarys', 'DHGKH', '2020-11-10', 'Frmathew', 'Gnkl', 'Whjk', 'accepted'),
(4, 8, '23', '24', 'JGGKJ', 'VCJGVKH', 'GHFJHG', 'BVHKBKJ', '2020-11-04', 'BVHMB', 'HCJGV', 'JHVHJV', 'accepted'),
(5, 10, '29', '30', 'Stpeters', 'Idukki', 'StMarys', 'Kavil', '2021-01-04', 'Frmathew', 'Thomas', 'Kevin', 'pending');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
