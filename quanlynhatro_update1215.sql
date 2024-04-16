-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 15, 2023 lúc 11:55 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlynhatro_update`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_hoa_don_den_bu`
--

CREATE TABLE `chi_tiet_hoa_don_den_bu` (
  `ly_do` varchar(255) DEFAULT NULL,
  `so_tien` double NOT NULL,
  `ma_hoa_don_den_buf` int(11) NOT NULL,
  `ma_phieu_thuef` int(11) NOT NULL,
  `ma_tien_ichf` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_hoa_don_hang_thang`
--

CREATE TABLE `chi_tiet_hoa_don_hang_thang` (
  `ma_phieu_thuef` int(11) NOT NULL,
  `ma_tien_ichf` int(11) NOT NULL,
  `ma_hoa_don_hang_thangf` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_phieu_thue_tien_ich`
--

CREATE TABLE `chi_tiet_phieu_thue_tien_ich` (
  `tinh_trang` varchar(255) DEFAULT NULL,
  `ma_phieu_thuef` int(11) NOT NULL,
  `ma_tien_ichf` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_phieu_thue_tien_ich`
--

INSERT INTO `chi_tiet_phieu_thue_tien_ich` (`tinh_trang`, `ma_phieu_thuef`, `ma_tien_ichf`) VALUES
(NULL, 1, 1),
(NULL, 1, 2),
(NULL, 1, 3),
(NULL, 1, 16),
('mới', 1, 34),
(NULL, 2, 4),
(NULL, 2, 5),
(NULL, 2, 6),
(NULL, 3, 7),
(NULL, 3, 8),
(NULL, 3, 9),
(NULL, 4, 10),
(NULL, 4, 11),
(NULL, 4, 12),
(NULL, 5, 13),
(NULL, 5, 14),
(NULL, 5, 15),
(NULL, 6, 17),
(NULL, 6, 18),
(NULL, 6, 19),
(NULL, 7, 20),
(NULL, 7, 21),
(NULL, 7, 22),
(NULL, 8, 23),
(NULL, 8, 24),
(NULL, 8, 25),
(NULL, 9, 26),
(NULL, 9, 27),
(NULL, 9, 28),
(NULL, 10, 29),
(NULL, 10, 30),
(NULL, 10, 31);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don_den_bu`
--

CREATE TABLE `hoa_don_den_bu` (
  `ma_hoa_don_den_bu` int(11) NOT NULL,
  `ngay_lap` datetime(6) DEFAULT NULL,
  `trang_thai_thanh_toan` bit(1) NOT NULL,
  `ma_phieu_thuef` int(11) DEFAULT NULL,
  `user_namef` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don_hang_thang`
--

CREATE TABLE `hoa_don_hang_thang` (
  `ma_hoa_don_hang_thang` int(11) NOT NULL,
  `ngay_lap` datetime(6) DEFAULT NULL,
  `so_tien` double NOT NULL,
  `trang_thai_thanh_toan` bit(1) NOT NULL,
  `ma_hop_dongf` int(11) DEFAULT NULL,
  `user_namef` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoa_don_hang_thang`
--

INSERT INTO `hoa_don_hang_thang` (`ma_hoa_don_hang_thang`, `ngay_lap`, `so_tien`, `trang_thai_thanh_toan`, `ma_hop_dongf`, `user_namef`) VALUES
(1, '2023-08-10 23:31:15.000000', 0, b'0', 2, 'user1'),
(2, '2023-09-10 23:31:15.000000', 0, b'0', 2, 'user1'),
(3, '2023-10-10 23:31:15.000000', 0, b'0', 2, 'user1'),
(4, '2023-11-10 23:31:15.000000', 0, b'0', 2, 'user1'),
(5, '2023-08-10 23:31:15.000000', 0, b'0', 3, 'user2'),
(6, '2023-09-10 23:31:15.000000', 0, b'0', 3, 'user2'),
(7, '2023-10-10 23:31:15.000000', 0, b'0', 3, 'user2'),
(8, '2023-11-10 23:31:15.000000', 0, b'0', 3, 'user2'),
(9, '2023-08-10 23:31:15.000000', 0, b'0', 4, 'user3'),
(10, '2023-09-10 23:31:15.000000', 0, b'0', 4, 'user3'),
(11, '2023-10-10 23:31:15.000000', 0, b'0', 4, 'user3'),
(12, '2023-11-10 23:31:15.000000', 0, b'0', 4, 'user3'),
(13, '2023-08-10 23:31:15.000000', 0, b'0', 5, 'user4'),
(14, '2023-09-10 23:31:15.000000', 0, b'0', 5, 'user4'),
(15, '2023-10-10 23:31:15.000000', 0, b'0', 5, 'user4'),
(16, '2023-11-10 23:31:15.000000', 0, b'0', 5, 'user4'),
(17, '2023-08-10 23:31:15.000000', 0, b'0', 6, 'user5'),
(18, '2023-09-10 23:31:15.000000', 0, b'0', 6, 'user5'),
(19, '2023-10-10 23:31:15.000000', 0, b'0', 6, 'user5'),
(20, '2023-11-10 23:31:15.000000', 0, b'0', 6, 'user5'),
(21, '2023-08-10 23:31:15.000000', 0, b'0', 7, 'user6'),
(22, '2023-09-10 23:31:15.000000', 0, b'0', 7, 'user6'),
(23, '2023-10-10 23:31:15.000000', 0, b'0', 7, 'user6'),
(24, '2023-11-10 23:31:15.000000', 0, b'0', 7, 'user6'),
(25, '2023-08-10 23:31:15.000000', 0, b'0', 8, 'user7'),
(26, '2023-09-10 23:31:15.000000', 0, b'0', 8, 'user7'),
(27, '2023-10-10 23:31:15.000000', 0, b'0', 8, 'user7'),
(28, '2023-11-10 23:31:15.000000', 0, b'0', 8, 'user7'),
(29, '2023-08-10 23:31:15.000000', 0, b'0', 9, 'user8'),
(30, '2023-09-10 23:31:15.000000', 0, b'0', 9, 'user8'),
(31, '2023-10-10 23:31:15.000000', 0, b'0', 9, 'user8'),
(32, '2023-11-10 23:31:15.000000', 0, b'0', 9, 'user8'),
(33, '2023-08-10 23:31:15.000000', 0, b'0', 10, 'user9'),
(34, '2023-09-10 23:31:15.000000', 0, b'0', 10, 'user9'),
(35, '2023-10-10 23:31:15.000000', 0, b'0', 10, 'user9'),
(36, '2023-11-10 23:31:15.000000', 0, b'0', 10, 'user9'),
(37, '2023-08-10 23:31:15.000000', 0, b'0', 11, 'user10'),
(38, '2023-09-10 23:31:15.000000', 0, b'0', 11, 'user10'),
(39, '2023-10-10 23:31:15.000000', 0, b'0', 11, 'user10'),
(40, '2023-11-10 23:31:15.000000', 0, b'0', 11, 'user10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hop_dong_thue_phong`
--

CREATE TABLE `hop_dong_thue_phong` (
  `ma_hop_dong` int(11) NOT NULL,
  `cccd` varchar(255) DEFAULT NULL,
  `dia_chi_thuong_tru` varchar(255) DEFAULT NULL,
  `ngay_lap` datetime(6) DEFAULT NULL,
  `noi_dung` varchar(255) DEFAULT NULL,
  `sdt` varchar(255) DEFAULT NULL,
  `ten` varchar(255) DEFAULT NULL,
  `tinh_trang` varchar(255) DEFAULT NULL,
  `ma_phongf` int(11) DEFAULT NULL,
  `user_namef` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hop_dong_thue_phong`
--

INSERT INTO `hop_dong_thue_phong` (`ma_hop_dong`, `cccd`, `dia_chi_thuong_tru`, `ngay_lap`, `noi_dung`, `sdt`, `ten`, `tinh_trang`, `ma_phongf`, `user_namef`) VALUES
(2, '197387354123', 'Phường 1, Quận Bình Thạnh, Hồ Chí Minh', '2023-08-01 00:00:00.000000', NULL, '0949406357', 'Hoàng Quốc Thái', 'oke', 1, 'user1'),
(3, '198765432109', 'Phường 2, Quận 1, Hồ Chí Minh', '2023-08-01 00:00:00.000000', NULL, '0934567890', 'Nguyễn Văn A', 'oke', 2, 'user2'),
(4, '123456789012', 'Phường 3, Quận 3, Hồ Chí Minh', '2023-08-01 00:00:00.000000', NULL, '0912345678', 'Trần Thị B', 'oke', 3, 'user3'),
(5, '987654321012', 'Phường 4, Quận 4, Hồ Chí Minh', '2023-08-01 00:00:00.000000', NULL, '0923456789', 'Lê Văn C', 'oke', 4, 'user4'),
(6, '876543210987', 'Phường 5, Quận 5, Hồ Chí Minh', '2023-08-01 00:00:00.000000', NULL, '0956789012', 'Phạm Thị D', 'oke', 5, 'user5'),
(7, '567890123456', 'Phường 6, Quận 6, Hồ Chí Minh', '2023-08-01 00:00:00.000000', NULL, '0967890123', 'Võ Văn E', 'oke', 6, 'user6'),
(8, '345678901234', 'Phường 7, Quận 7, Hồ Chí Minh', '2023-08-01 00:00:00.000000', NULL, '0978901234', 'Nguyễn Thị F', 'oke', 7, 'user7'),
(9, '456789012345', 'Phường 8, Quận 8, Hồ Chí Minh', '2023-08-01 00:00:00.000000', NULL, '0980123456', 'Hoàng Văn G', 'oke', 8, 'user8'),
(10, '234567890123', 'Phường 9, Quận 9, Hồ Chí Minh', '2023-08-01 00:00:00.000000', NULL, '0901234567', 'Lê Thị H', 'oke', 9, 'user9'),
(11, '890123456789', 'Phường 10, Quận 10, Hồ Chí Minh', '2023-08-01 00:00:00.000000', NULL, '0912345678', 'Trần Văn I', 'oke', 10, 'user10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_phong`
--

CREATE TABLE `loai_phong` (
  `ma_loai_phong` int(11) NOT NULL,
  `dien_tich` int(11) NOT NULL,
  `gia` double NOT NULL,
  `hinh` varchar(255) DEFAULT NULL,
  `so_luong` int(11) NOT NULL,
  `ten_loai_phong` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_phong`
--

INSERT INTO `loai_phong` (`ma_loai_phong`, `dien_tich`, `gia`, `hinh`, `so_luong`, `ten_loai_phong`) VALUES
(1, 50, 5000000, NULL, 4, '2 phòng ngủ, 2 WC'),
(2, 40, 4000000, NULL, 6, '2 phòng ngủ, 1 WC'),
(3, 80, 8000000, NULL, 8, '3 phòng ngủ, 3 WC'),
(4, 70, 7000000, NULL, 8, '3 phòng ngủ, 2 WC'),
(5, 60, 6000000, NULL, 8, '3 phòng ngủ, 1 WC'),
(6, 20, 2000000, NULL, 5, '1 phòng ngủ, 1 WC');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_tien_ich`
--

CREATE TABLE `loai_tien_ich` (
  `ma_loai_tien_ich` int(11) NOT NULL,
  `ten_loai_tien_ich` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_tien_ich`
--

INSERT INTO `loai_tien_ich` (`ma_loai_tien_ich`, `ten_loai_tien_ich`) VALUES
(1, 'Tủ lạnh'),
(2, 'Máy giặt'),
(3, 'Máy lạnh\r\n'),
(4, 'Biếp điện');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieu_thue_tien_ich`
--

CREATE TABLE `phieu_thue_tien_ich` (
  `ma_phieu_thue` int(11) NOT NULL,
  `ngay_lap` datetime(6) DEFAULT NULL,
  `user_namef` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phieu_thue_tien_ich`
--

INSERT INTO `phieu_thue_tien_ich` (`ma_phieu_thue`, `ngay_lap`, `user_namef`) VALUES
(1, '2023-08-01 23:31:15.000000', 'user1'),
(2, '2023-08-01 23:31:15.000000', 'user2'),
(3, '2023-08-01 23:31:15.000000', 'user3'),
(4, '2023-08-01 23:31:15.000000', 'user4'),
(5, '2023-08-01 23:31:15.000000', 'user5'),
(6, '2023-08-01 23:31:15.000000', 'user6'),
(7, '2023-08-01 23:31:15.000000', 'user7'),
(8, '2023-08-01 23:31:15.000000', 'user8'),
(9, '2023-08-01 23:31:15.000000', 'user9'),
(10, '2023-08-01 23:31:15.000000', 'user10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong`
--

CREATE TABLE `phong` (
  `ma_phong` int(11) NOT NULL,
  `tang` int(11) NOT NULL,
  `tinh_trang` varchar(255) DEFAULT NULL,
  `ma_loai_phongf` int(11) DEFAULT NULL,
  `con_trong` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phong`
--

INSERT INTO `phong` (`ma_phong`, `tang`, `tinh_trang`, `ma_loai_phongf`, `con_trong`) VALUES
(1, 1, 'mới xây', 1, b'0'),
(2, 1, 'mới xây', 1, b'0'),
(3, 2, 'đang sửa chữa', 2, b'0'),
(4, 3, 'sẵn sàng', 3, b'0'),
(5, 4, 'cần bảo trì', 4, b'0'),
(6, 5, 'đang sử dụng', 5, b'0'),
(7, 6, 'mới xây', 6, b'0'),
(8, 1, 'cần bảo trì', 1, b'0'),
(9, 2, 'đang sử dụng', 2, b'0'),
(10, 3, 'sẵn sàng', 3, b'0'),
(11, 4, 'mới xây', 4, b'0'),
(12, 5, 'mới sơn sửa', 5, b'0'),
(13, 6, 'bình thường', 6, b'0'),
(14, 1, 'mới sơn sửa', 1, b'0'),
(15, 2, 'bình thường', 2, b'0'),
(16, 3, 'mới sơn sửa', 3, b'0'),
(17, 4, 'bình thường', 4, b'0'),
(18, 5, 'mới sơn sửa', 5, b'0'),
(19, 6, 'bình thường', 6, b'0'),
(20, 1, 'mới sơn sửa', 1, b'0'),
(21, 2, 'bình thường', 2, b'0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `ma_role` int(11) NOT NULL,
  `ten_role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`ma_role`, `ten_role`) VALUES
(1, 'admin'),
(2, 'quanly'),
(3, 'user');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `so_dien`
--

CREATE TABLE `so_dien` (
  `ngay_nhap` datetime(6) NOT NULL,
  `don_gia` double NOT NULL,
  `so` double NOT NULL,
  `ma_phongfpk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `so_dien`
--

INSERT INTO `so_dien` (`ngay_nhap`, `don_gia`, `so`, `ma_phongfpk`) VALUES
('2023-08-01 00:00:00.000000', 3.5, 30, 1),
('2023-08-01 00:00:00.000000', 3.5, 35, 2),
('2023-08-01 00:00:00.000000', 3.5, 35, 3),
('2023-08-01 00:00:00.000000', 3.5, 40, 4),
('2023-08-01 00:00:00.000000', 3.5, 45, 5),
('2023-08-01 00:00:00.000000', 3.5, 50, 6),
('2023-08-01 00:00:00.000000', 3.5, 55, 7),
('2023-08-01 00:00:00.000000', 3.5, 60, 8),
('2023-08-01 00:00:00.000000', 3.5, 65, 9),
('2023-08-01 00:00:00.000000', 3.5, 70, 10),
('2023-08-01 00:00:00.000000', 3.5, 75, 11),
('2023-08-01 00:00:00.000000', 3.5, 80, 12),
('2023-08-01 00:00:00.000000', 3.5, 30, 13),
('2023-08-01 00:00:00.000000', 3.5, 35, 14),
('2023-08-01 00:00:00.000000', 3.5, 40, 15),
('2023-08-01 00:00:00.000000', 3.5, 45, 16),
('2023-08-01 00:00:00.000000', 3.5, 50, 17),
('2023-08-01 00:00:00.000000', 3.5, 55, 18),
('2023-08-01 00:00:00.000000', 3.5, 60, 19),
('2023-08-01 00:00:00.000000', 3.5, 65, 20),
('2023-08-01 00:00:00.000000', 3.5, 70, 21),
('2023-09-01 00:00:00.000000', 3.5, 40, 1),
('2023-09-01 00:00:00.000000', 3.5, 45, 2),
('2023-09-01 00:00:00.000000', 3.5, 45, 3),
('2023-09-01 00:00:00.000000', 3.5, 50, 4),
('2023-09-01 00:00:00.000000', 3.5, 55, 5),
('2023-09-01 00:00:00.000000', 3.5, 60, 6),
('2023-09-01 00:00:00.000000', 3.5, 65, 7),
('2023-09-01 00:00:00.000000', 3.5, 70, 8),
('2023-09-01 00:00:00.000000', 3.5, 75, 9),
('2023-09-01 00:00:00.000000', 3.5, 80, 10),
('2023-09-01 00:00:00.000000', 3.5, 30, 11),
('2023-09-01 00:00:00.000000', 3.5, 35, 12),
('2023-09-01 00:00:00.000000', 3.5, 40, 13),
('2023-09-01 00:00:00.000000', 3.5, 45, 14),
('2023-09-01 00:00:00.000000', 3.5, 50, 15),
('2023-09-01 00:00:00.000000', 3.5, 55, 16),
('2023-09-01 00:00:00.000000', 3.5, 60, 17),
('2023-09-01 00:00:00.000000', 3.5, 65, 18),
('2023-09-01 00:00:00.000000', 3.5, 70, 19),
('2023-09-01 00:00:00.000000', 3.5, 75, 20),
('2023-09-01 00:00:00.000000', 3.5, 80, 21),
('2023-10-01 00:00:00.000000', 3.5, 50, 1),
('2023-10-01 00:00:00.000000', 3.5, 55, 2),
('2023-10-01 00:00:00.000000', 3.5, 55, 3),
('2023-10-01 00:00:00.000000', 3.5, 60, 4),
('2023-10-01 00:00:00.000000', 3.5, 65, 5),
('2023-10-01 00:00:00.000000', 3.5, 70, 6),
('2023-10-01 00:00:00.000000', 3.5, 75, 7),
('2023-10-01 00:00:00.000000', 3.5, 80, 8),
('2023-10-01 00:00:00.000000', 3.5, 30, 9),
('2023-10-01 00:00:00.000000', 3.5, 35, 10),
('2023-10-01 00:00:00.000000', 3.5, 40, 11),
('2023-10-01 00:00:00.000000', 3.5, 45, 12),
('2023-10-01 00:00:00.000000', 3.5, 50, 13),
('2023-10-01 00:00:00.000000', 3.5, 55, 14),
('2023-10-01 00:00:00.000000', 3.5, 60, 15),
('2023-10-01 00:00:00.000000', 3.5, 65, 16),
('2023-10-01 00:00:00.000000', 3.5, 70, 17),
('2023-10-01 00:00:00.000000', 3.5, 75, 18),
('2023-10-01 00:00:00.000000', 3.5, 80, 19),
('2023-10-01 00:00:00.000000', 3.5, 30, 20),
('2023-10-01 00:00:00.000000', 3.5, 35, 21),
('2023-11-01 00:00:00.000000', 3.5, 60, 1),
('2023-11-01 00:00:00.000000', 3.5, 65, 2),
('2023-11-01 00:00:00.000000', 3.5, 65, 3),
('2023-11-01 00:00:00.000000', 3.5, 70, 4),
('2023-11-01 00:00:00.000000', 3.5, 75, 5),
('2023-11-01 00:00:00.000000', 3.5, 80, 6),
('2023-11-01 00:00:00.000000', 3.5, 30, 7),
('2023-11-01 00:00:00.000000', 3.5, 35, 8),
('2023-11-01 00:00:00.000000', 3.5, 40, 9),
('2023-11-01 00:00:00.000000', 3.5, 45, 10),
('2023-11-01 00:00:00.000000', 3.5, 50, 11),
('2023-11-01 00:00:00.000000', 3.5, 55, 12),
('2023-11-01 00:00:00.000000', 3.5, 60, 13),
('2023-11-01 00:00:00.000000', 3.5, 65, 14),
('2023-11-01 00:00:00.000000', 3.5, 70, 15),
('2023-11-01 00:00:00.000000', 3.5, 75, 16),
('2023-11-01 00:00:00.000000', 3.5, 80, 17),
('2023-11-01 00:00:00.000000', 3.5, 30, 18),
('2023-11-01 00:00:00.000000', 3.5, 35, 19),
('2023-11-01 00:00:00.000000', 3.5, 40, 20),
('2023-11-01 00:00:00.000000', 3.5, 45, 21);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `so_nuoc`
--

CREATE TABLE `so_nuoc` (
  `ngay_nhap` datetime(6) NOT NULL,
  `don_gia` double NOT NULL,
  `so` double NOT NULL,
  `ma_phongfpk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `so_nuoc`
--

INSERT INTO `so_nuoc` (`ngay_nhap`, `don_gia`, `so`, `ma_phongfpk`) VALUES
('2023-08-01 00:00:00.000000', 20, 5, 1),
('2023-08-01 00:00:00.000000', 20, 8, 2),
('2023-08-01 00:00:00.000000', 20, 7, 3),
('2023-08-01 00:00:00.000000', 20, 9, 4),
('2023-08-01 00:00:00.000000', 20, 6, 5),
('2023-08-01 00:00:00.000000', 20, 8, 6),
('2023-08-01 00:00:00.000000', 20, 7, 7),
('2023-08-01 00:00:00.000000', 20, 9, 8),
('2023-08-01 00:00:00.000000', 20, 11, 9),
('2023-08-01 00:00:00.000000', 20, 12, 10),
('2023-08-01 00:00:00.000000', 20, 13, 11),
('2023-08-01 00:00:00.000000', 20, 14, 12),
('2023-08-01 00:00:00.000000', 20, 15, 13),
('2023-08-01 00:00:00.000000', 20, 16, 14),
('2023-08-01 00:00:00.000000', 20, 17, 15),
('2023-08-01 00:00:00.000000', 20, 18, 16),
('2023-08-01 00:00:00.000000', 20, 9, 17),
('2023-08-01 00:00:00.000000', 20, 11, 18),
('2023-08-01 00:00:00.000000', 20, 13, 19),
('2023-08-01 00:00:00.000000', 20, 15, 20),
('2023-08-01 00:00:00.000000', 20, 10, 21),
('2023-09-01 00:00:00.000000', 20, 10, 1),
('2023-09-01 00:00:00.000000', 20, 12, 2),
('2023-09-01 00:00:00.000000', 20, 11, 3),
('2023-09-01 00:00:00.000000', 20, 13, 4),
('2023-09-01 00:00:00.000000', 20, 10, 5),
('2023-09-01 00:00:00.000000', 20, 12, 6),
('2023-09-01 00:00:00.000000', 20, 11, 7),
('2023-09-01 00:00:00.000000', 20, 13, 8),
('2023-09-01 00:00:00.000000', 20, 15, 9),
('2023-09-01 00:00:00.000000', 20, 16, 10),
('2023-09-01 00:00:00.000000', 20, 15, 11),
('2023-09-01 00:00:00.000000', 20, 16, 12),
('2023-09-01 00:00:00.000000', 20, 17, 13),
('2023-09-01 00:00:00.000000', 20, 18, 14),
('2023-09-01 00:00:00.000000', 20, 19, 15),
('2023-09-01 00:00:00.000000', 20, 19, 16),
('2023-09-01 00:00:00.000000', 20, 12, 17),
('2023-09-01 00:00:00.000000', 20, 14, 18),
('2023-09-01 00:00:00.000000', 20, 16, 19),
('2023-09-01 00:00:00.000000', 20, 18, 20),
('2023-09-01 00:00:00.000000', 20, 13, 21),
('2023-10-01 00:00:00.000000', 20, 15, 1),
('2023-10-01 00:00:00.000000', 20, 16, 2),
('2023-10-01 00:00:00.000000', 20, 14, 3),
('2023-10-01 00:00:00.000000', 20, 17, 4),
('2023-10-01 00:00:00.000000', 20, 15, 5),
('2023-10-01 00:00:00.000000', 20, 16, 6),
('2023-10-01 00:00:00.000000', 20, 14, 7),
('2023-10-01 00:00:00.000000', 20, 17, 8),
('2023-10-01 00:00:00.000000', 20, 17, 9),
('2023-10-01 00:00:00.000000', 20, 18, 10),
('2023-10-01 00:00:00.000000', 20, 17, 11),
('2023-10-01 00:00:00.000000', 20, 18, 12),
('2023-10-01 00:00:00.000000', 20, 19, 13),
('2023-10-01 00:00:00.000000', 20, 19, 14),
('2023-10-01 00:00:00.000000', 20, 20, 15),
('2023-10-01 00:00:00.000000', 20, 20, 16),
('2023-10-01 00:00:00.000000', 20, 15, 17),
('2023-10-01 00:00:00.000000', 20, 17, 18),
('2023-10-01 00:00:00.000000', 20, 19, 19),
('2023-10-01 00:00:00.000000', 20, 20, 20),
('2023-10-01 00:00:00.000000', 20, 16, 21),
('2023-11-01 00:00:00.000000', 20, 20, 1),
('2023-11-01 00:00:00.000000', 20, 18, 2),
('2023-11-01 00:00:00.000000', 20, 19, 3),
('2023-11-01 00:00:00.000000', 20, 20, 4),
('2023-11-01 00:00:00.000000', 20, 18, 5),
('2023-11-01 00:00:00.000000', 20, 19, 6),
('2023-11-01 00:00:00.000000', 20, 18, 7),
('2023-11-01 00:00:00.000000', 20, 20, 8),
('2023-11-01 00:00:00.000000', 20, 20, 9),
('2023-11-01 00:00:00.000000', 20, 19, 10),
('2023-11-01 00:00:00.000000', 20, 20, 11),
('2023-11-01 00:00:00.000000', 20, 19, 12),
('2023-11-01 00:00:00.000000', 20, 20, 13),
('2023-11-01 00:00:00.000000', 20, 20, 14),
('2023-11-01 00:00:00.000000', 20, 20, 15),
('2023-11-01 00:00:00.000000', 20, 20, 16),
('2023-11-01 00:00:00.000000', 20, 18, 17),
('2023-11-01 00:00:00.000000', 20, 20, 18),
('2023-11-01 00:00:00.000000', 20, 20, 19),
('2023-11-01 00:00:00.000000', 20, 20, 20),
('2023-11-01 00:00:00.000000', 20, 19, 21);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tai_khoan`
--

CREATE TABLE `tai_khoan` (
  `user_name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `ma_rolef` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tai_khoan`
--

INSERT INTO `tai_khoan` (`user_name`, `email`, `password`, `ma_rolef`) VALUES
('user1', 'user1@gmail.com', 'user123', 3),
('user10', 'user10@gmail.com', 'user123', 3),
('user11', 'user11@gmail.com', 'user456', 3),
('user12', 'user12@gmail.com', 'user789', 3),
('user13', 'user13@gmail.com', 'user123', 3),
('user14', 'user14@gmail.com', 'user456', 3),
('user15', 'user15@gmail.com', 'user789', 3),
('user2', 'user2@gmail.com', 'user456', 3),
('user3', 'user3@gmail.com', 'user789', 3),
('user4', 'user4@gmail.com', 'user123', 3),
('user5', 'user5@gmail.com', 'user456', 3),
('user6', 'user6@gmail.com', 'user789', 3),
('user7', 'user7@gmail.com', 'user123', 3),
('user8', 'user8@gmail.com', 'user456', 3),
('user9', 'user9@gmail.com', 'user789', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tien_ich`
--

CREATE TABLE `tien_ich` (
  `ma_tien_ich` int(11) NOT NULL,
  `ma_loai_tien_ichf` int(11) DEFAULT NULL,
  `ten_tien_ich` varchar(255) DEFAULT NULL,
  `gia` double NOT NULL,
  `tinh_trang` varchar(255) DEFAULT NULL,
  `co_san` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tien_ich`
--

INSERT INTO `tien_ich` (`ma_tien_ich`, `ma_loai_tien_ichf`, `ten_tien_ich`, `gia`, `tinh_trang`, `co_san`) VALUES
(1, 1, 'Tủ lạnh Samsung 200 lít 01', 300000, 'mới', b'0'),
(2, 1, 'Tủ lạnh Samsung 300 lít 02', 500000, 'mới', b'0'),
(3, 1, 'Tủ lạnh Samsung 400 lít 03', 700000, 'mới', b'0'),
(4, 1, 'Tủ lạnh Toshiba 250 lít 01', 350000, 'mới', b'0'),
(5, 1, 'Tủ lạnh Toshiba 350 lít 02', 550000, 'mới', b'0'),
(6, 1, 'Tủ lạnh Toshiba 450 lít 03', 750000, 'mới', b'0'),
(7, 1, 'Tủ lạnh Panasonic 180 lít 01', 280000, 'mới', b'0'),
(8, 1, 'Tủ lạnh Panasonic 280 lít 02', 480000, 'mới', b'0'),
(9, 1, 'Tủ lạnh Panasonic 380 lít 03', 680000, 'mới', b'0'),
(10, 2, 'Máy giặt Sharp 7.5 kg 01', 300000, 'mới', b'0'),
(11, 2, 'Máy giặt Sharp 8 kg 02', 350000, 'mới', b'0'),
(12, 2, 'Máy giặt Sharp 10 kg 03', 400000, 'mới', b'0'),
(13, 2, 'Máy giặt Toshiba 6 kg 01', 280000, 'mới', b'0'),
(14, 2, 'Máy giặt Toshiba 7 kg 02', 330000, 'mới', b'0'),
(15, 2, 'Máy giặt Toshiba 9 kg 03', 380000, 'mới', b'0'),
(16, 2, 'Máy giặt LG 5.5 kg 01', 250000, 'mới', b'0'),
(17, 2, 'Máy giặt LG 6.5 kg 02', 300000, 'mới', b'0'),
(18, 2, 'Máy giặt LG 8 kg 03', 350000, 'mới', b'0'),
(19, 3, 'Máy lạnh Toshiba invertor 1.5HP 01', 300000, 'mới', b'0'),
(20, 3, 'Máy lạnh Toshiba invertor 2.0HP 02', 400000, 'mới', b'0'),
(21, 3, 'Máy lạnh Toshiba invertor 2.5HP 03', 500000, 'mới', b'0'),
(22, 3, 'Máy lạnh Panasonic invertor 1.0HP 01', 280000, 'mới', b'0'),
(23, 3, 'Máy lạnh Panasonic invertor 1.5HP 02', 350000, 'mới', b'0'),
(24, 3, 'Máy lạnh Panasonic invertor 2.0HP 03', 450000, 'mới', b'0'),
(25, 3, 'Máy lạnh LG invertor 1.5HP 01', 320000, 'mới', b'0'),
(26, 3, 'Máy lạnh LG invertor 2.0HP 02', 420000, 'mới', b'0'),
(27, 3, 'Máy lạnh LG invertor 2.5HP 03', 520000, 'mới', b'0'),
(28, 4, 'Bếp điện Sunhouse 2000W 01', 100000, 'mới', b'0'),
(29, 4, 'Bếp điện Sunhouse 2500W 02', 120000, 'mới', b'0'),
(30, 4, 'Bếp điện Sunhouse 3000W 03', 150000, 'mới', b'0'),
(31, 4, 'Bếp điện Electrolux 1800W 01', 90000, 'mới', b'0'),
(32, 4, 'Bếp điện Electrolux 2200W 02', 110000, 'mới', b'0'),
(33, 4, 'Bếp điện Electrolux 2700W 03', 130000, 'mới', b'0'),
(34, 4, 'Bếp điện Bosch 1500W 01', 80000, 'mới', b'0'),
(35, 4, 'Bếp điện Bosch 2000W 02', 100000, 'mới', b'0'),
(36, 4, 'Bếp điện Bosch 2500W 03', 120000, 'mới', b'0');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chi_tiet_hoa_don_den_bu`
--
ALTER TABLE `chi_tiet_hoa_don_den_bu`
  ADD PRIMARY KEY (`ma_phieu_thuef`,`ma_tien_ichf`,`ma_hoa_don_den_buf`),
  ADD KEY `FKhimp0l2nmx7i9ahp8osqc90xf` (`ma_hoa_don_den_buf`);

--
-- Chỉ mục cho bảng `chi_tiet_hoa_don_hang_thang`
--
ALTER TABLE `chi_tiet_hoa_don_hang_thang`
  ADD PRIMARY KEY (`ma_phieu_thuef`,`ma_tien_ichf`,`ma_hoa_don_hang_thangf`),
  ADD KEY `FK8d5idqnayr87qrphdvt945cht` (`ma_hoa_don_hang_thangf`);

--
-- Chỉ mục cho bảng `chi_tiet_phieu_thue_tien_ich`
--
ALTER TABLE `chi_tiet_phieu_thue_tien_ich`
  ADD PRIMARY KEY (`ma_phieu_thuef`,`ma_tien_ichf`),
  ADD KEY `FK5kpoccnxbbcmlv0mqyvcti718` (`ma_tien_ichf`);

--
-- Chỉ mục cho bảng `hoa_don_den_bu`
--
ALTER TABLE `hoa_don_den_bu`
  ADD PRIMARY KEY (`ma_hoa_don_den_bu`),
  ADD KEY `FKoh49imm274j4gmymxhxquq4rg` (`ma_phieu_thuef`),
  ADD KEY `FK2ju9y8p6m1jshgxh7xyh2ssic` (`user_namef`);

--
-- Chỉ mục cho bảng `hoa_don_hang_thang`
--
ALTER TABLE `hoa_don_hang_thang`
  ADD PRIMARY KEY (`ma_hoa_don_hang_thang`),
  ADD KEY `FK9du7mbmdcvsauywb0nww9dx33` (`ma_hop_dongf`),
  ADD KEY `FKgedkwrrof5fk4l72xv4vsx234` (`user_namef`);

--
-- Chỉ mục cho bảng `hop_dong_thue_phong`
--
ALTER TABLE `hop_dong_thue_phong`
  ADD PRIMARY KEY (`ma_hop_dong`),
  ADD KEY `FKb3g5x383amma1jmcr6k1ok70v` (`ma_phongf`),
  ADD KEY `FKhsbjiylq28yv89l7qfkgru9i0` (`user_namef`);

--
-- Chỉ mục cho bảng `loai_phong`
--
ALTER TABLE `loai_phong`
  ADD PRIMARY KEY (`ma_loai_phong`);

--
-- Chỉ mục cho bảng `loai_tien_ich`
--
ALTER TABLE `loai_tien_ich`
  ADD PRIMARY KEY (`ma_loai_tien_ich`);

--
-- Chỉ mục cho bảng `phieu_thue_tien_ich`
--
ALTER TABLE `phieu_thue_tien_ich`
  ADD PRIMARY KEY (`ma_phieu_thue`),
  ADD KEY `FKmaqoos69s9ar67rg8106u4k84` (`user_namef`);

--
-- Chỉ mục cho bảng `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`ma_phong`),
  ADD KEY `FKlo1pjhqoxom1vls90lca4g5r2` (`ma_loai_phongf`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`ma_role`);

--
-- Chỉ mục cho bảng `so_dien`
--
ALTER TABLE `so_dien`
  ADD PRIMARY KEY (`ngay_nhap`,`ma_phongfpk`),
  ADD KEY `FKc1y13oh6lx0vypxwn97eumdcu` (`ma_phongfpk`);

--
-- Chỉ mục cho bảng `so_nuoc`
--
ALTER TABLE `so_nuoc`
  ADD PRIMARY KEY (`ngay_nhap`,`ma_phongfpk`),
  ADD KEY `FK285a8is11xhjixpqdxrxkn7wq` (`ma_phongfpk`);

--
-- Chỉ mục cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD PRIMARY KEY (`user_name`),
  ADD KEY `FK5yqkac8ate0esksyja728hv1s` (`ma_rolef`);

--
-- Chỉ mục cho bảng `tien_ich`
--
ALTER TABLE `tien_ich`
  ADD PRIMARY KEY (`ma_tien_ich`),
  ADD KEY `FKbdw9vn5us9ifrkp82rbasdctt` (`ma_loai_tien_ichf`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `hoa_don_den_bu`
--
ALTER TABLE `hoa_don_den_bu`
  MODIFY `ma_hoa_don_den_bu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hoa_don_hang_thang`
--
ALTER TABLE `hoa_don_hang_thang`
  MODIFY `ma_hoa_don_hang_thang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `hop_dong_thue_phong`
--
ALTER TABLE `hop_dong_thue_phong`
  MODIFY `ma_hop_dong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `loai_phong`
--
ALTER TABLE `loai_phong`
  MODIFY `ma_loai_phong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `loai_tien_ich`
--
ALTER TABLE `loai_tien_ich`
  MODIFY `ma_loai_tien_ich` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `phieu_thue_tien_ich`
--
ALTER TABLE `phieu_thue_tien_ich`
  MODIFY `ma_phieu_thue` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `phong`
--
ALTER TABLE `phong`
  MODIFY `ma_phong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `ma_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tien_ich`
--
ALTER TABLE `tien_ich`
  MODIFY `ma_tien_ich` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chi_tiet_hoa_don_den_bu`
--
ALTER TABLE `chi_tiet_hoa_don_den_bu`
  ADD CONSTRAINT `FKhimp0l2nmx7i9ahp8osqc90xf` FOREIGN KEY (`ma_hoa_don_den_buf`) REFERENCES `hoa_don_den_bu` (`ma_hoa_don_den_bu`),
  ADD CONSTRAINT `FKqgtvpi9a9q53ek1fddgyv1ty1` FOREIGN KEY (`ma_phieu_thuef`,`ma_tien_ichf`) REFERENCES `chi_tiet_phieu_thue_tien_ich` (`ma_phieu_thuef`, `ma_tien_ichf`);

--
-- Các ràng buộc cho bảng `chi_tiet_hoa_don_hang_thang`
--
ALTER TABLE `chi_tiet_hoa_don_hang_thang`
  ADD CONSTRAINT `FK8d5idqnayr87qrphdvt945cht` FOREIGN KEY (`ma_hoa_don_hang_thangf`) REFERENCES `hoa_don_hang_thang` (`ma_hoa_don_hang_thang`),
  ADD CONSTRAINT `FK912j4euf1we38eu83y4t16aj` FOREIGN KEY (`ma_phieu_thuef`,`ma_tien_ichf`) REFERENCES `chi_tiet_phieu_thue_tien_ich` (`ma_phieu_thuef`, `ma_tien_ichf`);

--
-- Các ràng buộc cho bảng `chi_tiet_phieu_thue_tien_ich`
--
ALTER TABLE `chi_tiet_phieu_thue_tien_ich`
  ADD CONSTRAINT `FK5kpoccnxbbcmlv0mqyvcti718` FOREIGN KEY (`ma_tien_ichf`) REFERENCES `tien_ich` (`ma_tien_ich`),
  ADD CONSTRAINT `FK9s9mojuw98nykt2rt8cuoi49` FOREIGN KEY (`ma_phieu_thuef`) REFERENCES `phieu_thue_tien_ich` (`ma_phieu_thue`);

--
-- Các ràng buộc cho bảng `hoa_don_den_bu`
--
ALTER TABLE `hoa_don_den_bu`
  ADD CONSTRAINT `FK2ju9y8p6m1jshgxh7xyh2ssic` FOREIGN KEY (`user_namef`) REFERENCES `tai_khoan` (`user_name`),
  ADD CONSTRAINT `FKoh49imm274j4gmymxhxquq4rg` FOREIGN KEY (`ma_phieu_thuef`) REFERENCES `phieu_thue_tien_ich` (`ma_phieu_thue`);

--
-- Các ràng buộc cho bảng `hoa_don_hang_thang`
--
ALTER TABLE `hoa_don_hang_thang`
  ADD CONSTRAINT `FK9du7mbmdcvsauywb0nww9dx33` FOREIGN KEY (`ma_hop_dongf`) REFERENCES `hop_dong_thue_phong` (`ma_hop_dong`),
  ADD CONSTRAINT `FKgedkwrrof5fk4l72xv4vsx234` FOREIGN KEY (`user_namef`) REFERENCES `tai_khoan` (`user_name`);

--
-- Các ràng buộc cho bảng `hop_dong_thue_phong`
--
ALTER TABLE `hop_dong_thue_phong`
  ADD CONSTRAINT `FKb3g5x383amma1jmcr6k1ok70v` FOREIGN KEY (`ma_phongf`) REFERENCES `phong` (`ma_phong`),
  ADD CONSTRAINT `FKhsbjiylq28yv89l7qfkgru9i0` FOREIGN KEY (`user_namef`) REFERENCES `tai_khoan` (`user_name`);

--
-- Các ràng buộc cho bảng `phieu_thue_tien_ich`
--
ALTER TABLE `phieu_thue_tien_ich`
  ADD CONSTRAINT `FKmaqoos69s9ar67rg8106u4k84` FOREIGN KEY (`user_namef`) REFERENCES `tai_khoan` (`user_name`);

--
-- Các ràng buộc cho bảng `phong`
--
ALTER TABLE `phong`
  ADD CONSTRAINT `FKlo1pjhqoxom1vls90lca4g5r2` FOREIGN KEY (`ma_loai_phongf`) REFERENCES `loai_phong` (`ma_loai_phong`);

--
-- Các ràng buộc cho bảng `so_dien`
--
ALTER TABLE `so_dien`
  ADD CONSTRAINT `FKc1y13oh6lx0vypxwn97eumdcu` FOREIGN KEY (`ma_phongfpk`) REFERENCES `phong` (`ma_phong`);

--
-- Các ràng buộc cho bảng `so_nuoc`
--
ALTER TABLE `so_nuoc`
  ADD CONSTRAINT `FK285a8is11xhjixpqdxrxkn7wq` FOREIGN KEY (`ma_phongfpk`) REFERENCES `phong` (`ma_phong`);

--
-- Các ràng buộc cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD CONSTRAINT `FK5yqkac8ate0esksyja728hv1s` FOREIGN KEY (`ma_rolef`) REFERENCES `role` (`ma_role`);

--
-- Các ràng buộc cho bảng `tien_ich`
--
ALTER TABLE `tien_ich`
  ADD CONSTRAINT `FKbdw9vn5us9ifrkp82rbasdctt` FOREIGN KEY (`ma_loai_tien_ichf`) REFERENCES `loai_tien_ich` (`ma_loai_tien_ich`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
