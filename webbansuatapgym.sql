-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 19, 2021 lúc 05:16 PM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webbansuatapgym`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(10) UNSIGNED NOT NULL,
  `tenloai` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mota` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tenloai`, `mota`) VALUES
(0, 'Sữa Tăng Mỡ', 'Rất Ngon'),
(1, 'Tăng Cân', 'Giúp Tăng Cơ Giảm Mỡ, Tăng Sức Mạnh, Phù Hợ Với Người Mới Tập ... '),
(2, 'Tăng Cơ', 'Giúp Tăng Cơ Giảm Mỡ, Giàu Protein'),
(3, 'Tăng Sức Mạnh và Sức Bền', 'Hỗ Trợ Trước Khi Tập, Giúp Tăng Cường Thể Lực...'),
(4, 'Hỗ Trợ Sức Khỏe', 'Giúp bổ sung các chất dinh dưỡng như kẽm, sắt,...'),
(5, 'Giảm Cân Đốt Mỡ', 'Giúp cơ thể đốt được nhiều calo hơn, giúp cơ thể hồi phục nhanh hơn..'),
(6, 'Combo Sản Phẩm', 'Giúp tiết kiệm chi phí hơn khi mua lẻ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(10) UNSIGNED NOT NULL,
  `hoten` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`id`, `hoten`, `sdt`, `diachi`, `email`, `password`) VALUES
(1, 'Vũ Trường Sơn', '0963235909', 'Thanh Xuân', 'vutruongson01102000@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(6, 'Vũ Trường Sơn', '0963235909', 'Thanh Xuân', 'admindayhaha@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(7, 'Mai Phương', '0133881493', 'Thanh Xuân', 'lethimaiphuong@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(12, 'Trần Thành', '0963235909', 'Thanh Xuân', 'thanh123@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang_sanpham`
--

CREATE TABLE `khachhang_sanpham` (
  `id_kh` int(10) UNSIGNED NOT NULL,
  `id_sp` int(50) UNSIGNED NOT NULL,
  `soluong` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_ql` int(10) UNSIGNED NOT NULL,
  `hoten` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sodt` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`id`, `id_ql`, `hoten`, `diachi`, `sodt`, `email`, `password`) VALUES
