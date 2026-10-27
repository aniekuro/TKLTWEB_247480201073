-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 27, 2026 lúc 10:13 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlybanhangan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hanghoa`
--

CREATE TABLE `hanghoa` (
  `mahang` varchar(4) NOT NULL COMMENT 'Mã hàng',
  `tenhang` varchar(40) NOT NULL COMMENT 'Tên hàng',
  `mansx` varchar(2) NOT NULL COMMENT 'Mã nhà SX',
  `namsx` int(11) NOT NULL COMMENT 'Năm sản xuất',
  `gia` int(11) NOT NULL COMMENT 'Giá bán'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_nopad_ci;

--
-- Đang đổ dữ liệu cho bảng `hanghoa`
--

INSERT INTO `hanghoa` (`mahang`, `tenhang`, `mansx`, `namsx`, `gia`) VALUES
('AS01', 'Asus Inspriron', 'AS', 2017, 520),
('AS02', 'Asus Vivobook', 'AS', 2017, 580),
('DE01', 'Dell Vostro', 'DE', 2015, 650),
('DE02', 'Del Inspiron', 'DE', 2015, 550),
('LE01', 'Lenovo Thinkpad', 'LE', 2019, 750),
('LE02', 'Lenovo Legion', 'LE', 2020, 540),
('LE03', 'Lenovo Yoga', 'LE', 2020, 600),
('TO01', 'toshiba Sateltite', 'TO', 2014, 630);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `id` int(11) NOT NULL,
  `mahd` varchar(3) NOT NULL COMMENT 'Mã hóa đơn',
  `makh` varchar(5) NOT NULL COMMENT 'Mã K.Hàng',
  `mahang` varchar(4) NOT NULL COMMENT 'Mã hàng',
  `soluong` int(11) NOT NULL COMMENT 'Số lượng',
  `thanhtien` int(11) NOT NULL COMMENT 'Thành tiền'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_nopad_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `makh` varchar(40) NOT NULL COMMENT 'Mã K.Hàng',
  `tenkh` varchar(30) NOT NULL COMMENT 'Tên K.Hàng',
  `namsinh` int(11) NOT NULL COMMENT 'Năm sinh',
  `dienthoai` varchar(10) NOT NULL COMMENT 'Số điện thoại',
  `diachi` varchar(50) NOT NULL COMMENT 'Địa chỉ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_nopad_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`makh`, `tenkh`, `namsinh`, `dienthoai`, `diachi`) VALUES
('K001', 'Nguyễn Thị Lan', 1980, '1', 'bac lieu'),
('K0010', 'Nguyễn Thị Lan', 1980, '1', 'bac lieu'),
('K002', 'Nguyễn Trường An', 1980, '1', 'bac lieu'),
('K003', 'Hồng Nguyễn An Nhiên', 1980, '1', 'bac lieu'),
('K004', 'Võ Anh Duy', 1980, '1', 'bac lieu'),
('K005', 'Châu Đỗ Huy', 1980, '1', 'bac lieu'),
('K006', 'Nguyễn Thị Lan', 1980, '1', 'bac lieu'),
('K007', 'Nguyễn Thị Lan', 1980, '1', 'bac lieu'),
('K008', 'Nguyễn Thị Lan', 1980, '1', 'bac lieu'),
('K009', 'Nguyễn Thị Lan', 1980, '1', 'bac lieu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhasanxuat`
--

CREATE TABLE `nhasanxuat` (
  `namsx` varchar(20) NOT NULL COMMENT 'Mã nhà SX',
  `tennsx` varchar(40) NOT NULL COMMENT 'Tên Nhà SX',
  `quocgia` varchar(20) NOT NULL COMMENT 'Quốc gia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_nopad_ci;

--
-- Đang đổ dữ liệu cho bảng `nhasanxuat`
--

INSERT INTO `nhasanxuat` (`namsx`, `tennsx`, `quocgia`) VALUES
('DE', 'DELL', 'Hoa Kỳ'),
('LE', 'LENOVO', 'Hoa Kỳ'),
('TO', 'TOSHBA', 'Hoa Kỳ');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD PRIMARY KEY (`mahang`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makh`);

--
-- Chỉ mục cho bảng `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
  ADD PRIMARY KEY (`namsx`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
