-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 06, 2022 lúc 10:34 AM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `f4_sanbong`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'F4sport', '2022');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `datsan`
--

CREATE TABLE `datsan` (
  `id` int(11) NOT NULL,
  `id_khach` int(11) NOT NULL,
  `id_san` int(11) NOT NULL,
  `tg_batdau` datetime NOT NULL,
  `tg_ketthuc` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `datsan`
--

INSERT INTO `datsan` (`id`, `id_khach`, `id_san`, `tg_batdau`, `tg_ketthuc`) VALUES
(1, 1, 1, '2022-04-06 15:30:00', '2022-04-06 17:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanbong`
--

CREATE TABLE `sanbong` (
  `id_san` int(11) NOT NULL,
  `tensan` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `loaisan` int(1) NOT NULL,
  `hinhanh` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `sanbong`
--

INSERT INTO `sanbong` (`id_san`, `tensan`, `loaisan`, `hinhanh`) VALUES
(1, 'Sân 1', 5, 'san1.JPG'),
(2, 'Sân 2', 5, 'san2.jpg'),
(3, 'Sân 3', 5, 'san3.jpg'),
(4, 'Sân 4', 5, 'san4.jpg'),
(5, 'Sân 5', 5, 'san5.jpg'),
(6, 'Sân 6', 7, 'san6.jpg'),
(7, 'Sân 7', 7, 'san7.jpg'),
(8, 'Sân 8', 7, 'san8.jpg'),
(9, 'Sân 9', 7, 'san9.jpg'),
(10, 'Sân 10', 7, 'san10.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tk_khach`
--

CREATE TABLE `tk_khach` (
  `id_khach` int(11) NOT NULL,
  `tenkhach` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `taikhoan` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `matkhau` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `sdt` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tk_khach`
--

INSERT INTO `tk_khach` (`id_khach`, `tenkhach`, `taikhoan`, `matkhau`, `sdt`) VALUES
(1, 'Lãnh Nguyệt Thiên Phong', 'abc', 'ngoccan', 178990009),
(2, 'Lê La', 'lela', 'ahz', 987654321),
(3, 'Andrea', 'andrea', 'sthk', 978564231);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `datsan`
--
ALTER TABLE `datsan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanbong`
--
ALTER TABLE `sanbong`
  ADD PRIMARY KEY (`id_san`);

--
-- Chỉ mục cho bảng `tk_khach`
--
ALTER TABLE `tk_khach`
  ADD PRIMARY KEY (`id_khach`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `datsan`
--
ALTER TABLE `datsan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `sanbong`
--
ALTER TABLE `sanbong`
  MODIFY `id_san` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tk_khach`
--
ALTER TABLE `tk_khach`
  MODIFY `id_khach` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
