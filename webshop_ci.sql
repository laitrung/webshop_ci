-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2023 at 04:20 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webshop_ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `cauhinh`
--

CREATE TABLE `cauhinh` (
  `MaCauHinh` int(11) NOT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SoDienThoai` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `TenWebsite` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Logo` text COLLATE utf8_unicode_ci NOT NULL,
  `Facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Instagram` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Tiktok` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ThuongHieu` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cauhinh`
--

INSERT INTO `cauhinh` (`MaCauHinh`, `Email`, `SoDienThoai`, `DiaChi`, `TenWebsite`, `Logo`, `Facebook`, `Instagram`, `Tiktok`, `ThuongHieu`) VALUES
(1, 'chuminhnam1@gmail.com', '09999998881', 'Hà Nội1', 'NamHonda.com', 'http://localhost/webshop_ci/uploads/logo2.png', '1', '1', '', 'http://localhost/webshop_ci/uploads/logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `MaChiTietDonHang` int(11) NOT NULL,
  `MaDonHang` int(11) NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `MauSac` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`MaChiTietDonHang`, `MaDonHang`, `MaSanPham`, `SoLuong`, `MauSac`) VALUES
(22, 29, 89, 1, 'Đỏ');

-- --------------------------------------------------------

--
-- Table structure for table `chuyenmuc`
--

CREATE TABLE `chuyenmuc` (
  `MaChuyenMuc` int(11) NOT NULL,
  `TenChuyenMuc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DuongDan` text COLLATE utf8_unicode_ci NOT NULL,
  `AnhChinh` text COLLATE utf8_unicode_ci NOT NULL,
  `TrangThai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chuyenmuc`
--

INSERT INTO `chuyenmuc` (`MaChuyenMuc`, `TenChuyenMuc`, `DuongDan`, `AnhChinh`, `TrangThai`) VALUES
(28, 'Xe số', 'xe-so', 'http://localhost/webshop_ci/uploads/1503636490-c7474e2138aa51cf41aab3430b351c1c.jpg', 1),
(29, 'Xe tay ga', 'xe-tay-ga', 'http://localhost/webshop_ci/uploads/1588688470-350-honda-vario-150-1588655838-width660height440.jpg', 1),
(30, 'Xe côn tay', 'xe-con-tay', 'http://localhost/webshop_ci/uploads/4870854_COVER.jpg', 1),
(31, 'Xe moto', 'xe-moto', 'http://localhost/webshop_ci/uploads/1669610062-86c2c6518ff7302cc4ca65effcd8b5a2.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `MaDonHang` int(11) NOT NULL,
  `MaKhachHang` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `ThanhTien` int(11) NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT current_timestamp(),
  `TrangThai` int(11) NOT NULL DEFAULT 1,
  `DiaChi` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `GiamGia` int(11) NOT NULL DEFAULT 0,
  `TenCongTy` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `PhuongThucThanhToan` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`MaDonHang`, `MaKhachHang`, `SoLuong`, `ThanhTien`, `ThoiGian`, `TrangThai`, `DiaChi`, `GiamGia`, `TenCongTy`, `PhuongThucThanhToan`) VALUES
(29, 13, 1, 19000000, '2023-07-19 06:17:25', 1, 'Hà Nội - Hà Nội Hà Nội', 0, 'Lập trình từ đầu', 1);

-- --------------------------------------------------------

--
-- Table structure for table `giaodien`
--

CREATE TABLE `giaodien` (
  `MaGiaoDien` int(11) NOT NULL,
  `MaChuyenMuc` int(11) DEFAULT NULL,
  `TheLoai` int(11) NOT NULL,
  `HinhAnh` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `giaodien`
--

INSERT INTO `giaodien` (`MaGiaoDien`, `MaChuyenMuc`, `TheLoai`, `HinhAnh`) VALUES
(23, NULL, 1, 'http://localhost/webshop_ci/uploads/L3b54cTddCQUatsGE8wv.jpg'),
(24, NULL, 1, 'http://localhost/webshop_ci/uploads/9A05vrtIdVybCAacCbEE.jpg'),
(25, NULL, 1, 'http://localhost/webshop_ci/uploads/iTc617HlBJm7CrlzB6rR.jpg'),
(26, NULL, 1, 'http://localhost/webshop_ci/uploads/KoKYt2b5Hdl9bla0S7pT.jpg'),
(27, NULL, 1, 'http://localhost/webshop_ci/uploads/ZS2xN2bzxpIRfcTn6A79.jpg'),
(28, 28, 2, 'http://localhost/webshop_ci/uploads/R7CoGmZIfE4hbcE8xRXc.jpg'),
(29, 28, 2, 'http://localhost/webshop_ci/uploads/6vPtfIOsbNi25Km726ot.jpg'),
(30, 28, 2, 'http://localhost/webshop_ci/uploads/hFKQmQRMwofgxpavyO68.jpg'),
(31, NULL, 3, 'http://localhost/webshop_ci/uploads/328711339_6723894767637303_1159176353795255621_n.jpg'),
(32, NULL, 3, 'http://localhost/webshop_ci/uploads/20210329-MS-HondaWinnerX-Thumbnail-550x286-01.jpg'),
(33, NULL, 3, 'http://localhost/webshop_ci/uploads/post-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hinhanh`
--

CREATE TABLE `hinhanh` (
  `MaHinhAnh` int(11) NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `DuongDan` text COLLATE utf8_unicode_ci NOT NULL,
  `LoaiAnh` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hinhanh`
--

INSERT INTO `hinhanh` (`MaHinhAnh`, `MaSanPham`, `DuongDan`, `LoaiAnh`) VALUES
(77, 44, 'http://localhost/webquanao/uploads/tintuc211.png', 3),
(78, 44, 'http://localhost/webquanao/uploads/tintuc319.jpg', 4),
(79, 45, 'http://localhost/webquanao/uploads/tintuc44.jpg', 1),
(80, 45, 'http://localhost/webquanao/uploads/tintuc212.png', 2),
(81, 45, 'http://localhost/webquanao/uploads/sanpham5.jpg', 3),
(82, 45, 'http://localhost/webquanao/uploads/chitiet35.png', 4),
(83, 46, 'http://localhost/webquanao/uploads/tintuc45.jpg', 1),
(84, 46, 'http://localhost/webquanao/uploads/tintuc213.png', 2),
(85, 46, 'http://localhost/webquanao/uploads/sanpham51.jpg', 3),
(86, 46, 'http://localhost/webquanao/uploads/chitiet36.png', 4),
(87, 47, 'http://localhost/webquanao/uploads/tintuc46.jpg', 1),
(88, 47, 'http://localhost/webquanao/uploads/tintuc214.png', 2),
(89, 47, 'http://localhost/webquanao/uploads/sanpham52.jpg', 3),
(90, 47, 'http://localhost/webquanao/uploads/chitiet37.png', 4),
(91, 48, 'http://localhost/webquanao/uploads/tintuc47.jpg', 1),
(92, 48, 'http://localhost/webquanao/uploads/tintuc215.png', 2),
(93, 48, 'http://localhost/webquanao/uploads/sanpham53.jpg', 3),
(94, 48, 'http://localhost/webquanao/uploads/chitiet38.png', 4),
(95, 49, 'http://localhost/webquanao/uploads/tintuc48.jpg', 1),
(96, 49, 'http://localhost/webquanao/uploads/tintuc216.png', 2),
(97, 49, 'http://localhost/webquanao/uploads/sanpham54.jpg', 3),
(98, 49, 'http://localhost/webquanao/uploads/chitiet39.png', 4),
(99, 50, 'http://localhost/webquanao/uploads/avatar3.png', 1),
(100, 50, 'http://localhost/webquanao/uploads/tintuc41.jpg', 2),
(101, 50, 'http://localhost/webquanao/uploads/tintuc2.png', 3),
(102, 50, 'http://localhost/webquanao/uploads/sanpham13.png', 4),
(103, 51, 'http://localhost/webquanao/uploads/tintuc4.jpg', 1),
(104, 51, 'http://localhost/webquanao/uploads/tintuc41.jpg', 2),
(105, 51, 'http://localhost/webquanao/uploads/tintuc42.jpg', 3),
(106, 51, 'http://localhost/webquanao/uploads/tintuc43.jpg', 4),
(107, 52, 'http://localhost/webquanao/uploads/product-1.jpg', 1),
(108, 52, 'http://localhost/webquanao/uploads/product-11.jpg', 2),
(109, 52, 'http://localhost/webquanao/uploads/product-12.jpg', 3),
(110, 52, 'http://localhost/webquanao/uploads/product-13.jpg', 4),
(111, 53, 'http://localhost/webquanao/uploads/product-14.jpg', 1),
(112, 53, 'http://localhost/webquanao/uploads/product-15.jpg', 2),
(113, 53, 'http://localhost/webquanao/uploads/product-16.jpg', 3),
(114, 53, 'http://localhost/webquanao/uploads/product-17.jpg', 4),
(115, 54, 'http://localhost/webquanao/uploads/product-18.jpg', 1),
(116, 54, 'http://localhost/webquanao/uploads/product-19.jpg', 2),
(117, 54, 'http://localhost/webquanao/uploads/product-110.jpg', 3),
(118, 54, 'http://localhost/webquanao/uploads/product-111.jpg', 4),
(119, 55, 'http://localhost/webquanao/uploads/product-112.jpg', 1),
(120, 55, 'http://localhost/webquanao/uploads/product-113.jpg', 2),
(121, 55, 'http://localhost/webquanao/uploads/product-114.jpg', 3),
(122, 55, 'http://localhost/webquanao/uploads/product-115.jpg', 4),
(123, 56, 'http://localhost/webquanao/uploads/product-116.jpg', 1),
(124, 56, 'http://localhost/webquanao/uploads/product-117.jpg', 2),
(125, 56, 'http://localhost/webquanao/uploads/product-118.jpg', 3),
(126, 56, 'http://localhost/webquanao/uploads/product-119.jpg', 4),
(127, 57, 'http://localhost/webquanao/uploads/product-120.jpg', 1),
(128, 57, 'http://localhost/webquanao/uploads/product-121.jpg', 2),
(129, 57, 'http://localhost/webquanao/uploads/product-122.jpg', 3),
(130, 57, 'http://localhost/webquanao/uploads/product-123.jpg', 4),
(131, 58, 'http://localhost/webquanao/uploads/product-124.jpg', 1),
(132, 58, 'http://localhost/webquanao/uploads/product-125.jpg', 2),
(133, 58, 'http://localhost/webquanao/uploads/product-126.jpg', 3),
(134, 58, 'http://localhost/webquanao/uploads/product-127.jpg', 4),
(135, 59, 'http://localhost/webquanao/uploads/product-128.jpg', 1),
(136, 59, 'http://localhost/webquanao/uploads/product-129.jpg', 2),
(137, 59, 'http://localhost/webquanao/uploads/product-130.jpg', 3),
(138, 59, 'http://localhost/webquanao/uploads/product-131.jpg', 4),
(139, 60, 'http://localhost/webquanao/uploads/product-132.jpg', 1),
(140, 60, 'http://localhost/webquanao/uploads/product-133.jpg', 2),
(141, 60, 'http://localhost/webquanao/uploads/product-134.jpg', 3),
(142, 60, 'http://localhost/webquanao/uploads/product-135.jpg', 4),
(143, 61, 'http://localhost/webquanao/uploads/product-136.jpg', 1),
(144, 61, 'http://localhost/webquanao/uploads/product-137.jpg', 2),
(145, 61, 'http://localhost/webquanao/uploads/product-138.jpg', 3),
(146, 61, 'http://localhost/webquanao/uploads/product-139.jpg', 4),
(147, 62, 'http://localhost/webquanao/uploads/tintuc45.jpg', 1),
(148, 62, 'http://localhost/webquanao/uploads/product-141.jpg', 2),
(149, 62, 'http://localhost/webquanao/uploads/product-142.jpg', 3),
(150, 62, 'http://localhost/webquanao/uploads/product-143.jpg', 4),
(151, 63, 'http://localhost/webquanao/uploads/on-sale-1.jpg', 1),
(152, 63, 'http://localhost/webquanao/uploads/on-sale-11.jpg', 2),
(153, 63, 'http://localhost/webquanao/uploads/on-sale-12.jpg', 3),
(154, 63, 'http://localhost/webquanao/uploads/on-sale-13.jpg', 4),
(155, 64, 'http://localhost/webquanao/uploads/on-sale-14.jpg', 1),
(156, 64, 'http://localhost/webquanao/uploads/on-sale-15.jpg', 2),
(157, 64, 'http://localhost/webquanao/uploads/on-sale-16.jpg', 3),
(158, 64, 'http://localhost/webquanao/uploads/on-sale-17.jpg', 4),
(159, 65, 'http://localhost/webquanao/uploads/on-sale-18.jpg', 1),
(160, 65, 'http://localhost/webquanao/uploads/on-sale-19.jpg', 2),
(161, 65, 'http://localhost/webquanao/uploads/on-sale-110.jpg', 3),
(162, 65, 'http://localhost/webquanao/uploads/on-sale-111.jpg', 4),
(163, 66, 'http://localhost/webquanao/uploads/on-sale-112.jpg', 1),
(164, 66, 'http://localhost/webquanao/uploads/on-sale-113.jpg', 2),
(165, 66, 'http://localhost/webquanao/uploads/on-sale-114.jpg', 3),
(166, 66, 'http://localhost/webquanao/uploads/on-sale-115.jpg', 4),
(167, 67, 'http://localhost/webquanao/uploads/on-sale-116.jpg', 1),
(168, 67, 'http://localhost/webquanao/uploads/on-sale-117.jpg', 2),
(169, 67, 'http://localhost/webquanao/uploads/on-sale-118.jpg', 3),
(170, 67, 'http://localhost/webquanao/uploads/on-sale-119.jpg', 4),
(171, 68, 'http://localhost/webquanao/uploads/on-sale-120.jpg', 1),
(172, 68, 'http://localhost/webquanao/uploads/on-sale-121.jpg', 2),
(173, 68, 'http://localhost/webquanao/uploads/on-sale-122.jpg', 3),
(174, 68, 'http://localhost/webquanao/uploads/on-sale-123.jpg', 4),
(175, 69, 'http://localhost/webquanao/uploads/on-sale-124.jpg', 1),
(176, 69, 'http://localhost/webquanao/uploads/on-sale-125.jpg', 2),
(177, 69, 'http://localhost/webquanao/uploads/on-sale-126.jpg', 3),
(178, 69, 'http://localhost/webquanao/uploads/on-sale-127.jpg', 4),
(179, 70, 'http://localhost/webquanao/uploads/on-sale-128.jpg', 1),
(180, 70, 'http://localhost/webquanao/uploads/on-sale-129.jpg', 2),
(181, 70, 'http://localhost/webquanao/uploads/on-sale-130.jpg', 3),
(182, 70, 'http://localhost/webquanao/uploads/on-sale-131.jpg', 4),
(183, 71, 'http://localhost/webquanao/uploads/on-sale-132.jpg', 1),
(184, 71, 'http://localhost/webquanao/uploads/on-sale-133.jpg', 2),
(185, 71, 'http://localhost/webquanao/uploads/on-sale-134.jpg', 3),
(186, 71, 'http://localhost/webquanao/uploads/on-sale-135.jpg', 4),
(187, 72, 'http://localhost/webquanao/uploads/on-sale-140.jpg', 1),
(188, 72, 'http://localhost/webquanao/uploads/on-sale-137.jpg', 2),
(189, 72, 'http://localhost/webquanao/uploads/on-sale-138.jpg', 3),
(190, 72, 'http://localhost/webquanao/uploads/on-sale-139.jpg', 4),
(191, 73, 'http://localhost/webquanao/uploads/best-deal-2.jpg', 1),
(192, 73, 'http://localhost/webquanao/uploads/best-deal-21.jpg', 2),
(193, 73, 'http://localhost/webquanao/uploads/best-deal-22.jpg', 3),
(194, 73, 'http://localhost/webquanao/uploads/best-deal-23.jpg', 4),
(195, 74, 'http://localhost/webquanao/uploads/best-deal-24.jpg', 1),
(196, 74, 'http://localhost/webquanao/uploads/best-deal-25.jpg', 2),
(197, 74, 'http://localhost/webquanao/uploads/best-deal-26.jpg', 3),
(198, 74, 'http://localhost/webquanao/uploads/best-deal-27.jpg', 4),
(199, 75, 'http://localhost/webquanao/uploads/best-deal-28.jpg', 1),
(200, 75, 'http://localhost/webquanao/uploads/best-deal-29.jpg', 2),
(201, 75, 'http://localhost/webquanao/uploads/best-deal-210.jpg', 3),
(202, 75, 'http://localhost/webquanao/uploads/best-deal-211.jpg', 4),
(203, 76, 'http://localhost/webquanao/uploads/best-deal-212.jpg', 1),
(204, 76, 'http://localhost/webquanao/uploads/best-deal-213.jpg', 2),
(205, 76, 'http://localhost/webquanao/uploads/best-deal-214.jpg', 3),
(206, 76, 'http://localhost/webquanao/uploads/best-deal-215.jpg', 4),
(207, 77, 'http://localhost/webquanao/uploads/best-deal-216.jpg', 1),
(208, 77, 'http://localhost/webquanao/uploads/best-deal-217.jpg', 2),
(209, 77, 'http://localhost/webquanao/uploads/best-deal-218.jpg', 3),
(210, 77, 'http://localhost/webquanao/uploads/best-deal-219.jpg', 4),
(211, 78, 'http://localhost/webquanao/uploads/best-deal-220.jpg', 1),
(212, 78, 'http://localhost/webquanao/uploads/best-deal-221.jpg', 2),
(213, 78, 'http://localhost/webquanao/uploads/best-deal-222.jpg', 3),
(214, 78, 'http://localhost/webquanao/uploads/best-deal-223.jpg', 4),
(215, 79, 'http://localhost/webquanao/uploads/best-deal-224.jpg', 1),
(216, 79, 'http://localhost/webquanao/uploads/best-deal-225.jpg', 2),
(217, 79, 'http://localhost/webquanao/uploads/best-deal-226.jpg', 3),
(218, 79, 'http://localhost/webquanao/uploads/best-deal-227.jpg', 4),
(219, 80, 'http://localhost/webquanao/uploads/best-deal-228.jpg', 1),
(220, 80, 'http://localhost/webquanao/uploads/best-deal-229.jpg', 2),
(221, 80, 'http://localhost/webquanao/uploads/best-deal-230.jpg', 3),
(222, 80, 'http://localhost/webquanao/uploads/best-deal-231.jpg', 4),
(223, 81, 'http://localhost/webquanao/uploads/best-deal-236.jpg', 1),
(224, 81, 'http://localhost/webquanao/uploads/best-deal-233.jpg', 2),
(225, 81, 'http://localhost/webquanao/uploads/best-deal-234.jpg', 3),
(226, 81, 'http://localhost/webquanao/uploads/best-deal-235.jpg', 4),
(251, 88, 'http://localhost/webshop_ci/uploads/NyeJDaabXKegK3tRHzwy1.png', 1),
(252, 88, 'http://localhost/webshop_ci/uploads/8LR1js70zQLQpZLVqU4p.jpg', 2),
(253, 88, 'http://localhost/webshop_ci/uploads/d01MTcRPw5eXTcokRLkq1.jpg', 3),
(254, 88, 'http://localhost/webshop_ci/uploads/z85orAXNqebWITiPOhD1.jpg', 4),
(255, 89, 'http://localhost/webshop_ci/uploads/NyeJDaabXKegK3tRHzwy2.png', 1),
(256, 89, 'http://localhost/webshop_ci/uploads/gAxtHSocuY8Xsfz5ESls.jpg', 2),
(257, 89, 'http://localhost/webshop_ci/uploads/aEjItnU3HHOm4PopEbnv.jpg', 3),
(258, 89, 'http://localhost/webshop_ci/uploads/mIos932NCbyWT11ZHuEJ.jpg', 4),
(259, 90, 'http://localhost/webshop_ci/uploads/NyeJDaabXKegK3tRHzwy3.png', 1),
(260, 90, 'http://localhost/webshop_ci/uploads/SBHwws3nBDfY9EKLU6Eh1.png', 2),
(261, 90, 'http://localhost/webshop_ci/uploads/logo1.png', 3),
(262, 90, 'http://localhost/webshop_ci/uploads/c9Z843t35KzJNLISxvrp.png', 4),
(263, 91, 'http://localhost/webshop_ci/uploads/5yyIDRkFfimTRCq8iPoD.png', 1),
(264, 91, 'http://localhost/webshop_ci/uploads/2i1AGHLNYxYr2SRHWaZb.jpg', 2),
(265, 91, 'http://localhost/webshop_ci/uploads/CZctuw4jMDQn8y5T8PmP.jpg', 3),
(266, 91, 'http://localhost/webshop_ci/uploads/RnY4xpVdb1yTAq4fDjdT.jpg', 4),
(267, 92, 'http://localhost/webshop_ci/uploads/5yyIDRkFfimTRCq8iPoD2.png', 1),
(268, 92, 'http://localhost/webshop_ci/uploads/TE6Pse3qm96hLzOmaiae.jpg', 2),
(269, 92, 'http://localhost/webshop_ci/uploads/2B1nycBIkpqCIZl4mk4Z.jpg', 3),
(270, 92, 'http://localhost/webshop_ci/uploads/STeO5pVQ7LZdD96HVuD0.jpg', 4),
(271, 93, 'http://localhost/webshop_ci/uploads/honda-vision-moi-ra-mat-adae.jpg', 1),
(272, 93, 'http://localhost/webshop_ci/uploads/NfweVPjeSDcMN4WQuqcI.jpg', 2),
(273, 93, 'http://localhost/webshop_ci/uploads/fL07ot4CJbt3Eliq9fQ2.jpg', 3),
(274, 93, 'http://localhost/webshop_ci/uploads/F3vD1KkTCzVkiPcJ6xns.jpg', 4),
(275, 94, 'http://localhost/webshop_ci/uploads/2000px-Honda_Logo_svg1.png', 1),
(276, 94, 'http://localhost/webshop_ci/uploads/caY4xEu6IEmpQQyfpkeC.jpg', 2),
(277, 94, 'http://localhost/webshop_ci/uploads/D445BvweoUiCLbhmknWd.jpg', 3),
(278, 94, 'http://localhost/webshop_ci/uploads/Mc21mCGwlr5p8DvD8Y6D.jpg', 4),
(279, 95, 'http://localhost/webshop_ci/uploads/46saHiwobvOBrrwwWMXj.png', 1),
(280, 95, 'http://localhost/webshop_ci/uploads/eUKep4O2Ccr3OizFH7B2.png', 2),
(281, 95, 'http://localhost/webshop_ci/uploads/H5M3H3BtB0EMshHsjs7A.png', 3),
(282, 95, 'http://localhost/webshop_ci/uploads/SIoZlOWSZD5lacwW3JJ3.png', 4),
(283, 96, 'http://localhost/webshop_ci/uploads/46saHiwobvOBrrwwWMXj1.png', 1),
(284, 96, 'http://localhost/webshop_ci/uploads/Br8ZDHlDDUFY99kHoQGc.jpg', 2),
(285, 96, 'http://localhost/webshop_ci/uploads/t54D3ffFx56B3ayaKsze.png', 3),
(286, 96, 'http://localhost/webshop_ci/uploads/cmwM61ZpvsBaPweDG2PO.jpg', 4),
(287, 97, 'http://localhost/webshop_ci/uploads/qdGgJvma2sfdCVaSKhaQ.png', 1),
(288, 97, 'http://localhost/webshop_ci/uploads/riMK5JotPrfKsbdoJj24.jpg', 2),
(289, 97, 'http://localhost/webshop_ci/uploads/Kn2t7CHz4vuaDK9aj6g7.png', 3),
(290, 97, 'http://localhost/webshop_ci/uploads/honda-super-cub-c125-ban-xam-nham-xi-mang-first-edition568n.jpg', 4),
(291, 98, 'http://localhost/webshop_ci/uploads/cA6JDbziJ4V6vcmKJR8h.png', 1),
(292, 98, 'http://localhost/webshop_ci/uploads/Br8ZDHlDDUFY99kHoQGc1.jpg', 2),
(293, 98, 'http://localhost/webshop_ci/uploads/souRn2iWaVokpMZDa3DT.jpg', 3),
(294, 98, 'http://localhost/webshop_ci/uploads/SNws7iyqAUK5SokFSHEZ.jpg', 4),
(295, 99, 'http://localhost/webshop_ci/uploads/TLEno14HAiDRh0S6bfzQ.png', 1),
(296, 99, 'http://localhost/webshop_ci/uploads/kJPP1w4hoV6XbA2aub8c.png', 2),
(297, 99, 'http://localhost/webshop_ci/uploads/iaP69xMJiEZGPQlZxZgw.png', 3),
(298, 99, 'http://localhost/webshop_ci/uploads/BtdGPqQO77IwUIORO5Vh.png', 4),
(299, 100, 'http://localhost/webshop_ci/uploads/S3Ysdrau5PWShFsDmMyX.jpg', 1),
(300, 100, 'http://localhost/webshop_ci/uploads/A3P4LYQj5Aq8Ev8rsaVh.jpg', 2),
(301, 100, 'http://localhost/webshop_ci/uploads/3j7t55d0kL4QCiqWCtlJ.jpg', 3),
(302, 100, 'http://localhost/webshop_ci/uploads/wmtKhw2HE9NQpoVl9yaz.jpg', 4),
(303, 101, 'http://localhost/webshop_ci/uploads/3j7t55d0kL4QCiqWCtlJ1.jpg', 1),
(304, 101, 'http://localhost/webshop_ci/uploads/3j7t55d0kL4QCiqWCtlJ2.jpg', 2),
(305, 101, 'http://localhost/webshop_ci/uploads/honda-cb500x-1-1633502329-229-width660height347.jpg', 3),
(306, 101, 'http://localhost/webshop_ci/uploads/Honda-CB500X-2022.jpg', 4),
(307, 102, 'http://localhost/webshop_ci/uploads/3j7t55d0kL4QCiqWCtlJ3.jpg', 1),
(308, 102, 'http://localhost/webshop_ci/uploads/RtRSpMYATMCA5wJeK2Wx.png', 2),
(309, 102, 'http://localhost/webshop_ci/uploads/dIXTwZwOBF3I06ZD6Cpm.jpg', 3),
(310, 102, 'http://localhost/webshop_ci/uploads/hu9rC6cXHsWaifJhUs5d.png', 4);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKhachHang` int(11) NOT NULL,
  `TenKhachHang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SoDienThoai` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TaiKhoan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TrangThai` int(11) NOT NULL DEFAULT 1,
  `NgayThamGia` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MaKhachHang`, `TenKhachHang`, `SoDienThoai`, `DiaChi`, `Email`, `TaiKhoan`, `MatKhau`, `TrangThai`, `NgayThamGia`) VALUES
(13, 'Chu Minh Nam', '0379962045', 'Bắc Từ Liêm, Hà Nội', 'namchuminh@gmail.com', 'nam', '21232f297a57a5a743894a0e4a801fc3', 1, '2023-07-11 18:45:18'),
(24, 'Nguyễn Văn Anh', '0555666777', 'Hà Nội', 'nguyenvananh@gmail.com', 'nguyenvana', '20ca70c7c8f494c7bd1d54ad23d40cde', 1, '2023-07-14 00:41:12'),
(25, 'Nguyễn Văn Bình', '0888999777', 'Hà Nam', 'nguyenvanbinh@gmail.com', 'nguyenvanb', '23280a0ad9238d00c62b0272af265c57', 1, '2023-07-14 00:42:46'),
(26, 'Nguyễn Văn Chung', '0333444555', 'Hà Nội', 'nguyenvanchung@gmail.com', 'nguyenvanchung', '36a00d76edeef3128c3918786dc4e10d', 1, '2023-07-14 00:46:05'),
(27, 'Nguyễn Văn Dũng', '0444555666', 'Hà Nội', 'dung@gmail.com', 'dung', '625d45c587033e8970af8b4e3fdb575c', 1, '2023-07-14 00:48:59'),
(28, 'Nguyễn Văn Em', '0222333444', 'Hà Nội', 'nguyenvanem@gmail.com', 'nguyenvanem', '2e3b271ef4f09bfd649193c6d11ccdc0', 1, '2023-07-14 00:50:32');

-- --------------------------------------------------------

--
-- Table structure for table `lichsunhap`
--

CREATE TABLE `lichsunhap` (
  `MaLichSuNhap` int(11) NOT NULL,
  `MaNhaCungCap` int(11) NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT current_timestamp(),
  `SoLuong` int(11) NOT NULL,
  `SoLuongCu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lienhe`
--

CREATE TABLE `lienhe` (
  `MaLienHe` int(11) NOT NULL,
  `TenKhachHang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SoDienThoai` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `TieuDe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` text COLLATE utf8_unicode_ci NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT current_timestamp(),
  `TrangThai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `magiamgia`
--

CREATE TABLE `magiamgia` (
  `MaGiamGia` int(11) NOT NULL,
  `MaSuDung` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NgayTao` date NOT NULL DEFAULT current_timestamp(),
  `NgayHetHan` date NOT NULL,
  `TriGia` int(11) NOT NULL,
  `SoLanDung` int(11) NOT NULL DEFAULT 0,
  `SoLuong` int(11) NOT NULL DEFAULT 1,
  `TrangThai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mausac`
--

CREATE TABLE `mausac` (
  `MaMauSac` int(11) NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `TenMauSac` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MaHienThi` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mausac`
--

INSERT INTO `mausac` (`MaMauSac`, `MaSanPham`, `TenMauSac`, `MaHienThi`) VALUES
(206, 88, 'blue', 'blue'),
(207, 88, 'red', 'red'),
(208, 88, 'white', 'white'),
(209, 88, 'black', 'black'),
(210, 89, 'blue', 'blue'),
(211, 89, 'red', 'red'),
(212, 89, 'black', 'black'),
(213, 90, 'blue', 'blue'),
(214, 90, 'red', 'red'),
(215, 90, 'white', 'white'),
(216, 90, 'black', 'black'),
(217, 91, 'blue', 'blue'),
(218, 91, 'red', 'red'),
(219, 91, 'black', 'black'),
(220, 92, 'blue', 'blue'),
(221, 92, 'red', 'red'),
(222, 92, 'white', 'white'),
(223, 92, 'black', 'black'),
(224, 93, 'blue', 'blue'),
(225, 93, 'red', 'red'),
(226, 93, 'white', 'white'),
(227, 93, 'black', 'black'),
(228, 94, 'red', 'red'),
(229, 94, 'white', 'white'),
(230, 94, 'black', 'black'),
(231, 95, 'red', 'red'),
(232, 95, 'black', 'black'),
(233, 96, 'black', 'black'),
(234, 97, 'blue', 'blue'),
(235, 97, 'black', 'black'),
(236, 98, 'blue', 'blue'),
(237, 98, 'red', 'red'),
(238, 98, 'black', 'black'),
(239, 98, 'pink', 'pink'),
(240, 99, 'red', 'red'),
(241, 99, 'white', 'white'),
(242, 99, 'black', 'black'),
(243, 99, 'pink', 'pink'),
(244, 100, 'red', 'red'),
(245, 100, 'black', 'black'),
(246, 100, 'pink', 'pink'),
(247, 101, 'red', 'red'),
(248, 101, 'black', 'black'),
(249, 102, 'red', 'red'),
(250, 102, 'black', 'black');

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `MaNhaCungCap` int(11) NOT NULL,
  `TenNhaCungCap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MoTa` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `MaChuyenMuc` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNhanVien` int(11) NOT NULL,
  `TenNhanVien` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SoDienThoai` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` text COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `AnhChinh` text COLLATE utf8_unicode_ci NOT NULL,
  `TaiKhoan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TrangThai` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`MaNhanVien`, `TenNhanVien`, `SoDienThoai`, `DiaChi`, `Email`, `AnhChinh`, `TaiKhoan`, `MatKhau`, `TrangThai`) VALUES
(1, 'Chu Minh Nam', '0999999999', 'Hà Nội', 'chuminhnamma@gmail.com', 'http://localhost/webshop_ci/uploads/logo3.png', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSanPham` int(11) NOT NULL,
  `TenSanPham` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MoTaNgan` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `MoTaDai` text COLLATE utf8_unicode_ci NOT NULL,
  `GiaGoc` int(11) NOT NULL,
  `GiaBan` int(11) NOT NULL,
  `MaChuyenMuc` int(11) NOT NULL,
  `The` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DuongDan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TrangThai` int(11) NOT NULL DEFAULT 1,
  `SoLuong` int(11) NOT NULL DEFAULT 0,
  `LoaiSanPham` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSanPham`, `TenSanPham`, `MoTaNgan`, `MoTaDai`, `GiaGoc`, `GiaBan`, `MaChuyenMuc`, `The`, `DuongDan`, `TrangThai`, `SoLuong`, `LoaiSanPham`) VALUES
(88, 'Wave Alpha 110cc', 'Ở phiên bản 2024, hãng xe máy Nhật Bản tinh chỉnh thiết kế với bộ tem họa tiết mới, trẻ trung và thời trang hơn. Trong khi thiết kế tổng thể và động cơ giữ nguyên như bản cũ.', '<h1>Phi&ecirc;n bản đặc biệt diện mạo trẻ trung</h1>\r\n\r\n<p>Ấn tượng với m&agrave;u đen nh&aacute;m trẻ trung, độc đ&aacute;o, mang lại cho bạn h&igrave;nh ảnh năng động.</p>\r\n\r\n<h1>Tem xe độc đ&aacute;o mới</h1>\r\n\r\n<p>Thiết kế tem tr&ecirc;n th&acirc;n xe h&agrave;i h&ograve;a với logo c&aacute;ch điệu &quot;Wave Alpha&quot; v&agrave; nền họa tiết trẻ trung, với m&agrave;u sắc kh&aacute;c nhau tr&ecirc;n mỗi xe. To&agrave;n bộ thiết kế năng động v&agrave; mạnh mẽ, gi&uacute;p người d&ugrave;ng tự tin khoe trọn c&aacute; t&iacute;nh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/July2023/z85orAXNqebWITiPOhD1.jpg\" /></p>\r\n\r\n<h1>Mặt đồng hồ dễ quan s&aacute;t</h1>\r\n\r\n<p>C&aacute;c th&ocirc;ng số vận h&agrave;nh được hiển thị đầy đủ gi&uacute;p người l&aacute;i quan s&aacute;t một c&aacute;ch dễ d&agrave;ng v&agrave; thuận tiện. Hệ thống đ&egrave;n hiển thị tr&ecirc;n mặt đồng hồ nổi bật, dễ quan s&aacute;t khi di chuyển.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/July2023/d01MTcRPw5eXTcokRLkq.jpg\" /></p>\r\n\r\n<h1>Động cơ 110cc</h1>\r\n\r\n<p>Wave Alpha được trang bị động cơ 110cc bền bỉ, hiệu suất vượt trội m&agrave; vẫn đảm bảo khả năng tiết kiệm nhi&ecirc;n liệu một c&aacute;ch tối ưu, từ đ&oacute; đem lại cảm gi&aacute;c l&aacute;i th&uacute; vị v&agrave; tiết kiệm chi ph&iacute; vận h&agrave;nh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/July2023/p2RD4o3LozJPWpJylb3g.jpg\" /></p>\r\n', 18000000, 17000000, 28, 'honda, wave alpha, xe số ', 'wave-alpha-110cc', 1, 200, 1),
(89, 'Honda Blade 2023', 'Honda Blade 2023 là sự kết hợp hoàn hảo giữa phong cách thể thao khỏe khoắn cùng với thiết kế gọn gàng tiện lợi. Những đường nét vuốt nhọn đầy góc cạnh không chỉ tôn lên vẻ sắc sảo & thanh thoát mà còn tạo ra nét cá tính đầy riêng biệt của Honda Blade.', '<h1>Tem xe đột ph&aacute; đầy tinh tế</h1>\r\n\r\n<p>Phong c&aacute;ch thiết kế đột ph&aacute; được thể hiện r&otilde; qua từng thiết kế tem tr&ecirc;n mỗi phi&ecirc;n bản xe.<br />\r\nPhi&ecirc;n bản Thể thao (v&agrave;nh đ&uacute;c phanh đĩa) sở hữu tem xe &quot;SPORT&quot; thiết kế mới với m&agrave;u sắc trẻ trung, nổi bật, tạo cảm gi&aacute;c hiện đại v&agrave; năng động cho người l&aacute;i.<br />\r\nPhi&ecirc;n bản Đặc biệt (v&agrave;nh nan hoa, phanh đĩa) mang diện mạo sắc sảo với dải tem thanh tho&aacute;t m&agrave;u v&agrave;ng vuốt dọc th&acirc;n xe c&ugrave;ng tem chữ &quot;SPECIAL&quot; nổi bật.<br />\r\nPhi&ecirc;n bản Ti&ecirc;u chuẩn (v&agrave;nh nan hoa, phanh cơ) mới mẻ với tem xe c&aacute;ch điệu, phối hợp giữa c&aacute;c mảng m&agrave;u mang đậm chất trẻ trung, khỏe khoắn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/March2023/aEjItnU3HHOm4PopEbnv.jpg\" /></p>\r\n\r\n<h1>Mặt đồng hồ hiện đại</h1>\r\n\r\n<p>Mặt đồng hồ hiện đại sở hữu đường n&eacute;t tinh tế, c&aacute;c th&ocirc;ng số được hiển thị đầy đủ, gi&uacute;p người điều khiển quan s&aacute;t thuận tiện</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/March2023/gAxtHSocuY8Xsfz5ESls.jpg\" /></p>\r\n\r\n<h1>Bảng m&agrave;u trẻ trung ấn tượng</h1>\r\n\r\n<p>Sắc đen nh&aacute;m được &aacute;p dụng tr&ecirc;n phi&ecirc;n bản Đặc biệt đem đến h&igrave;nh ảnh ấn tượng, cao cấp.<br />\r\nPhi&ecirc;n bản Thể thao tạo điểm nhấn với 3 m&agrave;u sắc đỏ, đen, xanh được biến tấu về t&ocirc;ng m&agrave;u, gi&uacute;p tăng th&ecirc;m vẻ thể thao, nổi bật. Phi&ecirc;n bản Ti&ecirc;u chuẩn với sắc xanh c&aacute; t&iacute;nh v&agrave; sắc đỏ mạnh mẽ, tạo cảm gi&aacute;c trẻ trung cho chủ sở hữu.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/March2023/HAPTrBCcOwyPvl52Lzyj.jpg\" /></p>\r\n\r\n<h1>Th&acirc;n xe vuốt gọn v&agrave; thiết kế ph&iacute;a sau trẻ trung</h1>\r\n\r\n<p>Thiết kế mang t&iacute;nh thể thao, phần nhựa ốp gọn v&agrave; vuốt theo chiều d&agrave;i gi&uacute;p xe thanh tho&aacute;t hơn. Cụm đ&egrave;n hậu liền khối tạo cảm gi&aacute;c chắc chắn v&agrave; trẻ trung cho Honda Blade 2023.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/March2023/mIos932NCbyWT11ZHuEJ.jpg\" /></p>\r\n', 21000000, 19000000, 28, 'honda, honda blade, xe số', 'honda-blade-2023', 1, 200, 1),
(90, 'Honda Future 125 FI', 'Future 125 FI bao gồm 03 phiên bản. Phiên bản đặc biệt hoàn toàn mới với vành đúc và 2 màu sắc: màu Đen và Xanh Đen mang lại vẻ trẻ trung và hiện đại. Ngoài ra, 2 phiên bản Cao cấp và Tiêu chuẩn được áp dụng cách phối màu mới trên các chi tiết nhựa từ yên xe, tay dắt sau, mặt ốp trong xe, yếm xe mang lại hình ảnh tổng thể mới mẻ và thu hút hơn cho xe Future 125 FI.', '<h1>Phi&ecirc;n bản mới v&agrave; m&agrave;u xe mới hiện đại, tinh tế</h1>\r\n\r\n<p>Future 125 FI bao gồm 03 phi&ecirc;n bản. Phi&ecirc;n bản đặc biệt ho&agrave;n to&agrave;n mới với v&agrave;nh đ&uacute;c v&agrave; 2 m&agrave;u sắc: m&agrave;u Đen v&agrave; Xanh Đen mang lại vẻ trẻ trung v&agrave; hiện đại. Ngo&agrave;i ra, 2 phi&ecirc;n bản Cao cấp v&agrave; Ti&ecirc;u chuẩn được &aacute;p dụng c&aacute;ch phối m&agrave;u mới tr&ecirc;n c&aacute;c chi tiết nhựa từ y&ecirc;n xe, tay dắt sau, mặt ốp trong xe, yếm xe mang lại h&igrave;nh ảnh tổng thể mới mẻ v&agrave; thu h&uacute;t hơn cho xe Future 125 FI.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/October2021/Q1UICdPkMMgHUClZhwzc.png\" /></p>\r\n\r\n<h1>Đ&egrave;n pha LED</h1>\r\n\r\n<p>Cụm đ&egrave;n pha với thiết kế nổi bật, được trang bị đ&egrave;n LED c&oacute; tuổi thọ cao, tiết kiệm năng lượng, với cường độ &aacute;nh s&aacute;ng mạnh, gi&uacute;p n&acirc;ng cao khả năng quan s&aacute;t khi đi v&agrave;o ban đ&ecirc;m.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/October2021/UdmjQT6UPGaf2XC6QPrf.png\" /></p>\r\n\r\n<h1>Logo Future 3D</h1>\r\n\r\n<p>Logo &quot;Future&quot; 3D cao cấp l&agrave;m tăng th&ecirc;m vẻ hiện đại v&agrave; sang trọng cho xe.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/October2021/OisWOk7SLESZp3WU4JMd.png\" /></p>\r\n\r\n<h1>Đ&egrave;n chiếu s&aacute;ng ph&iacute;a trước lu&ocirc;n s&aacute;ng khi vận h&agrave;nh xe</h1>\r\n\r\n<p>Đảm bảo cho người điều khiển xe c&oacute; tầm nh&igrave;n tốt nhất, hạn chế c&aacute;c trường hợp qu&ecirc;n bật đ&egrave;n pha khi đi trong điều kiện &aacute;nh s&aacute;ng kh&ocirc;ng đảm bảo, ngo&agrave;i ra gi&uacute;p tăng khả năng nhận diện của xe khi lưu th&ocirc;ng tr&ecirc;n đường phố.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/October2021/c9Z843t35KzJNLISxvrp.png\" /></p>\r\n\r\n<h1>Động cơ 125cc</h1>\r\n\r\n<p>Động cơ 125cc danh tiếng của Honda được &aacute;p dụng tr&ecirc;n Future 125 FI vốn lu&ocirc;n nhận được sự y&ecirc;u mến lớn từ kh&aacute;ch h&agrave;ng Việt Nam, nay vẫn duy tr&igrave; chất lượng cao, đi k&egrave;m với thiết kế lọc gi&oacute;, gi&uacute;p tăng c&ocirc;ng suất tối đa, m&ocirc;-men xoắn cực đại v&agrave; khả năng tăng tốc mạnh mẽ.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/October2021/syRTfgaCEBxtNNVV5gxX.png\" /></p>\r\n', 32000000, 30000000, 28, 'honda, future 125fi, xe số', 'honda-future-125-fi', 1, 200, 1),
(91, 'Honda Wave RSX FI 110', 'Honda Wave RSX FI 110 vẫn sử dụng động cơ 110cc, 4 kỳ, xi-lanh đơn, làm mát bằng không khí kết hợp hệ thống phun xăng điện tử PGM-FI, cho công suất cực đại 8,9 mã lực tại 7.500 vòng/phút và mô-men xoắn cực đại 8,7 Nm tại 6.000 vòng/phút.', '<h1>M&agrave;u mới ấn tượng</h1>\r\n\r\n<p>Sắc đen nh&aacute;m được &aacute;p dụng lần đầu ti&ecirc;n tr&ecirc;n phi&ecirc;n bản Đặc biệt (v&agrave;nh nan hoa, phanh đĩa) đem đến h&igrave;nh ảnh ấn tượng, nam t&iacute;nh.<br />\r\nPhi&ecirc;n bản Thể thao (v&agrave;nh đ&uacute;c, phanh đĩa) tạo điểm nhấn với 3 m&agrave;u sắc đỏ, trắng, xanh được biến tấu về t&ocirc;ng m&agrave;u, gi&uacute;p tăng th&ecirc;m vẻ thể thao, nổi bật. Phi&ecirc;n bản Ti&ecirc;u chuẩn (v&agrave;nh nan hoa phanh cơ) sở hữu sắc đỏ mạnh mẽ.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/December2022/Y2oE0HQfpu9GvVKkFLZo.jpg\" /></p>\r\n\r\n<h1>Thiết kế ph&iacute;a trước mạnh mẽ</h1>\r\n\r\n<p>Mặt nạ trước được thiết kế tinh tế v&agrave; mạnh mẽ, thể hiện vẻ đẹp hiện đại v&agrave; đặc biệt cuốn h&uacute;t của chiếc xe.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/December2022/CZctuw4jMDQn8y5T8PmP.jpg\" /></p>\r\n\r\n<h1>Tem xe mới ấn tượng</h1>\r\n\r\n<p>Phong c&aacute;ch thiết kế đột ph&aacute; với c&aacute;c đường nổi ph&aacute; c&aacute;ch độc đ&aacute;o, sắc sảo v&agrave; thanh tho&aacute;t tr&ecirc;n th&acirc;n xe. Logo 3D &ldquo;RSX&rdquo; (tr&ecirc;n phi&ecirc;n bản Thể thao) kết hợp với tem được thiết kế ri&ecirc;ng cho từng phi&ecirc;n bản gi&uacute;p người d&ugrave;ng thể hiện những n&eacute;t c&aacute; t&iacute;nh kh&aacute;c biệt.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/December2022/RnY4xpVdb1yTAq4fDjdT.jpg\" /></p>\r\n\r\n<h1>Mặt đồng hồ thể thao</h1>\r\n\r\n<p>Thiết kế mặt đồng hồ c&oacute; logo RSX nổi bật ph&iacute;a tr&ecirc;n tạo dấu ấn ngay từ &aacute;nh nh&igrave;n đầu ti&ecirc;n, mang d&aacute;ng vẻ thể thao hiện đại, được bố tr&iacute; khoa học, dễ d&agrave;ng quan s&aacute;t c&aacute;c th&ocirc;ng số vận h&agrave;nh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/December2022/2i1AGHLNYxYr2SRHWaZb.jpg\" /></p>\r\n\r\n<h1>Thiết kế ph&iacute;a sau tinh tế</h1>\r\n\r\n<p>Thiết kế ph&iacute;a sau mang d&aacute;ng vẻ v&ocirc; c&ugrave;ng khỏe khoắn với cụm đ&egrave;n hậu vuốt cao ki&ecirc;u h&atilde;nh tăng th&ecirc;m dấu ấn c&aacute; t&iacute;nh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/December2022/wqvdmbZKIY7LoMQc1GM2.jpg\" /></p>\r\n', 23000000, 21000000, 28, 'honda, Wave RSX , xe số', 'honda-wave-rsx-fi-110', 1, 200, 1),
(92, 'Honda AIR BLADE 160', 'Hiện nay, Cty Honda Việt Nam (HVN) chính thức giới thiệu đến khách phiên bản Air Blade 160 2023 đúng như những thông tin rò rĩ thì mẫu xe thế hệ mới này ra mắt người dùng với khối động cơ eSP+ 160cc, 4 van. Honda Air Blade 160 mới 2023 lột xác khi nâng cấp động cơ 160cc mạnh mẽ tuy nhiên vẫn chưa trang bị hệ thống phanh đĩa sau cho phiên bản Air Blade 160 2023.', '<h1>Khung xe ho&agrave;n to&agrave;n mới</h1>\r\n\r\n<p>Khung xe được tinh chỉnh, duy tr&igrave; độ đầm chắc v&agrave; mạnh mẽ vốn c&oacute;, đồng thời tạo ra k&iacute;ch cỡ nhỏ gọn cho mẫu xe mới với đường n&eacute;t &quot;thanh tho&aacute;t v&agrave; nhỏ gọn&quot;.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/May2022/5XuDeCZU1ItWHg2346a3.jpg\" /></p>\r\n\r\n<h1>Phối m&agrave;u ấn tượng</h1>\r\n\r\n<p>Thiết kế được tinh chỉnh v&agrave; phối m&agrave;u mang đậm tinh thần thể thao, nhưng vẫn đảm bảo đường n&eacute;t, m&agrave;u sắc h&agrave;i h&ograve;a tổng thể.<br />\r\nPhi&ecirc;n bản Đặc biệt 160cc với t&ocirc;ng m&agrave;u chủ đạo Xanh X&aacute;m Đen độc đ&aacute;o c&ugrave;ng điểm nhấn logo mang t&iacute;nh biểu tượng khẳng định vị thế, c&aacute; t&iacute;nh nổi bật, thu h&uacute;t người nh&igrave;n ngay từ &aacute;nh nh&igrave;n đầu ti&ecirc;n.<br />\r\nPhi&ecirc;n bản Ti&ecirc;u chuẩn 160cc với t&ocirc;ng m&agrave;u tối mạnh mẽ, điểm xuyết c&aacute;c miếng ốp m&agrave;u x&aacute;m được bố tr&iacute; h&agrave;i h&ograve;a. Với 3 m&agrave;u sắc Xanh x&aacute;m, Đỏ X&aacute;m, Đen X&aacute;m, phi&ecirc;n bản n&agrave;y sẽ l&agrave; lựa chọn tuyệt hảo cho những kh&aacute;ch h&agrave;ng đang t&igrave;m kiếm sự &quot;cao cấp v&agrave; mạnh mẽ&quot; trong từng chi tiết.<br />\r\nPhi&ecirc;n bản Đặc biệt 125cc lại l&agrave; sự kết hợp sắc m&agrave;u Đen nh&aacute;m huyền b&iacute; c&ugrave;ng c&aacute;c chi tiết trang tr&iacute; logo &amp; t&ecirc;n xe m&agrave;u v&agrave;ng tạo ra điểm nhấn ấn tượng, h&igrave;nh ảnh tổng thể mạnh mẽ, nam t&iacute;nh.<br />\r\nPhi&ecirc;n bản Ti&ecirc;u chuẩn 125cc với 2 m&agrave;u Xanh Đen v&agrave; Đỏ Đen, mang lại sự tương phản k&iacute;ch th&iacute;ch thị gi&aacute;c, tạo ra h&igrave;nh ảnh một chiếc xe tay ga thể thao ti&ecirc;u chuẩn nhưng kh&ocirc;ng k&eacute;m phần kh&aacute;c biệt.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/May2022/2B1nycBIkpqCIZl4mk4Z.jpg\" /></p>\r\n\r\n<h1>Cụm đ&egrave;n LED hiện đại</h1>\r\n\r\n<p>AIR BLADE sử dụng đ&egrave;n định vị LED cỡ lớn với thiết kế đ&egrave;n trước được m&ocirc; phỏng cấu tr&uacute;c đ&egrave;n từ những mẫu xe ph&acirc;n khối lớn, tạo cảm gi&aacute;c thể thao năng động.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/May2022/STeO5pVQ7LZdD96HVuD0.jpg\" /></p>\r\n\r\n<h1>Mặt đồng hồ LCD thể thao</h1>\r\n\r\n<p>Mặt đồng hồ LCD kỹ thuật số với thiết kế hiện đại, gọn g&agrave;ng, gi&uacute;p tăng khả năng hiển thị v&agrave; dễ d&agrave;ng quan s&aacute;t. Ngo&agrave;i hai th&ocirc;ng tin về h&agrave;nh tr&igrave;nh, đồng hồ c&ograve;n hiển thị th&ocirc;ng tin ti&ecirc;u thụ nhi&ecirc;n liệu tức thời/trung b&igrave;nh, gi&uacute;p người d&ugrave;ng theo d&otilde;i được sự kh&aacute;c biệt trong những t&igrave;nh huống l&aacute;i xe kh&aacute;c nhau.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/May2022/TE6Pse3qm96hLzOmaiae.jpg\" /></p>\r\n', 55000000, 52000000, 29, 'honda. honda air blade, xe tay ga', 'honda-air-blade-160', 1, 200, 1),
(93, 'Honda Vision', 'Thuộc phân khúc xe tay ga phổ thông, Vision luôn là mẫu xe quốc dân được yêu thích, đặc biệt trong giới trẻ nhờ kiểu dáng thời trang, trẻ trung và nhỏ gọn, khả năng tiết kiệm nhiên liệu vượt trội và vô cùng bền bỉ.', '<h1>Kiểu d&aacute;ng thời trang v&agrave; đa dạng m&agrave;u sắc lựa chọn</h1>\r\n\r\n<p>Th&acirc;n xe nhỏ gọn kế thừa n&eacute;t thiết kế của d&ograve;ng xe SH, với những đường n&eacute;t r&otilde; r&agrave;ng, liền mạch kết hợp h&agrave;i h&ograve;a với phong c&aacute;ch trẻ trung, thời trang, nay nổi bật v&agrave; cuốn h&uacute;t hơn với m&agrave;u mới lạ tr&ecirc;n phi&ecirc;n bản đặc biệt v&agrave; phi&ecirc;n bản thể thao.<br />\r\nNgo&agrave;i ra, c&aacute;c họa tiết tinh tế được thể hiện tr&ecirc;n nhiều chi tiết thiết kế gi&uacute;p đem lại h&igrave;nh ảnh thời trang cho mẫu xe mới.</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<h1>Thiết kế ph&iacute;a trước hiện đại v&agrave; năng động</h1>\r\n\r\n<p>Thiết kế ph&iacute;a trước kế thừa sự năng động vốn c&oacute; của Vision c&ugrave;ng hiệu ứng &aacute;nh s&aacute;ng đẹp mắt được tạo n&ecirc;n bởi sự kết hợp giữa đường n&eacute;t thiết kế ba chiều v&agrave; hệ thống đ&egrave;n trước. Tất cả tổng h&ograve;a n&ecirc;n một thiết kế trẻ trung, hiện đại, năng động, kh&ocirc;ng k&eacute;m phần sang trọng. Ri&ecirc;ng phi&ecirc;n bản thể thao được thiết kế cụm đ&egrave;n trước sau với thấu k&iacute;nh m&agrave;u x&aacute;m kh&oacute;i, gi&uacute;p t&ocirc;n vinh vẻ ngo&agrave;i độc đ&aacute;o v&agrave; thể thao mạnh mẽ.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/November2022/fL07ot4CJbt3Eliq9fQ2.jpg\" /></p>\r\n\r\n<h1>Logo 3D năng động v&agrave; ấn tượng</h1>\r\n\r\n<p>Logo 3D nổi tr&ecirc;n th&acirc;n xe với đường n&eacute;t liền mạch, r&otilde; r&agrave;ng mang đến h&igrave;nh ảnh trẻ trung v&agrave; năng động.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/December2022/F3vD1KkTCzVkiPcJ6xns.jpg\" /></p>\r\n\r\n<h1>Thiết kế sau ấn tượng</h1>\r\n\r\n<p>Cụm đ&egrave;n sau v&agrave; đ&egrave;n xi nhan được thiết kế tinh xảo, bố tr&iacute; liền khối mang lại phong c&aacute;ch trẻ trung, thanh lịch, nhỏ gọn tiện lợi.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/November2022/OZwGqyrQizHXocCsgS1x.jpg\" /></p>\r\n\r\n<h1>Mặt đồng hồ hiện đại</h1>\r\n\r\n<p>Thiết kế mặt đồng hồ trẻ trung, thanh lịch nhưng kh&ocirc;ng k&eacute;m phần hiện đại với m&agrave;n h&igrave;nh LCD hiển thị số qu&atilde;ng đường v&agrave; mức nhi&ecirc;n liệu.<br />\r\nĐ&egrave;n hiển thị xi nhan tr&ecirc;n mặt đồng hồ được cải tiến với bố tr&iacute; t&aacute;ch rời hai b&ecirc;n tr&aacute;i v&agrave; phải gi&uacute;p người d&ugrave;ng nhanh ch&oacute;ng v&agrave; dễ d&agrave;ng quan s&aacute;t khi chuyển hướng.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/November2022/NfweVPjeSDcMN4WQuqcI.jpg\" /></p>\r\n\r\n<h1>B&aacute;nh xe trước 14 inch &amp; 16 inch thiết kế ri&ecirc;ng biệt</h1>\r\n\r\n<p>B&aacute;nh xe trước c&oacute; k&iacute;ch thước lớn 16 inch (ở phi&ecirc;n bản thể thao) v&agrave; 14 inch (ở c&aacute;c phi&ecirc;n bản c&ograve;n lại), kết hợp với thiết kế liền mạch ở th&acirc;n xe, đem đến tư thế l&aacute;i xe cao, thẳng đứng c&ugrave;ng tầm nh&igrave;n tho&aacute;ng rộng.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/November2022/pXgXucLjgRv39VjyWmRL.jpg\" /></p>\r\n', 34000000, 31000000, 29, 'honda, honda vision, xe tay ga', 'honda-vision', 1, 200, 1),
(94, 'Honda CBR150R', 'Tự hào mang trong mình tinh thần mô tô thể thao đặc trưng thương hiệu Honda, CBR150R là đáp án cho những ai đang tìm kiếm mảnh ghép trong cuộc sống năng động. Tính thể thao và linh hoạt của CBR150R xứng danh chiến hữu đích thực giúp bạn tự tin làm chủ mọi cung đường.', '<h1>H&igrave;nh ảnh thể thao với tem xe v&agrave; phối m&agrave;u mới nổi bật</h1>\r\n\r\n<p>CBR150R 2023 được phối m&agrave;u bắt mắt hơn, mang lại h&igrave;nh ảnh khỏe khoắn cho người cầm l&aacute;i. M&agrave;u sơn tr&ecirc;n th&acirc;n xe được kết hợp h&agrave;i h&ograve;a, kh&ocirc;ng những mang lại hiệu ứng thị gi&aacute;c mạnh mẽ m&agrave; c&ograve;n tạo l&agrave;n gi&oacute; mới trong phong c&aacute;ch của chủ sở hữu.<br />\r\nPhi&ecirc;n bản Thể thao mang m&agrave;u đỏ c&ugrave;ng phần mặt nạ trước m&agrave;u trắng v&agrave; v&agrave;nh xe m&agrave;u v&agrave;ng mới, tạo h&igrave;nh ảnh năng động, khỏe khoắn.<br />\r\nPhi&ecirc;n bản Đặc biệt sở hữu sắc đen nh&aacute;m, được điểm th&ecirc;m chi tiết v&agrave;nh xe m&agrave;u n&acirc;u nổi bật.<br />\r\nPhi&ecirc;n bản Ti&ecirc;u chuẩn trẻ trung khi được tận dụng tối đa sắc đỏ v&agrave; đen.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/April2023/hgp3Ue7aVdTsP0GlzAtC.png\" /></p>\r\n\r\n<h1>Hệ thống đ&egrave;n LED nổi bật</h1>\r\n\r\n<p>CBR150R nổi bật với hệ thống chiếu s&aacute;ng được trang bị to&agrave;n bộ đ&egrave;n LED, đ&egrave;n ph&iacute;a trước t&aacute;ch th&agrave;nh hai tầng với chức năng ri&ecirc;ng biệt: đ&egrave;n ban ng&agrave;y tầng tr&ecirc;n v&agrave; đ&egrave;n pha/cos tầng dưới gi&uacute;p mang lại khả năng chiếu s&aacute;ng tối ưu.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/April2023/D445BvweoUiCLbhmknWd.jpg\" /></p>\r\n\r\n<h1>Đồng hồ kỹ thuật số LCD hiện đại</h1>\r\n\r\n<p>Cụm đồng hồ kỹ thuật số m&agrave;n h&igrave;nh LCD được bố tr&iacute; hiển thị c&aacute;c th&ocirc;ng số kỹ thuật như tốc độ, v&ograve;ng tua m&aacute;y, cấp số, b&aacute;o xăng v&agrave; xi nhan cho người l&aacute;i dễ d&agrave;ng quan s&aacute;t khi vận h&agrave;nh xe tr&ecirc;n đường.</p>\r\n\r\n<h1>Giảm x&oacute;c h&agrave;nh tr&igrave;nh ngược Up side down thể thao</h1>\r\n\r\n<p>CBR150R khẳng định l&agrave; mẫu xe c&ocirc;n tay thể thao d&agrave;nh cho th&agrave;nh thị với trang bị giảm x&oacute;c h&agrave;nh tr&igrave;nh ngược. Phần sơn mạ v&agrave;ng gi&uacute;p to&agrave;n bộ phần trước của xe mang h&igrave;nh ảnh cứng c&aacute;p, cao cấp.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/April2023/Mc21mCGwlr5p8DvD8Y6D.jpg\" /></p>\r\n\r\n<h1>B&igrave;nh xăng trước dung t&iacute;ch lớn với đường n&eacute;t sắc cạnh</h1>\r\n\r\n<p>B&igrave;nh xăng ph&iacute;a trước với dung t&iacute;ch lớn 12 l&iacute;t, với ốp b&igrave;nh xăng được cắt sắc n&eacute;t tạo sự gọn g&agrave;ng v&agrave; độ tho&aacute;ng nhất định cho g&oacute;c l&aacute;i, gi&uacute;p người điều khiển thoải m&aacute;i di chuyển v&agrave; kh&aacute;m ph&aacute; mọi cung đường.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/April2023/x8DBk3Yc63hqkrPwEUzc.png\" /></p>\r\n', 75000000, 72000000, 30, 'honda, xe côn tay, cbr150r honda', 'honda-cbr150r', 1, 150, 3),
(95, 'Honda Winner X', 'Cuộc đời là một cuộc phiêu lưu tràn đầy những điều bất ngờ và mỗi người đều có một vạch đích của riêng mình. Hãy tự tin tạo những cú kích để vút xa và tạo dấu ấn riêng biệt cùng Honda WINNER X mới. Đánh dấu sự chuyển mình mạnh mẽ hướng tới hình ảnh một mẫu siêu xe thể thao cỡ nhỏ hàng đầu tại Việt Nam cùng những trang bị hiện đại và tối tân, WINNER X mới sẵn sàng cùng các tay lái bứt tốc trên mọi hành trình khám phá.', '<h1>Kiểu d&aacute;ng si&ecirc;u thể thao đậm chất kh&iacute; động lực</h1>\r\n\r\n<p>Với phong c&aacute;ch thiết kế &quot;mạnh mẽ, năng động&quot; v&agrave; &quot;nam t&iacute;nh, nổi bật&quot;, WINNER X thế hệ mới sỡ hữu n&eacute;t sắc b&eacute;n v&agrave; chắc chắn với thiết kế liền mạch v&agrave; dứt kho&aacute;t từ sau ra trước gợi l&ecirc;n h&igrave;nh ảnh của một tay l&aacute;i đang tự tin bứt tốc trong d&ograve;ng chảy của &aacute;nh s&aacute;ng v&agrave; tốc độ. Những đường cắt sắc n&eacute;t tạo h&igrave;nh chữ V gi&uacute;p cho phần đầu xe sở hữu diện mạo chắc chắn v&agrave; đậm chất kh&iacute; động học, đặc biệt khi trải nghiệm ở những dải tốc độ cao.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/December2021/eUKep4O2Ccr3OizFH7B2.png\" /></p>\r\n\r\n<h1>Cụm đ&egrave;n xi nhan gọn g&agrave;ng</h1>\r\n\r\n<p>Đ&egrave;n xi nhan ph&iacute;a trước với thiết kế ho&agrave;n to&agrave;n mới, gọn g&agrave;ng v&agrave; h&agrave;i h&ograve;a với th&acirc;n xe gi&uacute;p đem lại h&igrave;nh vẻ nhanh lẹ v&agrave; thanh tho&aacute;t. Đồng thời, trang bị c&ocirc;ng nghệ LED cho to&agrave;n bộ hệ thống đ&egrave;n gi&uacute;p tiết kiệm năng lượng v&agrave; tăng th&ecirc;m nhận diện độc đ&aacute;o cho chiếc xe.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/December2021/AsIsd85eH2wDOjTews9F.png\" /></p>\r\n\r\n<h1>Thiết kế hai b&ecirc;n nổi bật</h1>\r\n\r\n<p>Nổi bật tr&ecirc;n mọi h&agrave;nh tr&igrave;nh với yếm xe mới được mở rộng với những khe gi&oacute; thiết kế kh&iacute; động lực tương tự như tr&ecirc;n mẫu si&ecirc;u m&ocirc; t&ocirc; thể thao c&agrave;ng l&agrave;m t&ocirc; đậm vẻ si&ecirc;u thể thao v&agrave; trẻ trung của mẫu xe.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/December2021/H5M3H3BtB0EMshHsjs7A.png\" /></p>\r\n\r\n<h1>Đu&ocirc;i xe thon gọn</h1>\r\n\r\n<p>Đu&ocirc;i xe được thiết kế thon gọn, kiểu d&aacute;ng si&ecirc;u thể thao, đem lại h&igrave;nh ảnh trẻ trung v&agrave; tốc độ.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/December2021/okEk00cfgvukJ5T27Pz8.png\" /></p>\r\n\r\n<h1>Ống xả thiết kế mới</h1>\r\n\r\n<p>G&oacute;c ra v&ograve;i ống xả được điều chỉnh giảm 20 độ so với thế hệ trước gi&uacute;p ho&agrave;n thiện hơn trải nghiệm cho người l&aacute;i xe; v&agrave; th&acirc;n thiện cho phương tiện ph&iacute;a sau. Winner X vẫn giữ được chất &acirc;m thanh phấn kh&iacute;ch đặc trưng khơi gợi cảm x&uacute;c đỉnh cao của người l&aacute;i.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/December2021/SIoZlOWSZD5lacwW3JJ3.png\" /></p>\r\n', 45000000, 42000000, 30, 'honda, xe côn tay, winner x ', 'honda-winner-x', 1, 200, 3),
(96, 'Honda CB150R The Streetster', 'CB150R là sự pha trộn hoàn hảo giữa cổ điển và đương đại, nam tính và đầy bản lĩnh với màu sắc mới tinh tế từ khung, phuộc và tem xe, cùng thiết kế tân cổ điển kế thừa phong cách Neo Sport Café đình đám.', '<h1>Trang bị to&agrave;n bộ hệ thống đ&egrave;n LED</h1>\r\n\r\n<p>To&agrave;n bộ hệ thống chiếu s&aacute;ng tr&ecirc;n xe sử dụng b&oacute;ng LED. Thiết kế đ&egrave;n LED ph&iacute;a trước s&agrave;nh điệu, tạo ấn tượng hiện đại, cao cấp cho mẫu xe.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/May2022/npl2KipiWU4zz9xyzzGR.jpg\" /></p>\r\n\r\n<h1>Thiết kế ống xả c&acirc;n đối</h1>\r\n\r\n<p>Ống xả được thiết kế với h&igrave;nh d&aacute;ng v&agrave; trọng lượng ph&ugrave; hợp, c&acirc;n đối mang lại h&igrave;nh ảnh thể thao, c&aacute; t&iacute;nh.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/May2022/75hZHasRZ01IxSK6Klss.jpg\" /></p>\r\n\r\n<h1>Thiết kế b&igrave;nh xăng khỏe khoắn</h1>\r\n\r\n<p>Thiết kế b&igrave;nh xăng g&oacute;c cạnh &ocirc;m theo tư thế người l&aacute;i, c&ugrave;ng dải tem mạnh mẽ tạo điểm nhấn đầy c&aacute; t&iacute;nh.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/May2022/vGg0OJEz8u9ZjH15l5VS.jpg\" /></p>\r\n\r\n<h1>Mặt đồng hồ hiển thị LCD đa năng</h1>\r\n\r\n<p>Đồng hồ hiển thị LCD c&ugrave;ng đ&egrave;n t&iacute;n hiệu được trang bị đầy đủ th&ocirc;ng tin về tốc độ, đ&egrave;n b&aacute;o số, đồng hồ kỹ thuật số gi&uacute;p người l&aacute;i dễ d&agrave;ng quan s&aacute;t, mang đến h&agrave;nh tr&igrave;nh trọn vẹn niềm vui.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/May2022/Br8ZDHlDDUFY99kHoQGc.jpg\" /></p>\r\n\r\n<h1>Lốp xe k&iacute;ch thước lớn</h1>\r\n\r\n<p>Lốp xe k&iacute;ch thước lớn (Lốp trước 110/70-17, lốp sau 150/60-17), lốp kh&ocirc;ng săm với độ an to&agrave;n cao gi&uacute;p vận h&agrave;nh c&acirc;n bằng, vững chắc.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/May2022/cmwM61ZpvsBaPweDG2PO.jpg\" /></p>\r\n\r\n<h1>Phuộc trước h&agrave;nh tr&igrave;nh ngược 41mm</h1>\r\n\r\n<p>Sử dụng hệ thống phuộc h&agrave;nh tr&igrave;nh ngược 41mm - loại phuộc thường gặp tr&ecirc;n c&aacute;c d&ograve;ng xe ph&acirc;n khối lớn, c&ugrave;ng với sự thay đổi m&agrave;u sắc sang đen c&aacute; t&iacute;nh mang lại cảm gi&aacute;c mạnh mẽ, thoải m&aacute;i, &ecirc;m &aacute;i tr&ecirc;n mọi cung đường.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/May2022/t54D3ffFx56B3ayaKsze.png\" /></p>\r\n', 110000000, 105000000, 30, 'honda, xe côn tay, honda cb150r', 'honda-cb150r-the-streetster', 1, 50, 3),
(97, 'Super Cub C125', 'Super Cub C125 2021 vẫn giữ phong cách thiết kế hoài cổ, đặc trưng dòng Cub. Xe thiết kế theo hình chữ S, phối màu tông cổ điển, trang trí thêm nhiều chi tiết bằng chất liệu crôm. Honda bổ sung thêm bản đặc biệt màu đen nhám, tô điểm với bọc yên màu đỏ tạo điểm nhấn, cùng logo Super Cub. Cặp vành thiết kế đa chấu cùng tông màu thân xe.', '<h1>Thiết kế cổ điển, thanh lịch đậm chất Super CUB</h1>\r\n\r\n<p>Thiết kế h&igrave;nh chữ S tạo ấn tượng h&agrave;i h&ograve;a mềm mại cho tổng thể xe, phối m&agrave;u thanh lịch c&ugrave;ng c&aacute;c chi tiết tinh tế trong từng đường n&eacute;t v&agrave; chất liệu mạ cr&ocirc;m mang đến cảm gi&aacute;c cao cấp.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/October2021/WwL6LIRJq466Z2Z5irlr.png\" /></p>\r\n\r\n<h1>Tư thế l&aacute;i xe thoải m&aacute;i</h1>\r\n\r\n<p>Tay l&aacute;i được thiết kế ph&ugrave; hợp gi&uacute;p tư thế l&aacute;i thẳng lưng c&ugrave;ng khả năng điều khiển xe c&acirc;n bằng.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/October2021/riMK5JotPrfKsbdoJj24.jpg\" /></p>\r\n\r\n<h1>Động cơ 125CC</h1>\r\n\r\n<p>Động cơ tr&ecirc;n Super Cub C125 2021 kh&ocirc;ng thay đổi, cỗ m&aacute;y một xi-lanh dung t&iacute;ch 125 ph&acirc;n khối, l&agrave;m m&aacute;t bằng kh&ocirc;ng kh&iacute;, phun xăng điện tử, c&ocirc;ng suất 9,2 m&atilde; lực, m&ocirc;-men xoắn cực đại 10,15 Nm. Hộp số tr&ograve;n 4 cấp.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-versions/October2021/Kn2t7CHz4vuaDK9aj6g7.png\" /></p>\r\n', 90000000, 87000000, 28, 'honda, super cub 125, xe số', 'super-cub-c125', 1, 50, 3),
(98, 'Honda SH Mode 125cc', 'Thuộc phân khúc xe ga cao cấp và thừa hưởng thiết kế sang trọng nổi tiếng của dòng xe SH, Sh mode luôn được đánh giá cao nhờ kiểu dáng sang trọng, tinh tế tới từng đường nét, động cơ tiên tiến và các tiện nghi cao cấp xứng tầm phong cách sống thời thượng, đẳng cấp.', '<h1>4 phi&ecirc;n bản với m&agrave;u sắc đa dạng</h1>\r\n\r\n<p>4 phi&ecirc;n bản Thể thao, Đặc biệt, Cao cấp v&agrave; Ti&ecirc;u chuẩn đa dạng dải m&agrave;u sắc c&ugrave;ng những chi tiết phối m&agrave;u mới tinh tế nhưng kh&ocirc;ng k&eacute;m phần nổi bật. Bổ sung phi&ecirc;n bản thể thao mới được phối m&agrave;u mạnh mẽ, c&aacute; t&iacute;nh v&agrave; sang trọng với t&ocirc;ng x&aacute;m đen tương tự như phi&ecirc;n bản thể thao tr&ecirc;n c&aacute;c mẫu xe cao cấp kh&aacute;c như SH350i v&agrave; SH150i, ph&ugrave; hợp cho c&aacute;c kh&aacute;ch h&agrave;ng trẻ trung v&agrave; c&aacute; t&iacute;nh.<br />\r\nPhi&ecirc;n bản đặc biệt sở hữu lớp phủ sơn mờ tr&ecirc;n nền xe đen v&agrave; x&aacute;m chủ đạo, gi&uacute;p đem lại h&igrave;nh ảnh thời trang, bắt mắt. Một số chi tiết được nhấn bằng m&agrave;u n&acirc;u trầm nổi bật thiết kế tổng thể. Phi&ecirc;n bản cao cấp ấn tượng với 2 m&agrave;u sắc thu h&uacute;t Đỏ đen, Xanh đen c&ugrave;ng chi tiết đường chỉ y&ecirc;n mới sắc sảo, cao cấp. Phi&ecirc;n bản ti&ecirc;u chuẩn với 3 m&agrave;u Đỏ, Xanh v&agrave; Trắng sang trọng v&agrave; thanh lịch.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/October2022/zUnfFfiGdz46ogxNuyKU.png\" /></p>\r\n\r\n<h1>Kiểu d&aacute;ng sang trọng</h1>\r\n\r\n<p>Sở hữu thiết kế tổng thể nhỏ gọn đặc trưng h&igrave;nh chữ S với phong c&aacute;ch Ch&acirc;u &Acirc;u thời trang, thanh lịch v&agrave; đầy quyến rũ.<br />\r\nĐộ cao y&ecirc;n ph&ugrave; hợp, ngay cả c&aacute;c kh&aacute;ch h&agrave;ng với v&oacute;c d&aacute;ng nhỏ nhắn cũng c&oacute; thể cảm nhận được sự tự h&agrave;o khi sở hữu chiếc xe c&oacute; những điểm đ&aacute;ng khao kh&aacute;t của d&ograve;ng xe SH đẳng cấp.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/October2022/mhTnSUrfHig7u8NusSPQ.png\" /></p>\r\n\r\n<h1>Thiết kế ph&iacute;a trước tinh tế</h1>\r\n\r\n<p>Thiết kế ph&iacute;a trước được gợi cảm hứng từ những chai nước hoa cao cấp, tạo n&ecirc;n vẻ đẹp thanh lịch &amp; sang trọng.</p>\r\n\r\n<p>Cụm đ&egrave;n trước sở hữu đồng bộ c&ocirc;ng nghệ LED hiện đại, điểm xuyết lấp l&aacute;nh như một dải trang sức. Th&ecirc;m v&agrave;o đ&oacute;, việc sử dụng c&ocirc;ng nghệ xi mạ chrome ở cả phần kết nối giữa đ&egrave;n trước v&agrave; phần th&acirc;n xe gi&uacute;p tăng t&iacute;nh li&ecirc;n kết, liền mạch.<br />\r\nĐ&egrave;n chiếu s&aacute;ng ph&iacute;a trước lu&ocirc;n s&aacute;ng gi&uacute;p n&acirc;ng cao khả năng hiện diện của xe khi lưu th&ocirc;ng tr&ecirc;n đường phố.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/October2022/souRn2iWaVokpMZDa3DT.jpg\" /></p>\r\n\r\n<h1>Mặt đồng hồ hiện đại</h1>\r\n\r\n<p>Lấy cảm hứng từ chiếc đồng hồ đeo tay cao cấp, mặt đồng hồ với thiết kế đơn giản, sang trọng c&ugrave;ng viền ph&aacute;t s&aacute;ng h&igrave;nh tr&ograve;n bao quanh, đem lại &quot;hiệu ứng &aacute;nh s&aacute;ng&quot; v&agrave;o ban đ&ecirc;m.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/October2022/yCnuyGxq3Fw5uSo1TNPE.jpg\" /></p>\r\n\r\n<h1>Logo 3D nổi bật</h1>\r\n\r\n<p>Logo &quot;Sh&quot; 3D nổi tr&ecirc;n th&acirc;n xe c&oacute; h&igrave;nh d&aacute;ng tựa như logo của d&ograve;ng xe SH đẳng cấp, tiếp nối l&agrave; logo &quot;mode&quot; với đường n&eacute;t tinh xảo, thiết kế bo tr&ograve;n tinh tế.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/October2022/SNws7iyqAUK5SokFSHEZ.jpg\" /></p>\r\n', 60000000, 57000000, 29, 'honda, xe tay ga, sh mode', 'honda-sh-mode-125cc', 1, 200, 3),
(99, 'Honda SH350i', 'Tại Việt Nam, hình ảnh mẫu xe SH từ lâu đã trở thành biểu tượng cho tính đẳng cấp, sang trọng và sự hoàn hảo. Kế thừa những nét đặc trưng đó, mẫu xe SH350i ra mắt năm 2021 đã gây ấn tượng mạnh mẽ với vẻ đẹp đậm chất \"\"hiện đại công nghệ\"\" và “bề thế”. ', '<h1>Thiết kế ph&iacute;a trước cao cấp v&agrave; sắc n&eacute;t</h1>\r\n\r\n<p>Mặt trước g&acirc;y ấn tượng với chi tiết mạ chrome cao cấp c&ugrave;ng tạo khối g&oacute;c cạnh, sắc n&eacute;t l&agrave;m tăng th&ecirc;m vẻ cuốn h&uacute;t cho chủ sở hữu. C&ocirc;ng nghệ LED hiện đại được &aacute;p dụng cho to&agrave;n bộ hệ thống chiếu s&aacute;ng gi&uacute;p nhấn mạnh sự hiện đại v&agrave; h&igrave;nh ảnh sang trọng của SH350i.<br />\r\nĐ&egrave;n chiếu s&aacute;ng ph&iacute;a trước được thiết kế hiện đại l&agrave;m nổi bật sự cao cấp của phần đầu xe. Đ&egrave;n định vị được bố tr&iacute; nằm ph&iacute;a tr&ecirc;n thanh nẹp tay l&aacute;i l&agrave;m tăng vẻ c&aacute; t&iacute;nh v&agrave; sự sang trọng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/December2022/iaP69xMJiEZGPQlZxZgw.png\" /></p>\r\n\r\n<h1>Thiết kế ph&iacute;a sau sang trọng &amp; cuốn h&uacute;t</h1>\r\n\r\n<p>Cụm đ&egrave;n hậu LED được trang tr&iacute; với đường mạ chrome tạo điểm nhấn sang trọng cho phần đu&ocirc;i xe.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/December2022/BtdGPqQO77IwUIORO5Vh.png\" /></p>\r\n\r\n<h1>Mặt đồng hồ LCD hiện đại c&ugrave;ng nhiều t&iacute;nh năng</h1>\r\n\r\n<p>Mặt đồng hồ với vẻ ngo&agrave;i hiện đại, hiển thị r&otilde; r&agrave;ng v&agrave; c&acirc;n đối, đầy đủ tất cả c&aacute;c th&ocirc;ng số v&agrave; đ&egrave;n b&aacute;o hoạt động, gi&uacute;p người d&ugrave;ng dễ d&agrave;ng quan s&aacute;t khi đang vận h&agrave;nh tr&ecirc;n đường. B&ecirc;n cạnh đ&oacute;, điểm nhấn tr&ecirc;n cụm đồng hồ c&ograve;n đến từ chi tiết ốp kim loại mạ chrome h&igrave;nh chữ H, tạo sự sang trọng v&agrave; độc đ&aacute;o.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/December2022/kJPP1w4hoV6XbA2aub8c.png\" /></p>\r\n', 170000000, 150000000, 29, 'honda, honda sh i150cc, xe tay ga', 'honda-sh350i', 1, 200, 3),
(100, 'Rebel 500 2023', 'Tự do tạo dấu ấn của riêng mình Mẫu xe Rebel 500 với khối động cơ 2 xy lanh song song mạnh mẽ, đặt gọn trong bộ khung xe với trọng tâm thấp, phong cách thiết kế tối giản đã đưa chiếc xe trở nên hấp dẫn trong mắt người lái - là một cỗ máy thuần túy để người dùng thỏa sức sáng tạo thể hiện chất riêng của mình - đem đến một phong cách sống TỰ DO, điều mà mẫu Rebel 500 luôn mong muốn mang lại cho người lái.', '<h1>Phong trần v&agrave; mạnh mẽ</h1>\r\n\r\n<p>Mọi thứ đều tối giản. G&oacute;i gọn điều bạn khao kh&aacute;t. Rebel 500 với bộ khung v&agrave; động cơ được phủ đen đồng điệu. B&igrave;nh xăng nh&ocirc; cao mang sự khoẻ khoắn, bụi bặm đặc trưng. Cặp b&aacute;nh xe to bản mang tới cho xe một n&eacute;t cuốn h&uacute;t mạnh mẽ, khoẻ khoắn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/January2023/KdVxM0i1TPMbPLakrErB.jpg\" /></p>\r\n\r\n<h1>Tư thế l&aacute;i tự nhi&ecirc;n</h1>\r\n\r\n<p>G&aacute;c đặt ch&acirc;n được đặt ở vị tr&iacute; giữa xe, cho tư thế l&aacute;i thoải m&aacute;i nhất. Thiết kế gọn g&agrave;ng kết hợp với chiều cao y&ecirc;n xe thấp - chỉ 690mm, c&ugrave;ng sự &ecirc;m &aacute;i tuyệt đối đến từ cải tiến y&ecirc;n xe, mọi chuyến đi giờ th&ecirc;m thoải m&aacute;i để tận hưởng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/January2023/3j7t55d0kL4QCiqWCtlJ.jpg\" /></p>\r\n\r\n<h1>Ngoại h&igrave;nh thon thả đầy tinh tế</h1>\r\n\r\n<p>Rebel nổi bật vẻ sắc xảo với thiết kế b&igrave;nh xăng c&oacute; độ dốc cao từ cổ xe tới vị tr&iacute; ngồi, song vẫn đảm bảo sự thoải m&aacute;i cho người cầm l&aacute;i. N&eacute;t rắn rỏi, mạnh mẽ của Rebel c&agrave;ng được thể hiện r&otilde; tr&ecirc;n Hệ thống giảm x&oacute;c sau v&agrave; đường ống dẫn. Khung nh&ocirc;m đen tuyền, c&agrave;ng sau dạng ống c&ugrave;ng d&egrave; chắn b&ugrave;n sau bằng kim loại mang đến một ấn tượng kh&aacute;c biệt cho Rebel từ đằng sau.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/January2023/A3P4LYQj5Aq8Ev8rsaVh.jpg\" /></p>\r\n', 190000000, 185000000, 31, 'honda, xe moto, Rebel 500', 'rebel-500-2023', 1, 50, 3),
(101, 'Honda CB500X 2022', 'CB500X - DŨNG MÃNH CHINH PHỤC HÀNH TRÌNH Đây chính là khoảnh khắc mà bạn đã luôn chờ đợi, khoảnh khắc đón chào CB500X trong một diện mạo khác. Mang đậm chất phiêu lưu, CB500X mạnh mẽ với các lựa chọn màu mới, cùng hệ thống giảm xóc hành trình dài và hệ thống phanh được nâng cấp. ', '<h1>BẠN Đ&Atilde; SẴN S&Agrave;NG? CB500X CŨNG VẬY!</h1>\r\n\r\n<p>L&agrave; một người chơi, bạn biết bạn muốn đi đến đ&acirc;u. V&agrave; bạn biết rằng CB500X sẽ l&agrave; người bạn đồng h&agrave;nh ho&agrave;n hảo. Xe c&oacute; kiểu d&aacute;ng adventure nhỏ gọn, với vị tr&iacute; ngồi thẳng đặc trưng, c&ugrave;ng chiều cao y&ecirc;n xe 830mm, mang đến sự thoải m&aacute;i trong những chuyến đi d&agrave;i. Được trang bị th&ecirc;m b&igrave;nh xăng 17,5L, CB500X sở hữu hệ thống chắn gi&oacute; hiệu quả được mang lại từ k&iacute;nh chắn gi&oacute; v&agrave; vỏ xe. Với phần tay l&aacute;i rộng, người l&aacute;i dễ d&agrave;ng kiểm so&aacute;t xe ngay cả khi đang di chuyển ở tốc độ thấp. Sở hữu CB500X, bạn biết rằng bạn đang c&oacute; trong tay một &quot;chiến m&atilde;&quot; tuyệt vời, lanh lẹ v&agrave; nhanh nhạy để chinh phục cả những cung đường đ&ocirc; thị đ&ocirc;ng đ&uacute;c v&agrave; cả những cuộc phi&ecirc;u lưu đường trường.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/September2022/Oqf0zfi6PhKTz5LoKlEV.jpg\" /></p>\r\n', 200000000, 195000000, 31, 'honda, xe motor, cb500x honda ', 'honda-cb500x-2022', 1, 50, 3),
(102, 'Honda CBR1000RR-R Fireblade', 'SINH RA ĐỂ BỨT PHÁ Hiệu suất là tất cả Hãy ngồi lên cỗ máy 4 xy lanh thẳng hàng trên chiếc CBR1000RR-R Fireblade/Fireblade SP để tận hưởng sự phấn khích tăng dần qua từng cấp số. Với thiết kế và công nghệ động cơ kế thừa từ đội đua Honda Racing Corporation (HRC) qua các giải đua xe MotoGP và những nâng cấp đột phá.\r\n\r\n', '<h1>Đặc điểm</h1>\r\n\r\n<p>SINH RA ĐỂ BỨT PH&Aacute; Hiệu suất l&agrave; tất cả H&atilde;y ngồi l&ecirc;n cỗ m&aacute;y 4 xy lanh thẳng h&agrave;ng tr&ecirc;n chiếc CBR1000RR-R Fireblade/Fireblade SP để tận hưởng sự phấn kh&iacute;ch tăng dần qua từng cấp số. Với thiết kế v&agrave; c&ocirc;ng nghệ động cơ kế thừa từ đội đua Honda Racing Corporation (HRC) qua c&aacute;c giải đua xe MotoGP v&agrave; những n&acirc;ng cấp đột ph&aacute; lần n&agrave;y, chắc chắn chiếc CBR1000RR-R Fireblade/Fireblade SP sẽ kh&ocirc;ng l&agrave;m bạn thất vọng. H&atilde;y CHUẨN BỊ. SẴN S&Agrave;NG &amp; XUẤT PH&Aacute;T !!!</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbikes/August2020/hu9rC6cXHsWaifJhUs5d.png\" /></p>\r\n\r\n<h1>Thiết kế kh&iacute; động học vượt trội</h1>\r\n\r\n<p>CBR1000RR-R Fireblade mang một phong c&aacute;ch thiết kế ho&agrave;n to&agrave;n mới lạ, độc đ&aacute;o, với một bộ vỏ kh&iacute; động học mang nhiều kỹ thuật độc đ&aacute;o v&agrave; c&oacute; hệ số cản gi&oacute; thấp nhất trong ph&acirc;n kh&uacute;c, b&ecirc;n cạnh đ&oacute;, chiếc Fireblade c&ograve;n được trang bị c&aacute;nh gi&oacute; với thiết kế lấy cảm hứng từ mẫu xe đua tại giải MotoGP, gi&uacute;p sản sinh lực n&eacute;n xuống mặt đường tương đương với mẫu xe đua Honda RC213V, giảm thiểu tối đa t&igrave;nh trạng n&acirc;ng b&aacute;nh trước khi gia tốc tăng cao, cải thiện độ ổn định xe khi phanh v&agrave; khi v&agrave;o g&oacute;c cua với tốc độ cao.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/August2020/dIXTwZwOBF3I06ZD6Cpm.jpg\" /></p>\r\n\r\n<h1>Thiết kế c&agrave;ng xe lấy cảm hứng từ mẫu xe đua RC213V</h1>\r\n\r\n<p>C&agrave;ng xe l&agrave;m bằng nh&ocirc;m dựa v&agrave;o nguy&ecirc;n mẫu tr&ecirc;n xe đua Honda RC213V, với độ d&agrave;i tăng 30.5mm so với mẫu xe Fireblade cũ, nhưng khối lượng kh&ocirc;ng thay đổi. Độ cứng c&agrave;ng xe khi chịu lực t&aacute;c động theo phương nằm ngang được giảm 15%, điều n&agrave;y gi&uacute;p khả năng b&aacute;m đường của lốp sau tăng l&ecirc;n đ&aacute;ng kể, đặc biệt trong c&aacute;c t&igrave;nh huống v&agrave;o cua với tốc độ cao.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://cdn.honda.com.vn/motorbike-strong-points/August2020/CAuzJc2JtYbcFzpFRnMf.png\" /></p>\r\n', 950000000, 850000000, 31, 'honda, xe motor, honda cbr1000rrr ', 'honda-cbr1000rr-r-fireblade', 1, 50, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `MaTinTuc` int(11) NOT NULL,
  `MaNhanVien` int(11) NOT NULL,
  `TieuDe` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` text COLLATE utf8_unicode_ci NOT NULL,
  `NgayDang` date NOT NULL DEFAULT current_timestamp(),
  `TrangThai` int(11) NOT NULL DEFAULT 1,
  `AnhChinh` text COLLATE utf8_unicode_ci NOT NULL,
  `DuongDan` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `The` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`MaTinTuc`, `MaNhanVien`, `TieuDe`, `NoiDung`, `NgayDang`, `TrangThai`, `AnhChinh`, `DuongDan`, `The`) VALUES
(28, 1, 'HỖ TRỢ PHÍ ĐĂNG KÝ XE WINNER X CÙNG CHƯƠNG TRÌNH KHUYẾN MẠI “ƯU ĐÃI BỨT PHÁ – VUI LÁI THẢ GA”', '<p>Với mong muốn tri &acirc;n cũng như đem đến những trải nghiệm mua sắm thiết thực n&oacute;i chung v&agrave; nh&acirc;n rộng cơ hội sở hữu mẫu xe c&ocirc;n tay Winner X n&oacute;i ri&ecirc;ng tới kh&aacute;ch h&agrave;ng th&ocirc;ng qua h&igrave;nh thức hỗ trợ ph&iacute; đăng k&yacute; xe, HVN thực hiện chương tr&igrave;nh&nbsp;<strong>&ldquo;Ưu đ&atilde;i bứt ph&aacute; &ndash; Vui l&aacute;i thả ga&rdquo;</strong>.</p>\r\n\r\n<p>Chương tr&igrave;nh&nbsp;<strong>&ldquo;Ưu đ&atilde;i bứt ph&aacute; &ndash; Vui l&aacute;i thả ga&rdquo;</strong>&nbsp;được triển khai từ ng&agrave;y 01/05/2023 đến hết ng&agrave;y 30/06/2023 với nội dung khuyến mại: Hỗ trợ ph&iacute; đăng k&yacute; xe trị gi&aacute; 3.000.000 VNĐ/xe d&agrave;nh ri&ecirc;ng cho kh&aacute;ch h&agrave;ng mua Winner X tr&ecirc;n to&agrave;n quốc.</p>\r\n\r\n<h1>1.&nbsp;Nội dung, phạm vi &aacute;p dụng v&agrave; thời gian &aacute;p dụng</h1>\r\n\r\n<p>Từ ng&agrave;y&nbsp;<strong>1/5/2023 đến hết ng&agrave;y 30/6/2023</strong>&nbsp;(căn cứ theo ng&agrave;y ghi tr&ecirc;n H&oacute;a đơn GTGT xuất cho kh&aacute;ch h&agrave;ng mua xe; thời gian ghi tr&ecirc;n Giấy đăng k&yacute; xe l&agrave; từ ng&agrave;y 01/05/2023 đến hết ng&agrave;y 31/08/2023), kh&aacute;ch h&agrave;ng khi mua xe m&aacute;y Winner X do HVN sản xuất v&agrave; c&oacute; ng&agrave;y bắt đầu b&aacute;n h&agrave;ng tại thị trường Việt Nam từ ng&agrave;y 16 th&aacute;ng 07 năm 2019 trở đi được ph&acirc;n phối tại c&aacute;c Cửa H&agrave;ng B&aacute;n Xe M&aacute;y V&agrave; Dịch Vụ Do Honda Ủy Nhiệm (HEAD) v&agrave; Cửa h&agrave;ng b&aacute;n xe m&aacute;y tổng hợp tr&ecirc;n to&agrave;n quốc sẽ được&nbsp;<strong>hỗ trợ ph&iacute; đăng k&yacute; xe trị gi&aacute; 3.000.000VNĐ/xe</strong>.</p>\r\n\r\n<h1>2.&nbsp;Điều kiện đăng k&yacute; hưởng khuyến mại</h1>\r\n\r\n<p><strong><em>Đối với kh&aacute;ch h&agrave;ng l&agrave; c&aacute; nh&acirc;n</em></strong><em>,</em>&nbsp;kh&aacute;ch h&agrave;ng xuất tr&igrave;nh H&oacute;a đơn GTGT v&agrave; Giấy đăng k&yacute; xe để đăng k&yacute; nhận khuyến mại. Trong trường hợp kh&aacute;ch h&agrave;ng mua xe tại Cửa h&agrave;ng xe m&aacute;y tổng hợp (kh&ocirc;ng phải HEAD), sau khi mua xe kh&aacute;ch h&agrave;ng mang to&agrave;n bộ giấy tờ n&ecirc;u tr&ecirc;n đến HEAD gần nhất để đăng k&yacute; nhận khuyến mại.</p>\r\n\r\n<p><strong><em>Đối với kh&aacute;ch h&agrave;ng l&agrave; doanh nghiệp</em></strong><em>,&nbsp;</em>kh&aacute;ch h&agrave;ng xuất Hợp đồng mua b&aacute;n xe, H&oacute;a đơn GTGT, Giấy đăng k&yacute; xe v&agrave; c&aacute;c giấy tờ li&ecirc;n quan đến việc giao nhận xe để đăng k&yacute; nhận khuyến mại. Trường hợp mua nhiều xe, doanh nghiệp phải chứng minh mục đ&iacute;ch mua xe cho ti&ecirc;u d&ugrave;ng hoặc l&agrave;m khuyến mại tại đơn vị như th&ocirc;ng b&aacute;o/quyết định về chương tr&igrave;nh mua xe của doanh nghiệp; th&ocirc;ng b&aacute;o/đăng k&yacute; chương tr&igrave;nh khuyến mại của doanh nghiệp gửi Sở C&ocirc;ng thương/Bộ C&ocirc;ng thương. Trong trường hợp kh&aacute;ch h&agrave;ng mua xe tại Cửa h&agrave;ng xe m&aacute;y tổng hợp (kh&ocirc;ng phải HEAD), sau khi mua xe kh&aacute;ch h&agrave;ng mang to&agrave;n bộ giấy tờ n&ecirc;u tr&ecirc;n đến HEAD gần nhất để đăng k&yacute; nhận khuyến mại.</p>\r\n\r\n<p><strong><em>Đối với kh&aacute;ch h&agrave;ng l&agrave; c&aacute;c cơ quan nh&agrave; nước hoặc tổ chức kh&aacute;c</em></strong><em>&nbsp;(kh&ocirc;ng phải l&agrave; doanh nghiệp)</em><em>,</em>&nbsp;kh&aacute;ch h&agrave;ng xuất tr&igrave;nh Hợp đồng mua b&aacute;n xe, H&oacute;a đơn GTGT, Giấy đăng k&yacute; xe v&agrave; c&aacute;c giấy tờ li&ecirc;n quan đến việc giao nhận xe để đăng k&iacute; nhận khuyến mại. Trong trường hợp kh&aacute;ch h&agrave;ng mua xe tại Cửa h&agrave;ng xe m&aacute;y tổng hợp (kh&ocirc;ng phải HEAD), sau khi mua xe kh&aacute;ch h&agrave;ng mang to&agrave;n bộ giấy tờ n&ecirc;u tr&ecirc;n đến HEAD gần nhất để đăng k&yacute; nhận khuyến mại.</p>\r\n\r\n<p>HVN cam kết sẽ lu&ocirc;n nỗ lực hết m&igrave;nh nhằm thỏa m&atilde;n nhu cầu của kh&aacute;ch h&agrave;ng Việt Nam cũng như đ&aacute;p ứng kỳ vọng của kh&aacute;ch h&agrave;ng d&agrave;nh cho c&ocirc;ng ty với những sản phẩm chất lượng to&agrave;n cầu v&agrave; c&aacute;c ch&iacute;nh s&aacute;ch ưu đ&atilde;i hấp dẫn.</p>\r\n\r\n<p>Mọi th&ocirc;ng tin li&ecirc;n quan đến chương tr&igrave;nh khuyến mại, kh&aacute;ch h&agrave;ng vui l&ograve;ng li&ecirc;n hệ theo th&ocirc;ng tin như sau để được hướng dẫn, giải đ&aacute;p:</p>\r\n\r\n<p>o&nbsp;&nbsp;&nbsp;Số điện thoại chăm s&oacute;c kh&aacute;ch h&agrave;ng (miễn ph&iacute;): 1800 8001</p>\r\n\r\n<p>o&nbsp;&nbsp;&nbsp;Hoặc gửi thư về email: cr@honda.com.vn</p>\r\n\r\n<p>o&nbsp;&nbsp;&nbsp;Thời gian: Từ 07:30 đến 18:00 tất cả c&aacute;c ng&agrave;y trong tuần, trừ ng&agrave;y lễ</p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng c&oacute; thể truy cập website https://www.honda.com.vn/, Fanpage ch&iacute;nh thức của HVN: www.facebook.com/HondaVietnam, hoặc ứng dụng My Honda+ tr&ecirc;n điện thoại th&ocirc;ng minh (thiết bị Apple iOS v&agrave; Google Android) để biết th&ecirc;m chi tiết về chương tr&igrave;nh v&agrave; th&ocirc;ng tin sản phẩm.</p>\r\n\r\n<p><strong>Xin tr&acirc;n trọng cảm ơn</strong></p>\r\n\r\n<p><strong>C&ocirc;ng ty Honda Việt Nam</strong></p>\r\n', '2023-07-19', 1, 'http://localhost/webshop_ci/uploads/R7CoGmZIfE4hbcE8xRXc1.jpg', 'ho-tro-phi-dang-ky-xe-winner-x-cung-chuong-trinh-khuyen-mai', 'tin tức, khuyến mãi, honda'),
(29, 1, 'Honda Việt Nam giới thiệu phiên bản mới mẫu xe CBR150R – “Chiến hữu thành thị”', '<p>Được HVN ch&iacute;nh thức ra mắt tại thị trường Việt Nam từ năm 2021, CBR150R đ&atilde; tạo điểm nhấn cho ph&acirc;n kh&uacute;c xe c&ocirc;n tay bằng những thay đổi đột ph&aacute;, vượt xa sự mong đợi của kh&aacute;ch h&agrave;ng. Kế thừa thiết kế của những mẫu xe ph&acirc;n khối lớn &ldquo;đ&agrave;n anh&rdquo; đ&igrave;nh đ&aacute;m c&ugrave;ng sự nhanh nhẹn v&agrave; dễ d&agrave;ng trong điều khiển, CBR150R đ&atilde; chiếm trọn tr&aacute;i tim của những t&iacute;n đồ đam m&ecirc; tốc độ, mong muốn t&igrave;m kiếm một d&ograve;ng xe đ&aacute;p ứng được cả yếu tố thẩm mỹ lẫn c&ocirc;ng năng sử dụng.</p>\r\n\r\n<p>Với tinh thần kh&ocirc;ng ngừng nỗ lực nhằm thỏa m&atilde;n hơn nữa thị hiếu của kh&aacute;ch h&agrave;ng, HVN ch&iacute;nh thức ra mắt phi&ecirc;n bản mới mẫu xe c&ocirc;n tay CBR150R 2023&nbsp;c&ugrave;ng những thay đổi th&uacute; vị về tem m&agrave;u, mang đậm t&iacute;nh thể thao linh hoạt, n&acirc;ng tầm trải nghiệm cho những tay l&aacute;i th&agrave;nh thị,&nbsp;xứng danh chiến hữu đ&iacute;ch thực gi&uacute;p chủ sở hữu tự tin l&agrave;m chủ mọi cung đường.</p>\r\n\r\n<p><strong><em><u>Phong c&aacute;ch thiết kế h&agrave;i h&ograve;a, mang đậm chất thể thao linh hoạt c&ugrave;ng thay đổi mới về tem v&agrave; phối m&agrave;u ấn tượng</u></em></strong></p>\r\n\r\n<p>Tự h&agrave;o mang trong m&igrave;nh tinh thần m&ocirc; t&ocirc; thể thao trứ danh từ d&ograve;ng ph&acirc;n khối lớn CBR1000RR-R, được th&ecirc;m v&agrave;o sự tinh chỉnh tạo độ nhỏ gọn v&agrave; sắc n&eacute;t cần thiết nhằm đ&aacute;p ứng nhu cầu di chuyển trong đ&ocirc; thị, CBR150R l&agrave; c&acirc;u trả lời ho&agrave;n hảo cho những ai đang t&igrave;m kiếm sự c&acirc;n bằng trong cuộc sống năng động.</p>\r\n\r\n<p>B&ecirc;n cạnh thiết kế tổng thể với c&aacute;c đường n&eacute;t c&oacute; độ nh&ocirc; về ph&iacute;a trước tựa như một tay đua lu&ocirc;n sẵn s&agrave;ng xuất ph&aacute;t trong mọi cung đường, CBR150R tiếp tục g&acirc;y ấn tượng với loạt trang bị, điểm nhấn độc đ&aacute;o: Hệ thống đ&egrave;n LED tối ưu được t&aacute;ch th&agrave;nh hai tầng với chức năng ri&ecirc;ng biệt (đ&egrave;n ban ng&agrave;y tầng tr&ecirc;n v&agrave; đ&egrave;n pha/cos tầng dưới) mang lại khả năng chiếu s&aacute;ng tối ưu; M&agrave;n h&igrave;nh LCD sắc n&eacute;t được bố tr&iacute; hiển thị c&aacute;c th&ocirc;ng số kỹ thuật cho người điều khiển dễ d&agrave;ng quan s&aacute;t khi vận h&agrave;nh;&nbsp;&nbsp;Giảm x&oacute;c h&agrave;nh tr&igrave;nh ngược upside down thể thao sơn mạ v&agrave;ng, gi&uacute;p to&agrave;n bộ phần trước của xe trở n&ecirc;n cứng c&aacute;p; B&igrave;nh xăng ph&iacute;a trước với ốp b&ecirc;n h&ocirc;ng được tạo h&igrave;nh sắc n&eacute;t tạo sự gọn g&agrave;ng v&agrave; độ tho&aacute;ng cho g&oacute;c l&aacute;i, gi&uacute;p người điều khiển thoải m&aacute;i di chuyển v&agrave; kh&aacute;m ph&aacute; mọi cung đường th&agrave;nh thị. Tất cả như muốn minh chứng rằng, với chiến hữu CBR150R mọi h&agrave;nh tr&igrave;nh đều l&agrave; những thước phim kh&oacute; qu&ecirc;n đầy l&yacute; th&uacute;.</p>\r\n\r\n<p>Diện mạo của CBR150R 2023 được phối m&agrave;u bắt mắt hơn, mang lại h&igrave;nh ảnh khỏe khoắn cho người cầm l&aacute;i. M&agrave;u sơn tr&ecirc;n th&acirc;n xe được kết hợp h&agrave;i h&ograve;a, kh&ocirc;ng những mang lại hiệu ứng thị gi&aacute;c mạnh mẽ m&agrave; c&ograve;n tạo luồng gi&oacute; mới trong phong c&aacute;ch của chủ sở hữu. Phi&ecirc;n bản Thể thao với phần mặt nạ trước m&agrave;u trắng c&ugrave;ng v&agrave;nh xe m&agrave;u v&agrave;ng mới đem đến h&igrave;nh ảnh thể thao, năng động. Phi&ecirc;n bản Đặc biệt mang sắc đen nh&aacute;m mạnh mẽ v&agrave; điểm th&ecirc;m chi tiết v&agrave;nh xe m&agrave;u n&acirc;u, đem đến tổng thể ấn tượng, cao cấp. Phi&ecirc;n bản Ti&ecirc;u chuẩn tận dụng tối đa sắc đỏ v&agrave; đen, mang lại vẻ đẹp h&agrave;i h&ograve;a nhưng kh&ocirc;ng k&eacute;m phần trẻ trung.</p>\r\n\r\n<p><strong><em><u>Động cơ vận h&agrave;nh uy lực mạnh mẽ</u></em></strong></p>\r\n\r\n<p>Được định vị l&agrave; một d&ograve;ng xe linh hoạt cho người mới l&aacute;i v&agrave; cả những tay l&aacute;i đầy kinh nghiệm. &ldquo;Tr&aacute;i tim&rdquo; của CBR150R được c&aacute;c kĩ sư của Honda đặt v&agrave;o khối động cơ dung t&iacute;ch 150cc xi-lanh đơn, trục cam đ&ocirc;i DOHC, hộp số 6 cấp l&agrave;m m&aacute;t bằng dung dịch, c&oacute; khả năng sản sinh c&ocirc;ng suất tối đa l&ecirc;n đến 12,6 kW tại 9.000 v&ograve;ng/ph&uacute;t v&agrave; m&ocirc;-men xoắn cực đại 14,4 Nm tại 7.000 v&ograve;ng/ph&uacute;t.</p>\r\n\r\n<p><strong><em><u>Tiện &iacute;ch vượt trội, an to&agrave;n tr&ecirc;n mọi cung đường</u></em></strong></p>\r\n\r\n<p>Với sứ mệnh k&iacute;ch hoạt những trải nghiệm v&agrave; cảm x&uacute;c th&uacute; vị cho những tay l&aacute;i muốn l&agrave;m quen với c&aacute;c d&ograve;ng xe thể thao, CBR150R lu&ocirc;n l&agrave;m h&agrave;i l&ograve;ng thị hiếu của số đ&ocirc;ng khi được trang bị những tiện &iacute;ch an to&agrave;n vượt trội. Điểm nhấn nổi bật nhất đến từ hệ thống chống b&oacute; cứng phanh ABS tr&ecirc;n cả b&aacute;nh trước v&agrave; b&aacute;nh sau gi&uacute;p người l&aacute;i an t&acirc;m di chuyển v&agrave; tự tin xử l&yacute; mọi t&igrave;nh huống.&nbsp;Hơn thế nữa, hệ thống đ&egrave;n cảnh b&aacute;o dừng đột ngột (ESS) sẽ b&aacute;o hiệu cho c&aacute;c phương tiện ph&iacute;a trước v&agrave; sau c&oacute; thể kịp thời phản ứng trong trường hợp xe phanh khẩn cấp. B&igrave;nh xăng dung t&iacute;ch lớn 12L ấn tượng gi&uacute;p kh&aacute;ch h&agrave;ng lu&ocirc;n tự tin trong những chuyến đi xa. Bộ ly hợp hỗ trợ v&agrave; chống trượt hai chiều (Assist &amp; Slipper Clutch) tiếp tục được trang bị tr&ecirc;n CBR150R gi&uacute;p giảm thiểu t&igrave;nh trạng trượt v&agrave; kh&oacute;a b&aacute;nh do phanh động cơ g&acirc;y ra trong t&igrave;nh huống chuyển số đột ngột, tạo sự tự tin di chuyển tr&ecirc;n mọi cung đường v&agrave; điều kiện giao th&ocirc;ng trong th&agrave;nh thị.</p>\r\n\r\n<p>Phi&ecirc;n bản mới mẫu xe c&ocirc;n tay CBR150R ch&iacute;nh thức được b&aacute;n ra thị trường từ ng&agrave;y 23 th&aacute;ng 04 năm 2023 tại&nbsp;Cửa h&agrave;ng B&aacute;n xe v&agrave; Dịch vụ do Honda Ủy nhiệm (HEAD)&nbsp;với chế độ bảo h&agrave;nh 3 năm v&agrave; 30.000 km c&oacute; 03 phi&ecirc;n bản.</p>\r\n', '2023-07-19', 1, 'http://localhost/webshop_ci/uploads/6vPtfIOsbNi25Km726ot1.jpg', 'honda-viet-nam-gioi-thieu-phien-ban-moi-mau-xe-cbr150r', 'tin tức, sản phẩm, hot');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cauhinh`
--
ALTER TABLE `cauhinh`
  ADD PRIMARY KEY (`MaCauHinh`);

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`MaChiTietDonHang`);

--
-- Indexes for table `chuyenmuc`
--
ALTER TABLE `chuyenmuc`
  ADD PRIMARY KEY (`MaChuyenMuc`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`MaDonHang`);

--
-- Indexes for table `giaodien`
--
ALTER TABLE `giaodien`
  ADD PRIMARY KEY (`MaGiaoDien`);

--
-- Indexes for table `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD PRIMARY KEY (`MaHinhAnh`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKhachHang`);

--
-- Indexes for table `lichsunhap`
--
ALTER TABLE `lichsunhap`
  ADD PRIMARY KEY (`MaLichSuNhap`);

--
-- Indexes for table `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`MaLienHe`);

--
-- Indexes for table `magiamgia`
--
ALTER TABLE `magiamgia`
  ADD PRIMARY KEY (`MaGiamGia`);

--
-- Indexes for table `mausac`
--
ALTER TABLE `mausac`
  ADD PRIMARY KEY (`MaMauSac`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`MaNhaCungCap`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNhanVien`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSanPham`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`MaTinTuc`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cauhinh`
--
ALTER TABLE `cauhinh`
  MODIFY `MaCauHinh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `MaChiTietDonHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `chuyenmuc`
--
ALTER TABLE `chuyenmuc`
  MODIFY `MaChuyenMuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `MaDonHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `giaodien`
--
ALTER TABLE `giaodien`
  MODIFY `MaGiaoDien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `hinhanh`
--
ALTER TABLE `hinhanh`
  MODIFY `MaHinhAnh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKhachHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `lichsunhap`
--
ALTER TABLE `lichsunhap`
  MODIFY `MaLichSuNhap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `MaLienHe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `magiamgia`
--
ALTER TABLE `magiamgia`
  MODIFY `MaGiamGia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mausac`
--
ALTER TABLE `mausac`
  MODIFY `MaMauSac` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `MaNhaCungCap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `MaNhanVien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `MaTinTuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
