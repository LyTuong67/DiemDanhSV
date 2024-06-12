-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th5 20, 2024 lúc 09:52 AM
-- Phiên bản máy phục vụ: 10.5.20-MariaDB
-- Phiên bản PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `id21949930_dbsinhvien`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_user_name` varchar(100) NOT NULL,
  `admin_password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_user_name`, `admin_password`) VALUES
(1, 'admin', '$2y$10$D74Zy1qMkATvmGRoVeq7hed4ajWof2aqDGnEaD3yPHABA.p.e7f4u');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `attendance_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `attendance_status` enum('Present','Absent') NOT NULL,
  `attendance_date` date NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`attendance_id`, `student_id`, `attendance_status`, `attendance_date`, `teacher_id`) VALUES
(1, 7, 'Present', '2024-05-01', 3),
(2, 8, 'Present', '2024-05-01', 3),
(3, 9, 'Absent', '2024-05-01', 3),
(4, 10, 'Present', '2024-05-01', 3),
(5, 11, 'Present', '2024-05-01', 3),
(6, 7, 'Absent', '2024-05-02', 3),
(7, 8, 'Present', '2024-05-02', 3),
(8, 9, 'Present', '2024-05-02', 3),
(9, 10, 'Present', '2024-05-02', 3),
(10, 11, 'Absent', '2024-05-02', 3),
(11, 1, 'Present', '2024-05-01', 2),
(12, 3, 'Present', '2024-05-01', 2),
(13, 4, 'Present', '2024-05-01', 2),
(14, 5, 'Present', '2024-05-01', 2),
(15, 6, 'Present', '2024-05-01', 2),
(16, 1, 'Present', '2024-05-02', 2),
(17, 3, 'Absent', '2024-05-02', 2),
(18, 4, 'Present', '2024-05-02', 2),
(19, 5, 'Absent', '2024-05-02', 2),
(20, 6, 'Present', '2024-05-02', 2),
(21, 1, 'Present', '2024-05-03', 2),
(22, 3, 'Present', '2024-05-03', 2),
(23, 4, 'Absent', '2024-05-03', 2),
(24, 5, 'Present', '2024-05-03', 2),
(25, 6, 'Present', '2024-05-03', 2),
(26, 1, 'Absent', '2024-05-04', 2),
(27, 3, 'Present', '2024-05-04', 2),
(28, 4, 'Present', '2024-05-04', 2),
(29, 5, 'Present', '2024-05-04', 2),
(30, 6, 'Present', '2024-05-04', 2),
(31, 1, 'Present', '2024-05-06', 2),
(32, 3, 'Present', '2024-05-06', 2),
(33, 4, 'Present', '2024-05-06', 2),
(34, 5, 'Present', '2024-05-06', 2),
(35, 6, 'Present', '2024-05-06', 2),
(36, 1, 'Present', '2024-05-07', 2),
(37, 3, 'Present', '2024-05-07', 2),
(38, 4, 'Present', '2024-05-07', 2),
(39, 5, 'Present', '2024-05-07', 2),
(40, 6, 'Absent', '2024-05-07', 2),
(41, 1, 'Present', '2024-05-08', 2),
(42, 3, 'Present', '2024-05-08', 2),
(43, 4, 'Present', '2024-05-08', 2),
(44, 5, 'Absent', '2024-05-08', 2),
(45, 6, 'Present', '2024-05-08', 2),
(46, 1, 'Present', '2024-05-09', 2),
(47, 3, 'Present', '2024-05-09', 2),
(48, 4, 'Present', '2024-05-09', 2),
(49, 5, 'Present', '2024-05-09', 2),
(50, 6, 'Present', '2024-05-09', 2),
(51, 1, 'Present', '2024-05-10', 2),
(52, 3, 'Absent', '2024-05-10', 2),
(53, 4, 'Absent', '2024-05-10', 2),
(54, 5, 'Present', '2024-05-10', 2),
(55, 6, 'Absent', '2024-05-10', 2),
(56, 1, 'Present', '2024-05-11', 2),
(57, 3, 'Present', '2024-05-11', 2),
(58, 4, 'Absent', '2024-05-11', 2),
(59, 5, 'Present', '2024-05-11', 2),
(60, 6, 'Absent', '2024-05-11', 2),
(61, 7, 'Present', '2024-05-03', 3),
(62, 8, 'Present', '2024-05-03', 3),
(63, 9, 'Present', '2024-05-03', 3),
(64, 10, 'Present', '2024-05-03', 3),
(65, 11, 'Present', '2024-05-03', 3),
(66, 7, 'Absent', '2024-05-04', 3),
(67, 8, 'Present', '2024-05-04', 3),
(68, 9, 'Absent', '2024-05-04', 3),
(69, 10, 'Present', '2024-05-04', 3),
(70, 11, 'Absent', '2024-05-04', 3),
(71, 7, 'Present', '2024-05-06', 3),
(72, 8, 'Present', '2024-05-06', 3),
(73, 9, 'Absent', '2024-05-06', 3),
(74, 10, 'Present', '2024-05-06', 3),
(75, 11, 'Present', '2024-05-06', 3),
(76, 7, 'Present', '2024-05-07', 3),
(77, 8, 'Present', '2024-05-07', 3),
(78, 9, 'Present', '2024-05-07', 3),
(79, 10, 'Present', '2024-05-07', 3),
(80, 11, 'Present', '2024-05-07', 3),
(81, 7, 'Present', '2024-05-08', 3),
(82, 8, 'Present', '2024-05-08', 3),
(83, 9, 'Present', '2024-05-08', 3),
(84, 10, 'Absent', '2024-05-08', 3),
(85, 11, 'Absent', '2024-05-08', 3),
(86, 7, 'Present', '2024-05-09', 3),
(87, 8, 'Present', '2024-05-09', 3),
(88, 9, 'Absent', '2024-05-09', 3),
(89, 10, 'Present', '2024-05-09', 3),
(90, 11, 'Present', '2024-05-09', 3),
(91, 7, 'Absent', '2024-05-10', 3),
(92, 8, 'Present', '2024-05-10', 3),
(93, 9, 'Present', '2024-05-10', 3),
(94, 10, 'Present', '2024-05-10', 3),
(95, 11, 'Absent', '2024-05-10', 3),
(96, 7, 'Present', '2024-05-11', 3),
(97, 8, 'Present', '2024-05-11', 3),
(98, 9, 'Present', '2024-05-11', 3),
(99, 10, 'Absent', '2024-05-11', 3),
(100, 11, 'Present', '2024-05-11', 3),
(101, 12, 'Present', '2024-05-01', 4),
(102, 13, 'Present', '2024-05-01', 4),
(103, 14, 'Present', '2024-05-01', 4),
(104, 15, 'Present', '2024-05-01', 4),
(105, 16, 'Present', '2024-05-01', 4),
(106, 12, 'Present', '2024-05-02', 4),
(107, 13, 'Absent', '2024-05-02', 4),
(108, 14, 'Present', '2024-05-02', 4),
(109, 15, 'Absent', '2024-05-02', 4),
(110, 16, 'Present', '2024-05-02', 4),
(111, 12, 'Present', '2024-05-03', 4),
(112, 13, 'Present', '2024-05-03', 4),
(113, 14, 'Present', '2024-05-03', 4),
(114, 15, 'Absent', '2024-05-03', 4),
(115, 16, 'Present', '2024-05-03', 4),
(116, 12, 'Present', '2024-05-04', 4),
(117, 13, 'Present', '2024-05-04', 4),
(118, 14, 'Present', '2024-05-04', 4),
(119, 15, 'Present', '2024-05-04', 4),
(120, 16, 'Present', '2024-05-04', 4),
(121, 12, 'Present', '2024-05-06', 4),
(122, 13, 'Absent', '2024-05-06', 4),
(123, 14, 'Absent', '2024-05-06', 4),
(124, 15, 'Present', '2024-05-06', 4),
(125, 16, 'Present', '2024-05-06', 4),
(126, 12, 'Absent', '2024-05-07', 4),
(127, 13, 'Present', '2024-05-07', 4),
(128, 14, 'Present', '2024-05-07', 4),
(129, 15, 'Present', '2024-05-07', 4),
(130, 16, 'Absent', '2024-05-07', 4),
(131, 12, 'Present', '2024-05-08', 4),
(132, 13, 'Absent', '2024-05-08', 4),
(133, 14, 'Present', '2024-05-08', 4),
(134, 15, 'Present', '2024-05-08', 4),
(135, 16, 'Present', '2024-05-08', 4),
(136, 12, 'Present', '2024-05-09', 4),
(137, 13, 'Present', '2024-05-09', 4),
(138, 14, 'Present', '2024-05-09', 4),
(139, 15, 'Present', '2024-05-09', 4),
(140, 16, 'Absent', '2024-05-09', 4),
(141, 12, 'Present', '2024-05-10', 4),
(142, 13, 'Absent', '2024-05-10', 4),
(143, 14, 'Present', '2024-05-10', 4),
(144, 15, 'Present', '2024-05-10', 4),
(145, 16, 'Absent', '2024-05-10', 4),
(146, 12, 'Present', '2024-05-11', 4),
(147, 13, 'Present', '2024-05-11', 4),
(148, 14, 'Present', '2024-05-11', 4),
(149, 15, 'Present', '2024-05-11', 4),
(150, 16, 'Present', '2024-05-11', 4),
(151, 17, 'Present', '2024-05-01', 5),
(152, 18, 'Present', '2024-05-01', 5),
(153, 19, 'Present', '2024-05-01', 5),
(154, 20, 'Absent', '2024-05-01', 5),
(155, 21, 'Absent', '2024-05-01', 5),
(156, 17, 'Present', '2024-05-02', 5),
(157, 18, 'Present', '2024-05-02', 5),
(158, 19, 'Present', '2024-05-02', 5),
(159, 20, 'Present', '2024-05-02', 5),
(160, 21, 'Present', '2024-05-02', 5),
(161, 17, 'Present', '2024-05-03', 5),
(162, 18, 'Present', '2024-05-03', 5),
(163, 19, 'Present', '2024-05-03', 5),
(164, 20, 'Present', '2024-05-03', 5),
(165, 21, 'Absent', '2024-05-03', 5),
(166, 17, 'Present', '2024-05-04', 5),
(167, 18, 'Present', '2024-05-04', 5),
(168, 19, 'Absent', '2024-05-04', 5),
(169, 20, 'Present', '2024-05-04', 5),
(170, 21, 'Present', '2024-05-04', 5),
(171, 17, 'Present', '2024-05-06', 5),
(172, 18, 'Present', '2024-05-06', 5),
(173, 19, 'Present', '2024-05-06', 5),
(174, 20, 'Present', '2024-05-06', 5),
(175, 21, 'Present', '2024-05-06', 5),
(176, 17, 'Present', '2024-05-07', 5),
(177, 18, 'Present', '2024-05-07', 5),
(178, 19, 'Present', '2024-05-07', 5),
(179, 20, 'Present', '2024-05-07', 5),
(180, 21, 'Absent', '2024-05-07', 5),
(181, 17, 'Present', '2024-05-08', 5),
(182, 18, 'Present', '2024-05-08', 5),
(183, 19, 'Present', '2024-05-08', 5),
(184, 20, 'Absent', '2024-05-08', 5),
(185, 21, 'Present', '2024-05-08', 5),
(186, 17, 'Present', '2024-05-09', 5),
(187, 18, 'Present', '2024-05-09', 5),
(188, 19, 'Absent', '2024-05-09', 5),
(189, 20, 'Absent', '2024-05-09', 5),
(190, 21, 'Present', '2024-05-09', 5),
(191, 17, 'Absent', '2024-05-10', 5),
(192, 18, 'Present', '2024-05-10', 5),
(193, 19, 'Present', '2024-05-10', 5),
(194, 20, 'Present', '2024-05-10', 5),
(195, 21, 'Present', '2024-05-10', 5),
(196, 17, 'Present', '2024-05-11', 5),
(197, 18, 'Present', '2024-05-11', 5),
(198, 19, 'Present', '2024-05-11', 5),
(199, 20, 'Absent', '2024-05-11', 5),
(200, 21, 'Present', '2024-05-11', 5),
(201, 7, 'Present', '2024-05-13', 3),
(202, 8, 'Present', '2024-05-13', 3),
(203, 9, 'Present', '2024-05-13', 3),
(204, 10, 'Absent', '2024-05-13', 3),
(205, 11, 'Present', '2024-05-13', 3),
(206, 7, 'Present', '2024-05-14', 3),
(207, 8, 'Present', '2024-05-14', 3),
(208, 9, 'Absent', '2024-05-14', 3),
(209, 10, 'Present', '2024-05-14', 3),
(210, 11, 'Present', '2024-05-14', 3),
(211, 1, 'Present', '2024-05-16', 2),
(212, 3, 'Absent', '2024-05-16', 2),
(213, 4, 'Absent', '2024-05-16', 2),
(214, 5, 'Absent', '2024-05-16', 2),
(215, 6, 'Absent', '2024-05-16', 2),
(216, 1, 'Present', '2024-05-18', 2),
(217, 3, 'Present', '2024-05-18', 2),
(218, 4, 'Absent', '2024-05-18', 2),
(219, 5, 'Absent', '2024-05-18', 2),
(220, 6, 'Absent', '2024-05-18', 2),
(221, 1, 'Present', '2024-05-19', 2),
(222, 3, 'Present', '2024-05-19', 2),
(223, 4, 'Present', '2024-05-19', 2),
(224, 5, 'Absent', '2024-05-19', 2),
(225, 6, 'Absent', '2024-05-19', 2),
(226, 17, 'Present', '2024-05-17', 5),
(227, 18, 'Present', '2024-05-17', 5),
(228, 19, 'Absent', '2024-05-17', 5),
(229, 20, 'Present', '2024-05-17', 5),
(230, 21, 'Absent', '2024-05-17', 5),
(231, 17, 'Absent', '2024-05-18', 5),
(232, 18, 'Present', '2024-05-18', 5),
(233, 19, 'Present', '2024-05-18', 5),
(234, 20, 'Present', '2024-05-18', 5),
(235, 21, 'Present', '2024-05-18', 5),
(236, 17, 'Present', '2024-05-19', 5),
(237, 18, 'Present', '2024-05-19', 5),
(238, 19, 'Present', '2024-05-19', 5),
(239, 20, 'Present', '2024-05-19', 5),
(240, 21, 'Present', '2024-05-19', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_grade`
--

CREATE TABLE `tbl_grade` (
  `grade_id` int(11) NOT NULL,
  `grade_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_grade`
--

INSERT INTO `tbl_grade` (`grade_id`, `grade_name`) VALUES
(1, '11 - A'),
(2, '11 - B'),
(3, '12 - A'),
(4, '12 - B'),
(5, '11 - C');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_student`
--

CREATE TABLE `tbl_student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_roll_number` int(11) NOT NULL,
  `student_dob` date NOT NULL,
  `student_grade_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_student`
--

INSERT INTO `tbl_student` (`student_id`, `student_name`, `student_roll_number`, `student_dob`, `student_grade_id`) VALUES
(1, 'Triệu Anh Huy', 2001207362, '2002-03-04', 1),
(3, 'Huỳnh Tuấn Kiệt', 2001206731, '2002-04-19', 1),
(4, 'Trần Lữ Anh Hào', 2001209121, '2002-01-15', 1),
(5, 'Lý Hoàng Long', 2001208731, '2002-12-14', 1),
(6, 'Mai Thúy Quyên', 2001206742, '2002-07-12', 1),
(7, 'Cao Ngọc Sơn', 2001208373, '2002-12-19', 2),
(8, 'Võ Hoàng Thiên Ân', 2001207642, '2002-08-16', 2),
(9, 'Lê Đình Sơn', 2001204921, '2002-08-16', 2),
(10, 'Dương Trần Hữu Đức', 2001214723, '2002-08-15', 2),
(11, 'Hoàng Văn Khển', 2001203213, '2002-06-18', 2),
(12, 'Vũ Nguyễn Trường An', 2001212131, '2003-05-01', 3),
(13, 'Hoàng Ngọc Tường', 2001215362, '2003-04-12', 3),
(14, 'Nguyễn Hải Đăng', 2001219022, '2003-10-12', 3),
(15, 'Huỳnh Thị Tuyết Trinh', 2001217632, '2003-06-13', 3),
(16, 'Trần Đăng Khoa', 2001210122, '2003-06-12', 3),
(17, 'Võ Minh Nhật', 2001218573, '2003-09-13', 4),
(18, 'Đinh Nhật Hoàng', 2001210931, '2003-09-18', 4),
(19, 'Cao Minh Tuệ', 2001216549, '2003-07-15', 4),
(20, 'Thái Hoàng Tuấn Khanh', 2001217831, '2003-01-14', 4),
(21, 'Nguyễn Như Mai', 2001215212, '2003-12-05', 4),
(22, 'Võ Phước Lộc', 2001216231, '2003-04-12', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_teacher`
--

CREATE TABLE `tbl_teacher` (
  `teacher_id` int(11) NOT NULL,
  `teacher_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_emailid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_password` varchar(100) NOT NULL,
  `teacher_qualification` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_doj` date NOT NULL,
  `teacher_image` varchar(100) NOT NULL,
  `teacher_grade_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_teacher`
--

INSERT INTO `tbl_teacher` (`teacher_id`, `teacher_name`, `teacher_address`, `teacher_emailid`, `teacher_password`, `teacher_qualification`, `teacher_doj`, `teacher_image`, `teacher_grade_id`) VALUES
(2, 'Huỳnh Lý Tưởng', '1916 Trịnh Đình Trọng, Phú Trung, Tân Phú, Thành phố Hồ Chí Minh, Việt Nam', 'lytuong123@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'Tiến sĩ', '2019-05-01', '664b0b9234106.jpg', 1),
(3, 'Peter Parker', '682A Đ. Trường Chinh, Phường 15, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', 'peter_parker@gmail.com', '$2y$10$jmgJN1xvteg6XqBnHvT7UerviGNJOSnF8KFzBHnCky0FJWa74Nvmu', 'Tiến sĩ', '2017-12-31', '6649a6a9b066a.jpg', 2),
(4, 'Nguyễn Mạnh Tiến', '25 Nguyễn Hữu Dật, Phường Tây Thạnh, Quận Tân Phú, Thành phố Hồ Chí Minh', 'manhtien123@gmail.com', '$2y$10$Vb9t4CvkJwm41KXgPehuLOFcM7o5Qdm1RFxSBxzh9cvBcc21AUAiW', 'Thạc sĩ', '2019-05-01', '66499ffd6afb4.jpg', 3),
(5, 'Diệp Tú Anh', '19 Nguyễn Hữu Thọ, Phường Tân Hưng, Quận 7, Thành phố Hồ Chí Minh', 'tuanh123@gmail.com', '$2y$10$SVxX4/7lf3pDs1vrpuJexOG7Ue1e1jqIntGmXip3JzxkB753uxBiO', 'Thạc sĩ', '2023-08-16', '6649a257ddfa7.jpg', 4);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Chỉ mục cho bảng `tbl_grade`
--
ALTER TABLE `tbl_grade`
  ADD PRIMARY KEY (`grade_id`);

--
-- Chỉ mục cho bảng `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`student_id`);

--
-- Chỉ mục cho bảng `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT cho bảng `tbl_grade`
--
ALTER TABLE `tbl_grade`
  MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