(1, 1, 'Vũ Trường Sơn', 'Thanh Xuân', '0963235909', 'vutruongson01102000@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(8, 1, 'Nhân viên', 'Thanh Xuân', '09632555665', 'nv@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien_danhmuc`
--

CREATE TABLE `nhanvien_danhmuc` (
  `id_nhanvien` int(10) UNSIGNED NOT NULL,
  `id_danhmuc` int(50) UNSIGNED NOT NULL,
  `thoigiantao` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien_sanpham`
--

CREATE TABLE `nhanvien_sanpham` (
  `id_nhanvien` int(10) UNSIGNED NOT NULL,
  `id_sanpham` int(50) UNSIGNED NOT NULL,
  `ngaytao` timestamp NOT NULL DEFAULT current_timestamp(),
  `tensp` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quanly`
--

CREATE TABLE `quanly` (
  `id` int(10) UNSIGNED NOT NULL,
  `hoten` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sodt` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quanly`
--

INSERT INTO `quanly` (`id`, `hoten`, `sodt`, `email`, `password`) VALUES
(1, 'Vũ Trường Sơn', '0963235909', 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_dm` int(10) UNSIGNED NOT NULL,
  `tensp` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `giact` int(10) NOT NULL,
  `giakm` int(10) NOT NULL,
  `anhsp` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `khoiluong` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaysx` date NOT NULL,
  `hansd` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thuonghieu` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doituongsd` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motasp` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `id_dm`, `tensp`, `giact`, `giakm`, `anhsp`, `khoiluong`, `ngaysx`, `hansd`, `thuonghieu`, `doituongsd`, `motasp`) VALUES
(3, 1, 'Sữa Tăng Cân Extreme Massive Mass Gainer 2.72kg 3 ', 1200000, 800000, 'aminobuild.jpg', '2.72kg', '2021-03-15', '3 năm', 'Extreme', 'Từ 10 tuổi trở lên', 'Sữa Dinh Dưỡng Dành Cho Người Tập Gym Mới Mong Muốn Tăng Cân và Không Có Thời Gian Ăn...'),
(4, 1, 'Sữa tăng cân tăng cơ MuscleTech MassTech Extreme 2', 1200000, 890000, 'masstech.jpg', '10kg', '2021-03-15', '3 năm', 'Extreme', 'Từ 10 tuổi trở lên', 'Sữa Dinh Dưỡng Dành Cho Người Tập Gym Mới Mong Muốn Tăng Cân và Không Có Thời Gian Ăn...'),
(5, 1, 'Sữa tăng cân Applied Nutrition Critical Mass 2.4kg', 2500000, 1990000, 'critical-mass.jpg', '2.4kg', '2021-03-15', '3 năm', 'Critical', 'Từ 11 tuổi trở lên', 'Sữa Dinh Dưỡng Dành Cho Người Tập Gym Mới Mong Muốn Tăng Cân và Không Có Thời Gian Ăn...'),
(6, 1, 'Sữa Tăng Cân Bulk Powders Complete Mass 5kg - 3 mù', 560000, 500000, 'complete-mass.jpg', '5kg', '2021-03-15', '3 năm', 'Rule One', 'Từ 10 tuổi trở lên', 'Sữa Dinh Dưỡng Dành Cho Người Tập Gym Mới Mong Muốn Tăng Cân và Không Có Thời Gian Ăn...'),
(7, 1, 'Sữa Tăng Cân Tăng Cơ BLADE Muscle Maxx 7000g', 1060000, 900000, 'blade.jpg', '7kg', '2021-03-15', '3 năm', 'BLADE', 'Từ 10 tuổi trở lên', 'Sữa Dinh Dưỡng Dành Cho Người Tập Gym Mới Mong Muốn Tăng Cân và Không Có Thời Gian Ăn...'),
(8, 1, 'Sữa Tăng Cân Extreme Massive Mass Gainer 11.34kg 4', 1200000, 800000, 'elite-labs.jpg', '11.4kg', '2021-03-15', '3 năm', 'Extreme', 'Từ 10 tuổi trở lên', 'Sữa Dinh Dưỡng Dành Cho Người Tập Gym Mới Mong Muốn Tăng Cân và Không Có Thời Gian Ăn...'),
(9, 1, 'Sữa tăng cân tăng cơ MuscleTech MassTech Extreme 2', 1200000, 890000, 'masstech.jpg', '10kg', '2021-03-15', '3 năm', 'Extreme', 'Từ 10 tuổi trở lên', 'Sữa Dinh Dưỡng Dành Cho Người Tập Gym Mới Mong Muốn Tăng Cân và Không Có Thời Gian Ăn...'),
(10, 1, 'Sữa tăng cân Applied Nutrition Critical Mass 2.4kg', 2500000, 1990000, 'critical-mass.jpg', '2.4kg', '2021-03-15', '3 năm', 'Critical', 'Từ 11 tuổi trở lên', 'Sữa Dinh Dưỡng Dành Cho Người Tập Gym Mới Mong Muốn Tăng Cân và Không Có Thời Gian Ăn...'),
(11, 2, 'Sữa Tăng Cơ Best Tasting Whey Protein 907g - 2 mùi', 560000, 500000, 'rule1.png', '900g', '2021-03-15', '3 năm', 'Rule One', 'Từ 10 tuổi trở lên', '100% protein từ whey isolate & thủy phân - không có whey cô đặc!'),
(12, 2, 'Sữa Uống Tăng Cơ Amino Build Next Gen 282g - 2 mùi', 1060000, 900000, 'aminobuild.jpg', '2.28kg', '2021-03-15', '3 năm', 'BLADE', 'Từ 10 tuổi trở lên', '100% protein từ whey isolate & thủy phân - không có whey cô đặc!'),
(13, 2, 'Sữa tăng cơ GoNutrition Whey Protein 80 Concentrat', 1200000, 800000, 'extreme.jpg', '2.72kg', '2021-03-15', '3 năm', 'Extreme', 'Từ 10 tuổi trở lên', '100% protein từ whey isolate & thủy phân - không có whey cô đặc!'),
(14, 2, 'Sữa Tăng Cơ Nitro-Tech Performance Series 4.54kg 2', 1200000, 890000, 'masstech.jpg', '10kg', '2021-03-15', '3 năm', 'Extreme', 'Từ 10 tuổi trở lên', '100% protein từ whey isolate & thủy phân - không có whey cô đặc!'),
(15, 2, 'Sữa tăng cân Applied Nutrition Critical Mass 2.4kg', 2500000, 1990000, 'critical-mass.jpg', '2.4kg', '2021-03-15', '3 năm', 'Critical', 'Từ 11 tuổi trở lên', '100% protein từ whey isolate & thủy phân - không có whey cô đặc!'),
(16, 2, 'Sữa Tăng Cơ MyProtein Impact Whey Isolate 2.5kg 10', 560000, 500000, 'complete-mass.jpg', '5kg', '2021-03-15', '3 năm', 'Rule One', 'Từ 10 tuổi trở lên', '100% protein từ whey isolate & thủy phân - không có whey cô đặc!'),
(17, 2, 'Sữa Tăng Cơ Hammer Whey Protein Isolate 624g - 3 M', 1060000, 900000, 'hammer-whey.jpg', '7kg', '2021-03-15', '3 năm', 'Hammer', 'Từ 10 tuổi trở lên', '100% protein từ whey isolate & thủy phân - không có whey cô đặc!'),
(26, 2, 'Sữa đặc', 30000, 25000, 'logo.png', '600g', '2021-06-04', '4 năm', 'Vinamilk', 'Mọi lứa tuổi', 'Ngon'),
(27, 4, 'lêu lêu', 30000, 25000, 'bg2.jpg', '600g', '2021-06-18', '4 năm', 'Vinamilk', 'Mọi lứa tuổi', 'Khó vãi chưởng');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khachhang_sanpham`
--
ALTER TABLE `khachhang_sanpham`
  ADD KEY `id_kh` (`id_kh`,`id_sp`),
  ADD KEY `id_kh_2` (`id_kh`,`id_sp`),
  ADD KEY `id_sp` (`id_sp`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_ql` (`id_ql`),
  ADD KEY `id_ql_2` (`id_ql`);

--
-- Chỉ mục cho bảng `nhanvien_danhmuc`
--
ALTER TABLE `nhanvien_danhmuc`
  ADD KEY `id_nhanvien` (`id_nhanvien`,`id_danhmuc`),
  ADD KEY `id_danhmuc` (`id_danhmuc`);

--
-- Chỉ mục cho bảng `nhanvien_sanpham`
--
ALTER TABLE `nhanvien_sanpham`
  ADD KEY `id_nhanvien` (`id_nhanvien`,`id_sanpham`),
  ADD KEY `id_sanpham` (`id_sanpham`);

--
-- Chỉ mục cho bảng `quanly`
--
ALTER TABLE `quanly`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_dm` (`id_dm`),
  ADD KEY `id_dm_2` (`id_dm`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `quanly`
--
ALTER TABLE `quanly`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `khachhang_sanpham`
--
ALTER TABLE `khachhang_sanpham`
  ADD CONSTRAINT `khachhang_sanpham_ibfk_1` FOREIGN KEY (`id_kh`) REFERENCES `khachhang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `khachhang_sanpham_ibfk_2` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`id_ql`) REFERENCES `quanly` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nhanvien_danhmuc`
--
ALTER TABLE `nhanvien_danhmuc`
  ADD CONSTRAINT `nhanvien_danhmuc_ibfk_1` FOREIGN KEY (`id_nhanvien`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nhanvien_danhmuc_ibfk_2` FOREIGN KEY (`id_danhmuc`) REFERENCES `danhmuc` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nhanvien_sanpham`
--
ALTER TABLE `nhanvien_sanpham`
  ADD CONSTRAINT `nhanvien_sanpham_ibfk_1` FOREIGN KEY (`id_nhanvien`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nhanvien_sanpham_ibfk_2` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`id_dm`) REFERENCES `danhmuc` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
