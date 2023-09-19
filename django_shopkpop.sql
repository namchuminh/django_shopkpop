-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2023 at 11:03 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `django_shopkpop`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add chuyen muc', 7, 'add_chuyenmuc'),
(26, 'Can change chuyen muc', 7, 'change_chuyenmuc'),
(27, 'Can delete chuyen muc', 7, 'delete_chuyenmuc'),
(28, 'Can view chuyen muc', 7, 'view_chuyenmuc'),
(29, 'Can add mau sac', 8, 'add_mausac'),
(30, 'Can change mau sac', 8, 'change_mausac'),
(31, 'Can delete mau sac', 8, 'delete_mausac'),
(32, 'Can view mau sac', 8, 'view_mausac'),
(33, 'Can add san pham', 9, 'add_sanpham'),
(34, 'Can change san pham', 9, 'change_sanpham'),
(35, 'Can delete san pham', 9, 'delete_sanpham'),
(36, 'Can view san pham', 9, 'view_sanpham'),
(37, 'Can add slide', 10, 'add_slide'),
(38, 'Can change slide', 10, 'change_slide'),
(39, 'Can delete slide', 10, 'delete_slide'),
(40, 'Can view slide', 10, 'view_slide'),
(41, 'Can add banner bottom', 11, 'add_bannerbottom'),
(42, 'Can change banner bottom', 11, 'change_bannerbottom'),
(43, 'Can delete banner bottom', 11, 'delete_bannerbottom'),
(44, 'Can view banner bottom', 11, 'view_bannerbottom'),
(45, 'Can add banner top', 12, 'add_bannertop'),
(46, 'Can change banner top', 12, 'change_bannertop'),
(47, 'Can delete banner top', 12, 'delete_bannertop'),
(48, 'Can view banner top', 12, 'view_bannertop'),
(49, 'Can add banner mid', 13, 'add_bannermid'),
(50, 'Can change banner mid', 13, 'change_bannermid'),
(51, 'Can delete banner mid', 13, 'delete_bannermid'),
(52, 'Can view banner mid', 13, 'view_bannermid'),
(53, 'Can add nha tai tro', 14, 'add_nhataitro'),
(54, 'Can change nha tai tro', 14, 'change_nhataitro'),
(55, 'Can delete nha tai tro', 14, 'delete_nhataitro'),
(56, 'Can view nha tai tro', 14, 'view_nhataitro'),
(57, 'Can add thong tin', 15, 'add_thongtin'),
(58, 'Can change thong tin', 15, 'change_thongtin'),
(59, 'Can delete thong tin', 15, 'delete_thongtin'),
(60, 'Can view thong tin', 15, 'view_thongtin'),
(61, 'Can add loai thong tin', 16, 'add_loaithongtin'),
(62, 'Can change loai thong tin', 16, 'change_loaithongtin'),
(63, 'Can delete loai thong tin', 16, 'delete_loaithongtin'),
(64, 'Can view loai thong tin', 16, 'view_loaithongtin'),
(65, 'Can add tin tuc', 17, 'add_tintuc'),
(66, 'Can change tin tuc', 17, 'change_tintuc'),
(67, 'Can delete tin tuc', 17, 'delete_tintuc'),
(68, 'Can view tin tuc', 17, 'view_tintuc'),
(69, 'Can add khach hang', 18, 'add_khachhang'),
(70, 'Can change khach hang', 18, 'change_khachhang'),
(71, 'Can delete khach hang', 18, 'delete_khachhang'),
(72, 'Can view khach hang', 18, 'view_khachhang'),
(73, 'Can add lien he', 19, 'add_lienhe'),
(74, 'Can change lien he', 19, 'change_lienhe'),
(75, 'Can delete lien he', 19, 'delete_lienhe'),
(76, 'Can view lien he', 19, 'view_lienhe'),
(77, 'Can add Sản Phẩm Giỏ Hàng', 20, 'add_sanphamgiohang'),
(78, 'Can change Sản Phẩm Giỏ Hàng', 20, 'change_sanphamgiohang'),
(79, 'Can delete Sản Phẩm Giỏ Hàng', 20, 'delete_sanphamgiohang'),
(80, 'Can view Sản Phẩm Giỏ Hàng', 20, 'view_sanphamgiohang'),
(81, 'Can add Giỏ Hàng', 21, 'add_giohang'),
(82, 'Can change Giỏ Hàng', 21, 'change_giohang'),
(83, 'Can delete Giỏ Hàng', 21, 'delete_giohang'),
(84, 'Can view Giỏ Hàng', 21, 'view_giohang'),
(85, 'Can add Chi Tiết Đơn Hàng', 22, 'add_chitietdonhang'),
(86, 'Can change Chi Tiết Đơn Hàng', 22, 'change_chitietdonhang'),
(87, 'Can delete Chi Tiết Đơn Hàng', 22, 'delete_chitietdonhang'),
(88, 'Can view Chi Tiết Đơn Hàng', 22, 'view_chitietdonhang'),
(89, 'Can add Đơn Hàng', 23, 'add_donhang'),
(90, 'Can change Đơn Hàng', 23, 'change_donhang'),
(91, 'Can delete Đơn Hàng', 23, 'delete_donhang'),
(92, 'Can view Đơn Hàng', 23, 'view_donhang');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$ueQHw1JZxi13n6PbN74zpK$GXzdQMNcCLEOKpgTrRefyd3giTVJLxsUCDTUxEL39PA=', '2023-09-08 03:19:19.099862', 1, 'admin', 'Nam Chu', 'Minh', 'chuminhnamma@gmail.com', 1, 1, '2023-06-13 23:20:32.000000'),
(2, 'pbkdf2_sha256$320000$4MS3iZ4Tp9gpTkuB4Y7ZvE$gGoIQCUBaF2YJPeCZ9FPfojGjueHkKBav535GrT0HR8=', '2023-06-22 12:16:07.109468', 0, 'nam', 'Chu Minh', 'Nam', 'namchuminh@gmail.com', 0, 1, '2023-06-22 10:17:55.648828'),
(3, 'pbkdf2_sha256$320000$3jmllDEOOrucsOVyKZw1u9$TRUsXbP6qDUoSDQoQUQ089m/DunFo4esM+6Q5d6/LJQ=', '2023-06-22 14:06:08.440898', 0, 'nam2', 'a', 'a', 'a@gmail.com', 0, 1, '2023-06-22 10:21:52.025011');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_giohang`
--

CREATE TABLE `cart_giohang` (
  `id` bigint(20) NOT NULL,
  `KhachHang_id` bigint(20) NOT NULL,
  `GiaBan` int(11) DEFAULT NULL,
  `MauSac_id` bigint(20) DEFAULT NULL,
  `MoTaNgan` longtext DEFAULT NULL,
  `SanPham_id` bigint(20) DEFAULT NULL,
  `SoLuong` int(11) NOT NULL,
  `TenSanPham` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cart_giohang`
--

INSERT INTO `cart_giohang` (`id`, `KhachHang_id`, `GiaBan`, `MauSac_id`, `MoTaNgan`, `SanPham_id`, `SoLuong`, `TenSanPham`) VALUES
(52, 3, 250000, NULL, '- CD-R : W120*H120 (mm)\r\n- PHOTOBOOK : 1ea by version / W175*H245 (mm) / 92p\r\n- PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)', 2, 1, 'ALBUM ENHYPEN - DARK BLOOD ydsgdfs');

-- --------------------------------------------------------

--
-- Table structure for table `contact_lienhe`
--

