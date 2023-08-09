-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-08-08 05:38:44
-- 伺服器版本： 10.4.28-MariaDB
-- PHP 版本： 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `psv`
--

-- --------------------------------------------------------

--
-- 資料表結構 `decathlon`
--

CREATE TABLE `decathlon` (
  `ID` varchar(13) NOT NULL COMMENT '資料ID (西元年月日+流水碼)',
  `MATNR` varchar(40) NOT NULL COMMENT '客戶成品物料號碼',
  `LABST` varchar(13) NOT NULL COMMENT '庫存數量',
  `DATE` varchar(8) NOT NULL COMMENT 'SAP資料日期 (西元年月日)\r\n',
  `SUPPLIER` varchar(4) NOT NULL COMMENT '供應商名稱',
  `COUNTRY` varchar(1) NOT NULL COMMENT 'API區分，G：Global，C：China\r\n',
  `FLAG` varchar(1) DEFAULT NULL COMMENT '傳送標示 (X：成功傳送)\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `decathlon`
--

INSERT INTO `decathlon` (`ID`, `MATNR`, `LABST`, `DATE`, `SUPPLIER`, `COUNTRY`, `FLAG`) VALUES
('SAP_Presned', '2218122', '26212', '20230602', 'FULL', 'C', 'X'),
('SAP_Presned', '2709236', '14520', '20230602', 'FULL', 'C', 'X');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