CREATE TABLE `contact_lienhe` (
  `id` bigint(20) NOT NULL,
  `TenKhachHang` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `SoDienThoai` varchar(11) NOT NULL,
  `TieuDe` varchar(500) NOT NULL,
  `NoiDung` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_khachhang`
--

CREATE TABLE `customer_khachhang` (
  `id` bigint(20) NOT NULL,
  `SoDienThoai` varchar(11) DEFAULT NULL,
  `DiaChi` varchar(500) DEFAULT NULL,
  `GioiTinh` varchar(10) NOT NULL,
  `User_id` int(11) NOT NULL,
  `DuongDan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_khachhang`
--

INSERT INTO `customer_khachhang` (`id`, `SoDienThoai`, `DiaChi`, `GioiTinh`, `User_id`, `DuongDan`) VALUES
(3, '0999999999', 'Hà Nội', '1', 1, 'nam-chu-minh-1'),
(4, '0999999999', NULL, '1', 3, 'a-a-3');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-06-14 08:47:25.640542', '1', 'Theme', 1, '[{\"added\": {}}]', 8, 1),
(2, '2023-06-14 08:47:45.024186', '2', 'Green', 1, '[{\"added\": {}}]', 8, 1),
(3, '2023-06-14 08:48:00.343719', '3', 'Blue', 1, '[{\"added\": {}}]', 8, 1),
(4, '2023-06-14 08:48:13.512334', '4', 'White', 1, '[{\"added\": {}}]', 8, 1),
(5, '2023-06-14 08:48:34.120981', '5', 'Red', 1, '[{\"added\": {}}]', 8, 1),
(6, '2023-06-14 08:48:49.667524', '6', 'Yellow', 1, '[{\"added\": {}}]', 8, 1),
(7, '2023-06-14 08:54:04.538441', '1', 'HYBE CO LTD', 1, '[{\"added\": {}}]', 7, 1),
(8, '2023-06-14 08:57:21.534895', '1', 'ALBUM ENHYPEN - DARK BLOOD', 1, '[{\"added\": {}}]', 9, 1),
(9, '2023-06-14 08:57:30.270530', '1', 'ALBUM ENHYPEN - DARK BLOOD', 2, '[]', 9, 1),
(10, '2023-06-14 08:57:37.649459', '1', 'ALBUM ENHYPEN - DARK BLOOD', 2, '[]', 9, 1),
(11, '2023-06-14 09:18:01.739000', '1', 'ALBUM ENHYPEN - DARK BLOOD', 2, '[{\"changed\": {\"fields\": [\"AnhChinh\", \"AnhPhu1\", \"AnhPhu2\", \"AnhPhu3\"]}}]', 9, 1),
(12, '2023-06-14 09:30:01.683683', '1', 'Fresh Flower', 1, '[{\"added\": {}}]', 10, 1),
(13, '2023-06-14 09:39:34.995157', '1', 'Fresh Flower', 2, '[{\"changed\": {\"fields\": [\"HinhAnh\"]}}]', 10, 1),
(14, '2023-06-14 09:41:52.642136', '1', 'Fresh Flower 1', 2, '[{\"changed\": {\"fields\": [\"TieuDe\", \"MoTaNgan\", \"MoTaDai\"]}}]', 10, 1),
(15, '2023-06-14 09:42:08.656247', '1', 'Fresh Flower', 2, '[{\"changed\": {\"fields\": [\"TieuDe\", \"MoTaNgan\", \"MoTaDai\"]}}]', 10, 1),
(16, '2023-06-14 09:43:01.424051', '2', 'Fresh Flower', 1, '[{\"added\": {}}]', 10, 1),
(17, '2023-06-14 09:58:06.703916', '1', 'BannerTop object (1)', 1, '[{\"added\": {}}]', 12, 1),
(18, '2023-06-14 10:02:04.534078', '1', 'BannerTop object (1)', 2, '[]', 12, 1),
(19, '2023-06-14 10:02:13.786679', '2', 'BannerTop object (2)', 1, '[{\"added\": {}}]', 12, 1),
(20, '2023-06-14 10:03:00.681209', '3', 'BannerTop object (3)', 1, '[{\"added\": {}}]', 12, 1),
(21, '2023-06-14 10:03:54.699058', '4', 'BannerTop object (4)', 1, '[{\"added\": {}}]', 12, 1),
(22, '2023-06-14 10:12:00.380404', '1', 'BannerMid object (1)', 1, '[{\"added\": {}}]', 13, 1),
(23, '2023-06-14 10:12:10.283992', '2', 'BannerMid object (2)', 1, '[{\"added\": {}}]', 13, 1),
(24, '2023-06-14 10:14:15.873359', '3', 'BannerMid object (3)', 1, '[{\"added\": {}}]', 13, 1),
(25, '2023-06-14 10:14:20.302177', '2', 'BannerMid object (2)', 2, '[{\"changed\": {\"fields\": [\"HienThi\"]}}]', 13, 1),
(26, '2023-06-14 10:16:28.174871', '1', 'BannerBottom object (1)', 1, '[{\"added\": {}}]', 11, 1),
(27, '2023-06-14 10:19:05.506868', '1', 'BannerBottom object (1)', 2, '[{\"changed\": {\"fields\": [\"HinhAnh\"]}}]', 11, 1),
(28, '2023-06-14 12:15:20.814578', '1', 'ALBUM ENHYPEN - DARK BLOOD', 2, '[]', 9, 1),
(29, '2023-06-14 15:34:18.607826', '2', 'ALBUM ENHYPEN - DARK BLOOD', 1, '[{\"added\": {}}]', 9, 1),
(30, '2023-06-14 15:35:05.966229', '3', 'ALBUM ENHYPEN - DARK BLOOD', 1, '[{\"added\": {}}]', 9, 1),
(31, '2023-06-14 15:35:45.548389', '4', 'ALBUM ENHYPEN - DARK BLOOD', 1, '[{\"added\": {}}]', 9, 1),
(32, '2023-06-14 15:36:20.088024', '5', 'ALBUM ENHYPEN - DARK BLOOD', 1, '[{\"added\": {}}]', 9, 1),
(33, '2023-06-14 15:37:01.835662', '6', 'ALBUM ENHYPEN - DARK BLOOD', 1, '[{\"added\": {}}]', 9, 1),
(34, '2023-06-14 15:37:26.145726', '6', 'ALBUM ENHYPEN - DARK BLOOD', 2, '[]', 9, 1),
(35, '2023-06-14 15:37:39.457306', '6', 'ALBUM ENHYPEN - DARK BLOOD', 3, '', 9, 1),
(36, '2023-06-14 15:38:35.892789', '7', 'ALBUM ENHYPEN - DARK BLOOD', 1, '[{\"added\": {}}]', 9, 1),
(37, '2023-06-14 15:40:34.085582', '8', 'ALBUM ENHYPEN - DARK BLOOD', 1, '[{\"added\": {}}]', 9, 1),
(38, '2023-06-14 15:41:12.448766', '9', 'ALBUM ENHYPEN - DARK BLOOD', 1, '[{\"added\": {}}]', 9, 1),
(39, '2023-06-14 15:41:50.208862', '10', 'ALBUM ENHYPEN - DARK BLOOD', 1, '[{\"added\": {}}]', 9, 1),
(40, '2023-06-14 15:47:40.881598', '10', 'ALBUM ENHYPEN - DARK BLOOD ầds', 2, '[{\"changed\": {\"fields\": [\"TenSanPham\"]}}]', 9, 1),
(41, '2023-06-14 15:47:45.009792', '9', 'ALBUM ENHYPEN - DARK BLOOD rqewrqw', 2, '[{\"changed\": {\"fields\": [\"TenSanPham\"]}}]', 9, 1),
(42, '2023-06-14 15:47:48.926053', '8', 'ALBUM ENHYPEN - DARK BLOOD tretre', 2, '[{\"changed\": {\"fields\": [\"TenSanPham\"]}}]', 9, 1),
(43, '2023-06-14 15:47:51.407364', '8', 'ALBUM ENHYPEN - DARK BLOOD tretre', 2, '[]', 9, 1),
(44, '2023-06-14 15:47:55.799406', '7', 'ALBUM ENHYPEN - DARK BLOOD tyiyuti', 2, '[{\"changed\": {\"fields\": [\"TenSanPham\"]}}]', 9, 1),
(45, '2023-06-14 15:48:01.095641', '5', 'ALBUM ENHYPEN - DARK BLOOD fghfdg', 2, '[{\"changed\": {\"fields\": [\"TenSanPham\"]}}]', 9, 1),
(46, '2023-06-14 15:48:06.610050', '4', 'ALBUM ENHYPEN - DARK BLOOD ghfkfhgj', 2, '[{\"changed\": {\"fields\": [\"TenSanPham\"]}}]', 9, 1),
(47, '2023-06-14 15:48:11.884093', '3', 'ALBUM ENHYPEN - DARK BLOOD q sdfsd', 2, '[{\"changed\": {\"fields\": [\"TenSanPham\"]}}]', 9, 1),
(48, '2023-06-14 15:48:15.599101', '2', 'ALBUM ENHYPEN - DARK BLOOD ydsgdfs', 2, '[{\"changed\": {\"fields\": [\"TenSanPham\"]}}]', 9, 1),
(49, '2023-06-14 15:48:19.025575', '1', 'ALBUM ENHYPEN - DARK BLOOD uytuytyut', 2, '[{\"changed\": {\"fields\": [\"TenSanPham\"]}}]', 9, 1),
(50, '2023-06-14 15:48:47.887518', '1', 'ALBUM ENHYPEN - DARK BLOOD', 2, '[{\"changed\": {\"fields\": [\"TenSanPham\", \"DuongDan\"]}}]', 9, 1),
(51, '2023-06-14 15:50:00.893824', '11', 'ALBUM ENHYPEN - DARK BLOOD ẺTWERTDF', 1, '[{\"added\": {}}]', 9, 1),
(52, '2023-06-14 16:46:10.893782', '11', 'ALBUM ENHYPEN - DARK BLOOD ẺTWERTDF', 2, '[{\"changed\": {\"fields\": [\"AnhChinh\", \"AnhPhu1\", \"AnhPhu2\", \"AnhPhu3\"]}}]', 9, 1),
(53, '2023-06-15 08:52:51.868838', '11', 'ALBUM ENHYPEN - DARK BLOOD ẺTWERTDF', 2, '[{\"changed\": {\"fields\": [\"MauSac\"]}}]', 9, 1),
(54, '2023-06-15 08:53:05.387190', '1', 'ALBUM ENHYPEN - DARK BLOOD', 2, '[{\"changed\": {\"fields\": [\"MauSac\"]}}]', 9, 1),
(55, '2023-06-15 08:55:44.663033', '9', 'ALBUM ENHYPEN - DARK BLOOD rqewrqw', 2, '[{\"changed\": {\"fields\": [\"MauSac\"]}}]', 9, 1),
(56, '2023-06-15 10:26:38.496457', '1', 'ALBUM ENHYPEN - DARK BLOOD', 3, '', 9, 1),
(57, '2023-06-15 10:37:39.887317', '12', 'ALBUM ENHYPEN - DARK BLOOD TRET', 1, '[{\"added\": {}}]', 9, 1),
(58, '2023-06-15 10:39:01.670218', '13', 'ALBUM ENHYPEN - DARK BLOOD KHJKJG', 1, '[{\"added\": {}}]', 9, 1),
(59, '2023-06-15 11:27:13.687161', '14', 'ALBUM ENHYPEN - DARK BLOOD IUDFGOI', 1, '[{\"added\": {}}]', 9, 1),
(60, '2023-06-15 11:27:56.870572', '15', 'ALBUM ENHYPEN - DARK BLOOD TYUI', 1, '[{\"added\": {}}]', 9, 1),
(61, '2023-06-15 13:15:45.079178', '1', 'HYBE CO LTD', 2, '[{\"changed\": {\"fields\": [\"HinhAnh\"]}}]', 7, 1),
(62, '2023-06-15 13:25:07.888223', '1', 'NhaTaiTro object (1)', 1, '[{\"added\": {}}]', 14, 1),
(63, '2023-06-15 14:13:54.211271', '1', 'foloris', 2, '[{\"changed\": {\"fields\": [\"HinhAnh\"]}}]', 14, 1),
(64, '2023-06-15 14:16:03.536448', '2', 'sss', 1, '[{\"added\": {}}]', 14, 1),
(65, '2023-06-15 14:16:10.087389', '2', 'sss', 3, '', 14, 1),
(66, '2023-06-15 14:16:46.679431', '3', 'aaa', 1, '[{\"added\": {}}]', 14, 1),
(67, '2023-06-15 14:16:50.566796', '3', 'aaa', 3, '', 14, 1),
(68, '2023-06-15 14:17:03.271466', '4', 'aa', 1, '[{\"added\": {}}]', 14, 1),
(69, '2023-06-15 14:17:15.991168', '4', 'aa', 3, '', 14, 1),
(70, '2023-06-15 14:17:45.052879', '5', 'nature', 1, '[{\"added\": {}}]', 14, 1),
(71, '2023-06-15 14:17:58.323282', '6', 'ana', 1, '[{\"added\": {}}]', 14, 1),
(72, '2023-06-15 14:18:16.344949', '7', 'ana jon', 1, '[{\"added\": {}}]', 14, 1),
(73, '2023-06-15 14:18:28.729292', '8', 'cs', 1, '[{\"added\": {}}]', 14, 1),
(74, '2023-06-15 14:18:38.193644', '9', 'flower', 1, '[{\"added\": {}}]', 14, 1),
(75, '2023-06-15 14:46:53.506380', '1', 'LoaiThongTin object (1)', 1, '[{\"added\": {}}]', 16, 1),
(76, '2023-06-15 14:48:27.034507', '2', 'Số Điện Thoại', 1, '[{\"added\": {}}]', 16, 1),
(77, '2023-06-15 14:49:11.346236', '3', 'Địa Chỉ', 1, '[{\"added\": {}}]', 16, 1),
(78, '2023-06-15 15:02:38.304616', '3', 'Địa Chỉ', 2, '[{\"changed\": {\"fields\": [\"MaLoai\"]}}]', 16, 1),
(79, '2023-06-15 15:02:43.931495', '2', 'Số Điện Thoại', 2, '[{\"changed\": {\"fields\": [\"MaLoai\"]}}]', 16, 1),
(80, '2023-06-15 15:02:49.971846', '1', 'Tiêu Đề Website', 2, '[{\"changed\": {\"fields\": [\"MaLoai\"]}}]', 16, 1),
(81, '2023-06-15 15:03:09.474282', '4', 'Email', 1, '[{\"added\": {}}]', 16, 1),
(82, '2023-06-15 15:03:51.056793', '5', 'Giới Thiệu', 1, '[{\"added\": {}}]', 16, 1),
(83, '2023-06-15 15:04:19.018952', '6', 'Favicon', 1, '[{\"added\": {}}]', 16, 1),
(84, '2023-06-15 15:04:37.400581', '7', 'Logo', 1, '[{\"added\": {}}]', 16, 1),
(85, '2023-06-15 15:07:17.929048', '1', 'Tiêu Đề Website', 1, '[{\"added\": {}}]', 15, 1),
(86, '2023-06-15 15:07:54.092280', '2', 'Số Điện Thoại', 1, '[{\"added\": {}}]', 15, 1),
(87, '2023-06-15 15:07:57.631481', '2', 'Số Điện Thoại', 2, '[]', 15, 1),
(88, '2023-06-15 15:08:25.763744', '3', 'Địa Chỉ', 1, '[{\"added\": {}}]', 15, 1),
(89, '2023-06-15 15:08:41.065996', '4', 'Email', 1, '[{\"added\": {}}]', 15, 1),
(90, '2023-06-15 15:09:36.307999', '5', 'Giới Thiệu', 1, '[{\"added\": {}}]', 15, 1),
(91, '2023-06-15 15:10:42.783045', '6', 'Favicon', 1, '[{\"added\": {}}]', 15, 1),
(92, '2023-06-15 15:10:50.837877', '7', 'Logo', 1, '[{\"added\": {}}]', 15, 1),
(93, '2023-06-15 15:11:27.231156', '7', 'Logo', 2, '[{\"changed\": {\"fields\": [\"HinhAnh\"]}}]', 15, 1),
(94, '2023-06-15 15:11:51.718880', '7', 'Logo', 2, '[{\"changed\": {\"fields\": [\"HinhAnh\"]}}]', 15, 1),
(95, '2023-06-15 15:20:20.218634', '7', 'Logo', 3, '', 15, 1),
(96, '2023-06-15 15:20:35.477665', '8', 'Logo', 1, '[{\"added\": {}}]', 15, 1),
(97, '2023-06-15 15:21:54.973605', '2', 'Số Điện Thoại', 2, '[{\"changed\": {\"fields\": [\"GiaTri\"]}}]', 15, 1),
(98, '2023-06-15 15:31:47.207072', '6', 'Favicon', 2, '[{\"changed\": {\"fields\": [\"HinhAnh\"]}}]', 15, 1),
(99, '2023-06-15 20:03:05.163543', '1', 'TinTuc object (1)', 1, '[{\"added\": {}}]', 17, 1),
(100, '2023-06-15 20:03:54.060654', '1', 'Thành viên Big Bang sẽ du hành vũ trụ cùng tỷ phú Nhật Bản', 2, '[{\"changed\": {\"fields\": [\"NoiDung\"]}}]', 17, 1),
(101, '2023-06-15 20:06:37.561778', '1', 'Thành viên Big Bang sẽ du hành vũ trụ cùng tỷ phú Nhật Bản', 2, '[]', 17, 1),
(102, '2023-06-15 20:06:47.270728', '1', 'Thành viên Big Bang sẽ du hành vũ trụ cùng tỷ phú Nhật Bản', 2, '[]', 17, 1),
(103, '2023-06-16 07:54:43.678677', '2', 'FPT Play phát sóng Đại nhạc hội MBC 2022', 1, '[{\"added\": {}}]', 17, 1),
(104, '2023-06-16 07:56:17.372301', '3', 'Brazil nhảy Samba trên nền nhạc Kpop', 1, '[{\"added\": {}}]', 17, 1),
(105, '2023-06-16 07:57:19.020675', '4', 'Nhóm nhạc Hàn có thành viên Việt lập kỷ lục', 1, '[{\"added\": {}}]', 17, 1),
(106, '2023-06-16 07:59:05.343951', '5', 'Ngoài ra, NewJeans cũng chiếm lĩnh các trang trực tuyến. Ca khúc chủ đề Attention đứng số một các website nhạc hàng đầu của Hàn Quốc như Melon, Genie, Bugs, đồng thời xuất hiện trên bảng xếp hạng toàn', 1, '[{\"added\": {}}]', 17, 1),
(107, '2023-06-16 07:59:18.007793', '5', '\'Dynamite\' của BTS tiếp tục đứng đầu Billboard', 2, '[{\"changed\": {\"fields\": [\"TieuDe\"]}}]', 17, 1),
(108, '2023-06-16 07:59:23.181671', '5', '\'Dynamite\' của BTS tiếp tục đứng đầu Billboard', 2, '[]', 17, 1),
(109, '2023-06-16 08:01:13.399146', '6', '\'Kill This Love\' của Blackpink đạt một tỷ lượt xem', 1, '[{\"added\": {}}]', 17, 1),
(110, '2023-06-16 08:03:18.573372', '7', 'G-Dragon - ông hoàng Kpop', 1, '[{\"added\": {}}]', 17, 1),
(111, '2023-06-16 08:03:59.523521', '8', 'BTS làm show trực tuyến', 1, '[{\"added\": {}}]', 17, 1),
(112, '2023-06-16 08:04:55.731324', '9', 'BTS đứng đầu top sao quyền lực tại Hàn Quốc', 1, '[{\"added\": {}}]', 17, 1),
(113, '2023-06-16 10:49:32.718452', '9', 'BTS đứng đầu top sao quyền lực tại Hàn Quốc', 2, '[{\"changed\": {\"fields\": [\"DuongDan\"]}}]', 17, 1),
(114, '2023-06-16 10:49:41.347220', '9', 'BTS đứng đầu top sao quyền lực tại Hàn Quốc', 2, '[{\"changed\": {\"fields\": [\"DuongDan\"]}}]', 17, 1),
(115, '2023-06-16 10:50:10.002054', '9', 'BTS đang đầu top sao quyền lực tại Hàn Quốc', 2, '[{\"changed\": {\"fields\": [\"TieuDe\"]}}]', 17, 1),
(116, '2023-06-21 20:38:12.734972', '3', '1- ', 1, '[{\"added\": {}}]', 18, 1),
(117, '2023-06-21 20:39:16.895164', '3', '1- ', 2, '[]', 18, 1),
(118, '2023-06-21 20:39:22.524435', '3', '1- ', 2, '[]', 18, 1),
(119, '2023-06-22 12:23:01.946831', '4', 'MKH: 3, Họ Tên: a a', 2, '[{\"changed\": {\"fields\": [\"SoDienThoai\", \"GioiTinh\"]}}]', 18, 1),
(120, '2023-06-22 14:19:14.522461', '4', 'a a - a', 3, '', 19, 1),
(121, '2023-06-22 14:19:14.524991', '3', 'a a - a', 3, '', 19, 1),
(122, '2023-06-22 14:19:14.527548', '2', 'a a - A', 3, '', 19, 1),
(123, '2023-06-22 14:19:14.529387', '1', 'a a - A', 3, '', 19, 1),
(124, '2023-06-22 14:20:06.022763', '5', 'a - a', 3, '', 19, 1),
(125, '2023-06-22 14:27:52.408142', '6', 'Vàng', 2, '[{\"changed\": {\"fields\": [\"TenMauSac\"]}}]', 8, 1),
(126, '2023-06-22 14:27:56.713966', '5', 'Đỏ', 2, '[{\"changed\": {\"fields\": [\"TenMauSac\"]}}]', 8, 1),
(127, '2023-06-22 14:28:01.073703', '4', 'Trắng', 2, '[{\"changed\": {\"fields\": [\"TenMauSac\"]}}]', 8, 1),
(128, '2023-06-22 14:28:05.054514', '3', 'Xanh', 2, '[{\"changed\": {\"fields\": [\"TenMauSac\"]}}]', 8, 1),
(129, '2023-06-22 14:28:49.959913', '2', 'Xanh Lá Cây', 2, '[{\"changed\": {\"fields\": [\"TenMauSac\"]}}]', 8, 1),
(130, '2023-06-28 11:30:21.494485', '8', 'Phí Ship', 1, '[{\"added\": {}}]', 16, 1),
(131, '2023-06-28 11:30:48.187560', '9', 'Phí VAT', 1, '[{\"added\": {}}]', 16, 1),
(132, '2023-06-28 11:33:39.827008', '9', 'Phí Ship', 1, '[{\"added\": {}}]', 15, 1),
(133, '2023-06-28 11:33:57.272774', '10', 'Phí VAT', 1, '[{\"added\": {}}]', 15, 1),
(134, '2023-06-28 21:39:41.373038', '1', '1 -  ', 2, '[{\"changed\": {\"fields\": [\"SanPhamGioHang\"]}}]', 21, 1),
(135, '2023-06-28 21:49:04.762862', '1', '1 -  ', 3, '', 21, 1),
(136, '2023-06-28 21:49:09.503762', '1', 'MKH: 1 - Tên Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD IUDFGOI', 3, '', 20, 1),
(137, '2023-06-28 22:07:49.342104', '9', 'MKH: 1 - Tên Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD tyiyuti', 3, '', 21, 1),
(138, '2023-06-28 22:07:49.345105', '8', 'MKH: 1 - Tên Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD fghfdg', 3, '', 21, 1),
(139, '2023-06-28 22:07:49.346103', '7', 'MKH: 1 - Tên Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD ydsgdfs', 3, '', 21, 1),
(140, '2023-06-28 22:07:49.348136', '6', 'MKH: 1 - Tên Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD TYUI', 3, '', 21, 1),
(141, '2023-06-28 22:07:49.349606', '5', 'MKH: 1 - Tên Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD ghfkfhgj', 3, '', 21, 1),
(142, '2023-06-28 22:07:49.351088', '4', 'MKH: 1 - Tên Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD q sdfsd', 3, '', 21, 1),
(143, '2023-06-28 22:07:49.352111', '2', 'MKH: 1 - Tên Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD IUDFGOI', 3, '', 21, 1),
(144, '2023-06-29 00:01:50.868273', '14', 'MKH: 1 - Tên Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD ẺTWERTDF', 3, '', 21, 1),
(145, '2023-06-29 00:01:50.870022', '13', 'MKH: 1 - Tên Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD TRET', 3, '', 21, 1),
(146, '2023-06-29 00:01:50.871019', '12', 'MKH: 1 - Tên Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD TYUI', 3, '', 21, 1),
(147, '2023-06-29 00:01:50.873332', '11', 'MKH: 1 - Tên Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD fghfdg', 3, '', 21, 1),
(148, '2023-06-29 00:01:50.874936', '10', 'MKH: 1 - Tên Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD tyiyuti', 3, '', 21, 1),
(149, '2023-06-29 00:16:04.829867', '20', 'MKH: 1 - Tên Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD ghfkfhgj', 3, '', 21, 1),
(150, '2023-06-29 00:16:04.832858', '19', 'MKH: 1 - Tên Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD KHJKJG', 3, '', 21, 1),
(151, '2023-06-29 00:16:04.833855', '18', 'MKH: 1 - Tên Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD IUDFGOI', 3, '', 21, 1),
(152, '2023-06-29 00:16:04.835850', '17', 'MKH: 1 - Tên Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD tretre', 3, '', 21, 1),
(153, '2023-06-29 00:16:04.837844', '16', 'MKH: 1 - Tên Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD TRET', 3, '', 21, 1),
(154, '2023-06-29 00:16:04.838842', '15', 'MKH: 1 - Tên Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD fghfdg', 3, '', 21, 1),
(155, '2023-06-29 00:21:00.552320', '28', 'MKH: 1 - Tên Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD rqewrqw', 3, '', 21, 1),
(156, '2023-06-29 00:21:00.555303', '27', 'MKH: 1 - Tên Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD ầds', 3, '', 21, 1),
(157, '2023-06-29 00:21:00.557356', '26', 'MKH: 1 - Tên Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD ẺTWERTDF', 3, '', 21, 1),
(158, '2023-06-29 00:21:00.559350', '25', 'MKH: 1 - Tên Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD tretre', 3, '', 21, 1),
(159, '2023-06-29 00:21:00.563920', '24', 'MKH: 1 - Tên Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD tyiyuti', 3, '', 21, 1),
(160, '2023-06-29 00:21:00.565873', '23', 'MKH: 1 - Tên Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD ghfkfhgj', 3, '', 21, 1),
(161, '2023-06-29 00:21:00.567669', '22', 'MKH: 1 - Tên Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD q sdfsd', 3, '', 21, 1),
(162, '2023-06-29 00:21:00.569284', '21', 'MKH: 1 - Tên Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD ydsgdfs', 3, '', 21, 1),
(163, '2023-06-29 00:23:36.195347', '31', 'MKH: 1 - Tên Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD rqewrqw', 3, '', 21, 1),
(164, '2023-06-29 00:23:36.197382', '30', 'MKH: 1 - Tên Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD tretre', 3, '', 21, 1),
(165, '2023-06-29 00:23:36.200013', '29', 'MKH: 1 - Tên Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD ydsgdfs', 3, '', 21, 1),
(166, '2023-06-30 00:14:29.368525', '32', 'MKH: 1 - Tên Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD IUDFGOI', 2, '[{\"changed\": {\"fields\": [\"SoLuong\"]}}]', 21, 1),
(167, '2023-06-30 00:26:38.971935', '9', 'Phí Ship', 3, '', 15, 1),
(168, '2023-06-30 00:27:01.403478', '11', 'Phí Ship', 1, '[{\"added\": {}}]', 15, 1),
(169, '2023-07-01 16:18:25.533467', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 4, 1),
(170, '2023-07-01 17:10:31.265592', '2', 'MKH: 1 - Tổng Tiền: 1396500 - Thời Gian: 2023-07-01 17:10:00 - Trạng Thái: cxl', 2, '[{\"changed\": {\"name\": \"Chi Ti\\u1ebft \\u0110\\u01a1n H\\u00e0ng\", \"object\": \"M\\u00e3 \\u0110\\u01a1n H\\u00e0ng: 2 - S\\u1ea3n Ph\\u1ea9m: ALBUM ENHYPEN - DARK BLOOD ghfkfhgj - Gi\\u00e1 B\\u00e1n: 200000 - S\\u1ed1 L\\u01b0\\u1ee3ng: 2 - T\\u1ed5ng Ti\\u1ec1n: 400000\", \"fields\": [\"SoLuong\"]}}]', 23, 1),
(171, '2023-07-01 17:10:55.662848', '2', 'MKH: 1 - Tổng Tiền: 1396500 - Thời Gian: 2023-07-01 17:10:00 - Trạng Thái: cxl', 2, '[{\"changed\": {\"name\": \"Chi Ti\\u1ebft \\u0110\\u01a1n H\\u00e0ng\", \"object\": \"M\\u00e3 \\u0110\\u01a1n H\\u00e0ng: 2 - S\\u1ea3n Ph\\u1ea9m: ALBUM ENHYPEN - DARK BLOOD ghfkfhgj - Gi\\u00e1 B\\u00e1n: 200000 - S\\u1ed1 L\\u01b0\\u1ee3ng: 3 - T\\u1ed5ng Ti\\u1ec1n: 600000\", \"fields\": [\"SoLuong\"]}}]', 23, 1),
(172, '2023-07-01 17:13:29.906048', '2', 'MKH: 1 - Tổng Tiền: 1596500 - Thời Gian: 2023-07-01 17:10:00 - Trạng Thái: cxl', 2, '[{\"changed\": {\"name\": \"Chi Ti\\u1ebft \\u0110\\u01a1n H\\u00e0ng\", \"object\": \"M\\u00e3 \\u0110\\u01a1n H\\u00e0ng: 2 - S\\u1ea3n Ph\\u1ea9m: ALBUM ENHYPEN - DARK BLOOD ghfkfhgj - Gi\\u00e1 B\\u00e1n: 200000 - S\\u1ed1 L\\u01b0\\u1ee3ng: 1 - T\\u1ed5ng Ti\\u1ec1n: 200000\", \"fields\": [\"SoLuong\"]}}]', 23, 1),
(173, '2023-07-01 17:13:41.074970', '2', 'MKH: 1 - Tổng Tiền: 1796500 - Thời Gian: 2023-07-01 17:10:00 - Trạng Thái: cxl', 2, '[{\"changed\": {\"name\": \"Chi Ti\\u1ebft \\u0110\\u01a1n H\\u00e0ng\", \"object\": \"M\\u00e3 \\u0110\\u01a1n H\\u00e0ng: 2 - S\\u1ea3n Ph\\u1ea9m: ALBUM ENHYPEN - DARK BLOOD ghfkfhgj - Gi\\u00e1 B\\u00e1n: 200000 - S\\u1ed1 L\\u01b0\\u1ee3ng: 2 - T\\u1ed5ng Ti\\u1ec1n: 400000\", \"fields\": [\"SoLuong\"]}}]', 23, 1),
(174, '2023-07-01 17:16:52.218425', '2', 'MKH: 1 - Tổng Tiền: 1396500 - Thời Gian: 2023-07-01 17:10:00 - Trạng Thái: cxl', 2, '[]', 23, 1),
(175, '2023-07-01 17:19:21.980203', '2', 'MKH: 1 - Tổng Tiền: 1396500 - Thời Gian: 2023-07-01 17:10:00 - Trạng Thái: cxl', 3, '', 23, 1),
(176, '2023-07-01 17:19:21.982224', '1', 'MKH: 1 - Tổng Tiền: 1396500 - Thời Gian: 2023-07-01 16:57:23 - Trạng Thái: 1', 3, '', 23, 1),
(177, '2023-07-01 17:28:38.895382', '3', 'MKH: 1 - Tổng Tiền: 451500 - Thời Gian: 2023-07-01 17:19:51 - Trạng Thái: dcbh', 2, '[{\"changed\": {\"fields\": [\"TrangThai\"]}}]', 23, 1),
(178, '2023-07-02 05:02:10.393545', '6', 'Yellow', 2, '[{\"changed\": {\"fields\": [\"TenMauSac\"]}}]', 8, 1),
(179, '2023-07-02 05:02:13.608150', '5', 'Red', 2, '[{\"changed\": {\"fields\": [\"TenMauSac\"]}}]', 8, 1),
(180, '2023-07-02 05:02:17.777279', '4', 'White', 2, '[{\"changed\": {\"fields\": [\"TenMauSac\"]}}]', 8, 1),
(181, '2023-07-02 05:02:22.592733', '3', 'Blue', 2, '[{\"changed\": {\"fields\": [\"TenMauSac\"]}}]', 8, 1),
(182, '2023-07-02 05:02:29.400869', '2', 'Green', 2, '[{\"changed\": {\"fields\": [\"TenMauSac\"]}}]', 8, 1),
(183, '2023-07-02 05:08:14.203564', '15', 'ALBUM ENHYPEN - DARK BLOOD TYUI', 2, '[{\"changed\": {\"fields\": [\"MoTaDai\"]}}]', 9, 1),
(184, '2023-07-02 05:11:56.036203', '15', 'ALBUM ENHYPEN - DARK BLOOD TYUI', 2, '[{\"changed\": {\"fields\": [\"MoTaDai\"]}}]', 9, 1),
(185, '2023-09-07 15:50:49.424166', '3', 'Mã Đơn Hàng: 3 - Khách Hàng: Nam Chu Minh - Tổng Tiền: 451500 - Thời Gian: 2023-07-01 17:19:51', 2, '[{\"changed\": {\"fields\": [\"TrangThai\"]}}]', 23, 1),
(186, '2023-09-07 15:51:44.812625', '4', 'Mã Đơn Hàng: 4 - Khách Hàng: Nam Chu Minh - Tổng Tiền: 241500 - Thời Gian: 2023-07-01 17:29:05', 2, '[]', 23, 1),
(187, '2023-09-07 15:51:50.416346', '3', 'Mã Đơn Hàng: 3 - Khách Hàng: Nam Chu Minh - Tổng Tiền: 451500 - Thời Gian: 2023-07-01 17:19:51', 2, '[]', 23, 1),
(188, '2023-09-07 15:52:45.710289', '4', 'Mã Đơn Hàng: 4 - Khách Hàng: Nam Chu Minh - Tổng Tiền: 241500 - Thời Gian: 2023-07-01 17:29:05', 2, '[{\"changed\": {\"fields\": [\"TrangThai\"]}}]', 23, 1),
(189, '2023-09-07 23:01:02.211012', '14', 'Mã Đơn Hàng: 3 - Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD KHJKJG - Giá Bán: 200000 - Số Lượng: 1 - Tổng Tiền: 200000', 2, '[{\"changed\": {\"fields\": [\"MauSac\"]}}]', 22, 1),
(190, '2023-09-07 23:01:06.015566', '14', 'Mã Đơn Hàng: 3 - Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD KHJKJG - Giá Bán: 200000 - Số Lượng: 1 - Tổng Tiền: 200000', 2, '[]', 22, 1),
(191, '2023-09-07 23:01:09.547857', '13', 'Mã Đơn Hàng: 3 - Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD IUDFGOI - Giá Bán: 200000 - Số Lượng: 1 - Tổng Tiền: 200000', 2, '[{\"changed\": {\"fields\": [\"MauSac\"]}}]', 22, 1),
(192, '2023-09-07 23:01:12.752814', '15', 'Mã Đơn Hàng: 4 - Sản Phẩm: ALBUM ENHYPEN - DARK BLOOD TYUI - Giá Bán: 200000 - Số Lượng: 1 - Tổng Tiền: 200000', 2, '[{\"changed\": {\"fields\": [\"MauSac\"]}}]', 22, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(21, 'cart', 'giohang'),
(20, 'cart', 'sanphamgiohang'),
(19, 'contact', 'lienhe'),
(5, 'contenttypes', 'contenttype'),
(18, 'customer', 'khachhang'),
(17, 'news', 'tintuc'),
(22, 'order', 'chitietdonhang'),
(23, 'order', 'donhang'),
(7, 'product', 'chuyenmuc'),
(8, 'product', 'mausac'),
(9, 'product', 'sanpham'),
(6, 'sessions', 'session'),
(11, 'website', 'bannerbottom'),
(13, 'website', 'bannermid'),
(12, 'website', 'bannertop'),
(16, 'website', 'loaithongtin'),
(14, 'website', 'nhataitro'),
(10, 'website', 'slide'),
(15, 'website', 'thongtin');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-06-13 08:18:47.335964'),
(2, 'auth', '0001_initial', '2023-06-13 08:18:47.833626'),
(3, 'admin', '0001_initial', '2023-06-13 08:18:47.945675'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-06-13 08:18:47.953653'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-13 08:18:47.960885'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-06-13 08:18:48.059811'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-06-13 08:18:48.112567'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-06-13 08:18:48.173857'),
(9, 'auth', '0004_alter_user_username_opts', '2023-06-13 08:18:48.184833'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-06-13 08:18:48.226644'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-06-13 08:18:48.229967'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-06-13 08:18:48.239941'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-06-13 08:18:48.258918'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-06-13 08:18:48.276923'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-06-13 08:18:48.329238'),
(16, 'auth', '0011_update_proxy_permissions', '2023-06-13 08:18:48.340530'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-06-13 08:18:48.360027'),
(18, 'sessions', '0001_initial', '2023-06-13 08:18:48.400889'),
(19, 'product', '0001_initial', '2023-06-13 23:19:19.294943'),
(20, 'product', '0002_alter_chuyenmuc_duongdan_alter_sanpham_duongdan', '2023-06-14 08:53:53.580105'),
(21, 'product', '0003_alter_sanpham_giaban_alter_sanpham_giakhuyenmai', '2023-06-14 09:16:03.118514'),
(22, 'website', '0001_initial', '2023-06-14 09:25:40.245541'),
(23, 'website', '0002_slide_hienthi', '2023-06-14 09:31:17.930503'),
(24, 'website', '0003_bannertop_bannermid_bannerbottom', '2023-06-14 09:50:32.082480'),
(25, 'product', '0004_sanpham_phantramgiam', '2023-06-14 12:14:56.997648'),
(26, 'product', '0005_alter_sanpham_tensanpham', '2023-06-14 15:48:35.984367'),
(27, 'product', '0006_chuyenmuc_hinhanh', '2023-06-15 13:15:27.664153'),
(28, 'website', '0004_nhataitro', '2023-06-15 13:20:56.467076'),
(29, 'website', '0005_alter_nhataitro_hinhanh', '2023-06-15 14:15:40.851201'),
(30, 'website', '0006_alter_nhataitro_hinhanh', '2023-06-15 14:16:39.929382'),
(31, 'website', '0007_loaithongtin_thongtin', '2023-06-15 14:45:54.334995'),
(32, 'website', '0008_rename_tenloai_thongtin_loaithongtin', '2023-06-15 14:47:52.817334'),
(33, 'website', '0009_loaithongtin_maloai', '2023-06-15 15:01:57.624779'),
(34, 'website', '0010_alter_thongtin_loaithongtin', '2023-06-15 15:06:25.134524'),
(35, 'website', '0011_alter_thongtin_loaithongtin', '2023-06-15 15:06:25.360084'),
(36, 'website', '0012_alter_thongtin_hinhanh', '2023-06-15 15:07:09.844588'),
(37, 'website', '0013_alter_thongtin_giatri', '2023-06-15 15:09:58.193795'),
(38, 'news', '0001_initial', '2023-06-15 19:53:17.632754'),
(39, 'news', '0002_tintuc_duongdan', '2023-06-15 20:05:12.277517'),
(40, 'news', '0003_alter_tintuc_duongdan', '2023-06-15 20:06:29.348452'),
(41, 'news', '0004_alter_tintuc_options', '2023-06-21 20:09:09.329854'),
(42, 'product', '0007_alter_chuyenmuc_options_alter_mausac_options_and_more', '2023-06-21 20:09:09.352922'),
(43, 'website', '0014_alter_nhataitro_options_alter_thongtin_options', '2023-06-21 20:09:09.359909'),
(44, 'customer', '0001_initial', '2023-06-21 20:30:10.409209'),
(45, 'customer', '0002_alter_khachhang_options_khachhang_duongdan', '2023-06-21 20:34:43.967525'),
(46, 'customer', '0003_alter_khachhang_gioitinh', '2023-06-21 20:35:36.041171'),
(47, 'customer', '0004_alter_khachhang_diachi_alter_khachhang_sodienthoai', '2023-06-21 20:36:07.771908'),
(48, 'contact', '0001_initial', '2023-06-22 14:15:25.338487'),
(49, 'cart', '0001_initial', '2023-06-28 11:05:36.772969'),
(50, 'contact', '0002_alter_lienhe_options', '2023-06-28 11:05:36.780061'),
(51, 'cart', '0002_alter_sanphamgiohang_giaban_and_more', '2023-06-28 11:08:30.891913'),
(52, 'cart', '0003_remove_giohang_sanphamgiohang_giohang_giaban_and_more', '2023-06-28 21:50:19.235208'),
(53, 'website', '0015_alter_thongtin_options', '2023-06-28 21:50:19.241947'),
(54, 'cart', '0004_alter_giohang_khachhang', '2023-06-28 21:53:59.803486'),
(55, 'order', '0001_initial', '2023-07-01 11:59:45.837512'),
(56, 'order', '0002_donhang_ghichu_alter_donhang_trangthai', '2023-07-01 16:32:15.711431'),
(57, 'order', '0003_alter_chitietdonhang_giaban_and_more', '2023-07-01 16:42:41.485416'),
(58, 'order', '0004_alter_donhang_trangthai', '2023-07-01 17:03:51.524960'),
(59, 'order', '0005_alter_donhang_trangthai', '2023-07-01 17:04:51.039199'),
(60, 'order', '0006_alter_donhang_trangthai', '2023-07-01 17:06:05.300276'),
(61, 'order', '0007_alter_donhang_trangthai', '2023-07-01 17:08:59.124619'),
(62, 'product', '0008_alter_sanpham_motadai', '2023-07-02 05:05:22.294263'),
(63, 'order', '0008_chitietdonhang_mausac', '2023-09-07 22:58:27.048579');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('hmss158a2wfntfqswnmuc218nsqfpp2i', '.eJxVjL0KwzAQg9_FczE-_6dj9zyDOduXOm1xIE6m0ndvDBla0CD0SXqzgPtWwt5oDXNmVwbs8ptFTE-qHeQH1vvC01K3dY68V_hJGx-XTK_b2f07KNhKXxtwgqxUOMhDVqEDYdA6r3AylAG8yqgP44WkONgo9KRIQ3TCRZvY5wvFbzdf:1qCLAD:tvX0OPlLeSwRbdu1i7XqPZehzJZfDxFM2YRR3wH7sqA', '2023-07-06 14:19:57.578255'),
('l0h04vvy7o1i1kgzrk55xshndo6ohzrd', '.eJxVjL0KwzAQg9_FczE-_6dj9zyDOduXOm1xIE6m0ndvDBla0CD0SXqzgPtWwt5oDXNmVwbs8ptFTE-qHeQH1vvC01K3dY68V_hJGx-XTK_b2f07KNhKXxtwgqxUOMhDVqEDYdA6r3AylAG8yqgP44WkONgo9KRIQ3TCRZvY5wvFbzdf:1qEDYo:oNTzqN1YCYs8WK2T02sgP20sK5NlUgOUYi0G1ioJe4U', '2023-07-11 18:37:06.094192'),
('pdo4j04kzg1r6v3rheqv5i436vf9py19', '.eJxVjEEOwiAQRe_C2hApyDAu3XuGBoYZqRpISrsy3l2bdKHb_977LzXGdSnj2nkep6zOyqjD75YiPbhuIN9jvTVNrS7zlPSm6J12fW2Zn5fd_TsosZdv7cX6iE4G4zw6ELRRgjcIJwByjJQzITpPg80JExwZkC0EzxKCmKTeH89HN7c:1qeS1f:uDNaHeXwQhBsCpBAeVKaa7Jqgt1RxiPW7oYXvytT3Kg', '2023-09-22 03:19:19.102854'),
('v3le70rpb55fqkv82p9dne2lsj1xqagm', '.eJxVjL0KwzAQg9_FczE-_6dj9zyDOduXOm1xIE6m0ndvDBla0CD0SXqzgPtWwt5oDXNmVwbs8ptFTE-qHeQH1vvC01K3dY68V_hJGx-XTK_b2f07KNhKXxtwgqxUOMhDVqEDYdA6r3AylAG8yqgP44WkONgo9KRIQ3TCRZvY5wvFbzdf:1qFp6g:YGpQCVJMTtmaHfB1CEo-GTuffGasod32je4tmHw28vI', '2023-07-16 04:54:42.516578');

-- --------------------------------------------------------

--
-- Table structure for table `news_tintuc`
--

CREATE TABLE `news_tintuc` (
  `id` bigint(20) NOT NULL,
  `TieuDe` varchar(500) NOT NULL,
  `NoiDung` longtext NOT NULL,
  `AnhChinh` varchar(100) NOT NULL,
  `The` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `DuongDan` varchar(550) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_tintuc`
--

INSERT INTO `news_tintuc` (`id`, `TieuDe`, `NoiDung`, `AnhChinh`, `The`, `created_at`, `updated_at`, `DuongDan`) VALUES
(1, 'Thành viên Big Bang sẽ du hành vũ trụ cùng tỷ phú Nhật Bản', '<p style=\"text-align:justify\">Tỷ ph&uacute; Yusaku Maezawa h&ocirc;m 8/12 c&ocirc;ng bố 8 th&agrave;nh vi&ecirc;n phi h&agrave;nh đo&agrave;n trong đ&oacute; c&oacute; rapper T.O.P của Big Bang sẽ tham gia c&ugrave;ng &ocirc;ng trong h&agrave;nh tr&igrave;nh quanh Mặt Trăng v&agrave;o năm 2023.</p>\r\n\r\n<p style=\"text-align:justify\">Dự &aacute;n du h&agrave;nh Mặt Trăng của Maezawa, c&oacute; t&ecirc;n l&agrave; DearMoon, được c&ocirc;ng bố lần đầu v&agrave;o năm 2018 v&agrave; lấy nghệ sĩ l&agrave;m trung t&acirc;m. Ban đầu, tỷ ph&uacute; Nhật Bản dự định mời những người m&agrave; &ocirc;ng muốn đi c&ugrave;ng, nhưng sau đ&oacute; đ&atilde; thay đổi y&ecirc;u cầu đầu v&agrave;o th&agrave;nh một cuộc thi m&agrave; c&aacute;c ứng vi&ecirc;n c&oacute; thể đăng k&yacute; trực tuyến. Maezawa sẽ chi trả chi ph&iacute; cho to&agrave;n bộ phi h&agrave;nh đo&agrave;n.</p>\r\n\r\n<p style=\"text-align:justify\">Danh s&aacute;ch 8 người được chọn l&agrave; DJ ki&ecirc;m nh&agrave; sản xuất nhạc dance điện tử Steve Aoki của Mỹ, YouTuber người Mỹ Tim Dodd, nghệ sĩ v&agrave; bi&ecirc;n đạo m&uacute;a người Czech Yemi AD, nhiếp ảnh gia người Ireland Rhiannon Adam, nhiếp ảnh gia người Anh Karim Iliya, nh&agrave; l&agrave;m phim người Mỹ Brendan Hall, diễn vi&ecirc;n Ấn Độ Dev Joshi v&agrave; rapper T.O.P của nh&oacute;m nhạc K-pop đ&igrave;nh đ&aacute;m Big Bang.</p>\r\n\r\n<p style=\"text-align:justify\">Ngo&agrave;i ra c&ograve;n c&oacute; hai th&agrave;nh vi&ecirc;n phi h&agrave;nh đo&agrave;n dự ph&ograve;ng l&agrave; vận động vi&ecirc;n trượt tuyết Kaitlyn Farrington của Mỹ v&agrave; vũ c&ocirc;ng Miyu của Nhật Bản.</p>\r\n\r\n<p><img alt=\"Tỷ phú Maezawa (trái) của Nhật Bản và rapper T.O.P của Hàn Quốc. Ảnh: Indian Expres/Kpopping\" src=\"https://i1-vnexpress.vnecdn.net/2022/12/09/t-o-p-BIG-BANG-2-6528-1670555527.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=kxfmLN8lrXqY9pu46hpCYQ\" /></p>\r\n\r\n<p style=\"text-align:center\">Tỷ ph&uacute; Maezawa (tr&aacute;i) của Nhật Bản v&agrave; rapper T.O.P của H&agrave;n Quốc. Ảnh:<em>&nbsp;Indian Expres/Kpopping</em></p>\r\n\r\n<p style=\"text-align:justify\">&quot;T&ocirc;i hy vọng mỗi người sẽ nhận ra tr&aacute;ch nhiệm khi rời khỏi Tr&aacute;i Đất, du h&agrave;nh tới Mặt trăng v&agrave; quay trở lại&quot;, Maezawa n&oacute;i trong một video th&ocirc;ng b&aacute;o tr&ecirc;n YouTube. &quot;Họ sẽ thu được nhiều điều từ trải nghiệm n&agrave;y v&agrave; t&ocirc;i hy vọng họ sẽ sử dụng điều đ&oacute; để đ&oacute;ng g&oacute;p cho h&agrave;nh tinh xanh v&agrave; cho nh&acirc;n loại&quot;.</p>\r\n\r\n<p style=\"text-align:justify\">Theo hồ sơ nhiệm vụ tr&ecirc;n trang web DearMoon, chuyến đi khứ hồi tr&ecirc;n t&agrave;u vũ trụ Starship đang được ph&aacute;t triển của SpaceX sẽ k&eacute;o d&agrave;i gần 6 ng&agrave;y v&agrave; chỉ bay v&ograve;ng quanh Mặt Trăng m&agrave; kh&ocirc;ng hạ c&aacute;nh. Khi ho&agrave;n th&agrave;nh, Starship sẽ l&agrave; t&ecirc;n lửa mạnh nhất từng được chế tạo.</p>\r\n\r\n<p style=\"text-align:justify\">Mặc d&ugrave; giai đoạn tr&ecirc;n của hệ thống Starship đ&atilde; bay thử nghiệm trong bầu kh&iacute; quyển v&agrave; hạ c&aacute;nh th&agrave;nh c&ocirc;ng, SpaceX vẫn chưa thực hiện chuyến bay n&agrave;o tr&ecirc;n quỹ đạo, điều m&agrave; nh&agrave; s&aacute;ng lập Elon Musk đ&atilde; nhiều lần hứa hẹn sẽ diễn ra v&agrave;o cuối năm 2022.</p>\r\n\r\n<p style=\"text-align:justify\">Th&aacute;ng 12 năm ngo&aacute;i, tỷ ph&uacute; Maezawa, nh&agrave; s&aacute;ng lập của trung t&acirc;m mua sắm thời trang trực tuyến lớn nhất Nhật Bản, đ&atilde; bay tới Trạm Vũ trụ Quốc tế trong một thời gian ngắn c&ugrave;ng với nh&agrave; quay phim của &ocirc;ng l&agrave; Yozo Hirano v&agrave; c&aacute;c nh&agrave; du h&agrave;nh vũ trụ người Nga tr&ecirc;n t&agrave;u vũ trụ Soyuz. Chi ph&iacute; cho h&agrave;nh tr&igrave;nh l&agrave; 10 tỷ y&ecirc;n, tương đương 73 triệu USD theo tỷ gi&aacute; chuyển đổi hiện tại.</p>', 'uploads/t-o-p-BIG-BANG-2-6528-1670555527.jpg', 'Big Bang, Kpop', '2023-06-15 20:03:05.162547', '2023-06-15 20:06:47.268712', 'thanh-vien-big-bang-se-du-hanh-vu-tru-cung-ty-phu-nhat-ban'),
(2, 'FPT Play phát sóng Đại nhạc hội MBC 2022', '<p>FPT Play ph&aacute;t s&oacute;ng trực tiếp Đại nhạc hội MBC (MBC Gayo Daejejeon), sự kiện quy tụ d&agrave;n sao h&agrave;ng đầu Kpop như NCT 127, aespa, IVE, NewJeans&hellip; v&agrave;o 18h40, ng&agrave;y 31/12.</p>\r\n\r\n<p>Đại nhạc hội ch&agrave;o đ&oacute;n năm mới của đ&agrave;i MBC (H&agrave;n Quốc) trở lại với đội h&igrave;nh nghệ sĩ xu hướng. Với chủ đề &quot;With Love&quot; (tạm dịch: C&ugrave;ng t&igrave;nh y&ecirc;u), chương tr&igrave;nh quy tụ đội h&igrave;nh nghệ sĩ h&agrave;ng đầu của Kbiz từ nhiều thế hệ như NCT 127, NCT Dream, aespa, IVE, NewJeans, NMIXX, (G)I-DLE, ITZY, Le Sserafim...v&agrave; ca sĩ gen 1 - BoA.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Stray Kids sẽ tham gia Đại nhạc hội MBC 2022. Ảnh: Stray Kids\" src=\"https://i1-giaitri.vnecdn.net/2022/12/30/image001-2987-1672375660.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=vtWC84TXkplI_2JO1WUAPw\" /></p>\r\n\r\n<p>Stray Kids sẽ tham gia Đại nhạc hội MBC 2022. Ảnh:&nbsp;<em>Stray Kids</em></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, sự kiện c&oacute; sự g&oacute;p mặt của nhiều nghệ sĩ solo, thần tượng nhạc trot, indie v&agrave; rock như Sumi Jo, Yoon Jong Shin, rock band Jaurim v&agrave; nh&oacute;m nhạc dance-pop Koyote. Điều n&agrave;y tạo n&ecirc;n chương tr&igrave;nh &acirc;m nhạc đa sắc m&agrave;u, mang t&iacute;nh nghệ thuật cao.</p>\r\n\r\n<p>Trước thềm sự kiện, MBC đ&atilde; tiết lộ một số m&agrave;n tr&igrave;nh diễn, thu h&uacute;t sự ch&uacute; &yacute; của người h&acirc;m mộ. Trong đ&oacute;, ba th&agrave;nh vi&ecirc;n NCT Doyoung, Jaehyun v&agrave; Jungwoo sẽ lần đầu biểu diễn ca kh&uacute;c&nbsp;<em>Aftermath</em>.</p>\r\n\r\n<p>Nh&oacute;m Stray Kids c&oacute; &quot;s&acirc;n khấu đặc biệt&quot;, biểu diễn ca kh&uacute;c&nbsp;<em>Circus</em>&nbsp;trong mini-album thứ hai bằng tiếng Nhật v&agrave;&nbsp;<em>Maxident</em>&nbsp;trong mini-album thứ 7 bằng tiếng H&agrave;n. Hai nh&oacute;m t&acirc;n binh Tempest v&agrave; Kep1er cũng lần đầu hợp t&aacute;c với c&aacute;i t&ecirc;n chung &quot;Stampler&quot;.</p>\r\n\r\n<p>Một trong những m&agrave;n tr&igrave;nh diễn được mong chờ nhất l&agrave; sự hợp t&aacute;c giữa nam thần tượng Ryeowook (Super Junior) v&agrave; nghệ sĩ gạo cội Sumi Jo. Sumi Jo l&agrave; nghệ sĩ opera H&agrave;n Quốc đầu ti&ecirc;n được đề cử v&agrave; nhận giải Grammy với giọng nữ cao coloratura soprano.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Ryeowook trình diễn cùng nghệ sĩ opera gạo cội Sumi Jo. Ảnh: MBC\" src=\"https://i1-giaitri.vnecdn.net/2022/12/30/image003-3699-1672375660.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=QSYZZCpenaLniPhbyZTQiw\" /></p>\r\n\r\n<p>Ryeowook tr&igrave;nh diễn c&ugrave;ng nghệ sĩ opera gạo cội Sumi Jo. Ảnh:&nbsp;<em>MBC</em></p>\r\n\r\n<p>Đại nhạc hội MBC 2022 tiếp tục được dẫn dắt bởi YoonAh (SNSD). Đ&acirc;y sẽ l&agrave; năm thứ 8 li&ecirc;n tiếp &quot;center quốc d&acirc;n&quot; nhận vai tr&ograve; MC sự kiện n&agrave;y. S&aacute;nh vai với c&ocirc; trong sự kiện năm nay l&agrave; MC kỳ cựu Jang Sung Kyu v&agrave; nam thần&nbsp;<em>Cổ Tay &Aacute;o M&agrave;u Đỏ</em>&nbsp;- Lee Junho (2PM).</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Màn trình diễn Señorita của YoonAh và Lee Junho trong MBC Gayo Daejejeon 2021. Ảnh: MBC\" src=\"https://i1-giaitri.vnecdn.net/2022/12/30/image005-8416-1672375660.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=uVDppfRwd0epFJFfMl-BGQ\" /></p>\r\n\r\n<p>M&agrave;n tr&igrave;nh diễn Se&ntilde;orita của YoonAh v&agrave; Lee Junho trong MBC Gayo Daejejeon 2021. Ảnh:&nbsp;<em>MBC</em></p>\r\n\r\n<p>MBC Gayo Daejejeon năm trước, YoonAh v&agrave; Lee Junho từng &quot;g&acirc;y sốt&quot; với m&agrave;n bởi biểu diễn Se&ntilde;orita n&oacute;ng bỏng. Do đ&oacute;, ngay khi th&ocirc;ng tin hai thần tượng t&aacute;i hợp t&aacute;c, nhiều người h&acirc;m mộ đ&atilde; để lại phản hồi t&iacute;ch cực, chờ đ&oacute;n &quot;phản ứng h&oacute;a học&quot; ngọt ng&agrave;o từ cặp MC.</p>', 'uploads/image001-2987-1672375660.png', 'MBC, Kpop', '2023-06-16 07:54:43.674678', '2023-06-16 07:54:43.674678', 'fpt-play-phat-song-ai-nhac-hoi-mbc-2022'),
(3, 'Brazil nhảy Samba trên nền nhạc Kpop', '<p>Tuyển Brazil đ&atilde; c&oacute; mặt tại tứ kết World Cup 2022 sau chiến thắng hủy diệt 4-1 trước tuyển H&agrave;n Quốc.</p>\r\n\r\n<p>Trận đấu đ&atilde; được định đoạt ngay trong hiệp 1 khi c&aacute;c vũ c&ocirc;ng Samba thay nhau ghi b&agrave;n v&agrave; dẫn trước 4-0.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Xem bóng đá đêm khuya kể ra cũng nhàn.\" src=\"https://i1-vnexpress.vnecdn.net/2022/12/06/01-1979-1670292211.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=wiKJP_6anNAEA1LsvAjrdw\" /></p>\r\n\r\n<p>Xem b&oacute;ng đ&aacute; đ&ecirc;m khuya kể ra cũng nh&agrave;n.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Neymar và đồng đội liên tục có dịp nhảy múa ăn mừng trước tuyển Hàn Quốc.\" src=\"https://i1-vnexpress.vnecdn.net/2022/12/06/03-6371-1670292211.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=8xJx1vl8tplH6NJAF9zQIQ\" /></p>\r\n\r\n<p><a href=\"https://vnexpress.net/fan-thich-thu-chup-anh-cung-ban-sao-neymar-4541760.html\" rel=\"dofollow\" target=\"_blank\">Neymar</a>&nbsp;v&agrave; đồng đội li&ecirc;n tục c&oacute; dịp nhảy m&uacute;a ăn mừng trước tuyển H&agrave;n Quốc.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Trong hiệp 1, họ đã có đến 4 lần nhảy như thế và tất nhiên HLV cũng không ngoại lệ.\" src=\"https://i1-vnexpress.vnecdn.net/2022/12/06/04-6346-1670292211.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=7k7ZnbIcJjjP7kE4o9LPFw\" /></p>\r\n\r\n<p>Trong hi&ecirc;p 1, họ đ&atilde; c&oacute; đến 4 lần nhảy như thế v&agrave; tất nhi&ecirc;n HLV cũng kh&ocirc;ng ngoại lệ.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Trên khán đài các huyền thoại cũng không giấu được niềm vui.\" src=\"https://i1-vnexpress.vnecdn.net/2022/12/06/05-9393-1670292211.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=FrPRkLlC_N-5kFom-1FgUw\" /></p>\r\n\r\n<p>Tr&ecirc;n kh&aacute;n đ&agrave;i c&aacute;c huyền thoại cũng kh&ocirc;ng giấu được niềm vui.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Kết quả quá chênh lệch.\" src=\"https://i1-vnexpress.vnecdn.net/2022/12/06/06-1-8530-1670292211.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=qX0FcY0-Xy8hdH8R-0xJ4Q\" /></p>\r\n\r\n<p>Kết quả qu&aacute; ch&ecirc;nh lệch.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Các cầu thủ Brazil tri ân Vua bóng đá Pele sau khi trận đấu kết thúc.\" src=\"https://i1-vnexpress.vnecdn.net/2022/12/06/06-3036-1670292211.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=bDrZrs9Gk-KAf4KN9l4Eyg\" /></p>\r\n\r\n<p>C&aacute;c cầu thủ Brazil tri &acirc;n Vua b&oacute;ng đ&aacute; Pele sau khi trận đấu kết th&uacute;c.</p>\r\n\r\n<p>Trước đ&oacute;, một đội b&oacute;ng ch&acirc;u &Aacute; kh&aacute;c l&agrave;&nbsp;<a href=\"https://vnexpress.net/samurai-xanh-ha-guc-co-xe-tang-duc-4539751.html\" rel=\"dofollow\" target=\"_blank\">Nhật Bản</a>&nbsp;cũng dừng cuộc chơi trước&nbsp;<a href=\"https://vnexpress.net/lukaku-thanh-nguoi-hung-cua-croatia-vi-qua-vung-ve-4543141.html\" rel=\"dofollow\" target=\"_blank\">Croatia</a>&nbsp;ở loạt s&uacute;t lu&acirc;n lưu.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Nhật Bản mở tỉ số trước nhưng không bảo toàn được lợi thế.\" src=\"https://i1-vnexpress.vnecdn.net/2022/12/06/07-2307-1670292211.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Oc2raVcpX5Al6kpvnthwMg\" /></p>\r\n\r\n<p>Nhật Bản mở tỉ số trước nhưng kh&ocirc;ng bảo to&agrave;n được lợi thế.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Ở loạt sút luân lưu, Nhật Bản sút hỏng 3/4 cú đá.\" src=\"https://i1-vnexpress.vnecdn.net/2022/12/06/08-2589-1670292211.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=SbC-rAf_urPgDwZsMoht8w\" /></p>\r\n\r\n<p>Ở loạt s&uacute;t lu&acirc;n lưu, Nhật Bản s&uacute;t hỏng 3/4 c&uacute; đ&aacute;.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Hai bộ mặt hoàn toàn trái ngược của Nhật Bản.\" src=\"https://i1-vnexpress.vnecdn.net/2022/12/06/11-1668-1670292212.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=HC4YW9SMF1xYKeq4o-aDEw\" /></p>\r\n\r\n<p>Hai bộ mặt ho&agrave;n to&agrave;n tr&aacute;i ngược của Nhật Bản.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thủ môn Livakovic đã cản phá 3/4 cú sút penalty của Nhật Bản.\" src=\"https://i1-vnexpress.vnecdn.net/2022/12/06/09-Livakovic-4pen-pha-3-3555-1670292212.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=09JfkwH3EcYcgaeJCVPN2w\" /></p>\r\n\r\n<p>Thủ m&ocirc;n Livakovic đ&atilde; cản ph&aacute; 3/4 c&uacute; s&uacute;t penalty của Nhật Bản.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Màn trình diễn đáng nhớ của Nhât Bản tại World Cup 2022.\" src=\"https://i1-vnexpress.vnecdn.net/2022/12/06/10-8812-1670292212.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=x28ZbZVai0wOtsnNt1YOZw\" /></p>\r\n\r\n<p>M&agrave;n tr&igrave;nh diễn đ&aacute;ng nhớ của Nh&acirc;t Bản tại World Cup 2022.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Đại diện Châu Á sạch bóng tại tứ kết World Cup.\" src=\"https://i1-vnexpress.vnecdn.net/2022/12/06/13-1310-1670292212.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=4DTJ-v4rTRku_WEwnqnvrA\" /></p>\r\n\r\n<p>Đại diện Ch&acirc;u &Aacute; sạch b&oacute;ng tại tứ kết World Cup.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Một trận cầu được mong đợi tại tứ kết.\" src=\"https://i1-vnexpress.vnecdn.net/2022/12/06/14-4860-1670292212.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=nbeIAmhs5H4PffXv_OWGpA\" /></p>\r\n\r\n<p>Một trận cầu được mong đợi tại tứ kết.</p>', 'uploads/t-o-p-BIG-BANG-2-6528-1670555527_5jRGobG.jpg', 'WC, Kpop', '2023-06-16 07:56:17.371303', '2023-06-16 07:56:17.371303', 'brazil-nhay-samba-tren-nen-nhac-kpop'),
(4, 'Nhóm nhạc Hàn có thành viên Việt lập kỷ lục', '<p>NewJeans - nh&oacute;m nhạc H&agrave;n c&oacute; th&agrave;nh vi&ecirc;n Việt Hanni - lập kỷ lục trong lịch sử Kpop với album đầu tay.</p>\r\n\r\n<p>Theo&nbsp;<em>Korea Times</em>,&nbsp;<a href=\"https://vnexpress.net/tag/newjeans-1519215\" rel=\"dofollow\">NewJeans</a>&nbsp;được mệnh danh l&agrave; &quot;t&acirc;n binh khủng long&quot;. Nh&oacute;m ti&ecirc;u thụ được hơn 311.000 bản trong tuần đầu ph&aacute;t h&agrave;nh - cao nhất với album đầu tay của một nh&oacute;m nữ. Trước đ&oacute;, kỷ lục thuộc về Le Sserafim với 307.450 bản hồi th&aacute;ng 5.</p>\r\n\r\n<p><em>Korea joongAng Daily</em>&nbsp;nhận định doanh số b&aacute;n album trong tuần đầu được coi l&agrave; chỉ số quan trọng đ&aacute;nh gi&aacute; mức độ nổi tiếng của một nghệ sĩ, nh&oacute;m nhạc Kpop v&agrave; sức mạnh của fandom (cộng đồng người h&acirc;m mộ).</p>\r\n\r\n<p>Ngo&agrave;i ra, NewJeans cũng chiếm lĩnh c&aacute;c trang trực tuyến. Ca kh&uacute;c chủ đề&nbsp;<em>Attention</em>&nbsp;đứng số một c&aacute;c website nhạc h&agrave;ng đầu của H&agrave;n Quốc như Melon, Genie, Bugs, đồng thời xuất hiện tr&ecirc;n bảng xếp hạng to&agrave;n cầu của Billboard. Album cũng dẫn đầu bảng xếp hạng iTunes Top Album của ch&iacute;n quốc gia như Th&aacute;i Lan, Phần Lan, Nga..., đứng thứ hai ở Nhật Bản, thứ 10 ở Mỹ... Theo&nbsp;<em>Fnnews</em>, sức ảnh hưởng của nh&oacute;m gi&uacute;p gi&aacute; cổ phiếu của c&ocirc;ng ty chủ quản Hybe tăng mạnh, tho&aacute;t khỏi đ&agrave; suy giảm sau h&agrave;ng loạt tin tức nhập ngũ của&nbsp;<a href=\"https://vnexpress.net/chu-de/bts-2600\" rel=\"dofollow\">BTS</a>.</p>\r\n\r\n<p><em>Korea Times&nbsp;</em>nhận định th&agrave;nh c&ocirc;ng của nh&oacute;m đến từ chiến lược quảng b&aacute; kh&aacute;c biệt. Th&ocirc;ng thường, c&aacute;c nh&oacute;m nhạc H&agrave;n Quốc mới ra mắt sẽ c&oacute; c&ocirc;ng thức chung: tiết lộ th&ocirc;ng tin, h&igrave;nh ảnh c&aacute;c th&agrave;nh vi&ecirc;n, ph&aacute;t h&agrave;nh teaser, MV ch&iacute;nh. Trong khi đ&oacute;, NewJeans tạo ra tiền lệ bằng c&aacute;ch tung loạt MV b&agrave;i h&aacute;t trong album, nhưng giấu k&iacute;n danh t&iacute;nh nghệ sĩ. Gi&aacute;m đốc sản xuất Min Hee Jin n&oacute;i: &quot;Ch&uacute;ng t&ocirc;i kh&ocirc;ng th&iacute;ch đi v&agrave;o lối m&ograve;n. Việc giữ k&iacute;n th&ocirc;ng tin c&aacute;c ca sĩ khiến kh&aacute;n giả t&ograve; m&ograve;, xem MV nhiều lần để nhận diện hoặc tra cứu xem họ l&agrave; ai&quot;.</p>\r\n\r\n<p>Tr&ecirc;n&nbsp;<em>Yonhap News,&nbsp;</em>c&aacute;c chuy&ecirc;n gia cho rằng phong c&aacute;ch &acirc;m nhạc hướng đến sự ho&agrave;i cổ cũng l&agrave; yếu tố gi&uacute;p NewJeans được ch&uacute; &yacute;. Th&ocirc;ng thường c&aacute;c nh&oacute;m nữ sẽ chọn nhạc dance s&ocirc;i động cho sản phẩm ra mắt, nhưng album đầu tay của NewJeans gồm những bản nhạc nhẹ nh&agrave;ng, ch&uacute; trọng v&agrave;o giai điệu. Nh&agrave; ph&ecirc; b&igrave;nh Jung Min Jae nhận x&eacute;t: &quot;&Acirc;m nhạc của nh&oacute;m kh&aacute;c với xu hướng hiện tại ở chỗ giai điệu vừa vặn, mọi kh&aacute;n giả đều c&oacute; thể nghe. N&oacute; giống R&amp;B hoặc Hiphop m&agrave; t&ocirc;i nghe ở những năm 1990&quot;.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Năm thành viên NewJeans. Từ trái qua: Hanni, Haerin, Minji, Danielle, Hyein. Ảnh: Yonhap News\" src=\"https://i1-giaitri.vnecdn.net/2022/08/16/newjeans-2532-1660620836.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=ugbfUNJ8JaFu0vJiHfrAfg\" /></p>\r\n\r\n<p style=\"text-align:center\">Năm th&agrave;nh vi&ecirc;n NewJeans. Từ tr&aacute;i qua: Hanni, Haerin, Minji, Danielle, Hyein. Ảnh:&nbsp;<em>Yonhap News</em></p>\r\n\r\n<p>NewJeans gồm năm th&agrave;nh vi&ecirc;n: Minji, Hanni, Danielle, Haerin v&agrave; Hyein, trực thuộc Ador Entertainment - c&ocirc;ng ty con của Hybe.&nbsp;<a href=\"https://vnexpress.net/tag/hanni-1519214\" rel=\"dofollow\">Hanni</a>&nbsp;18 tuổi, l&agrave; người Việt đang sống tại Australia. Minji 18 tuổi, từng l&agrave; thực tập sinh tại Source Music. Danielle sinh năm 2005, cha l&agrave; người Australia, mẹ người H&agrave;n. C&ocirc; gia nhập l&agrave;ng giải tr&iacute; từ khi s&aacute;u tuổi, xuất hiện trong nhiều chương tr&igrave;nh cho trẻ em như&nbsp;<em>Rainbow Kindergarten, Jesse&#39;s Play Kitchen</em>... Haerin 16 tuổi, được nhận x&eacute;t c&oacute; nhiều n&eacute;t giống Jennie (Blackpink). Hyein 14 tuổi - th&agrave;nh vi&ecirc;n nhỏ nhất nh&oacute;m - gia nhập ng&agrave;nh giải tr&iacute; từ năm t&aacute;m tuổi với vai tr&ograve; người mẫu. C&ocirc; từng hoạt động trong nh&oacute;m nhạc nữ USSO.</p>\r\n\r\n<p>Họ được chọn th&ocirc;ng qua Plus Global Audition do gi&aacute;m đốc Min Hee Jin gi&aacute;m s&aacute;t. Hee Jin chỉ đạo to&agrave;n bộ qu&aacute; tr&igrave;nh từ tuyển chọn đến lập kế hoạch, &acirc;m nhạc, sản xuất v&agrave; bi&ecirc;n đạo. Min Hee Jin l&agrave; cựu gi&aacute;m đốc s&aacute;ng tạo của SM Entertainment, đứng sau th&agrave;nh c&ocirc;ng của nhiều nh&oacute;m nhạc đ&igrave;nh đ&aacute;m như F(x), EXO, Red Velvet...</p>', 'uploads/t-o-p-BIG-BANG-2-6528-1670555527_fp4u8Vc.jpg', 'Music, Kpop', '2023-06-16 07:57:19.017618', '2023-06-16 07:57:19.017618', 'nhom-nhac-han-co-thanh-vien-viet-lap-ky-luc'),
(5, '\'Dynamite\' của BTS tiếp tục đứng đầu Billboard', '<p>&quot;Dynamite&quot; - single mới của nh&oacute;m nhạc BTS - tuần thứ hai chinh phục vị tr&iacute; qu&aacute;n qu&acirc;n bảng xếp hạng Billboard Hot 100.</p>\r\n\r\n<p>H&ocirc;m 8/9,&nbsp;<em>Nielsen Music&nbsp;</em>cho biết t&iacute;nh đến ng&agrave;y 6/9,&nbsp;<em>Dynamite&nbsp;</em>c&oacute; 182.000 lượt download, 17,5 triệu lượt stream v&agrave; 16 triệu th&iacute;nh giả tr&ecirc;n radio.&nbsp;<a href=\"https://vnexpress.net/dynamite-cua-bts-dung-dau-billboard-4155211.html\" rel=\"dofollow\">Tuần trước</a>,&nbsp;<em>Dynamite&nbsp;</em>b&aacute;n 300 ngh&igrave;n bản (t&iacute;nh cả lượt download v&agrave; lượng cassette, đĩa than b&aacute;n ra), 33,9 triệu lượt stream v&agrave; 11,6 triệu th&iacute;nh giả tr&ecirc;n radio.</p>\r\n\r\n<p>Tr&ecirc;n&nbsp;<em>Twitter</em>, BTS đăng video c&aacute;c th&agrave;nh vi&ecirc;n h&ograve; h&eacute;t, c&ugrave;ng nhau ăn mừng th&agrave;nh t&iacute;ch mới. Trong một b&agrave;i đăng kh&aacute;c, họ viết: &quot;Teamwork makes the dream work!&quot;(tạm dịch: Tinh thần đồng đội gi&uacute;p ước mơ trở th&agrave;nh hiện thực).</p>\r\n\r\n<p>BTS l&agrave; nghệ sĩ thứ hai của ch&acirc;u &Aacute; đạt th&agrave;nh t&iacute;ch n&agrave;y sau Kyu Sakamoto (Nhật Bản) với ca kh&uacute;c&nbsp;<em>Sukiyaki&nbsp;</em>năm 1963. Trước đ&oacute;,&nbsp;<em>Gangnam Style&nbsp;</em>của PSY (H&agrave;n Quốc) giữ vị tr&iacute; &aacute; qu&acirc;n.</p>\r\n\r\n<p><em>Billboard&nbsp;</em>l&agrave; tạp ch&iacute; &acirc;m nhạc của Mỹ, ra đời năm 1894, đ&oacute;ng vai tr&ograve; quan trọng trong ng&agrave;nh c&ocirc;ng nghiệp &acirc;m nhạc Mỹ.&nbsp;<em>Billboard&nbsp;</em>đưa ra danh s&aacute;ch c&aacute;c bảng xếp hạng, album, đĩa đơn dựa theo doanh thu từng tuần.</p>\r\n\r\n<p>Ph&aacute;t h&agrave;nh h&ocirc;m 21/9,&nbsp;<em>Dynamite&nbsp;</em>đạt 2,9 triệu lượt xem trực tuyến, trở th&agrave;nh MV c&oacute; lượt xem c&ocirc;ng chiếu trực tiếp cao nhất thế giới. Tại MTV Music Video Awards 2020, BTS thắng bốn giải thưởng gồm &quot;Ca kh&uacute;c Pop hay nhất&quot;, &quot;Kpop hay nhất&quot;, &quot;Nh&oacute;m hay nhất&quot; v&agrave; &quot;Vũ đạo hay nhất&quot;.</p>\r\n\r\n<p>Ca kh&uacute;c thuộc thể loại Disco Pop với phần lời tiếng Anh mang nội dung ca ngợi bản th&acirc;n như những v&igrave; sao s&aacute;ng khiến th&agrave;nh phố &quot;rực rỡ như thuốc nổ&quot;. Theo&nbsp;<em>Dispatch</em>, b&agrave;i h&aacute;t gửi gắm năng lượng t&iacute;ch cực đến kh&aacute;n giả to&agrave;n thế giới trong thời dịch. Tuy nhi&ecirc;n, một số kh&aacute;n giả nhận x&eacute;t điểm trừ của ca kh&uacute;c l&agrave; phần ph&aacute;t &acirc;m tiếng Anh chưa chuẩn.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Nhóm nhạc BTS. Ảnh: Big Hit Entertainment.\" src=\"https://i1-giaitri.vnecdn.net/2020/09/09/bts-top-9740-1599618638.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=p4CJht8SdjXDtVLDvYZFOw\" /></p>\r\n\r\n<p style=\"text-align:center\">Nh&oacute;m nhạc BTS. Ảnh:&nbsp;<em>Big Hit Entertainment.</em></p>\r\n\r\n<p>BTS được th&agrave;nh lập năm 2010 v&agrave; hoạt động từ th&aacute;ng 5/2013. Trong s&aacute;u năm, nh&oacute;m ph&aacute;t h&agrave;nh s&aacute;u album v&agrave; s&aacute;u EP (mini album). Th&aacute;ng 5, họ trở th&agrave;nh đại diện K-pop đầu ti&ecirc;n nhận giải &quot;<a href=\"https://vnexpress.net/bts-la-nhom-nhac-xuat-sac-o-gia-i-billboard-3917340.html\" rel=\"dofollow\">Nh&oacute;m nhạc xuất sắc</a>&quot; của Billboard Music Awards.</p>\r\n\r\n<p>Bảy ch&agrave;ng trai c&oacute; li&ecirc;n tiếp ba album đứng đầu bảng xếp hạng Billboard trong 11 th&aacute;ng, th&agrave;nh t&iacute;ch chưa nghệ sĩ n&agrave;o đạt được từ năm 1995. Th&aacute;ng 4/2019, nh&oacute;m được vinh danh trong danh s&aacute;ch&nbsp;<a href=\"https://vnexpress.net/bts-vao-top-100-nguoi-anh-huong-nam-2019-3911387.html\" rel=\"dofollow\">100 người ảnh hưởng</a>&nbsp;nhất thế giới của&nbsp;<em>Time</em>. BTS l&agrave; nghệ sĩ ch&acirc;u &Aacute; duy nhất g&oacute;p mặt trong bảng xếp hạng.</p>', 'uploads/t-o-p-BIG-BANG-2-6528-1670555527_QqqFtJO.jpg', 'BTS, Kpop', '2023-06-16 07:59:05.342955', '2023-06-16 07:59:23.180126', 'dynamite-cua-bts-tiep-tuc-ung-au-billboard'),
(6, '\'Kill This Love\' của Blackpink đạt một tỷ lượt xem', '<p>MV &quot;Kill This Love&quot; của nh&oacute;m Blackpink đạt một tỷ lượt xem tr&ecirc;n Youtube v&agrave;o chiều 2/9.</p>\r\n\r\n<p>Trang&nbsp;<em>Soompi&nbsp;</em>đưa tin video đạt kỷ lục tr&ecirc;n v&agrave;o l&uacute;c 15h8 ph&uacute;t, trở th&agrave;nh MV thứ hai của nh&oacute;m c&oacute; một tỷ lượt xem tr&ecirc;n Youtube, sau&nbsp;<em>DDU-DU-DDU-DU.&nbsp;</em>Hai MV c&ograve;n lại của K-Pop từng vượt qua mốc n&agrave;y l&agrave;&nbsp;<em>Gangnam</em>&nbsp;<em>Style</em>&nbsp;(Psy),&nbsp;<em>DNA</em>&nbsp;(BTS).</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Hình ảnh quảng bá MV Kill This Love của BlackPink. Ảnh: YG Entertainment.\" src=\"https://i1-giaitri.vnecdn.net/2020/09/02/black-pink-1-5795-1599041757.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=cZhLTsAWcjvU146WBUYbTQ\" /></p>\r\n\r\n<p style=\"text-align:center\">H&igrave;nh ảnh quảng b&aacute; MV &quot;Kill This Love&quot; của Blackpink. Ảnh:&nbsp;<em>YG Entertainment.</em></p>\r\n\r\n<p><em>Kill This Love&nbsp;</em>nằm trong mini-album c&ugrave;ng t&ecirc;n của Blackpink, được nh&oacute;m ph&aacute;t h&agrave;nh ng&agrave;y 5/4/2019. B&agrave;i h&aacute;t thể hiện th&ocirc;ng điệp c&aacute;c c&ocirc; g&aacute;i h&atilde;y mạnh dạn &quot;giết chết&quot; t&igrave;nh y&ecirc;u khiến bản th&acirc;n đau khổ, được nhiều kh&aacute;n giả khen ngợi ở vũ đạo, ngoại h&igrave;nh của c&aacute;c th&agrave;nh vi&ecirc;n - Jisoo, Jennie, Rose v&agrave; Lisa. D&ugrave; ra đời trong thời điểm YG - c&ocirc;ng ty chủ quản nh&oacute;m -&nbsp;<a href=\"https://vnexpress.net/cong-ty-giai-tri-yg-cua-han-quoc-bi-dieu-tra-tron-thue-3897535.html\" rel=\"dofollow\" target=\"_blank\">bị nghi ngờ</a>&nbsp;trốn thuế v&agrave; vướng scandal t&igrave;nh dục của ca sĩ Seungri (từng được YG quản l&yacute;), MV vẫn đạt th&agrave;nh t&iacute;ch tốt.&nbsp;<em>Kill This Love</em>&nbsp;từng&nbsp;<a href=\"https://vnexpress.net/black-pink-dung-dau-bang-xep-hang-itunes-tai-my-3905189.html\" rel=\"dofollow\" target=\"_blank\">đứng đầu</a>&nbsp;bảng xếp hạng iTunes tại Mỹ v&agrave; 32 quốc gia, v&ugrave;ng l&atilde;nh thổ kh&aacute;c, trong đ&oacute; c&oacute; Việt Nam. MV &quot;Kill This Love&quot;. Video:&nbsp;<em>YG Entertainment.</em></p>\r\n\r\n<p>Blackpink ra mắt năm 2016, gồm bốn th&agrave;nh vi&ecirc;n: Lisa, Jennie, Rose, Jisoo. Nh&oacute;m nổi tiếng to&agrave;n cầu nhờ chất nhạc bắt tai, h&igrave;nh tượng quyến rũ v&agrave; chiến lược đ&uacute;ng đắn của c&ocirc;ng ty quản l&yacute;. Nh&oacute;m từng hợp t&aacute;c với c&aacute;c nghệ sĩ quốc tế như Lady Gaga (b&agrave;i&nbsp;<a href=\"https://vnexpress.net/lady-gaga-hop-tac-blackpink-4088896.html\" rel=\"dofollow\"><em>Sour Candy</em></a>), Dua Lipa (b&agrave;i&nbsp;<em>Kiss and Make up</em>) v&agrave; mới nhất l&agrave; Selena Gomez (b&agrave;i&nbsp;<a href=\"https://vnexpress.net/blackpink-tung-mv-ket-hop-selena-gomez-4153665.html\" rel=\"dofollow\"><em>Ice Cream</em></a>). Kh&ocirc;ng chỉ ảnh hưởng mạnh mẽ trong lĩnh vực &acirc;m nhạc, c&aacute;c th&agrave;nh vi&ecirc;n Blackpink được nhiều tạp ch&iacute; đ&aacute;nh gi&aacute; l&agrave; c&aacute;c biểu tượng thời trang mới, trở th&agrave;nh &quot;<a href=\"https://vnexpress.net/blackpink-con-cung-cua-cac-nha-mot-xa-xi-4126321.html\" rel=\"dofollow\">con cưng</a>&quot; của c&aacute;c nh&agrave; mốt xa xỉ.</p>', 'uploads/t-o-p-BIG-BANG-2-6528-1670555527_Waa1qGT.jpg', 'Blackpink, Kpop', '2023-06-16 08:01:13.398159', '2023-06-16 08:01:13.398159', 'kill-this-love-cua-blackpink-at-mot-ty-luot-xem'),
(7, 'G-Dragon - ông hoàng Kpop', '<p>Ng&ocirc;i sao Kpop G-Dragon được b&aacute;o Mỹ b&igrave;nh chọn l&agrave; một trong những l&yacute; do khiến th&agrave;nh phố Seoul, H&agrave;n Quốc tuyệt vời hơn.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"G-Dragon đón sinh nhật lần thứ 31 hôm nay (18/8). Trên các mạng xã hội, diễn đàn châu Á, nhiều khán giả đăng lại loạt ảnh ca sĩ thời thơ ấu, ảnh thời trang và các MV ca nhạc của anh. Đa số chúc anh sinh nhật vui vẻ, tiếp tục cống hiến cho làng thời trang và âm nhạc thế giới. Ảnh thủ lĩnh Big Bang lúc 5 tuổi nhận mưa lời khen. Anh được khen đáng yêu, có phong cách, thần thái của ngôi sao từ khi còn bé. Trên Twitter, nhiều khán giả nói ca sĩ sinh ra để làm ngôi sao. Ảnh: Naver\" src=\"https://i1-giaitri.vnecdn.net/2020/08/18/g-dragon-7584-1597716740.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=zqtTrrQEr-PhpwEHOQLHWA\" /></p>\r\n\r\n<p>G-Dragon đ&oacute;n sinh nhật lần thứ 31 h&ocirc;m nay (18/8). Tr&ecirc;n c&aacute;c mạng x&atilde; hội, diễn đ&agrave;n ch&acirc;u &Aacute;, nhiều kh&aacute;n giả đăng lại loạt ảnh ca sĩ thời thơ ấu, dự show thời trang v&agrave; c&aacute;c MV ca nhạc của anh. Đa số ch&uacute;c anh sinh nhật vui vẻ v&agrave; tiếp tục &quot;g&acirc;y b&atilde;o&quot; to&agrave;n cầu với những sản phẩm &acirc;m nhạc v&agrave; phong c&aacute;ch thời trang c&aacute; t&iacute;nh. Ảnh thủ lĩnh Big Bang l&uacute;c năm tuổi được khen đ&aacute;ng y&ecirc;u v&agrave; thần th&aacute;i của người nổi tiếng. Tr&ecirc;n&nbsp;<em>Twitter</em>, nhiều kh&aacute;n giả n&oacute;i G-Dragon sinh ra để l&agrave;m ng&ocirc;i sao.</p>\r\n\r\n<p>Video ch&uacute;c mừng sinh nhật G-Dragon do cộng đồng fan tại Trung Quốc thực hiện được ph&aacute;t tại Incheon Songdo (H&agrave;n Quốc) từ ng&agrave;y 1 đến 31/8. Video:&nbsp;<em>G-Dragon China Bar.</em></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"[Hồi tháng 3, KingChoice là trang web bình chọn uy tín hàng đầu của Hàn Quốc, nơi netizen Hàn thể hiện mức độ yêu mến đối với các nghệ sĩ Kpop. Mới đây, trang web này đã tổ chức một cuộc bình chọn để chọn ra idol Kpop đỉnh nhất thập kỷ qua. Sau đúng 1 tháng bình chọn, từ 100 ứng viên, top 50 đã lộ diện và gương mặt đỉnh nhất cũng đã được gọi tên.Hạng 1: G-Dragon (BIGBANG)G-Dragon dẫn đầu BXH với 3,2 triệu phiếu bầu. Vốn nổi tiếng với danh xưng ông hoàng Kpop, trưởng nhóm BIGBANG thực sự là một màu sắc độc - lạ, đa-zi-năng của nền âm nhạc này bởi cá tính âm nhạc, thời trang và có tầm ảnh hưởng mạnh mẽ đối với đất nước Hàn Quốc. Anh chàng quả thật xứng đáng với vị trí số 1.hương trình TMI News của đài Mnet đã lựa chọn 7 boygroup và nam ca sĩ solo thành công nhất trong việc chinh phục các đỉnh cao sự nghiệp, không những khiến fan nở mày nở mặt mà còn làm đất nước Hàn Quốc tự hào.Trưởng nhóm G-Dragon của BIGBANG được bình chọn ở vị trí thứ 3 và được coi là nam idol Kpop đình đám nhất. Anh nổi tiếng không chỉ nhờ âm nhạc đỉnh cao, chinh phục trái tim của hàng nghìn fan hâm mộ trên thế giới mà còn bởi phong cách thời trang cực chất.\" src=\"https://i1-giaitri.vnecdn.net/2020/08/18/g-dragon-90-3865-1597716740.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=PTXs0vw2PZ8OrxFyxTNK6Q\" /></p>\r\n\r\n<p>Ca sĩ được khen trẻ trung so với tuổi trong bộ ảnh quảng c&aacute;o của thương hiệu đồ uống do anh l&agrave;m đại diện hồi th&aacute;ng 5.<br />\r\nG-Dragon l&agrave; rapper, ca sĩ, nhạc sĩ v&agrave; nh&agrave; sản xuất h&agrave;ng đầu H&agrave;n Quốc. Anh ra mắt năm 2006 với vai tr&ograve; l&agrave; trưởng nh&oacute;m nhạc H&agrave;n Quốc Big Bang. Ngo&agrave;i ra, anh ph&aacute;t triển sự nghiệp solo với loạt album như &quot;Heartbreaker&quot;, &quot;GD &amp; TOP&quot;, &quot;Bullshit&quot;... Ca sĩ đứng số một trong cuộc b&igrave;nh chọn &quot;Idol Kpop đỉnh nhất thập kỷ qua&quot; do KingChoice - trang web b&igrave;nh chọn h&agrave;ng đầu H&agrave;n Quốc - thực hiện hồi th&aacute;ng 3, với 3,2 triệu phiếu bầu. Theo&nbsp;<em>Naver</em>, anh được truyền th&ocirc;ng v&agrave; người h&acirc;m mộ t&ocirc;n vinh l&agrave; &quot;&ocirc;ng ho&agrave;ng Kpop&quot; bởi sự th&agrave;nh c&ocirc;ng, tầm ảnh hưởng trong &acirc;m nhạc, thời trang. Ảnh:&nbsp;<em>Nongfu.</em></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"[G-Dragon trong show diễn của Chanel tại Tuần lễ Thời trang Haute Couture Paris Xuân Hè 2020Từ khóa #GDatChanel đứng đầu Twitter toàn cầu. Năm 2016, nam ca sĩ chính thức trở thành gương mặt đại diện của nhà mốt Pháp. Ảnh: AFPChương trình TMI NEWS bình chọn G-Dragon đứng thứ 2 trong cuộc bình chọn idol có gu thời trang đắt đỏ nhất. Lý giải cho việc anh đứng thứ 2 là vì có nhiều trang phục được các hãng thiết kế riêng cho anh nên chương trình không thể định giá được.Công chúng Hàn Quốc biết rằng mọi thứ mà G-Dragon mặc đều trở thành xu hướng, thậm chí sau nhiều năm và bất kể nó rẻ hay đắt. Phá vỡ ranh giới về giới tính\" src=\"https://i1-giaitri.vnecdn.net/2020/08/18/g-dragon-2-3743-1597716740.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=a3NohLeEyE_BrDdvjiwwHg\" /></p>\r\n\r\n<p>Thủ lĩnh Big Bang trong show diễn của Chanel tại Tuần lễ thời trang Haute Couture Paris Xu&acirc;n H&egrave; 2020 hồi th&aacute;ng 1. Anh l&agrave; gương mặt đại diện to&agrave;n cầu của nh&agrave; mốt Ph&aacute;p từ năm 2016. Show diễn l&agrave; sự kiện đầu ti&ecirc;n G-Dragon tham gia sau khi xuất ngũ n&ecirc;n được truyền th&ocirc;ng, người h&acirc;m mộ săn đ&oacute;n. Từ kh&oacute;a #GDatChanel đứng đầu top thịnh h&agrave;nh to&agrave;n cầu của&nbsp;<em>Twitter</em>. Tờ&nbsp;<em>Telegraph</em>&nbsp;của Anh gọi đ&acirc;y l&agrave; &quot;sự trở lại của vị vua&quot; v&agrave; đưa ca sĩ v&agrave;o danh s&aacute;ch những &quot;n&agrave;ng thơ&quot; dẫn đầu xu hướng thời trang 2020. Trong khi đ&oacute;,&nbsp;<em>Vogue Korea</em>&nbsp;số ra th&aacute;ng 3 nhận định: &quot;C&oacute; hai từ viết tắt quyền lực nhất vũ trụ, đ&oacute; l&agrave; GD v&agrave; CC (G-Dragon v&agrave; Chanel)&quot;. Ảnh:&nbsp;<em>AFP.</em></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"[ Đôi giày Nike do G-Dragon thiết kế chỉ mất vài phút để sold out toàn cầu.Cuối cùng, thì Para-noise của NIKE Air Force do G-Dragon thiết kế đã được chính thức được phát hành và không mất nhiều thời gian cho đến khi nó sold out hoàn toàn trên toàn thế giới, điều đó cho thấy tầm ảnh hưởng lớn của trưởng nhóm BIGBANG.Cá nhân G-Dragon đã xuất hiện trong sự kiện diễn ra vào ngày hôm qua (23/11) lần đầu tiên xuất hiện trước công chúng sau khi xuất ngũ và nhiều người hâm mộ đã chờ đợi anh ấy khi anh ấy biểu diễn nghệ thuật.Ở Trung Quốc chỉ mất 0,06 giây để sold out, trên weibo nó thu hút 150 triệu người xem tin tức này vì họ đều sốc tại sao nó sold out quá nhanh, ở Mỹ và Canada chỉ mất 5 phút, ở Úc chỉ mất 10 phút, và ở Anh (UK) chỉ mất 2 phút, tổng cộng đôi giày AF1 Para-noise chỉ mất 30 phút để sold out toàn cầu từ đông sang tây với 44 quốc gia.Tên của G-Dragon cũng lọt top trend toàn cầu trong nhiều giờ sau khi mọi người điều rất thích thú với sự kiện này.(Một thông tin khác đó là theo thống kê của Google, thì vào hôm qua từ khóa Nike Air Force đã đạt tỉ lệ tìm kiếm cao nhất trong 15 năm qua (2004) kể từ khi sản phẩm này ra đời). Ảnh: Instagram.\" src=\"https://i1-giaitri.vnecdn.net/2020/08/18/g-dragon-4-1172-1597716740.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=sU6IFLOFJC91m3P4lwIYLg\" /></p>\r\n\r\n<p>G-Dragon trong h&igrave;nh ảnh quảng c&aacute;o mẫu&nbsp;<a href=\"https://vnexpress.net/sao-viet-theo-mot-giay-hoa-cuc-cua-g-dragon-4032432.html\" rel=\"dofollow\">gi&agrave;y hoa c&uacute;c</a>&nbsp;Para-Noise của Nike Air Force do ch&iacute;nh anh thiết kế, th&aacute;ng 11/2019. Gi&agrave;y được ph&aacute;t h&agrave;nh to&agrave;n cầu ng&agrave;y 23/11 v&agrave; &quot;ch&aacute;y h&agrave;ng&quot; chỉ sau v&agrave;i ph&uacute;t. Theo&nbsp;<em>Sina</em>, tại Trung Quốc c&oacute; hơn 150 triệu người theo d&otilde;i sự kiện ra mắt sản phẩm tr&ecirc;n&nbsp;<em>Weibo</em>&nbsp;v&agrave; chỉ mất 0,06 gi&acirc;y để b&aacute;n h&agrave;ng. Ở Anh, sản phẩm hết h&agrave;ng chỉ sau hai ph&uacute;t mở b&aacute;n, Mỹ, Canada 5 ph&uacute;t v&agrave; tại Australia l&agrave; 10 ph&uacute;t. Theo thống k&ecirc; của<em>&nbsp;Google</em>, từ kh&oacute;a Nike Air Force đạt tỉ lệ t&igrave;m kiếm cao nhất trong 15 năm qua, kể từ khi d&ograve;ng sản phẩm n&agrave;y ra đời. T&ecirc;n của G-Dragon cũng v&agrave;o top thịnh h&agrave;nh tr&ecirc;n&nbsp;<em>Twitter</em>&nbsp;trong nhiều giờ. Gi&agrave;y c&oacute; gi&aacute; khoảng 200 USD (4,6 triệu đồng). Do khan hiếm h&agrave;ng, nhiều người chấp nhận mua lại với gi&aacute; 14 - 17 triệu đồng t&ugrave;y size. Ảnh:<em>&nbsp;Instagram</em>.</p>', 'uploads/image001-2987-1672375660_dEPEItV.png', 'gdragon, kpop', '2023-06-16 08:03:18.569906', '2023-06-16 08:03:18.569906', 'g-dragon-ong-hoang-kpop'),
(8, 'BTS làm show trực tuyến', '<p>Nh&oacute;m nhạc nam BTS tổ chức đ&ecirc;m diễn trực tuyến để chiều l&ograve;ng fan, b&ugrave; cho việc hủy show v&igrave; dịch.</p>\r\n\r\n<p>Theo&nbsp;<em>Variety</em>, đại diện BTS cho biết show&nbsp;<em>Bang Bang Con: The Live</em>&nbsp;được ph&aacute;t s&oacute;ng tối 14/6&nbsp;theo giờ H&agrave;n Quốc, y&ecirc;u cầu người xem trả ph&iacute;. Chương tr&igrave;nh dự kiến k&eacute;o d&agrave;i 90 ph&uacute;t, gồm c&aacute;c phần diễn trực tiếp v&agrave; một số nội dung đặc biệt do nh&oacute;m chuẩn bị. Mức ph&iacute; v&agrave; c&aacute;ch thức theo d&otilde;i&nbsp;được cập nhật tr&ecirc;n trang chủ của nh&oacute;m trong v&agrave;i tuần tới.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Nhóm BTS. Ảnh: Big Hit.\" src=\"https://i1-giaitri.vnecdn.net/2020/05/15/Bts-3812-1589513412.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=JD-BFXYehPjvvGy40S_Efg\" /></p>\r\n\r\n<p style=\"text-align:center\">Nh&oacute;m BTS. Ảnh:&nbsp;<em>BigHit.</em></p>\r\n\r\n<p>Gần đ&acirc;y,&nbsp;<a href=\"https://vnexpress.net/giai-tri/6-cot-moc-trong-su-nghiep-bts-4092460.html\" rel=\"dofollow\">BTS</a>&nbsp;thử nghiệm ph&aacute;t s&oacute;ng c&aacute;c video biểu diễn hay sự kiện gặp gỡ fan tr&ecirc;n mạng, thu h&uacute;t hơn 50,6 triệu lượt xem. Số người xem c&ugrave;ng l&uacute;c cao nhất l&ecirc;n tới 2,24 triệu người.</p>\r\n\r\n<p>Boyband H&agrave;n Quốc ph&aacute;t h&agrave;nh album thứ tư&nbsp;<em><a href=\"https://vnexpress.net/giai-tri/album-cua-bts-dung-dau-billboard-4063032.html\" rel=\"dofollow\">Map Of The Soul: 7</a></em>&nbsp;hồi th&aacute;ng 2 Show quảng b&aacute; của họ dự kiến bắt đầu từ th&aacute;ng 4 nhưng bị ho&atilde;n v&igrave; dịch. Nh&oacute;m hiện tr&aacute;nh dịch tại Seoul, tiếp tục chuẩn bị những dự &aacute;n mới.</p>\r\n\r\n<p>BTS được th&agrave;nh lập năm 2010 v&agrave; hoạt động từ th&aacute;ng 5/2013. Bảy ch&agrave;ng trai c&oacute; li&ecirc;n tiếp bốn&nbsp;album đứng đầu bảng xếp hạng Billboard. Th&aacute;ng 4/2019, nh&oacute;m được vinh danh trong danh s&aacute;ch&nbsp;<a href=\"https://vnexpress.net/bts-vao-top-100-nguoi-anh-huong-nam-2019-3911387.html\" rel=\"dofollow\">100 người ảnh hưởng</a>&nbsp;nhất thế giới của&nbsp;<em>Time.&nbsp;</em></p>', 'uploads/t-o-p-BIG-BANG-2-6528-1670555527_WUsQZ8o.jpg', 'BTS, Kpop', '2023-06-16 08:03:59.520532', '2023-06-16 08:03:59.520532', 'bts-lam-show-truc-tuyen'),
(9, 'BTS đang đầu top sao quyền lực tại Hàn Quốc', '<p>Nh&oacute;m nhạc BTS vượt Blackpink, dẫn đầu danh sách&nbsp;40 ng&ocirc;i sao quy&ecirc;̀n lực nh&acirc;́t năm tại H&agrave;n Quốc.</p>\r\n\r\n<p>Ng&agrave;y 28/4,&nbsp;<em>Forbes Korea</em>&nbsp;c&ocirc;ng bố danh s&aacute;ch&nbsp;những nh&acirc;n vật nổi tiếng quyền lực - Korea Power Celebrity. BTS đứng hạng nhất, tăng hai hạng so với năm ngo&aacute;i.&nbsp;Nh&oacute;m nhạc nam được đ&aacute;nh gi&aacute;&nbsp;th&agrave;nh c&ocirc;ng với&nbsp;album&nbsp;<em>Map of the Soul: 7</em>, ph&aacute; h&agrave;ng loạt&nbsp;<a href=\"https://vnexpress.net/bts-lap-ky-luc-4058720.html\" rel=\"dofollow\" target=\"_blank\">kỷ lục</a>&nbsp;về lượt xem, doanh thu trong nước v&agrave; thế giới.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"BTS tại lễ trao giải Grammy 2020. Ảnh: Yahoo.\" src=\"https://i1-giaitri.vnecdn.net/2020/04/28/Bts-5719-1588083337.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=n9cTo6M_QhesVoZug83GhQ\" /></p>\r\n\r\n<p style=\"text-align:center\">BTS tại lễ trao giải Grammy 2020. Ảnh:<em>&nbsp;Yahoo.</em></p>\r\n\r\n<p>Kết quả n&agrave;y được c&ocirc;ng bố thường ni&ecirc;n v&agrave;o khoảng th&aacute;ng 4, dựa tr&ecirc;n bốn chỉ số: lợi nhuận (từ việc đ&oacute;ng phim, b&aacute;n album, hợp đồng quảng c&aacute;o v&agrave; kinh doanh), quan hệ truyền th&ocirc;ng, hoạt động&nbsp;v&agrave; sức ảnh hưởng tr&ecirc;n mạng x&atilde; hội.&nbsp;</p>\r\n\r\n<p>BTS được th&agrave;nh lập năm 2010 v&agrave; hoạt động từ th&aacute;ng 5/2013.&nbsp;Bảy ch&agrave;ng trai c&oacute; li&ecirc;n tiếp ba album đứng đầu bảng xếp hạng Billboard trong 11 th&aacute;ng, th&agrave;nh t&iacute;ch chưa nghệ sĩ n&agrave;o đạt được từ năm 1995. Th&aacute;ng 4/2019, nh&oacute;m được vinh danh trong danh s&aacute;ch&nbsp;<a href=\"https://vnexpress.net/bts-vao-top-100-nguoi-anh-huong-nam-2019-3911387.html\" rel=\"dofollow\">100 người ảnh hưởng</a>nhất thế giới của<em>Time.&nbsp;</em>BTS l&agrave; nghệ sĩ ch&acirc;u &Aacute; duy nhất g&oacute;p mặt trong bảng xếp hạng.&nbsp;</p>', 'uploads/Bts-5719-1588083337.jpg', 'BTS, Kpop', '2023-06-16 08:04:55.730326', '2023-06-16 10:50:10.000060', 'bts-ang-au-top-sao-quyen-luc-tai-han-quoc');

-- --------------------------------------------------------

--
-- Table structure for table `order_chitietdonhang`
--

CREATE TABLE `order_chitietdonhang` (
  `id` bigint(20) NOT NULL,
  `GiaBan` int(11) DEFAULT NULL,
  `SoLuong` int(11) NOT NULL,
  `TongTien` int(11) DEFAULT NULL,
  `DonHang_id` bigint(20) NOT NULL,
  `SanPham_id` bigint(20) NOT NULL,
  `MauSac_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_chitietdonhang`
--

INSERT INTO `order_chitietdonhang` (`id`, `GiaBan`, `SoLuong`, `TongTien`, `DonHang_id`, `SanPham_id`, `MauSac_id`) VALUES
(13, 200000, 1, 200000, 3, 14, 2),
(14, 200000, 1, 200000, 3, 13, 1),
(15, 200000, 1, 200000, 4, 15, 5),
(16, 250000, 1, 250000, 5, 2, 3),
(17, 200000, 1, 200000, 5, 15, 4),
(18, 200000, 1, 200000, 5, 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_donhang`
--

CREATE TABLE `order_donhang` (
  `id` bigint(20) NOT NULL,
  `SoDienThoai` varchar(11) NOT NULL,
  `DiaChi` varchar(11) NOT NULL,
  `TongTien` int(11) NOT NULL,
  `ThoiGian` datetime(6) NOT NULL,
  `TrangThai` varchar(25) NOT NULL,
  `KhachHang_id` bigint(20) NOT NULL,
  `GhiChu` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_donhang`
--

INSERT INTO `order_donhang` (`id`, `SoDienThoai`, `DiaChi`, `TongTien`, `ThoiGian`, `TrangThai`, `KhachHang_id`, `GhiChu`) VALUES
(3, '0999999999', 'Hà Nội', 451500, '2023-07-01 17:19:51.497488', 'khh', 3, ''),
(4, '0999999999', 'Hà Nội', 241500, '2023-07-01 17:29:05.790087', 'khh', 3, ''),
(5, '0999999999', 'Hà Nội 2', 714000, '2023-09-07 23:02:35.291422', 'khh', 3, '2');

-- --------------------------------------------------------

--
-- Table structure for table `product_chuyenmuc`
--

CREATE TABLE `product_chuyenmuc` (
  `id` bigint(20) NOT NULL,
  `TenChuyenMuc` varchar(255) NOT NULL,
  `DuongDan` varchar(50) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `HinhAnh` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_chuyenmuc`
--

INSERT INTO `product_chuyenmuc` (`id`, `TenChuyenMuc`, `DuongDan`, `created_at`, `updated_at`, `HinhAnh`) VALUES
(1, 'HYBE CO LTD', 'hybe-co-ltd', '2023-06-14 08:54:04.537444', '2023-06-15 13:15:45.077204', 'uploads/20221227_YxO2t4M3v5ZY9o37Pdbivqpt_WNMqVHN.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_mausac`
--

CREATE TABLE `product_mausac` (
  `id` bigint(20) NOT NULL,
  `TenMauSac` varchar(255) NOT NULL,
  `MaMauSac` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_mausac`
--

INSERT INTO `product_mausac` (`id`, `TenMauSac`, `MaMauSac`, `created_at`, `updated_at`) VALUES
(1, 'Theme', '#837678', '2023-06-14 08:47:25.636460', '2023-06-14 08:47:25.636460'),
(2, 'Green', '#9ac45c', '2023-06-14 08:47:45.024186', '2023-07-02 05:02:29.399270'),
(3, 'Blue', '#6d5cc4', '2023-06-14 08:48:00.343719', '2023-07-02 05:02:22.591303'),
(4, 'White', '#000000', '2023-06-14 08:48:13.511337', '2023-07-02 05:02:17.776259'),
(5, 'Red', '#ff0000', '2023-06-14 08:48:34.119983', '2023-07-02 05:02:13.607152'),
(6, 'Yellow', '#ffff00', '2023-06-14 08:48:49.666528', '2023-07-02 05:02:10.392499');

-- --------------------------------------------------------

--
-- Table structure for table `product_sanpham`
--

CREATE TABLE `product_sanpham` (
  `id` bigint(20) NOT NULL,
  `TenSanPham` varchar(255) NOT NULL,
  `GiaKhuyenMai` int(11) NOT NULL,
  `GiaBan` int(11) NOT NULL,
  `MoTaNgan` longtext NOT NULL,
  `MoTaDai` longtext NOT NULL,
  `The` varchar(255) NOT NULL,
  `AnhChinh` varchar(100) DEFAULT NULL,
  `AnhPhu1` varchar(100) DEFAULT NULL,
  `AnhPhu2` varchar(100) DEFAULT NULL,
  `AnhPhu3` varchar(100) DEFAULT NULL,
  `DuongDan` varchar(50) DEFAULT NULL,
  `TrangThai` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `ChuyenMuc_id` bigint(20) NOT NULL,
  `PhanTramGiam` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_sanpham`
--

INSERT INTO `product_sanpham` (`id`, `TenSanPham`, `GiaKhuyenMai`, `GiaBan`, `MoTaNgan`, `MoTaDai`, `The`, `AnhChinh`, `AnhPhu1`, `AnhPhu2`, `AnhPhu3`, `DuongDan`, `TrangThai`, `created_at`, `updated_at`, `ChuyenMuc_id`, `PhanTramGiam`) VALUES
(2, 'ALBUM ENHYPEN - DARK BLOOD ydsgdfs', 400000, 250000, '- CD-R : W120*H120 (mm)\r\n- PHOTOBOOK : 1ea by version / W175*H245 (mm) / 92p\r\n- PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)', '- CD-R : W120*H120 (mm)\r\n- PHOTOBOOK : 1ea by version / W175*H245 (mm) / 92p\r\n- PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)\r\n- MESSAGE PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)\r\n- STICKER : 1ea / W100*H148 (mm)\r\n- POSTCARD : Random 1 out of 7 by version / W170*H120 (mm)\r\n- BOOK MARK : 1ea by version / W45*H120 (mm)\r\n- FOLDED POSTER : 1ea by version / W250*H360 (mm)', 'album, dark', 'uploads/20230527_FrX0KYrsJr_rO5JS30.jpeg', 'uploads/20230527_FrX0KYrsJr_rgbGI4F.jpeg', 'uploads/20230527_FrX0KYrsJr_gEJXbcz.jpeg', 'uploads/20230527_FrX0KYrsJr_W2TbDNs.jpeg', 'album-enhypen-dark-blood-ydsgdfs', 1, '2023-06-14 15:34:18.602378', '2023-06-14 15:48:15.597036', 1, 37),
(3, 'ALBUM ENHYPEN - DARK BLOOD q sdfsd', 400000, 250000, '- CD-R : W120*H120 (mm)\r\n- PHOTOBOOK : 1ea by version / W175*H245 (mm) / 92p\r\n- PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)', '- CD-R : W120*H120 (mm)\r\n- PHOTOBOOK : 1ea by version / W175*H245 (mm) / 92p\r\n- PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)\r\n- MESSAGE PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)\r\n- STICKER : 1ea / W100*H148 (mm)\r\n- POSTCARD : Random 1 out of 7 by version / W170*H120 (mm)\r\n- BOOK MARK : 1ea by version / W45*H120 (mm)\r\n- FOLDED POSTER : 1ea by version / W250*H360 (mm)', 'album-enhypen-dark-blood', 'uploads/20230527_FrX0KYrsJr_KkPFrEO.jpeg', 'uploads/20230527_FrX0KYrsJr_WQ2H4S0.jpeg', 'uploads/20230527_FrX0KYrsJr_sHpuNZh.jpeg', 'uploads/20230527_FrX0KYrsJr_0lvsVmn.jpeg', 'album-enhypen-dark-blood-q-sdfsd', 1, '2023-06-14 15:35:05.961654', '2023-06-14 15:48:11.882071', 1, 37),
(4, 'ALBUM ENHYPEN - DARK BLOOD ghfkfhgj', 400000, 200000, '- CD-R : W120*H120 (mm)\r\n- PHOTOBOOK : 1ea by version / W175*H245 (mm) / 92p\r\n- PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)', '- CD-R : W120*H120 (mm)\r\n- PHOTOBOOK : 1ea by version / W175*H245 (mm) / 92p\r\n- PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)\r\n- MESSAGE PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)\r\n- STICKER : 1ea / W100*H148 (mm)\r\n- POSTCARD : Random 1 out of 7 by version / W170*H120 (mm)\r\n- BOOK MARK : 1ea by version / W45*H120 (mm)\r\n- FOLDED POSTER : 1ea by version / W250*H360 (mm)', 'album, dark', 'uploads/20230527_FrX0KYrsJr_VYCIcej.jpeg', 'uploads/20230527_FrX0KYrsJr_wCg1jaI.jpeg', 'uploads/20230527_FrX0KYrsJr_Q3zZBSC.jpeg', 'uploads/20230527_FrX0KYrsJr_WeA4ewL.jpeg', 'album-enhypen-dark-blood-ghfkfhgj', 1, '2023-06-14 15:35:45.546392', '2023-06-14 15:48:06.605656', 1, 50),
(5, 'ALBUM ENHYPEN - DARK BLOOD fghfdg', 400000, 250000, '- CD-R : W120*H120 (mm)\r\n- PHOTOBOOK : 1ea by version / W175*H245 (mm) / 92p\r\n- PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)', '- CD-R : W120*H120 (mm)\r\n- PHOTOBOOK : 1ea by version / W175*H245 (mm) / 92p\r\n- PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)\r\n- MESSAGE PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)\r\n- STICKER : 1ea / W100*H148 (mm)\r\n- POSTCARD : Random 1 out of 7 by version / W170*H120 (mm)\r\n- BOOK MARK : 1ea by version / W45*H120 (mm)\r\n- FOLDED POSTER : 1ea by version / W250*H360 (mm)', 'album, dark', 'uploads/20230527_FrX0KYrsJr_Jond4Qn.jpeg', 'uploads/20230527_FrX0KYrsJr_qLZmYzM.jpeg', 'uploads/20230527_FrX0KYrsJr_aYU5qv4.jpeg', 'uploads/20230527_FrX0KYrsJr_5EO50uI.jpeg', 'album-enhypen-dark-blood-fghfdg', 1, '2023-06-14 15:36:20.081250', '2023-06-14 15:48:01.092661', 1, 37),
(7, 'ALBUM ENHYPEN - DARK BLOOD tyiyuti', 400000, 250000, '- CD-R : W120*H120 (mm)\r\n- PHOTOBOOK : 1ea by version / W175*H245 (mm) / 92p\r\n- PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)', '- CD-R : W120*H120 (mm)\r\n- PHOTOBOOK : 1ea by version / W175*H245 (mm) / 92p\r\n- PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)\r\n- MESSAGE PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)\r\n- STICKER : 1ea / W100*H148 (mm)\r\n- POSTCARD : Random 1 out of 7 by version / W170*H120 (mm)\r\n- BOOK MARK : 1ea by version / W45*H120 (mm)\r\n- FOLDED POSTER : 1ea by version / W250*H360 (mm)', 'album, dark', 'uploads/20230527_FrX0KYrsJr_rpR9Bei.jpeg', 'uploads/20230527_FrX0KYrsJr_dG21opI.jpeg', 'uploads/20230527_FrX0KYrsJr_tunliNm.jpeg', 'uploads/20230527_FrX0KYrsJr_cDF9B2H.jpeg', 'album-enhypen-dark-blood-tyiyuti', 1, '2023-06-14 15:38:35.890326', '2023-06-14 15:47:55.795902', 1, 37),
(8, 'ALBUM ENHYPEN - DARK BLOOD tretre', 400000, 250000, '- CD-R : W120*H120 (mm)\r\n- PHOTOBOOK : 1ea by version / W175*H245 (mm) / 92p\r\n- PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)', '- CD-R : W120*H120 (mm)\r\n- PHOTOBOOK : 1ea by version / W175*H245 (mm) / 92p\r\n- PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)\r\n- MESSAGE PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)\r\n- STICKER : 1ea / W100*H148 (mm)\r\n- POSTCARD : Random 1 out of 7 by version / W170*H120 (mm)\r\n- BOOK MARK : 1ea by version / W45*H120 (mm)\r\n- FOLDED POSTER : 1ea by version / W250*H360 (mm)', 'album, dark', 'uploads/20230527_FrX0KYrsJr_bG3NF4c.jpeg', 'uploads/20230527_FrX0KYrsJr_lcaD9FL.jpeg', 'uploads/20230527_FrX0KYrsJr_9nlInxY.jpeg', 'uploads/20230527_FrX0KYrsJr_4K1BZiQ.jpeg', 'album-enhypen-dark-blood-tretre', 1, '2023-06-14 15:40:34.079598', '2023-06-14 15:47:51.405486', 1, 37),
(9, 'ALBUM ENHYPEN - DARK BLOOD rqewrqw', 400000, 250000, '- CD-R : W120*H120 (mm)\r\n- PHOTOBOOK : 1ea by version / W175*H245 (mm) / 92p\r\n- PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)', '- CD-R : W120*H120 (mm)\r\n- PHOTOBOOK : 1ea by version / W175*H245 (mm) / 92p\r\n- PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)\r\n- MESSAGE PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)\r\n- STICKER : 1ea / W100*H148 (mm)\r\n- POSTCARD : Random 1 out of 7 by version / W170*H120 (mm)\r\n- BOOK MARK : 1ea by version / W45*H120 (mm)\r\n- FOLDED POSTER : 1ea by version / W250*H360 (mm)', 'album, dark', 'uploads/20230527_FrX0KYrsJr_lph2cuj.jpeg', 'uploads/20230527_FrX0KYrsJr_rTmjvb4.jpeg', 'uploads/20230527_FrX0KYrsJr_GbsmaTk.jpeg', 'uploads/20230527_FrX0KYrsJr_lf7fba1.jpeg', 'album-enhypen-dark-blood-rqewrqw', 1, '2023-06-14 15:41:12.443780', '2023-06-15 08:55:44.661070', 1, 37),
(10, 'ALBUM ENHYPEN - DARK BLOOD ầds', 400000, 250000, '- CD-R : W120*H120 (mm)\r\n- PHOTOBOOK : 1ea by version / W175*H245 (mm) / 92p\r\n- PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)', '- CD-R : W120*H120 (mm)\r\n- PHOTOBOOK : 1ea by version / W175*H245 (mm) / 92p\r\n- PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)\r\n- MESSAGE PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)\r\n- STICKER : 1ea / W100*H148 (mm)\r\n- POSTCARD : Random 1 out of 7 by version / W170*H120 (mm)\r\n- BOOK MARK : 1ea by version / W45*H120 (mm)\r\n- FOLDED POSTER : 1ea by version / W250*H360 (mm)', 'album, dark', 'uploads/20230527_FrX0KYrsJr_WkY7LhD.jpeg', 'uploads/20230527_FrX0KYrsJr_KrUl3eG.jpeg', 'uploads/20230527_FrX0KYrsJr_dWiCBtb.jpeg', 'uploads/20230527_FrX0KYrsJr_4Oxolf5.jpeg', 'album-enhypen-dark-blood-ads', 1, '2023-06-14 15:41:50.200879', '2023-06-14 15:47:40.879676', 1, 37),
(11, 'ALBUM ENHYPEN - DARK BLOOD ẺTWERTDF', 400000, 200000, '- CD-R : W120*H120 (mm)\r\n- PHOTOBOOK : 1ea by version / W175*H245 (mm) / 92p\r\n- PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)', '- CD-R : W120*H120 (mm)\r\n- PHOTOBOOK : 1ea by version / W175*H245 (mm) / 92p\r\n- PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)\r\n- MESSAGE PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)\r\n- STICKER : 1ea / W100*H148 (mm)\r\n- POSTCARD : Random 1 out of 7 by version / W170*H120 (mm)\r\n- BOOK MARK : 1ea by version / W45*H120 (mm)\r\n- FOLDED POSTER : 1ea by version / W250*H360 (mm)', 'album, dark', 'uploads/20230527_FrX0KYrsJr_ersublv.jpeg', 'uploads/20230527_FrX0KYrsJr_DtUCvyL.jpeg', 'uploads/20230527_FrX0KYrsJr_j2G2neA.jpeg', 'uploads/20230527_FrX0KYrsJr_UgsLkEr.jpeg', 'album-enhypen-dark-blood-etwertdf', 1, '2023-06-14 15:50:00.891538', '2023-06-15 08:52:51.860494', 1, 50),
(12, 'ALBUM ENHYPEN - DARK BLOOD TRET', 400000, 150000, '- CD-R : W120*H120 (mm)\r\n- PHOTOBOOK : 1ea by version / W175*H245 (mm) / 92p\r\n- PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)', '- CD-R : W120*H120 (mm)\r\n- PHOTOBOOK : 1ea by version / W175*H245 (mm) / 92p\r\n- PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)\r\n- MESSAGE PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)\r\n- STICKER : 1ea / W100*H148 (mm)\r\n- POSTCARD : Random 1 out of 7 by version / W170*H120 (mm)\r\n- BOOK MARK : 1ea by version / W45*H120 (mm)\r\n- FOLDED POSTER : 1ea by version / W250*H360 (mm)', 'album, dark', 'uploads/20230527_FrX0KYrsJr_71HYcEi.jpeg', 'uploads/20230527_FrX0KYrsJr_Cc6t95k.jpeg', 'uploads/20230527_FrX0KYrsJr_BjJqphK.jpeg', 'uploads/20230527_FrX0KYrsJr_6TdPQxt.jpeg', 'album-enhypen-dark-blood-tret', 1, '2023-06-15 10:37:39.878342', '2023-06-15 10:37:39.878342', 1, 62),
(13, 'ALBUM ENHYPEN - DARK BLOOD KHJKJG', 500000, 200000, '- CD-R : W120*H120 (mm)\r\n- PHOTOBOOK : 1ea by version / W175*H245 (mm) / 92p\r\n- PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)', '- CD-R : W120*H120 (mm)\r\n- PHOTOBOOK : 1ea by version / W175*H245 (mm) / 92p\r\n- PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)\r\n- MESSAGE PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)\r\n- STICKER : 1ea / W100*H148 (mm)\r\n- POSTCARD : Random 1 out of 7 by version / W170*H120 (mm)\r\n- BOOK MARK : 1ea by version / W45*H120 (mm)\r\n- FOLDED POSTER : 1ea by version / W250*H360 (mm)', 'album, dark', 'uploads/20230527_FrX0KYrsJr_SvM350H.jpeg', 'uploads/20230527_FrX0KYrsJr_o5mmGmq.jpeg', 'uploads/20230527_FrX0KYrsJr_IjiQg8L.jpeg', 'uploads/20230527_FrX0KYrsJr_ne3u8Of.jpeg', 'album-enhypen-dark-blood-khjkjg', 1, '2023-06-15 10:39:01.668188', '2023-06-15 10:39:01.668188', 1, 60),
(14, 'ALBUM ENHYPEN - DARK BLOOD IUDFGOI', 500000, 200000, '- CD-R : W120*H120 (mm)\r\n- PHOTOBOOK : 1ea by version / W175*H245 (mm) / 92p\r\n- PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)', '- CD-R : W120*H120 (mm)\r\n- PHOTOBOOK : 1ea by version / W175*H245 (mm) / 92p\r\n- PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)\r\n- MESSAGE PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)\r\n- STICKER : 1ea / W100*H148 (mm)\r\n- POSTCARD : Random 1 out of 7 by version / W170*H120 (mm)\r\n- BOOK MARK : 1ea by version / W45*H120 (mm)\r\n- FOLDED POSTER : 1ea by version / W250*H360 (mm)', 'album, dark', 'uploads/20230527_FrX0KYrsJr_ejyOt9B.jpeg', 'uploads/20230527_FrX0KYrsJr_vS1nz5P.jpeg', 'uploads/20230527_FrX0KYrsJr_w9GRwKo.jpeg', 'uploads/20230527_FrX0KYrsJr_PzpRoam.jpeg', 'album-enhypen-dark-blood-iudfgoi', 1, '2023-06-15 11:27:13.681733', '2023-06-15 11:27:13.681733', 1, 60),
(15, 'ALBUM ENHYPEN - DARK BLOOD TYUI', 400000, 200000, '- CD-R : W120*H120 (mm)\r\n- PHOTOBOOK : 1ea by version / W175*H245 (mm) / 92p\r\n- PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)', '<p style=\"text-align:justify\">- CD-R : W120*H120 (mm) - PHOTOBOOK : 1ea by version / W175*H245 (mm) / 92p</p>\r\n\r\n<p style=\"text-align:justify\">- PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)</p>\r\n\r\n<p style=\"text-align:justify\">- MESSAGE PHOTO CARD : Random 1 out of 7 by version / W54*H86 (mm)</p>\r\n\r\n<p style=\"text-align:justify\">- STICKER : 1ea / W100*H148 (mm)</p>\r\n\r\n<p style=\"text-align:justify\">- POSTCARD : Random 1 out of 7 by version / W170*H120 (mm) - BOOK MARK : 1ea by version / W45*H120 (mm)</p>\r\n\r\n<p style=\"text-align:justify\">- FOLDED POSTER : 1ea by version / W250*H360 (mm)</p>\r\n\r\n<p>&nbsp;</p>', 'album, dark', 'uploads/20230527_FrX0KYrsJr_1iH2Gx8.jpeg', 'uploads/20230527_FrX0KYrsJr_1t4aJMK.jpeg', 'uploads/20230527_FrX0KYrsJr_RnjcSnw.jpeg', 'uploads/20230527_FrX0KYrsJr_Khx9hyA.jpeg', 'album-enhypen-dark-blood-tyui', 1, '2023-06-15 11:27:56.865586', '2023-07-02 05:11:56.034166', 1, 50);

-- --------------------------------------------------------

--
-- Table structure for table `product_sanpham_mausac`
--

CREATE TABLE `product_sanpham_mausac` (
  `id` bigint(20) NOT NULL,
  `sanpham_id` bigint(20) NOT NULL,
  `mausac_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_sanpham_mausac`
--

INSERT INTO `product_sanpham_mausac` (`id`, `sanpham_id`, `mausac_id`) VALUES
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(7, 3, 1),
(8, 3, 2),
(9, 3, 3),
(10, 4, 1),
(11, 4, 2),
(12, 4, 3),
(13, 5, 1),
(14, 5, 2),
(15, 5, 3),
(19, 7, 1),
(20, 7, 2),
(21, 7, 3),
(22, 8, 1),
(23, 8, 2),
(24, 8, 3),
(25, 9, 1),
(26, 9, 2),
(27, 9, 3),
(37, 9, 5),
(28, 10, 1),
(29, 10, 2),
(30, 10, 3),
(31, 10, 4),
(35, 11, 1),
(38, 12, 6),
(39, 13, 4),
(40, 14, 1),
(41, 14, 6),
(42, 15, 1),
(43, 15, 4);

-- --------------------------------------------------------

--
-- Table structure for table `website_bannerbottom`
--

CREATE TABLE `website_bannerbottom` (
  `id` bigint(20) NOT NULL,
  `HinhAnh` varchar(100) DEFAULT NULL,
  `HienThi` tinyint(1) NOT NULL,
  `ChuyenMuc_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `website_bannerbottom`
--

INSERT INTO `website_bannerbottom` (`id`, `HinhAnh`, `HienThi`, `ChuyenMuc_id`) VALUES
(1, 'uploads/20191203_kylhXlaQ6V3knhCOu9EcBVBm.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `website_bannermid`
--

CREATE TABLE `website_bannermid` (
  `id` bigint(20) NOT NULL,
  `HinhAnh` varchar(100) DEFAULT NULL,
  `HienThi` tinyint(1) NOT NULL,
  `ChuyenMuc_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `website_bannermid`
--

INSERT INTO `website_bannermid` (`id`, `HinhAnh`, `HienThi`, `ChuyenMuc_id`) VALUES
(1, 'uploads/20210111_tmoh2jXizIQu3sRxXNjglk4m.jpg', 1, 1),
(2, 'uploads/20210111_r5hR0glUdq1VwrZYUDZT3Gxc_bvMM5eB.jpg', 0, 1),
(3, 'uploads/20210111_UzAxOSPypjyZavZzTDTD85mp.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `website_bannertop`
--

CREATE TABLE `website_bannertop` (
  `id` bigint(20) NOT NULL,
  `HinhAnh` varchar(100) DEFAULT NULL,
  `HienThi` tinyint(1) NOT NULL,
  `ChuyenMuc_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `website_bannertop`
--

INSERT INTO `website_bannertop` (`id`, `HinhAnh`, `HienThi`, `ChuyenMuc_id`) VALUES
(1, 'uploads/20221227_d7o7AenpJiMGLWe67C7waeiH.jpg', 1, 1),
(2, 'uploads/20221227_JB581rxnCOvYmZMPj0PN4nFb.jpg', 1, 1),
(3, 'uploads/20221227_YxO2t4M3v5ZY9o37Pdbivqpt.jpg', 1, 1),
(4, 'uploads/20221228_BEHN7yg7fPoNhB94dvrCGMiH.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `website_loaithongtin`
--

CREATE TABLE `website_loaithongtin` (
  `id` bigint(20) NOT NULL,
  `TenLoai` varchar(255) NOT NULL,
  `MaLoai` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `website_loaithongtin`
--

INSERT INTO `website_loaithongtin` (`id`, `TenLoai`, `MaLoai`) VALUES
(1, 'Tiêu Đề Website', 'tieudeweb'),
(2, 'Số Điện Thoại', 'sodienthoai'),
(3, 'Địa Chỉ', 'diachi'),
(4, 'Email', 'email'),
(5, 'Giới Thiệu', 'gioithieu'),
(6, 'Favicon', 'favicon'),
(7, 'Logo', 'logo'),
(8, 'Phí Ship', 'phiship'),
(9, 'Phí VAT', 'phivat');

-- --------------------------------------------------------

--
-- Table structure for table `website_nhataitro`
--

CREATE TABLE `website_nhataitro` (
  `id` bigint(20) NOT NULL,
  `TenNhaTaiTro` varchar(255) NOT NULL,
  `HinhAnh` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `website_nhataitro`
--

INSERT INTO `website_nhataitro` (`id`, `TenNhaTaiTro`, `HinhAnh`) VALUES
(1, 'foloris', 'uploads/1.png'),
(5, 'nature', 'uploads/2.png'),
(6, 'ana', 'uploads/3.png'),
(7, 'ana jon', 'uploads/4.png'),
(8, 'cs', 'uploads/5.png'),
(9, 'flower', 'uploads/6.png');

-- --------------------------------------------------------

--
-- Table structure for table `website_slide`
--

CREATE TABLE `website_slide` (
  `id` bigint(20) NOT NULL,
  `TieuDe` varchar(255) NOT NULL,
  `MoTaNgan` varchar(255) NOT NULL,
  `MoTaDai` varchar(255) NOT NULL,
  `HinhAnh` varchar(100) DEFAULT NULL,
  `ChuyenMuc_id` bigint(20) NOT NULL,
  `HienThi` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `website_slide`
--

INSERT INTO `website_slide` (`id`, `TieuDe`, `MoTaNgan`, `MoTaDai`, `HinhAnh`, `ChuyenMuc_id`, `HienThi`) VALUES
(1, 'Fresh Flower', 'Natural & Beautiful Flower Here', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.', 'uploads/1.jpg', 1, 1),
(2, 'Fresh Flower', 'Natural & Beautiful Flower Here', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.', 'uploads/3.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `website_thongtin`
--

CREATE TABLE `website_thongtin` (
  `id` bigint(20) NOT NULL,
  `GiaTri` varchar(255) DEFAULT NULL,
  `HinhAnh` varchar(100) DEFAULT NULL,
  `LoaiThongTin_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `website_thongtin`
--

INSERT INTO `website_thongtin` (`id`, `GiaTri`, `HinhAnh`, `LoaiThongTin_id`) VALUES
(1, 'ShopKpop.com', '', 1),
(2, '0999.888.888', '', 2),
(3, '32, Ngõ 5, Đình Thôn, Mỹ Đình, Hà Nội', '', 3),
(4, 'lienhe@shopkpop.com', '', 4),
(5, 'ShopKpop.com - Chuyên cung cấp sản phẩm liên quan đến thần tượng Kpop Hàn Quốc tại Việt Nam', '', 5),
(6, NULL, 'uploads/20180321_m6MxRVaBcYhDLYywnjd4W8ci.webp', 6),
(8, NULL, 'uploads/logo_IUtvDYS.png', 7),
(10, '5', '', 9),
(11, '30000', '', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `cart_giohang`
--
ALTER TABLE `cart_giohang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_giohang_MauSac_id_0c91fda1_fk_product_mausac_id` (`MauSac_id`),
  ADD KEY `cart_giohang_SanPham_id_fce07c2b_fk_product_sanpham_id` (`SanPham_id`),
  ADD KEY `cart_giohang_KhachHang_id_cc1f0311` (`KhachHang_id`);

--
-- Indexes for table `contact_lienhe`
--
ALTER TABLE `contact_lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_khachhang`
--
ALTER TABLE `customer_khachhang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `User_id` (`User_id`),
  ADD KEY `customer_khachhang_DuongDan_69604dd5` (`DuongDan`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `news_tintuc`
--
ALTER TABLE `news_tintuc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_tintuc_DuongDan_91dc3f60` (`DuongDan`);

--
-- Indexes for table `order_chitietdonhang`
--
ALTER TABLE `order_chitietdonhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_chitietdonhang_DonHang_id_1115646e_fk_order_donhang_id` (`DonHang_id`),
  ADD KEY `order_chitietdonhang_SanPham_id_c606706e_fk_product_sanpham_id` (`SanPham_id`),
  ADD KEY `order_chitietdonhang_MauSac_id_cf199770_fk_product_mausac_id` (`MauSac_id`);

--
-- Indexes for table `order_donhang`
--
ALTER TABLE `order_donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_donhang_KhachHang_id_593be4ef_fk_customer_khachhang_id` (`KhachHang_id`);

--
-- Indexes for table `product_chuyenmuc`
--
ALTER TABLE `product_chuyenmuc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_chuyenmuc_DuongDan_e77170d5` (`DuongDan`);

--
-- Indexes for table `product_mausac`
--
ALTER TABLE `product_mausac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sanpham`
--
ALTER TABLE `product_sanpham`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_sanpham_TenSanPham_c5ee5702_uniq` (`TenSanPham`),
  ADD KEY `product_sanpham_ChuyenMuc_id_4f786436_fk_product_chuyenmuc_id` (`ChuyenMuc_id`),
  ADD KEY `product_sanpham_DuongDan_8974332b` (`DuongDan`);

--
-- Indexes for table `product_sanpham_mausac`
--
ALTER TABLE `product_sanpham_mausac`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_sanpham_MauSac_sanpham_id_mausac_id_58907eba_uniq` (`sanpham_id`,`mausac_id`),
  ADD KEY `product_sanpham_MauSac_mausac_id_d0c72e0e_fk_product_mausac_id` (`mausac_id`);

--
-- Indexes for table `website_bannerbottom`
--
ALTER TABLE `website_bannerbottom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `website_bannerbottom_ChuyenMuc_id_46c47830_fk_product_c` (`ChuyenMuc_id`);

--
-- Indexes for table `website_bannermid`
--
ALTER TABLE `website_bannermid`
  ADD PRIMARY KEY (`id`),
  ADD KEY `website_bannermid_ChuyenMuc_id_7759a49b_fk_product_chuyenmuc_id` (`ChuyenMuc_id`);

--
-- Indexes for table `website_bannertop`
--
ALTER TABLE `website_bannertop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `website_bannertop_ChuyenMuc_id_d2d3bac7_fk_product_chuyenmuc_id` (`ChuyenMuc_id`);

--
-- Indexes for table `website_loaithongtin`
--
ALTER TABLE `website_loaithongtin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `website_nhataitro`
--
ALTER TABLE `website_nhataitro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `website_slide`
--
ALTER TABLE `website_slide`
  ADD PRIMARY KEY (`id`),
  ADD KEY `website_slide_ChuyenMuc_id_43ea82c7_fk_product_chuyenmuc_id` (`ChuyenMuc_id`);

--
-- Indexes for table `website_thongtin`
--
ALTER TABLE `website_thongtin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `website_thongtin_LoaiThongTin_id_d8d175d7_uniq` (`LoaiThongTin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_giohang`
--
ALTER TABLE `cart_giohang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `contact_lienhe`
--
ALTER TABLE `contact_lienhe`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer_khachhang`
--
ALTER TABLE `customer_khachhang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `news_tintuc`
--
ALTER TABLE `news_tintuc`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_chitietdonhang`
--
ALTER TABLE `order_chitietdonhang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `order_donhang`
--
ALTER TABLE `order_donhang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_chuyenmuc`
--
ALTER TABLE `product_chuyenmuc`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_mausac`
--
ALTER TABLE `product_mausac`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_sanpham`
--
ALTER TABLE `product_sanpham`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_sanpham_mausac`
--
ALTER TABLE `product_sanpham_mausac`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `website_bannerbottom`
--
ALTER TABLE `website_bannerbottom`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `website_bannermid`
--
ALTER TABLE `website_bannermid`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `website_bannertop`
--
ALTER TABLE `website_bannertop`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `website_loaithongtin`
--
ALTER TABLE `website_loaithongtin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `website_nhataitro`
--
ALTER TABLE `website_nhataitro`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `website_slide`
--
ALTER TABLE `website_slide`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `website_thongtin`
--
ALTER TABLE `website_thongtin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `cart_giohang`
--
ALTER TABLE `cart_giohang`
  ADD CONSTRAINT `cart_giohang_KhachHang_id_cc1f0311_fk_customer_khachhang_id` FOREIGN KEY (`KhachHang_id`) REFERENCES `customer_khachhang` (`id`),
  ADD CONSTRAINT `cart_giohang_MauSac_id_0c91fda1_fk_product_mausac_id` FOREIGN KEY (`MauSac_id`) REFERENCES `product_mausac` (`id`),
  ADD CONSTRAINT `cart_giohang_SanPham_id_fce07c2b_fk_product_sanpham_id` FOREIGN KEY (`SanPham_id`) REFERENCES `product_sanpham` (`id`);

--
-- Constraints for table `customer_khachhang`
--
ALTER TABLE `customer_khachhang`
  ADD CONSTRAINT `customer_khachhang_User_id_7e78d39d_fk_auth_user_id` FOREIGN KEY (`User_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `order_chitietdonhang`
--
ALTER TABLE `order_chitietdonhang`
  ADD CONSTRAINT `order_chitietdonhang_DonHang_id_1115646e_fk_order_donhang_id` FOREIGN KEY (`DonHang_id`) REFERENCES `order_donhang` (`id`),
  ADD CONSTRAINT `order_chitietdonhang_MauSac_id_cf199770_fk_product_mausac_id` FOREIGN KEY (`MauSac_id`) REFERENCES `product_mausac` (`id`),
  ADD CONSTRAINT `order_chitietdonhang_SanPham_id_c606706e_fk_product_sanpham_id` FOREIGN KEY (`SanPham_id`) REFERENCES `product_sanpham` (`id`);

--
-- Constraints for table `order_donhang`
--
ALTER TABLE `order_donhang`
  ADD CONSTRAINT `order_donhang_KhachHang_id_593be4ef_fk_customer_khachhang_id` FOREIGN KEY (`KhachHang_id`) REFERENCES `customer_khachhang` (`id`);

--
-- Constraints for table `product_sanpham`
--
ALTER TABLE `product_sanpham`
  ADD CONSTRAINT `product_sanpham_ChuyenMuc_id_4f786436_fk_product_chuyenmuc_id` FOREIGN KEY (`ChuyenMuc_id`) REFERENCES `product_chuyenmuc` (`id`);

--
-- Constraints for table `product_sanpham_mausac`
--
ALTER TABLE `product_sanpham_mausac`
  ADD CONSTRAINT `product_sanpham_MauSac_mausac_id_d0c72e0e_fk_product_mausac_id` FOREIGN KEY (`mausac_id`) REFERENCES `product_mausac` (`id`),
  ADD CONSTRAINT `product_sanpham_MauSac_sanpham_id_23b0df3d_fk_product_sanpham_id` FOREIGN KEY (`sanpham_id`) REFERENCES `product_sanpham` (`id`);

--
-- Constraints for table `website_bannerbottom`
--
ALTER TABLE `website_bannerbottom`
  ADD CONSTRAINT `website_bannerbottom_ChuyenMuc_id_46c47830_fk_product_c` FOREIGN KEY (`ChuyenMuc_id`) REFERENCES `product_chuyenmuc` (`id`);

--
-- Constraints for table `website_bannermid`
--
ALTER TABLE `website_bannermid`
  ADD CONSTRAINT `website_bannermid_ChuyenMuc_id_7759a49b_fk_product_chuyenmuc_id` FOREIGN KEY (`ChuyenMuc_id`) REFERENCES `product_chuyenmuc` (`id`);

--
-- Constraints for table `website_bannertop`
--
ALTER TABLE `website_bannertop`
  ADD CONSTRAINT `website_bannertop_ChuyenMuc_id_d2d3bac7_fk_product_chuyenmuc_id` FOREIGN KEY (`ChuyenMuc_id`) REFERENCES `product_chuyenmuc` (`id`);

--
-- Constraints for table `website_slide`
--
ALTER TABLE `website_slide`
  ADD CONSTRAINT `website_slide_ChuyenMuc_id_43ea82c7_fk_product_chuyenmuc_id` FOREIGN KEY (`ChuyenMuc_id`) REFERENCES `product_chuyenmuc` (`id`);

--
-- Constraints for table `website_thongtin`
--
ALTER TABLE `website_thongtin`
  ADD CONSTRAINT `website_thongtin_LoaiThongTin_id_d8d175d7_fk_website_l` FOREIGN KEY (`LoaiThongTin_id`) REFERENCES `website_loaithongtin` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
