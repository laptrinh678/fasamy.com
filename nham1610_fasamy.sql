-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th1 13, 2019 lúc 07:29 PM
-- Phiên bản máy phục vụ: 5.6.41-cll-lve
-- Phiên bản PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nham1610_fasamy`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `block`
--

CREATE TABLE `block` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thongtin1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thongtin2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thongtin3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thongtin4` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `block`
--

INSERT INTO `block` (`id`, `img`, `thongtin1`, `thongtin2`, `thongtin3`, `thongtin4`) VALUES
(1, 'agVrI-aeVDStEx.jpg', 'd2', 'd2', 'd2', 'd2'),
(3, '0Zzdm-File-1506411085.jpg', 'f', 'f', 'f', 'f'),
(4, 'bwDyg-File-1505457734.jpg', 'l', 'l', 'l', 'l'),
(5, 'jEADX-File-1499481118.jpg', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `catepost`
--

CREATE TABLE `catepost` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat_slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat_icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat_gtngan` longtext COLLATE utf8_unicode_ci,
  `cat_gtchitiet` longtext COLLATE utf8_unicode_ci,
  `parent_id` int(11) DEFAULT NULL,
  `parent_slug` text COLLATE utf8_unicode_ci,
  `title` text COLLATE utf8_unicode_ci,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `catepost`
--

INSERT INTO `catepost` (`id`, `cat_name`, `cat_slug`, `cat_icon`, `cat_img`, `cat_gtngan`, `cat_gtchitiet`, `parent_id`, `parent_slug`, `title`, `keyword`, `created_at`, `updated_at`) VALUES
(28, 'Tin tức', 'tin-tuc', '', NULL, '', '', 0, '0', '', '', NULL, NULL),
(29, 'Tuyển dụng', 'tuyen-dung', '', NULL, '', '', 0, '0', '', '', NULL, NULL),
(30, 'Liên hệ', 'lien-he', '', NULL, '', '', 0, '0', '', '', NULL, NULL),
(31, 'Giới thiệu', 'gioi-thieu', '', NULL, '', '', 0, '0', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cateproduct`
--

CREATE TABLE `cateproduct` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat_slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat_icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat_gtngan` text COLLATE utf8_unicode_ci,
  `cat_gtchitiet` text COLLATE utf8_unicode_ci,
  `title` text COLLATE utf8_unicode_ci,
  `tukhoa` text COLLATE utf8_unicode_ci NOT NULL,
  `mota` text COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cateproduct`
--

INSERT INTO `cateproduct` (`id`, `cat_name`, `cat_slug`, `cat_icon`, `cat_img`, `cat_gtngan`, `cat_gtchitiet`, `title`, `tukhoa`, `mota`, `parent_id`, `created_at`, `updated_at`) VALUES
(71, 'TỦ QUẦN ÁO', 'tu-quan-ao', 'krG2R-tu-nhua-nguoi-lon.jpg', NULL, '', '', 'ÁO', '', '', 0, NULL, '2018-11-15 03:05:46'),
(72, 'tủ 5 cánh', 'tu-5-canh', 'iInZ8-37549574_521633951596914_3576187326260314112_n_521633944930248.jpg', NULL, '', '', 'Áo thu đông', 'Áo thu đông', '', 71, NULL, '2018-11-16 20:29:36'),
(73, 'tủ 4 cánh', 'tu-4-canh', 'm4MUD-38403281_508311359595840_2798324901633589248_n_508311349595841.jpg', NULL, '', '', '', '', '', 71, NULL, '2018-11-16 20:29:52'),
(74, 'tủ 4 cánh', 'tu-4-canh', 'ha79P-38404673_508311389595837_2227446855195688960_n_508311386262504.jpg', NULL, '', '', '', '', '', 71, NULL, '2018-11-16 20:30:08'),
(75, 'tủ 4 cánh', 'tu-4-canh', 'Yl4em-38426822_510578252702484_1293758223886581760_n_510578249369151.jpg', NULL, '', '', '', '', '', 71, NULL, '2018-11-16 20:30:28'),
(76, 'tủ 4 cánh', 'tu-4-canh', 'iF9Al-38458649_511285609298415_3016111032377540608_n_511285599298416.jpg', NULL, '', '', '', '', '', 71, NULL, '2018-11-16 20:30:42'),
(77, 'Tủ 6 cánh', 'tu-6-canh', 'IipjK-42491611_546494932444149_4877520437937963008_n_546494929110816.jpg', NULL, '', '', '', '', '', 71, NULL, '2018-11-16 20:31:48'),
(78, 'Tủ kết hợp', 'tu-ket-hop', 'ZPhKi-44751435_559693294457646_6235604803628564480_n_559693291124313.jpg', NULL, '', '', '', '', '', 71, NULL, '2018-11-16 20:32:33'),
(79, 'QUẦN', 'quan', NULL, NULL, '', '', '', '', '', 0, NULL, '2018-09-24 03:50:23'),
(80, 'Quần Âu', 'quan-au', '7z5HZ-6ts18a003-sr074-33.jpg', NULL, '', '', '', '', '', 79, NULL, '2018-09-24 03:50:29'),
(81, 'Quần Jeans', 'quan-jeans', 'a6Z5U-4bbb708843ff44c77a757acd45d8b1b7.jpg', NULL, '', '', '', '', '', 79, NULL, '2018-09-29 20:40:19'),
(82, 'Quần Kaki', 'quan-kaki', 'UnECx-e3541fd410e22e041e2bb75b5bfafe14.jpg', NULL, '', '', '', '', '', 79, NULL, '2018-09-29 20:43:23'),
(83, 'Quần Short thô', 'quan-short-tho', 'w3n8m-bi-quyet-mac-ao-vest-tre-trung-cho-nang-cong-so-1.jpg', NULL, '', '', '', '', '', 79, NULL, '2018-09-29 20:42:06'),
(84, 'Áo thun nữ', 'ao-thun-nu', 'ZqUHP-143505-ao-thun-nu-stay-de-thuong.jpg', NULL, '', '', '', '', '', 71, NULL, '2018-09-29 20:42:21'),
(85, 'Áo len', 'ao-len', '6lh6j-hqs-ao-len-theu-long-vu-6-min-441x600.jpg', NULL, '', '', '', '', '', 71, NULL, '2018-09-29 20:39:07'),
(86, 'Áo phao nữ ', 'ao-phao-nu', 'kjfqo-aeVDStEx.jpg', NULL, '', '', '', '', '', 71, NULL, '2018-09-29 20:39:17'),
(87, 'Quần bò ', '0', 'NzMHa-cm_b49263.jpg', NULL, '', '', '', '', '', 79, NULL, NULL),
(88, 'Quần tất nữ', 'quan-tat-nu', 'Zm0Kb-Qun-tt-muji-Nht-Bn-Siou-bn-siou-dai-chng-xuc-51.jpg', NULL, '', '', '', '', '', 79, NULL, '2018-09-29 20:39:56'),
(89, 'VÁY NỮ', 'vay-nu', NULL, NULL, '', '', '', '', '', 0, NULL, '2018-09-24 08:02:28'),
(90, 'Váy đầm công sở', 'vay-dam-cong-so', 'xtNR3-4EMRKFYw.jpg', NULL, '', '', '', '', '', 89, NULL, '2018-09-29 20:40:51'),
(91, 'Váy đầm dự tiệc', 'vay-dam-du-tiec', 'cbKHA-ojR8RNeq.jpg', NULL, '', '', '', '', '', 89, NULL, '2018-09-29 20:41:07'),
(92, 'Váy Jeans nữ', 'vay-jeans-nu', 'K3HCT-TNTpHS5d.jpg', NULL, '', '', '', '', '', 89, NULL, '2018-09-29 20:40:29'),
(93, 'Bộ đồ nữ', 'bo-do-nu', 'ypml1-bo_short_mac_nha_phoi_ren_xe_ta_ca_tinh_b274_4ba5.jpg', NULL, '', '', '', '', '', 0, NULL, '2018-09-27 19:26:16'),
(94, 'Bộ đồ thể thao', 'bo-do-the-thao', 'RTRmI-bo_do_tap_gym_bao_an_xinh_xan_c857.jpg', NULL, '', '', '', '', '', 93, NULL, '2018-09-29 20:34:24'),
(95, 'Bộ đồ ngủ', 'bo-do-ngu', 'koGRp-bo_short_phoi_ren_nu_tinh_c4f8.jpg', NULL, '', '', '', '', '', 93, NULL, '2018-09-29 20:41:28'),
(96, 'Bộ đồ mặc ở nhà', 'bo-do-mac-o-nha', 'd36KA-bo_do_lung_thun_que_lam_456007_7f12.jpg', NULL, '', '', '', '', '', 93, NULL, '2018-09-30 01:10:09'),
(97, 'ĐỒ BƠI - ĐỒ TẮM NỮ', 'do-boi-do-tam-nu', NULL, NULL, '<p><strong>Đồ bơi đồ tắm nữ&nbsp;</strong>l&agrave; m&oacute;n phụ kiện v&ocirc; c&ugrave;ng cần thiết đối với ph&aacute;i nữ mỗi khi đi biển. Tắm biển, tập bơi hay chơi c&aacute;c m&ocirc;n thể thao dưới nước đều cần một bộ trang phục ri&ecirc;ng biệt để mặc chứ kh&ocirc;ng thể sử dụng trang phục thường ng&agrave;y. Ch&uacute;ng sẽ rất bất tiện khi xuống nước v&agrave; cản trở những hoạt động cũng như di chuyển của bạn dưới nước. V&igrave; thế nếu thường xuy&ecirc;n đi biển bạn n&ecirc;n sắm cho m&igrave;nh một&nbsp;<strong>bộ đồ bơi nữ đẹp</strong>&nbsp;theo &yacute; th&iacute;ch của m&igrave;nh. Kh&ocirc;ng phải bộ đồ bơi n&agrave;o cũng sexy v&agrave; hở hang như&nbsp;<strong>bikini nữ một&nbsp;</strong></p>\r\n', '', '', '', '', 0, NULL, '2018-09-30 01:10:45'),
(98, 'Đồ bơi', 'do-boi', '0Urpy-bikini_2_manh_tho_cam_xinh_xan_coral_bs017_a82c.jpg', NULL, '', '', '', '', '', 97, NULL, '2018-09-30 01:10:56'),
(99, 'Đồ tắm nữ', 'do-tam-nu', 'YkfwT-swimsuit_strings_cross_back_can_de_blanc_h17f8009_4ecc.jpg', NULL, '', '', '', '', '', 97, NULL, '2018-09-30 02:10:30'),
(100, 'Đầm ngủ', 'dam-ngu', 'HTR9l-dam_ngu_hisexy_nguc_ren_t200_2c88.jpg', NULL, '', '', '', '', '', 89, NULL, '2018-09-29 20:43:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment_post`
--

CREATE TABLE `comment_post` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `post_slug` text COLLATE utf8_unicode_ci,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment_post`
--

INSERT INTO `comment_post` (`id`, `post_id`, `post_slug`, `name`, `email`, `comment`, `created_at`, `updated_at`) VALUES
(1, 0, 'ho-so-nang-luc', NULL, 'quoclapvanvan@gmail.com', 'bài biết hay', '2018-01-23 15:56:59', '2018-01-23 15:56:59'),
(2, NULL, 'ho-so-nang-luc', 'lap2', 'quoclapvanvan@gmail.com', 'bài viết tốt', '2018-01-23 15:59:23', '2018-01-23 15:59:23'),
(3, NULL, 'quang-cao-google', 'vu quoc lap', 'lap123@gmail.com', 'hay', '2018-01-23 16:14:27', '2018-01-23 16:14:27'),
(4, NULL, 'quang-cao-google', 'trinh binh', 'binh@gmail.com', 'duoc day', '2018-01-23 16:15:06', '2018-01-23 16:15:06'),
(5, NULL, 'quang-cao-google', 'dinh la thang', 'dinhlathang@gmail.com', 'ok', '2018-01-23 16:15:42', '2018-01-23 16:15:42'),
(6, NULL, 'quang-cao-google', 'trong', 'quoctrong@gmail.com', 'ngon', '2018-01-23 16:16:08', '2018-01-23 16:16:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment_pro`
--

CREATE TABLE `comment_pro` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `created_at` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment_pro`
--

INSERT INTO `comment_pro` (`id`, `product_id`, `name`, `email`, `comment`, `created_at`, `updated_at`) VALUES
(1, 31, 'tran ', 'quoclap@gmail.com', 'san pham rat tuyet', '', ''),
(2, 31, '', 'laptrinh678@gmail.com', 'san pham ok', '', ''),
(3, 29, 'q', 'laptrinh678@gmail.com', 'dddddddddddd', '', ''),
(4, 29, 'f', 'laptrinh678@gmail.com', 'sssssssssssss', '', ''),
(5, 29, 'hh', 'laptrinh678@gmail.com', 'ggggggggg', '2017-12-19 07:53:38', '2017-12-19 07:53:38'),
(6, 36, 'quoclap', 'laptrinh678@gmail.com', 'san pham rat tuyet voi. ban cho minh 1 cai ', '2017-12-19 08:20:57', '2017-12-19 08:20:57'),
(7, 36, 'f', 'quoclap@gmail.com', 'san pham qua dep, qua tuyet voi', '2017-12-19 08:21:32', '2017-12-19 08:21:32'),
(8, 35, 'quoclap', 'laptrinh678@gmail.com', 'san pham rat tuyet voi', '2017-12-25 06:07:57', '2017-12-25 06:07:57'),
(9, 50, 'q', 'lap123@gmail.com', 'san pham dep qua', '2017-12-26 13:10:42', '2017-12-26 13:10:42'),
(10, 50, 'a', 'lap123@gmail.com', 'qqqq', '2017-12-26 14:12:28', '2017-12-26 14:12:28'),
(11, 50, 'v', 'lap123@gmail.com', 'aaaaaaaaaaaaaaaa', '2017-12-26 20:13:29', '2017-12-26 20:13:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `head_foot`
--

CREATE TABLE `head_foot` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slogan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dtban` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `didong` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hotline` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zalo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `head_foot`
--

INSERT INTO `head_foot` (`id`, `name`, `logo1`, `logo2`, `slogan`, `adress`, `dtban`, `didong`, `hotline`, `email`, `facebook`, `zalo`, `skype`, `youtube`) VALUES
(1, 'NỘI THẤT MAVINA', 'ITYrw-logo-fasamy-01.jpg', 'VNJbd-icontd.png', 'Công ty chuyên thi công lắp đặt nội thất trong nhà, căn hộ', 'Số 58 Ngõ 168 Kim Giang, Hoàng Mai, Hà Nội', '0326326268', '0971612114', '0971612114', 'vukhacanh17@gmail.com', 'vukhacanh17@gmail.com', '0971612114', '', 'youtobe.com.vn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `img_prodetail`
--

CREATE TABLE `img_prodetail` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` text COLLATE utf8_unicode_ci NOT NULL,
  `kichco` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pro_slug` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `img_prodetail`
--

INSERT INTO `img_prodetail` (`id`, `img`, `kichco`, `product_id`, `pro_slug`, `created_at`, `updated_at`) VALUES
(18, '[\"ao-kieu-tay-phoi-ren-hoa-a254-1m4G3-6969a1_simg_e8c166_729-729-5-13_cropf_simg_ab1f47_350x350_maxb.png\",\"ao-ren-thu-dong-nu-thoi-trang-cao-cap-mz272-1m4G3-MViuaA_simg_ab1f47_350x350_maxb.jpg\",\"bawEIhhk.jpg\",\"prAtvAi5.jpg\"]', NULL, '21', NULL, '2018-10-16 01:07:24', '2018-10-16 01:07:24'),
(19, '[\"0689df28d5519ec623071d4155969ed6.jpg\",\"chan-vay-but-chi-dai-6-200x288.jpg\",\"ao-so.jpg\",\"ao-vest-nnu-dep-9-200x288.jpg\"]', NULL, '22', NULL, '2018-10-16 01:12:24', '2018-10-16 01:12:24'),
(20, '[\"dpNxUEBA.jpg\",\"jdKrysbb.jpg\",\"SL4fTOKH.jpg\",\"SveLI3_simg_953ea4_903-903-36-62_cropf_simg_b5529c_250x250_maxb.jpg\"]', NULL, '23', NULL, '2018-10-16 01:16:04', '2018-10-16 01:16:04'),
(21, '[\"903775910_1805954816.400x400.jpg\",\"20150916100939_50569.jpg\",\"ao-len-canh-doi-1m4G3-vZfkzH_simg_b64200_691-691-0-0_cropf_simg_ab1f47_350x350_maxb.jpg\",\"HTB1xuYIQpXXXXa4XpXXq6xXFXXX8.jpg\"]', NULL, '24', NULL, '2018-10-16 01:18:01', '2018-10-16 01:18:01'),
(22, '[\"aeVDStEx.jpg\",\"az-large-6040988.jpg\",\"ao-khoac-dap-ren-nau-da-bo_2.jpg\",\"ao-so.jpg\"]', NULL, '25', NULL, '2018-10-16 01:27:12', '2018-10-16 01:27:12'),
(23, '[\"quan_jean_nu_imagine_u_phoi_rach_if0051_36fb.jpg\",\"quan_jeans_dai_nu_eco_jean_ca_tinh_018a_e5e9.jpg\",\"cm_b49263.jpg\",\"e3541fd410e22e041e2bb75b5bfafe14.jpg\"]', NULL, '26', NULL, '2018-10-16 01:30:08', '2018-10-16 01:30:08'),
(24, '[\"quan_short_jean_xan_gau_ca_tinh_3f14.jpg\",\"quan_short_nu_rach_ca_tinh_224b.jpg\",\"quan_short_nu_wash_rach_ca_tinh_3880.jpg\",\"Qun-tt-muji-Nht-Bn-Siou-bn-siou-dai-chng-xuc-51.jpg\"]', NULL, '28', NULL, '2018-10-16 01:30:50', '2018-10-16 01:30:50'),
(25, '[\"quan_short_jean_xan_gau_ca_tinh_3f14.jpg\",\"quan_short_nu_rach_ca_tinh_224b.jpg\",\"quan_short_nu_wash_rach_ca_tinh_3880.jpg\",\"bi-quyet-mac-ao-vest-tre-trung-cho-nang-cong-so-1.jpg\"]', NULL, '30', NULL, '2018-10-16 01:36:47', '2018-10-16 01:36:47'),
(26, '[\"n2.jpg\",\"n3.jpg\",\"n1.jpg\",\"boi1.png\"]', NULL, '31', NULL, '2018-10-16 01:37:57', '2018-10-16 01:37:57'),
(27, '[\"ao-vest-nnu-dep-9-200x288.jpg\",\"ao-khoac-dap-ren-nau-da-bo_2.jpg\",\"az-large-6040988.jpg\",\"hqs-ao-len-theu-long-vu-6-min-441x600.jpg\"]', NULL, '31', NULL, '2018-10-16 01:39:51', '2018-10-16 01:39:51'),
(28, '[\"e3541fd410e22e041e2bb75b5bfafe14.jpg\",\"6ts18a003-sr074-33.jpg\",\"bi-quyet-mac-ao-vest-tre-trung-cho-nang-cong-so-1.jpg\",\"cm_b49263.jpg\"]', NULL, '34', NULL, '2018-10-16 01:48:50', '2018-10-16 01:48:50'),
(29, '[\"bo_do_lung_nu_caro_tre_trung_d8ac.jpg\",\"bo_do_nu_dang_yeu_8961.jpg\",\"bo_do_tim_lung_the_thao_d20a.jpg\",\"do_bo_nu_phoi_mau_in_ngoi_sao_cb96.jpg\"]', NULL, '35', NULL, '2018-10-16 01:55:23', '2018-10-16 01:55:23'),
(30, '[\"n2.jpg\",\"f2.jpg\",\"0689df28d5519ec623071d4155969ed6.jpg\",\"n4.jpg\"]', NULL, '36', NULL, '2018-10-16 01:56:14', '2018-10-16 01:56:14'),
(31, '[\"903775910_1805954816.400x400.jpg\",\"20150916100939_50569.jpg\",\"ao-len-canh-doi-1m4G3-vZfkzH_simg_b64200_691-691-0-0_cropf_simg_ab1f47_350x350_maxb.jpg\",\"HTB1xuYIQpXXXXa4XpXXq6xXFXXX8.jpg\"]', NULL, '37', NULL, '2018-10-16 01:57:11', '2018-10-16 01:57:11'),
(32, '[\"1813663_L.png\",\"1430991104_bo-do-ngoi-sao-mau-tim (2).jpg\",\"1430991981_do-bo-ngoi-sao-xanh-den (2).jpg\",\"do_bo_nu_phoi_mau_in_ngoi_sao_cb96.jpg\"]', NULL, '38', NULL, '2018-10-16 02:01:34', '2018-10-16 02:01:34'),
(33, '[\"n4.jpg\",\"boi1.png\",\"n3.jpg\",\"boi2.jpg\"]', NULL, '40', NULL, '2018-10-16 02:04:04', '2018-10-16 02:04:04'),
(34, '[\"dam_maxi_no_vai_nu_tinh_d8ca.jpg\",\"dam_ngu_hisexy_nguc_ren_t200_2c88.jpg\",\"dam_maxi_du_tiec_vat_bau_nu_tinh_002b.jpg\",\"ojR8RNeq.jpg\"]', NULL, '42', NULL, '2018-10-16 02:08:18', '2018-10-16 02:08:18'),
(35, '[\"bo_short_mac_nha_phoi_ren_xe_ta_ca_tinh_b274_4ba5.jpg\",\"bikini_2_manh_tho_cam_xinh_xan_coral_bs017_a82c.jpg\",\"bo_do_tap_gym_bao_an_xinh_xan_c857.jpg\",\"4EMRKFYw.jpg\"]', NULL, '43', NULL, '2018-10-16 02:08:47', '2018-10-16 02:08:47'),
(36, '[\"e3541fd410e22e041e2bb75b5bfafe14.jpg\",\"k2.jpg\",\"k3.jpg\",\"k4.jpg\"]', NULL, '44', NULL, '2018-10-24 06:22:09', '2018-10-24 06:22:09'),
(37, '[\"t2.jpg\",\"t3.jpg\",\"t4.jpg\",\"t5.jpg\"]', NULL, '45', NULL, '2018-10-24 06:30:14', '2018-10-24 06:30:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dienthoai` int(255) DEFAULT NULL,
  `ngaysinh` int(255) DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachi` text COLLATE utf8_unicode_ci,
  `ghichu` longtext COLLATE utf8_unicode_ci,
  `loaikh` text COLLATE utf8_unicode_ci,
  `created_at` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`id`, `name`, `email`, `dienthoai`, `ngaysinh`, `facebook`, `diachi`, `ghichu`, `loaikh`, `created_at`, `updated_at`) VALUES
(18, NULL, 'quoclapvanvan@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-20 12:48:45', '2018-01-20 12:48:45'),
(19, NULL, 'quoclapvanvan@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-20 13:19:38', '2018-01-20 13:19:38'),
(20, NULL, 'lap123@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-20 13:20:00', '2018-01-20 13:20:00'),
(21, NULL, 'lap1234@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-20 13:20:49', '2018-01-20 13:20:49'),
(22, NULL, 'lap12345@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-20 13:22:03', '2018-01-20 13:22:03'),
(23, NULL, 'quoclapvanvan@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-20 13:26:22', '2018-01-20 13:26:22'),
(24, NULL, 'lap123@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-20 13:27:32', '2018-01-20 13:27:32'),
(25, NULL, 'lap123@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-20 13:32:22', '2018-01-20 13:32:22'),
(26, NULL, 'quannguyen@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-20 13:32:52', '2018-01-20 13:32:52'),
(27, 'lapbagia', 'quoclapvanvan@gmail.com', 986886725, 2018, 'quoclap', 'nam dinh', '									\r\n					da lay hang ngon lanh			', '1', '2018-01-20 13:35:29', '2018-02-20 02:32:38'),
(28, NULL, 'quoclapvanvan@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-20 13:36:57', '2018-01-20 13:36:57'),
(29, NULL, 'lap8@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-20 13:37:23', '2018-01-20 13:37:23'),
(30, NULL, 'quoclapvanvan@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-20 14:06:43', '2018-01-20 14:06:43'),
(31, NULL, 'quuoclap@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-20 14:24:17', '2018-01-20 14:24:17'),
(32, NULL, 'quoclapvanvan@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-20 14:24:31', '2018-01-20 14:24:31'),
(33, NULL, 'quoclapvanvan@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-20 16:22:58', '2018-01-20 16:22:58'),
(34, NULL, 'dantri@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-21 11:09:02', '2018-01-21 11:09:02'),
(36, 'lap', 'quoclap@gmail.com', 9, 2018, 'ff', 'nd', 'ol', '1', '2018-02-20 01:47:29', '2018-02-20 01:47:29'),
(37, NULL, 'quoclapvanvan', NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-27 09:42:04', '2018-03-27 09:42:04'),
(38, NULL, 'hanamninh85@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-27 09:44:51', '2018-03-27 09:44:51'),
(39, NULL, 'quoclapvanvan@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-14 03:09:22', '2018-04-14 03:09:22'),
(40, NULL, 'quoclapvanvan@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-14 06:02:35', '2018-04-14 06:02:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khogiaodien`
--

CREATE TABLE `khogiaodien` (
  `id` int(11) NOT NULL,
  `ten_gd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `danhmuc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8_unicode_ci,
  `img1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khogiaodien`
--

INSERT INTO `khogiaodien` (`id`, `ten_gd`, `danhmuc`, `link`, `img1`, `img2`) VALUES
(3, 'Website nhà hàng', '10', 'http://naiad.vn/demosafza/chi-tiet/nha-hang', 'DsVir-83ffc01266658acaa2f8d90f1774f9d5 (1).png', 'gQRuc-83ffc01266658acaa2f8d90f1774f9d5 (1).png'),
(4, 'Website kế toán', '10', 'http://naiad.vn/demosafza/chi-tiet/ke-toan', 'UjztK-ketoan.png', 'dpmOn-ketoan.png'),
(5, 'Website Spa', '10', 'http://naiad.vn/demosafza/chi-tiet/spa', 'Oa0DW-luxspa.png', 'udswo-luxspa.png'),
(6, 'Website nội thất', '10', 'http://naiad.vn/demosafza/chi-tiet/noi-that', '5t2jO-noithat.png', '0T3Ro-noithat.png'),
(7, 'Website Bất động sản', '10', 'http://naiad.vn/demosafza/chi-tiet/bat-dong-san', 'bnZsk-bds.png', 'gtAqn-bds.png'),
(8, 'Âm thanh', '10', 'http://naiad.vn/demosafza/chi-tiet/am-thanh', 'raTAk-amthanh.png', 'q81LU-amthanh.png'),
(9, 'Võ thuật', '10', 'http://naiad.vn/demosafza/chi-tiet/vo-thuat', 'CWQAm-vothuat.png', 'Q08BT-vothuat.png'),
(10, 'Doanh nghiệp', '10', 'http://naiad.vn/demosafza/chi-tiet/doanh-nghiep-1', 'lpF2b-etherbankingasia_com_.png', 'HO69S-etherbankingasia_com_.png'),
(11, 'Trường học', '10', '', 'RyA61-kinh nghiem-thiet-ke-website-truong-hoc.jpg', 'zYIpW-kinh nghiem-thiet-ke-website-truong-hoc.jpg'),
(12, 'Cơ quan nhà nước', '10', '', 'S5KJl-mau_web_nha_nuoc_congdoanninhbinhorgvnx680x680x4.png', 'Hmeb5-tải xuống.jpg'),
(13, 'Khách sạn', '10', '							\r\n						', 'Xgrk5-thiet-ke-website-khach-san.jpg', 'AWKzJ-4-xu-huong-noi-bat-trong-thiet-ke-website-du-lich-2017-3.jpg'),
(14, 'Website du lịch', '10', '', 'xTm1b-4-xu-huong-noi-bat-trong-thiet-ke-website-du-lich-2017-3.jpg', 'GHAO0-thiet-ke-website-vietravel.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
--

CREATE TABLE `lienhe` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_10_13_084534_create_cmsusers_table', 2),
(4, '2017_10_17_123224_create_cateProduct_table', 3),
(5, '2017_10_26_073414_create_product_table', 4),
(6, '2017_10_26_074712_create_product_image_detail_table', 5),
(7, '2017_11_02_071953_create_catepost_table', 6),
(8, '2017_11_04_155755_create_post_table', 7),
(9, '2017_11_05_125206_create_img_prodetail_table', 8),
(10, '2017_11_06_030705_create_head_foot_table', 9),
(11, '2017_11_09_021906_create_slider_table', 10),
(12, '2017_11_10_062959_create_quangcao_table', 11),
(13, '2017_11_12_015753_create_block_table', 12);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post`
--

CREATE TABLE `post` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_id` int(11) NOT NULL,
  `cat_slug` text COLLATE utf8_unicode_ci,
  `post_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `post_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `post_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `post_img2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_gtngan` text COLLATE utf8_unicode_ci NOT NULL,
  `post_gtchitiet` longtext COLLATE utf8_unicode_ci NOT NULL,
  `loaibaiviet` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tacgia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `online` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_des` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post`
--

INSERT INTO `post` (`id`, `cat_id`, `cat_slug`, `post_name`, `post_slug`, `post_img`, `post_img2`, `post_gtngan`, `post_gtchitiet`, `loaibaiviet`, `tacgia`, `date`, `online`, `meta_des`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(88, 28, 'tin-tuc', '10 cách chọn quần áo trước khi mua hàng để đảm bảo chất lượng', '10-cach-chon-quan-ao-truoc-khi-mua-hang-de-dam-bao-chat-luong', 'sa3Si-5-1504860033-width650height444.jpg', '', '<p>C&oacute; những thứ nh&igrave;n qua rất vừa mắt nhưng phải &quot;sờ tận tay&quot; mới c&oacute; thể tường tận được chất lượng của ch&uacute;ng.</p>\r\n', '<p>Khi đi mua một chiếc v&aacute;y, một chiếc sơ mi, t&uacute;i x&aacute;ch hay bất kỳ m&oacute;n đồ&nbsp;thời trang, phụ kiện n&agrave;o mới, ngo&agrave;i yếu tố kiểu d&aacute;ng th&igrave; chị em n&agrave;o cũng quan t&acirc;m đến chất lượng sản phẩm. C&oacute; những thứ nh&igrave;n qua rất vừa mắt nhưng phải &quot;sờ tận tay&quot; mới c&oacute; thể tường tận được chất lượng của ch&uacute;ng.</p>\r\n\r\n<p>Để kh&ocirc;ng mua phải những m&oacute;n đồ c&oacute; chất lượng k&eacute;m, chị em phụ nữ cần kiểm tra đủ 10 yếu tố dưới đ&acirc;y.</p>\r\n\r\n<p><strong>1. Kiểm tra chất lượng của vải cotton bằng c&aacute;ch vo tr&ograve;n</strong></p>\r\n\r\n<p>T&uacute;m một phần vải v&agrave; vo tr&ograve;n n&oacute; trong tay trong v&agrave;i gi&acirc;y. Nếu như sau khi bỏ ra, vải nhăn như giấy th&igrave; c&oacute; nghĩa l&agrave; sản phẩm n&agrave;y đ&atilde; được qua một qu&aacute; tr&igrave;nh xử l&yacute; đặc biệt để giữ phom d&aacute;ng. Những kiểu đồ như thế n&agrave;y rất bị gi&atilde;o, bị chảy ngay sau lần giặt đầu ti&ecirc;n.</p>\r\n\r\n<p><img alt=\"khi mua quan ao, hay nho phai so tan tay 10 chi tiet nay moi moc tui chi tien - 1\" src=\"https://cdn.eva.vn/upload/3-2017/images/2017-09-08/1-1504860033-width650height444.jpg\" style=\"height:342px; width:500px\" /></p>\r\n\r\n<p><strong>2. K&eacute;o gi&atilde;n đường may</strong></p>\r\n\r\n<p>Những m&oacute;n đồ c&oacute; chất lượng tốt sẽ c&oacute; đường may d&agrave;y dặn, chắc chắn. H&atilde;y thử k&eacute;o gi&atilde;n đường may sang hai b&ecirc;n để kiểm tra xem đường may c&oacute; bị thưa hay qu&aacute; hở hay kh&ocirc;ng.</p>\r\n\r\n<p><img alt=\"khi mua quan ao, hay nho phai so tan tay 10 chi tiet nay moi moc tui chi tien - 2\" src=\"https://cdn.eva.vn/upload/3-2017/images/2017-09-08/2-1504860033-width650height500.jpg\" style=\"height:385px; width:500px\" /></p>\r\n\r\n<p><strong>3. Tr&aacute;nh chọn đồ c&oacute; kh&oacute;a k&eacute;o bị hở</strong></p>\r\n\r\n<p>Khi mua quần &aacute;o hay phụ kiện c&oacute; kh&oacute;a k&eacute;o, bạn cần kiểm tra chất lượng của kh&oacute;a k&eacute;o. Những sản phẩm c&oacute; kh&oacute;a k&eacute;o bị hở, kh&ocirc;ng kh&iacute;t thường l&agrave; sản phẩm được may sơ s&agrave;i, c&oacute; chất lượng k&eacute;m.</p>\r\n\r\n<p><img alt=\"khi mua quan ao, hay nho phai so tan tay 10 chi tiet nay moi moc tui chi tien - 3\" src=\"https://cdn.eva.vn/upload/3-2017/images/2017-09-08/3-1504860033-width650height500.jpg\" /></p>\r\n\r\n<p><strong>4. Đường viền may phải đủ rộng</strong></p>\r\n\r\n<p>Quần v&agrave; v&aacute;y phải c&oacute; đường viền rộng &iacute;t nhất 4cm mới đảm bảo được sử chắc chắn. C&ograve;n với &aacute;o c&aacute;nh hay sơ mi th&igrave; phải c&oacute; đường viền rộng &iacute;t nhất 2cm. Nếu đường vi&ecirc;n may được kh&acirc;u qu&aacute; đơn giản hoặc qu&aacute; mỏng th&igrave; m&oacute;n đồ đ&oacute; rất dễ bị hỏng.</p>\r\n\r\n<p><img alt=\"khi mua quan ao, hay nho phai so tan tay 10 chi tiet nay moi moc tui chi tien - 4\" src=\"https://cdn.eva.vn/upload/3-2017/images/2017-09-08/4-1504860033-width650height500.jpg\" /></p>\r\n\r\n<p><strong>5. Kiểm tra chất lượng vải co gi&atilde;n bằng c&aacute;ch k&eacute;o gi&atilde;n vải</strong></p>\r\n\r\n<p>Một m&oacute;n đồ l&agrave;m từ chất liệu co gi&atilde;n tốt lu&ocirc;n giữ được phom d&aacute;ng ban đầu. Để kiểm tra độ co gi&atilde;n của m&oacute;n đồ như v&aacute;y hay &aacute;o, bạn h&atilde;y k&eacute;o gi&atilde;n vải v&agrave; sau đ&oacute; bu&ocirc;ng tay ra.</p>\r\n\r\n<p>Nếu như phom d&aacute;ng trở về h&igrave;nh th&aacute;i ban đầu th&igrave; đ&oacute; l&agrave; m&oacute;n đồ c&oacute; chất lượng vải tốt v&agrave; ngược lại nếu bị chảy gi&atilde;o th&igrave; đ&oacute; l&agrave; sản phẩm c&oacute; chất lượng k&eacute;m.</p>\r\n\r\n<p><img alt=\"khi mua quan ao, hay nho phai so tan tay 10 chi tiet nay moi moc tui chi tien - 5\" src=\"https://cdn.eva.vn/upload/3-2017/images/2017-09-08/5-1504860033-width650height444.jpg\" /></p>\r\n\r\n<p><strong>6. Kh&oacute;a k&eacute;o phải c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng độ d&agrave;i với đường may</strong></p>\r\n\r\n<p>Kh&oacute;a k&eacute;o tr&ecirc;n v&aacute;y,&nbsp;<a href=\"https://eva.vn/chan-vay-p614c36.html\">ch&acirc;n v&aacute;y</a>&nbsp;hay bất kỳ m&oacute;n đồ thời trang n&agrave;o kh&aacute;c n&ecirc;n c&ugrave;ng độ d&agrave;i đường xẻ v&agrave; c&ugrave;ng m&agrave;u với trang phục th&igrave; mới tạo được sự tinh tế, chất lượng tốt.</p>\r\n\r\n<p><img alt=\"khi mua quan ao, hay nho phai so tan tay 10 chi tiet nay moi moc tui chi tien - 6\" src=\"https://cdn.eva.vn/upload/3-2017/images/2017-09-08/6-1504860033-width650height582.jpg\" /></p>\r\n\r\n<p><strong>7. Ch&uacute; &yacute; tới nh&atilde;n m&aacute;c</strong></p>\r\n\r\n<p>Những chất liệu tự nhi&ecirc;n như cotton, lụa v&agrave; len thường rất bền v&agrave; chắc chắn hơn c&aacute;c chất liệu nh&acirc;n tạo, tổng hợp. T</p>\r\n\r\n<p>uy nhi&ecirc;n, sản phẩm l&agrave;m từ 100% cotton thường co lại rất nhanh sau khi giặt, đ&oacute; l&agrave; l&yacute; do tại sao bạn n&ecirc;n chọn quần &aacute;o c&oacute; th&ecirc;m 5-30% chất liệu nh&acirc;n tạo (v&iacute; dụ viscose, polyester, nylon,...) Những m&oacute;n đồ n&agrave;y sẽ kh&ocirc;ng bị gi&atilde;o v&agrave; c&oacute; tuổi thọ l&acirc;u hơn.</p>\r\n\r\n<p><img alt=\"khi mua quan ao, hay nho phai so tan tay 10 chi tiet nay moi moc tui chi tien - 7\" src=\"https://cdn.eva.vn/upload/3-2017/images/2017-09-08/7-1504860033-width650height500.jpg\" /></p>\r\n\r\n<p><strong>8. M&agrave;u chỉ v&agrave; m&agrave;u chất liệu phải tr&ugrave;ng nhau</strong></p>\r\n\r\n<p>H&atilde;y kiểm tra thật kỹ đường may. Đường chỉ may phải c&ugrave;ng m&agrave;u với m&agrave;u của chất liệu. Phải đảm bảo yếu tố n&agrave;y th&igrave; m&oacute;n đồ mới tr&ocirc;ng c&oacute; thẩm mỹ v&agrave; tinh tế. Những m&oacute;n đồ sử dụng chỉ may kh&aacute;c m&agrave;u thể hiện sự cẩu thả v&agrave; thiếu chỉn chu.</p>\r\n\r\n<p><img alt=\"khi mua quan ao, hay nho phai so tan tay 10 chi tiet nay moi moc tui chi tien - 8\" src=\"https://cdn.eva.vn/upload/3-2017/images/2017-09-08/8-1504860033-width650height650.jpg\" /></p>\r\n\r\n<p><strong>9. Kiểm tra khuy c&uacute;c</strong></p>\r\n\r\n<p>C&aacute;c nh&agrave; sản xuất thời trang chất lượng k&eacute;m thường &iacute;t khi ch&uacute; &yacute; đến tiểu tiết. Đ&oacute; l&agrave; l&yacute; do tại sao bạn n&ecirc;n kiểm tra kỹ cả phần khuy c&uacute;c trước khi mua. Phải đảm bảo phần khuy được may thật gọn ghẽ, kh&ocirc;ng lộ phần chỉ xơ x&aacute;c. C&uacute;c &aacute;o cũng được đ&iacute;nh chắc chắn, kh&ocirc;ng lỏng lẻo.</p>\r\n\r\n<p><img alt=\"khi mua quan ao, hay nho phai so tan tay 10 chi tiet nay moi moc tui chi tien - 9\" src=\"https://cdn.eva.vn/upload/3-2017/images/2017-09-08/9-1504860033-width650height500.jpg\" /></p>\r\n\r\n<p><strong>10. Kiểm tra m&agrave;u sắc của c&aacute;c nếp gấp</strong></p>\r\n\r\n<p>Nếu m&agrave;u sắc tr&ecirc;n c&aacute;c nếp gấp của trang phục hoặc phụ kiện như t&uacute;i x&aacute;ch bị phai m&agrave;u th&igrave; chứng tỏ đ&oacute; l&agrave; m&oacute;n đồ c&oacute; chất lượng thấp. Chỉ sau v&agrave;i lần giặt, m&agrave;u sắc ở phần n&agrave;y sẽ c&agrave;ng phai m&agrave;u nhiều hơn để lộ bề mặt sản phẩm lem luốc rất mất thẩm mỹ.</p>\r\n\r\n<p><img alt=\"khi mua quan ao, hay nho phai so tan tay 10 chi tiet nay moi moc tui chi tien - 10\" src=\"https://cdn.eva.vn/upload/3-2017/images/2017-09-08/10-1504860033-width650height290.jpg\" /></p>\r\n', '1', '', '2018-09-24', '1', '', '', '2018-09-24', '2018-09-24'),
(89, 28, 'tin-tuc', '8 quy tắc phối đồ nữ giới nên biết', '8-quy-tac-phoi-do-nu-gioi-nen-biet', 'AYMjs-6ts18a003-sr074-33.jpg', '', '<p>Biết c&aacute;ch phối đồ chuẩn mực sẽ gi&uacute;p bạn g&aacute;i lu&ocirc;n xuất hiện thời thượng, thanh lịch v&agrave; xinh đẹp trong mắt mọi người.</p>\r\n', '<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"8 quy tac phoi do nu gioi nen biet hinh anh 1\" src=\"https://znews-photo-td.zadn.vn/w1024/Uploaded/cqxrcajwp/2018_02_01/thoi_trang_2.jpg\" style=\"height:373px; width:650px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khi mặc &aacute;o sơ mi, bạn kh&ocirc;ng n&ecirc;n th&aacute;o bỏ qu&aacute; 2 n&uacute;t c&uacute;c.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"8 quy tac phoi do nu gioi nen biet hinh anh 2\" src=\"https://znews-photo-td.zadn.vn/w1024/Uploaded/cqxrcajwp/2018_02_01/thoi_trang_3.jpg\" style=\"height:783px; width:650px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kh&ocirc;ng n&ecirc;n đeo qu&aacute; nhiều trang sức c&ugrave;ng loại, 3-4 m&oacute;n đồ c&ugrave;ng l&uacute;c c&oacute; thể khiến bạn tr&ocirc;ng kh&ocirc;ng sang trọng.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"8 quy tac phoi do nu gioi nen biet hinh anh 3\" src=\"https://znews-photo-td.zadn.vn/w1024/Uploaded/cqxrcajwp/2018_02_01/thoi_trang_5.jpg\" style=\"height:510px; width:650px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đừng mặc v&aacute;y vừa ngắn lại vừa hở vai hoặc xẻ s&acirc;u ngực. Điều đ&oacute; c&oacute; thể khiến bạn tr&ocirc;ng th&ocirc; tục, kh&ocirc;ng lịch sự.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"8 quy tac phoi do nu gioi nen biet hinh anh 4\" src=\"https://znews-photo-td.zadn.vn/w1024/Uploaded/cqxrcajwp/2018_02_01/thoi_trang_7.jpg\" style=\"height:373px; width:650px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cổ &aacute;o c&ocirc;ng sở kh&ocirc;ng n&ecirc;n xẻ s&acirc;u qu&aacute; 10 cm t&iacute;nh từ xương đ&ograve;n.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"8 quy tac phoi do nu gioi nen biet hinh anh 5\" src=\"https://znews-photo-td.zadn.vn/w1024/Uploaded/cqxrcajwp/2018_02_01/thoi_trang_11.jpg\" style=\"height:373px; width:650px\" title=\"8 quy tắc phối đồ nữ giới nên biết hình ảnh 5\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kh&ocirc;ng kết hợp qu&aacute; nhiều họa tiết trong c&ugrave;ng một trang phục. Nếu th&iacute;ch, h&atilde;y chọn c&aacute;c họa tiết c&ugrave;ng m&agrave;u hoặc với k&iacute;ch thước kh&aacute;c nhau.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"8 quy tac phoi do nu gioi nen biet hinh anh 6\" src=\"https://znews-photo-td.zadn.vn/w1024/Uploaded/cqxrcajwp/2018_02_01/thoi_trang_13.jpg\" style=\"height:389px; width:650px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Nếu mặc &aacute;o kh&ocirc;ng tay, h&atilde;y sử dụng kiểu &aacute;o che k&iacute;n vai, đặc biệt l&agrave; d&acirc;n văn ph&ograve;ng. &Aacute;o 2 d&acirc;y kh&ocirc;ng mang lại phong c&aacute;ch thanh lịch cho bạn g&aacute;i.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"8 quy tac phoi do nu gioi nen biet hinh anh 7\" src=\"https://znews-photo-td.zadn.vn/w1024/Uploaded/cqxrcajwp/2018_02_01/thoi_trang_14.jpg\" style=\"height:500px; width:650px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kh&ocirc;ng n&ecirc;n mặc những loại đồ l&oacute;t d&agrave;y hoặc c&oacute; bề mặt gồ ghề dưới quần k&iacute;n hoặc những chiếc v&aacute;y ngắn m&agrave;u sặc sỡ. N&oacute; sẽ l&agrave;m vải bị sần l&ecirc;n v&agrave; mọi người c&oacute; thể nh&igrave;n thấy r&otilde; r&agrave;ng &aacute;o ngực của bạn.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"8 quy tac phoi do nu gioi nen biet hinh anh 8\" src=\"https://znews-photo-td.zadn.vn/w1024/Uploaded/cqxrcajwp/2018_02_01/thoi_trang_15.jpg\" style=\"height:436px; width:650px\" /><a href=\"https://news.zing.vn/8-quy-tac-phoi-do-nu-gioi-nen-biet-post816621.html#slideshow\">Ph&oacute;ng to</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sử dụng băng d&iacute;nh 2 mặt cho phần c&uacute;c &aacute;o sơ mi để tr&aacute;nh bị hở &aacute;o ngực.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '1', '', '2018-09-24', '1', '', '', '2018-09-24', '2018-09-24'),
(90, 28, 'tin-tuc', '10 bộ cánh sân bay sành điệu của dàn sao quốc tế tuần qua', '10-bo-canh-san-bay-sanh-dieu-cua-dan-sao-quoc-te-tuan-qua', 'Vcs86-SSAVA.jpg', '', '<p>Trang phục s&acirc;n bay của Selena Gomez, vợ George Clooney v&agrave; si&ecirc;u mẫu Karlie Kloss đều l&agrave; những bộ c&aacute;nh s&agrave;nh điệu được tạp ch&iacute; Harper&#39;s Bazaar b&igrave;nh chọn.</p>\r\n', '<p>Trang phục s&acirc;n bay của Selena Gomez, vợ George Clooney v&agrave; si&ecirc;u mẫu Karlie Kloss đều l&agrave; những bộ c&aacute;nh s&agrave;nh điệu được tạp ch&iacute; Harper&#39;s Bazaar b&igrave;nh chọn.</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"10 bo canh san bay sanh dieu cua dan sao quoc te tuan qua hinh anh 1\" src=\"https://znews-photo-td.zadn.vn/w1024/Uploaded/rohunwa/2018_09_20/SS0.jpg\" style=\"height:2373px; width:1600px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khoảng thời gian gần đ&acirc;y, Selena Gomez thường bị đ&aacute;nh gi&aacute; về v&oacute;c d&aacute;ng k&eacute;m thon gọn mỗi khi xuất hiện. Hiểu được khuyết điểm, nữ ca sĩ đ&atilde; khắc phục bằng c&aacute;ch lựa chọn bộ c&aacute;nh t&ocirc;ng đen tinh tế. Chiếc &aacute;o crop-top đi k&egrave;m quần su&ocirc;ng lưng cao, phối với &aacute;o kho&aacute;c da gi&uacute;p che lấp nhược điểm phần đ&ugrave;i v&agrave; bắp tay to.&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"10 bo canh san bay sanh dieu cua dan sao quoc te tuan qua hinh anh 2\" src=\"https://znews-photo-td.zadn.vn/w1024/Uploaded/rohunwa/2018_09_20/SS1.jpg\" style=\"height:2400px; width:1600px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Amal Clooney thu h&uacute;t với bộ c&aacute;nh phom d&aacute;ng thanh lịch, t&ocirc;ng đỏ nổi bật tr&ecirc;n đường ra s&acirc;n bay. Người đẹp c&acirc;n bằng vẻ tinh tế khi phối hợp chiếc t&uacute;i x&aacute;ch t&ocirc;ng n&acirc;u c&agrave; ph&ecirc; sữa c&ugrave;ng đ&ocirc;i gi&agrave;y nude mũi nhọn.&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"10 bo canh san bay sanh dieu cua dan sao quoc te tuan qua hinh anh 3\" src=\"https://znews-photo-td.zadn.vn/w1024/Uploaded/rohunwa/2018_09_20/SS2.jpg\" style=\"height:2400px; width:1600px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>H&ocirc;n th&ecirc; của Justin Bieber -&nbsp;Hailey Baldwin c&aacute; t&iacute;nh với set đồ t&ocirc;ng đen đi k&egrave;m gi&agrave;y boots cao cổ tương phản m&agrave;u sắc. Điểm nhấn nh&aacute; đến từ sự đồng điệu d&agrave;n đinh t&aacute;n tr&ecirc;n &aacute;o kho&aacute;c da c&ugrave;ng phần viền gọng k&iacute;nh cổ điển. Đ&acirc;y được đ&aacute;nh gi&aacute; l&agrave; một trong những bộ c&aacute;nh s&agrave;nh điệu nhất tr&ecirc;n trang&nbsp;Harper&#39;s Bazaar.&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"10 bo canh san bay sanh dieu cua dan sao quoc te tuan qua hinh anh 4\" src=\"https://znews-photo-td.zadn.vn/w1024/Uploaded/rohunwa/2018_09_20/SS6_copy.jpg\" style=\"height:1285px; width:854px\" title=\"10 bộ cánh sân bay sành điệu của dàn sao quốc tế tuần qua hình ảnh 4\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Si&ecirc;u mẫu Cara Delevingne lựa chọn set đồ thể thao chất liệu nhung, t&ocirc;ng t&iacute;m than. Người đẹp chạy theo xu hướng kết hợp nhiều kiểu v&ograve;ng cổ kh&aacute;c nhau c&ugrave;ng &aacute;o thun trắng đơn giản.&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"10 bo canh san bay sanh dieu cua dan sao quoc te tuan qua hinh anh 5\" src=\"https://znews-photo-td.zadn.vn/w1024/Uploaded/rohunwa/2018_09_20/SS3.jpg\" style=\"height:2400px; width:1600px\" title=\"10 bộ cánh sân bay sành điệu của dàn sao quốc tế tuần qua hình ảnh 5\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Si&ecirc;u mẫu Karlie Kloss diện bộ trang phục ấm &aacute;p trong những ng&agrave;y đầu thu. Để tạo điểm nhấn cho chiếc &aacute;o kho&aacute;c d&aacute;ng d&agrave;i t&ocirc;ng m&agrave;u camel, người đẹp kết hợp set đồ đen đơn giản b&ecirc;n trong khi xuất hiện tại s&acirc;n bay.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"10 bo canh san bay sanh dieu cua dan sao quoc te tuan qua hinh anh 6\" src=\"https://znews-photo-td.zadn.vn/w1024/Uploaded/rohunwa/2018_09_20/SS5.jpg\" style=\"height:2399px; width:1600px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;Lily Aldridge kh&eacute;o l&eacute;o khi kết hợp nhiều chất liệu vải kh&aacute;c nhau tr&ecirc;n c&ugrave;ng set đồ. Đơn cử như vải d&ugrave; của &aacute;o bomber mix với hoodies, quần skinny da b&oacute;ng v&agrave; nhấn nh&aacute; bằng t&uacute;i x&aacute;ch da lộn. Chiếc &aacute;o m&agrave;u đỏ trở th&agrave;nh điểm nhấn của to&agrave;n set đồ.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"10 bo canh san bay sanh dieu cua dan sao quoc te tuan qua hinh anh 7\" src=\"https://znews-photo-td.zadn.vn/w1024/Uploaded/rohunwa/2018_09_20/SS7.jpg\" style=\"height:2133px; width:1600px\" title=\"10 bộ cánh sân bay sành điệu của dàn sao quốc tế tuần qua hình ảnh 7\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Emma Stone diện trang phục đơn giản t&ocirc;ng m&agrave;u trung t&iacute;nh, nhưng c&ocirc; lại kh&eacute;o l&eacute;o lựa chọn chiếc t&uacute;i x&aacute;ch trở th&agrave;nh điểm nhấn của to&agrave;n set đồ.&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"10 bo canh san bay sanh dieu cua dan sao quoc te tuan qua hinh anh 8\" src=\"https://znews-photo-td.zadn.vn/w1024/Uploaded/rohunwa/2018_09_20/SS8.jpg\" style=\"height:1470px; width:980px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kim Kardashian bắt kịp xu hướng phụ kiện họa tiết động vật. C&ocirc; kết hợp mẫu boots cao qu&aacute; gối, c&ugrave;ng &aacute;o kho&aacute;c qu&aacute; khổ v&agrave; set đồ t&ocirc;ng m&agrave;u trung t&iacute;nh.&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"10 bo canh san bay sanh dieu cua dan sao quoc te tuan qua hinh anh 9\" src=\"https://znews-photo-td.zadn.vn/w1024/Uploaded/rohunwa/2018_09_20/SS9.jpg\" style=\"height:2400px; width:1600px\" title=\"10 bộ cánh sân bay sành điệu của dàn sao quốc tế tuần qua hình ảnh 9\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Si&ecirc;u mẫu người Nga -&nbsp;Irina Shayk thu h&uacute;t với bộ c&aacute;nh họa tiết kẻ sọc từ đầu đến ch&acirc;n. B&iacute; quyết để tr&aacute;nh sự rối mắt ch&iacute;nh l&agrave; tiết chế bằng c&aacute;c loại phụ kiện t&ocirc;ng m&agrave;u trung t&iacute;nh, phom d&aacute;ng nhỏ nhắn.&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"10 bo canh san bay sanh dieu cua dan sao quoc te tuan qua hinh anh 10\" src=\"https://znews-photo-td.zadn.vn/w1024/Uploaded/rohunwa/2018_09_20/SS10.jpg\" style=\"height:2400px; width:1600px\" /><a href=\"https://news.zing.vn/10-bo-canh-san-bay-sanh-dieu-cua-dan-sao-quoc-te-tuan-qua-post878361.html#slideshow\">Ph&oacute;ng to</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Doutzen Kroes đơn giản, nhưng vẫn thanh lịch khi mix&amp;match &aacute;o thun trắng, quần jeans xắn gấu c&ugrave;ng blazer chiết eo s&agrave;nh điệu.&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '1', '', '2018-09-24', '1', '', '', '2018-09-24', '2018-09-24'),
(91, 28, 'tin-tuc', 'Rihanna, Gigi Hadid lọt vào top mỹ nhân thế giới mặc đẹp tuần qua', 'rihanna-gigi-hadid-lot-vao-top-my-nhan-the-gioi-mac-dep-tuan-qua', '5mY6B-gettyimages1032497794.jpg', '', '<p>Rihanna v&agrave; Gigi Hadid đều diện jumpsuit nhưng với m&agrave;u sắc, chi tiết kh&aacute;c nhau. Trong khi đ&oacute;, Rosie Huntington-Whiteley được khen đẹp tinh tế với đầm cut-out sang trọng.</p>\r\n', '<p>Rihanna v&agrave; Gigi Hadid đều diện jumpsuit nhưng với m&agrave;u sắc, chi tiết kh&aacute;c nhau. Trong khi đ&oacute;, Rosie Huntington-Whiteley được khen đẹp tinh tế với đầm cut-out sang trọng.</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Rihanna, Gigi Hadid lot vao top my nhan the gioi mac dep tuan qua hinh anh 1\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/neg_yslewlx/2018_09_15/gettyimages1032947474.jpg\" style=\"height:960px; width:768px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ca sĩ&nbsp;Rihanna li&ecirc;n tục g&oacute;p mặt trong danh s&aacute;ch sao đẹp của tạp ch&iacute;&nbsp;<em>Harper&#39;s Bazaar</em>&nbsp;nhờ phong c&aacute;ch thời trang tinh tế, đa dạng v&agrave; s&aacute;ng tạo. Tại sự kiện thường ni&ecirc;n của quỹ từ thiện Diamond Ball do c&ocirc; chủ tr&igrave;, ng&ocirc;i sao ca nhạc R&amp;B diện jumpsuit ren tuyệt đẹp của nh&agrave; thiết kế Alexis Mabille, b&ecirc;n ngo&agrave;i l&agrave; ch&acirc;n v&aacute;y thắt nơ độc đ&aacute;o. Đ&ocirc;i hoa tai kim cương của Chopard v&agrave; gi&agrave;y cao g&oacute;t kim loại gi&uacute;p ho&agrave;n thiện set đồ cho&nbsp;<a href=\"https://news.zing.vn/nguoi-dep-hot-girl-tieu-diem.html\">người đẹp</a>.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Rihanna, Gigi Hadid lot vao top my nhan the gioi mac dep tuan qua hinh anh 2\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/neg_yslewlx/2018_09_15/gettyimages1032497794.jpg\" style=\"height:1152px; width:768px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tuần lễ thời trang New York 2019 diễn ra từ ng&agrave;y 6 đến 14/9. Đ&acirc;y cũng l&agrave; dịp để c&aacute;c ng&ocirc;i sao đ&igrave;nh đ&aacute;m khoe sắc, chứng tỏ phong c&aacute;ch ăn mặc đẳng cấp trước giới mộ điệu. Trung th&agrave;nh với v&aacute;y &aacute;o gợi cảm, si&ecirc;u mẫu Gigi Hadid xuất hiện với jumpsuit đ&iacute;nh sequin xuy&ecirc;n thấu v&agrave; loạt trang sức đắt đỏ của h&atilde;ng Messika.&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Rihanna, Gigi Hadid lot vao top my nhan the gioi mac dep tuan qua hinh anh 3\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/neg_yslewlx/2018_09_15/hbzthelistbestdressed0914emilyratajkowskishutterstockeditorial9879754mhuge1536917955_1.jpg\" style=\"height:1152px; width:768px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Si&ecirc;u mẫu Emily Ratajkowski diện nguy&ecirc;n c&acirc;y đen của Marc Jacobs khi xuất hiện tr&ecirc;n h&agrave;ng ghế đầu trong show diễn của thương hiệu n&agrave;y. Sự đơn điệu của quần &acirc;u d&aacute;ng su&ocirc;ng được c&acirc;n bằng qua mẫu &aacute;o xếp phồng đồ sộ. D&acirc;n mạng v&iacute; chi tiết n&agrave;y giống như một đ&oacute;a hoa hồng đen. Ngo&agrave;i ra, mũ gaucho rộng v&agrave;nh với chất nỉ cứng c&aacute;p gi&uacute;p&nbsp; h&igrave;nh ảnh của ch&acirc;n d&agrave;i 27 tuổi th&ecirc;m nữ t&iacute;nh.&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Rihanna, Gigi Hadid lot vao top my nhan the gioi mac dep tuan qua hinh anh 4\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/neg_yslewlx/2018_09_15/hbzthelistbestdressed0914rosiehuntingtonwhiteleygettyimages1031530916.jpg\" style=\"height:1152px; width:768px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Người mẫu Rosie Huntington-Whiteley chịu kh&oacute; F5 h&igrave;nh ảnh bằng nhiều phong c&aacute;ch thời trang kh&aacute;c nhau. Trong show diễn của thương hiệu Oscar de la Renta, h&ocirc;n th&ecirc; t&agrave;i tử Jason Statham khoe vẻ gợi cảm ch&iacute;n m&ugrave;i ở tuổi 31 bằng c&aacute;ch diện bộ đầm nhung cut-out sang trọng, khiến người h&acirc;m mộ phải xu&yacute;t xoa. Với outfit n&agrave;y, Whiteley chọn son đỏ v&agrave; gi&agrave;y cao g&oacute;t buộc d&acirc;y ton-sur-ton.&nbsp;&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Rihanna, Gigi Hadid lot vao top my nhan the gioi mac dep tuan qua hinh anh 5\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/neg_yslewlx/2018_09_15/gettyimages1028908138.jpg\" style=\"height:960px; width:640px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Giới mộ điệu khen ngợi sự th&ocirc;ng minh của diễn vi&ecirc;n Blake Lively khi c&ocirc; c&oacute; c&aacute;ch mix-match đẳng cấp suit đủ m&agrave;u sắc v&agrave; kiểu d&aacute;ng. Tuần qua,&nbsp;ng&ocirc;i sao&nbsp;<em>Gossip Girl&nbsp;</em>vinh dự l&agrave; một trong 500 vị kh&aacute;ch mời của buổi tiệc kỷ niệm 50 năm th&agrave;nh lập thương hiệu thời trang&nbsp;Ralph Lauren. Tại đ&acirc;y, mỹ nh&acirc;n tuổi 31 g&acirc;y th&iacute;ch th&uacute; khi phối suit đen layer sơ mi trắng v&agrave; &aacute;o gi-l&ecirc; c&aacute;ch điệu b&ecirc;n trong.&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><iframe frameborder=\"0\" height=\"280\" id=\"google_ads_iframe_/6973676/News.zing.vn/news.middle.no_sidebar_0\" name=\"google_ads_iframe_/6973676/News.zing.vn/news.middle.no_sidebar_0\" scrolling=\"no\" title=\"3rd party ad content\" width=\"336\"></iframe></p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Rihanna, Gigi Hadid lot vao top my nhan the gioi mac dep tuan qua hinh anh 6\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/neg_yslewlx/2018_09_15/gettyimages1028898146.jpg\" style=\"height:1204px; width:768px\" title=\"Rihanna, Gigi Hadid lọt vào top mỹ nhân thế giới mặc đẹp tuần qua hình ảnh 6\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cũng tại sự kiện, diễn vi&ecirc;n người Mỹ Jessica Chastain lại rất nữ t&iacute;nh với đầm v&agrave;ng c&uacute;p ngực, xếp li tinh tế của thương hiệu Ralph Lauren. Mỹ nh&acirc;n chọn kiểu t&oacute;c uốn xoăn cổ điển v&agrave; trang sức, gi&agrave;y cao g&oacute;t ton-sur-ton rất nổi bật.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Rihanna, Gigi Hadid lot vao top my nhan the gioi mac dep tuan qua hinh anh 7\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/neg_yslewlx/2018_09_15/hbzthelistbestdressed0914katebosworthgettyimages1031700284.jpg\" style=\"height:1152px; width:768px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Li&ecirc;n tục đụng v&aacute;y &aacute;o với c&aacute;c mỹ nh&acirc;n đ&igrave;nh đ&aacute;m, nhưng nữ diễn vi&ecirc;n Kate Bosworth vẫn chứng tỏ sức h&uacute;t ri&ecirc;ng của m&igrave;nh. Tại một sự kiện thời trang, ng&ocirc;i sao&nbsp;<em>Blue Crush&nbsp;</em>sang trọng v&agrave; b&oacute;ng bẩy<em>&nbsp;</em>với set đồ đỏ nổi bật của thương hiệu Calvin Klein.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Rihanna, Gigi Hadid lot vao top my nhan the gioi mac dep tuan qua hinh anh 8\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/neg_yslewlx/2018_09_15/hbzthelistbestdressed0914karruechetrangettyimages1029520800.jpg\" style=\"height:1152px; width:768px\" title=\"Rihanna, Gigi Hadid lọt vào top mỹ nhân thế giới mặc đẹp tuần qua hình ảnh 8\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đ&acirc;y l&agrave; một trong những lần hiếm hoi diễn vi&ecirc;n gốc Việt Karreuche Tran lọt top sao mặc đẹp của&nbsp;<em>Harper&#39;s Bazaar</em>. T&igrave;nh cũ ca sĩ&nbsp;Chris Brown trưng dụng crop-top v&agrave; quần cạp cao b&ecirc;n trong &aacute;o kho&aacute;c denim oversize ton-sur-ton khi tham dự show diễn m&ugrave;a xu&acirc;n 2019 của thương hiệu&nbsp;Pyer Moss.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Rihanna, Gigi Hadid lot vao top my nhan the gioi mac dep tuan qua hinh anh 9\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/neg_yslewlx/2018_09_15/hbzthelistbestdressed0914saoirseronangettyimages1031748136.jpg\" style=\"height:1152px; width:768px\" title=\"Rihanna, Gigi Hadid lọt vào top mỹ nhân thế giới mặc đẹp tuần qua hình ảnh 9\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Diễn vi&ecirc;n trẻ Saoirse Ronan xuất hiện đơn giản nhưng tinh tế tại show diễn của&nbsp;Calvin Klein. Theo đ&oacute;, mỹ nh&acirc;n 24 tuổi diện mini dress đen với điểm nhấn l&agrave; lớp vải hồng pastel ở tay v&agrave; ch&acirc;n v&aacute;y. Chưa hết, đ&ocirc;i sandal cao g&oacute;t đối xứng chi tiết lấp l&aacute;nh cũng gi&uacute;p c&ocirc; g&acirc;y ch&uacute; &yacute;.&nbsp;Ronan được đ&aacute;nh gi&aacute; l&agrave; mỹ nh&acirc;n thế hệ mới t&agrave;i sắc vẹn to&agrave;n của Hollywood.&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '1', '', '2018-09-24', '1', '', '', '2018-09-24', '2018-09-24'),
(92, 28, 'tin-tuc', 'BST chân váy bút chì dáng dài thích hợp diện thu', 'bst-chan-vay-but-chi-dang-dai-thich-hop-dien-thu', 'uQtyL-0689df28d5519ec623071d4155969ed6.jpg', '', '<p>Ch&acirc;n v&aacute;y b&uacute;t ch&igrave; vốn l&agrave; m&oacute;n đồ thời trang &ldquo;chuẩn&rdquo; của chị em c&ocirc;ng sở, một chiếc ch&acirc;n v&aacute;y b&uacute;t ch&igrave; được kết hợp c&ugrave;ng sơ mi đ&uacute;ng chất văn ph&ograve;ng chuy&ecirc;n nghiệp. Đặc biệt với những chiếc ch&acirc;n v&aacute;y b&uacute;t ch&igrave; d&aacute;ng d&agrave;i t&ocirc;n chiều cao được thiết kế xẻ trước hoặc xẻ sau đều đẹp thanh lịch.</p>\r\n', '<p>Ch&acirc;n v&aacute;y b&uacute;t ch&igrave; vốn l&agrave; m&oacute;n đồ thời trang &ldquo;chuẩn&rdquo; của chị em c&ocirc;ng sở, một chiếc ch&acirc;n v&aacute;y b&uacute;t ch&igrave; được kết hợp c&ugrave;ng sơ mi đ&uacute;ng chất văn ph&ograve;ng chuy&ecirc;n nghiệp. Đặc biệt với những chiếc ch&acirc;n v&aacute;y b&uacute;t ch&igrave; d&aacute;ng d&agrave;i t&ocirc;n chiều cao được thiết kế xẻ trước hoặc xẻ sau đều đẹp thanh lịch.</p>\r\n\r\n<p>Cũng rất dễ để c&aacute;c n&agrave;ng chọn một chiếc ch&acirc;n v&aacute;y b&uacute;t ch&igrave; phối c&aacute;c set đồ c&ocirc;ng sở, kết hợp đơn giản thanh lịch nhất v&agrave; l&agrave; những chiếc sơ mi trắng cổ đức, nhưng với xu hướng thời trang hiện đại th&igrave; một chiếc ch&acirc;n v&aacute;y b&uacute;t ch&igrave; kh&ocirc;ng c&ograve;n chỉ đơn điệu với gam m&agrave;u đen m&agrave; đủ m&agrave;u sắc họa tiết kh&aacute;c nhau được chọn kết hợp với c&aacute;c mẫu sơ mi c&aacute;ch điệu cực xinh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://thoitrangtre.biz/wp-content/uploads/2018/09/chan-vay-but-chi-dai-1-700x1088.jpg\" style=\"height:1088px; width:700px\" /></p>\r\n\r\n<p>t&ocirc;ng m&agrave;u xanh cho c&ocirc; n&agrave;ng nhẹ nh&agrave;ng với chiếc ch&acirc;n v&aacute;y b&uacute;t ch&igrave; họa tiết l&aacute; được phối với thun m&agrave;u xanh cổ vịt cực xinh</p>\r\n\r\n<p><img alt=\"\" src=\"https://thoitrangtre.biz/wp-content/uploads/2018/09/chan-vay-but-chi-dai-2-700x841.jpg\" style=\"height:841px; width:700px\" /></p>\r\n\r\n<p>ch&acirc;n v&aacute;y b&uacute;t ch&igrave; &ocirc;m t&ocirc;n d&aacute;ng chiều cao, với sư mi trắng điệu sẽ l&agrave;m nền cho mọi m&agrave;u của ch&acirc;n v&aacute;y nh&eacute;, n&ecirc;n bạn g&aacute;i tự tin với chiếc ch&acirc;n v&aacute;y m&agrave;u c&agrave; ph&ecirc; vẫn đủ nổi bật</p>\r\n\r\n<p><img alt=\"\" src=\"https://thoitrangtre.biz/wp-content/uploads/2018/09/chan-vay-but-chi-dai-3-700x1050.jpg\" style=\"height:1050px; width:700px\" /></p>\r\n\r\n<p>chiếc ch&acirc;n v&aacute;y đen trở l&ecirc;n nổi bật hơn với kiểu đ&iacute;nh c&uacute;c nổi, d&aacute;ng d&agrave;i t&ocirc;n ch&acirc;n d&agrave;i hơn, kết hợp đẹp c&ugrave;ng sơ mi voan điệu</p>\r\n\r\n<p><img alt=\"\" src=\"https://thoitrangtre.biz/wp-content/uploads/2018/09/chan-vay-but-chi-dai-4-700x914.jpg\" style=\"height:914px; width:700px\" /></p>\r\n\r\n<p>kh&aacute;c với những chiếc ch&acirc;n v&aacute;y x&ograve;e &ldquo;dễ t&iacute;nh&rdquo; th&igrave; một chiếc ch&acirc;n v&aacute;y b&uacute;t ch&igrave; k&eacute;n người mặc hơn, đặc biệt với kiểu thiết kế d&aacute;ng d&agrave;i sẽ t&ocirc;n r&otilde; v&ograve;ng 3 nhưng với qu&yacute; c&ocirc; c&oacute; body chuẩn th&igrave; rất l&yacute; tưởng để chọn kiểu ch&acirc;n v&aacute;y n&agrave;y set đồ nh&eacute;</p>\r\n\r\n<p><img alt=\"\" src=\"https://thoitrangtre.biz/wp-content/uploads/2018/09/chan-vay-but-chi-dai-5-700x992.jpg\" style=\"height:992px; width:700px\" /></p>\r\n\r\n<p>họa tiết giọt nước tạo cảm gi&aacute;c 3D kh&aacute; lạ mắt m&agrave; sang chảnh cho qu&yacute; c&ocirc; chọn phối hợp c&ugrave;ng &aacute;o thun thu đ&ocirc;ng cho ng&agrave;y lạnh</p>\r\n\r\n<p><img alt=\"\" src=\"https://thoitrangtre.biz/wp-content/uploads/2018/09/chan-vay-but-chi-dai-6.jpg\" style=\"height:1207px; width:801px\" /></p>\r\n\r\n<p>ch&acirc;n v&aacute;y kh&ocirc;ng cạp kiểu d&aacute;ng b&uacute;t ch&igrave; d&agrave;i tạo chiều cao đ&ocirc;i ch&acirc;n h&uacute;t mắt, cực xinh cho n&agrave;ng diện thu với họa tiết hoa. Kiểu d&aacute;ng n&agrave;y c&oacute; thể kết hợp c&ugrave;ng c&aacute;c mẫu &aacute;o sơ mi c&aacute;ch điệu đẹp</p>\r\n\r\n<p><img alt=\"\" src=\"https://thoitrangtre.biz/wp-content/uploads/2018/09/chan-vay-but-chi-dai-7-700x1006.jpg\" style=\"height:1006px; width:700px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://thoitrangtre.biz/wp-content/uploads/2018/09/chan-vay-but-chi-dai-8-700x1172.jpg\" style=\"height:1172px; width:700px\" /></p>\r\n\r\n<p>ch&acirc;n v&aacute;y m&agrave;u đơn sắc đẹp thanh lịch c&ocirc;ng sở</p>\r\n\r\n<p><img alt=\"\" src=\"https://thoitrangtre.biz/wp-content/uploads/2018/09/chan-vay-but-chi-dai-9-700x1024.jpg\" style=\"height:1024px; width:700px\" /></p>\r\n\r\n<p>với set đồ c&ugrave;ng ch&acirc;n v&aacute;y b&uacute;t ch&igrave; đẹp thanh lịch đến c&ocirc;ng sở m&ugrave;a thu đ&ocirc;ng bạn g&aacute;i chọn kho&aacute;c ngo&agrave;i chiếc &aacute;o vest hoặc d&aacute;ng &aacute;o cho&agrave;ng sang chảnh rất tiện dụng m&agrave; vẫn thanh lịch nh&eacute;</p>\r\n', '1', '', '2018-09-24', '1', '', '', '2018-09-24', '2018-09-24'),
(93, 28, 'tin-tuc', 'Săn áo vest nữ đẹp đón thu 2018', 'san-ao-vest-nu-dep-don-thu-2018', 'Li8B3-ao-vest-nnu-dep-9-200x288.jpg', '', '<p>Thời tiết chớm thu bạn đ&atilde; cảm nhận r&otilde; rệt bởi những ng&agrave;y m&aacute;t mẻ dễ chịu, đặc biệt rất th&iacute;ch hợp cho cuối tuần xuống phố. Thời tiết se lạnh sẽ rất l&yacute; tưởng để bạn mặc một chiếc...</p>\r\n', '<p>Thời tiết chớm thu bạn đ&atilde; cảm nhận r&otilde; rệt bởi những ng&agrave;y m&aacute;t mẻ dễ chịu, đặc biệt rất th&iacute;ch hợp cho cuối tuần xuống phố. Thời tiết se lạnh sẽ rất l&yacute; tưởng để bạn mặc một chiếc &aacute;o vest kho&aacute;c ngo&agrave;i c&aacute;c set đồ hoặc một chiếc đầm liền hay v&aacute;y x&ograve;e đều hợp thời trang.</p>\r\n\r\n<p>Trong tủ đồ của bạn chắc hẵn sẽ c&ograve;n nhiều mẫu<em><strong>&nbsp;&aacute;o vest</strong></em>&nbsp;từ m&ugrave;a trước, nếu kh&ocirc;ng muốn bị lỗi mốt thời trang th&igrave; ngay từ những ng&agrave;y đầu thu n&agrave;y h&atilde;y nhanh tay sắm cho m&igrave;nh những mẫu &aacute;o vest mới nhất của m&ugrave;a thu 2018 n&agrave;y nh&eacute;.</p>\r\n\r\n<p>Dưới đ&acirc;y Tbiz cũng đ&atilde; tuyển chọn cực nhiều mẫu&nbsp;<em><strong>&aacute;o vest nữ</strong></em>&nbsp;đẹp mới ra mắt thu 2018, c&aacute;c bạn c&ugrave;ng chọn cho m&igrave;nh kiểu d&aacute;ng ưng &yacute; nhất.</p>\r\n\r\n<p><img alt=\"\" src=\"https://thoitrangtre.biz/wp-content/uploads/2018/08/ao-vest-nnu-dep-1-700x1112.jpg\" style=\"height:1112px; width:700px\" /></p>\r\n\r\n<p>&aacute;o vest kẻ đẹp ấn tượng với phong c&aacute;ch thời trang trẻ trung năng động cho n&agrave;ng diện kết hợp với set quần jean v&agrave; &aacute;o thun body mặc trong cực đẹp</p>\r\n\r\n<p><img alt=\"\" src=\"https://thoitrangtre.biz/wp-content/uploads/2018/08/ao-vest-nnu-dep-2-700x915.jpg\" style=\"height:915px; width:700px\" /></p>\r\n\r\n<p>&aacute;o vest tay lỡ l&yacute; tưởng cho thời trang thu, kiểu kẻ m&agrave;u ghi nhẹ nh&agrave;ng. Điểm nổi bật với măng sec tay được thiết kế phối m&agrave;u tạo đi&ecirc;m nhấn hơn</p>\r\n\r\n<p><img alt=\"\" src=\"https://thoitrangtre.biz/wp-content/uploads/2018/08/ao-vest-nnu-dep-3-700x873.jpg\" style=\"height:873px; width:700px\" /></p>\r\n\r\n<p>c&ocirc; n&agrave;ng thời thượng với một chiếc vest kẻ sọc phối m&agrave;u đen trắng, kiểu cổ 1 vạt trơn trẻ trung. Cực chất với set đồ c&ugrave;ng quần t&acirc;y trắng nh&eacute;</p>\r\n\r\n<p><img alt=\"\" src=\"https://thoitrangtre.biz/wp-content/uploads/2018/08/ao-vest-nnu-dep-4-700x1008.jpg\" style=\"height:1008px; width:700px\" /></p>\r\n\r\n<p>nhẹ nh&agrave;ng, nữ t&iacute;nh v&agrave; đầy quyến rũ cho m&ugrave;a thu với một chi&ecirc;c &aacute;o vest tay lỡ phối ren được bạn g&aacute;i chọn mix c&ugrave;ng đầm &ocirc;m body s&aacute;t n&aacute;ch chuẩn phong c&aacute;ch thu</p>\r\n\r\n<p><img alt=\"\" src=\"https://thoitrangtre.biz/wp-content/uploads/2018/08/ao-vest-nnu-dep-5-700x974.jpg\" style=\"height:974px; width:700px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://thoitrangtre.biz/wp-content/uploads/2018/08/ao-vest-nnu-dep-6-700x1083.jpg\" style=\"height:1083px; width:700px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://thoitrangtre.biz/wp-content/uploads/2018/08/ao-vest-nnu-dep-7-700x1125.jpg\" style=\"height:1125px; width:700px\" /></p>\r\n\r\n<p>&aacute;o vest nữ phong c&aacute;ch cổ điển nhưng với m&agrave;u v&agrave; họa tiết lại đậm chất hiện đại th&iacute;ch hợp cho những c&ocirc; n&agrave;ng c&aacute; t&iacute;nh</p>\r\n\r\n<p><img alt=\"\" src=\"https://thoitrangtre.biz/wp-content/uploads/2018/08/ao-vest-nnu-dep-8-700x1002.jpg\" style=\"height:1002px; width:700px\" /></p>\r\n\r\n<p>set đồ c&ocirc;ng sở đẹp v&agrave; sang chảnh cho qu&yacute; c&ocirc; khi chọn vest trắng d&aacute;ng tay lửng để kết hợp c&ugrave;ng c&aacute;c mẫu đầm liền</p>\r\n\r\n<p><img alt=\"\" src=\"https://thoitrangtre.biz/wp-content/uploads/2018/08/ao-vest-nnu-dep-9-700x1006.jpg\" style=\"height:1006px; width:700px\" /></p>\r\n\r\n<p>&aacute;o vest nữ d&aacute;ng blazer cực đẹp v&agrave; trẻ trung cho n&agrave;ng mix đồ c&ugrave;ng ch&acirc;n v&aacute;y x&ograve;e ngắn set sơ mi</p>\r\n\r\n<p><img alt=\"\" src=\"https://thoitrangtre.biz/wp-content/uploads/2018/08/ao-vest-nnu-dep-10-700x1155.jpg\" style=\"height:1155px; width:700px\" /></p>\r\n\r\n<p>&aacute;o vest như một chiếc &aacute;o kho&aacute;c nhẹ ngo&agrave;i tiện dụng cho c&aacute;c c&ocirc; n&agrave;ng diện thời trang thu, với cực nhiều mẫu &aacute;o vest đẹp trẻ trung của m&ugrave;a thu đ&ocirc;ng 2018 n&agrave;y th&igrave; bạn g&aacute;i c&oacute; thể dễ d&agrave;ng diện đồ đi l&agrave;m hoặc mix cho set đồ đi chơi, hẹn h&ograve; đều th&iacute;ch hợp</p>\r\n\r\n<p><img alt=\"\" src=\"https://thoitrangtre.biz/wp-content/uploads/2018/08/ao-vest-nnu-dep-11-700x1006.jpg\" style=\"height:1006px; width:700px\" /></p>\r\n', '1', '', '2018-09-24', '1', '', '', '2018-09-24', '2018-09-24'),
(94, 28, 'tin-tuc', 'Muốn được sếp khen, đồng nghiệp xuýt xoa thì tham khảo ngay tủ đồ của 4 mỹ nhân này!', 'muon-duoc-sep-khen-dong-nghiep-xuyt-xoa-thi-tham-khao-ngay-tu-do-cua-4-my-nhan-nay', 'VXJOJ-f.jpg', '', '<p>Những mỹ nh&acirc;n hot của Vbiz, tưởng chừng như chỉ diện những bộ đầm dạ hội lộng lẫy hay h&agrave;ng hiệu phủ k&iacute;n từ đầu đến ch&acirc;n ho&aacute; ra cũng c&oacute; gu thời trang c&ocirc;ng sở rất đ&aacute;ng học hỏi</p>\r\n', '<p>Thời gian ở văn ph&ograve;ng chiếm phần lớn thời gian v&agrave; l&agrave; cơ hội mặc đẹp &iacute;t ỏi m&agrave; những qu&yacute; c&ocirc; c&ocirc;ng sở&nbsp;c&oacute; được b&ecirc;n cạnh những buổi đi chơi, hẹn h&ograve; hay v&agrave;i chuyến du lịch hiếm hoi. Ch&iacute;nh&nbsp;v&igrave; thế, style&nbsp;c&ocirc;ng sở đ&atilde; trở th&agrave;nh mối quan&nbsp;t&acirc;m h&agrave;ng đầu của những t&iacute;n đồ thời trang&nbsp;v&agrave; nỗi băn khoăn kh&ocirc;ng biết mặc g&igrave; vẫn&nbsp;lu&ocirc;n khiến c&aacute;c chị em đau đầu mỗi ng&agrave;y.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, bạn ho&agrave;n to&agrave;n c&oacute; thể học hỏi từ tủ đồ cực chất của loạt mỹ nh&acirc;n dưới đ&acirc;y để t&igrave;m ra những items đi l&agrave;m, đi chơi m&agrave; vẫn đảm bảo độ thanh lịch, quyến rũ.</p>\r\n\r\n<p><strong>1. THANH HẰNG</strong></p>\r\n\r\n<p>Kh&ocirc;ng chỉ tr&ecirc;n thảm đỏ m&agrave; ngay cả ở đời thường, si&ecirc;u mẫu&nbsp;Thanh Hằng&nbsp;lu&ocirc;n g&acirc;y ch&uacute; &yacute; mạnh mẽ về c&aacute;ch ăn mặc biến hóa xinh đẹp, trẻ trung v&agrave; bắt mắt. Phải thừa nhận rằng, từ những m&oacute;n đồ b&igrave;nh d&acirc;n, đơn giản nhưng&nbsp;Thanh Hằng&nbsp;lu&ocirc;n tinh tế phối hợp ch&uacute;ng th&agrave;nh những set đồ&nbsp;<a href=\"https://eva.vn/thoi-trang-c36.html\">thời trang</a>&nbsp;m&agrave; n&agrave;ng c&ocirc;ng sở n&agrave;o cũng c&oacute; thể &aacute;p dụng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-28/neu-muon-nang-tam-style-cong-so-hay-tham-khao-ngay-tu-do-cua-4-my-nhan-nay-unnamed-11-1535435400-4-width810height1000.jpg\" /></p>\r\n\r\n<p>Mẫu sơ mi trắng thắt nơ của &quot;Thư k&iacute; Kim&quot; cũng được Thanh Hằng nhanh ch&oacute;ng cập nhật.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-28/neu-muon-nang-tam-style-cong-so-hay-tham-khao-ngay-tu-do-cua-4-my-nhan-nay-unnamed-12-1535435400-248-width822height1000.jpg\" /></p>\r\n\r\n<p>V&aacute;y sơ mi cũng l&agrave; một gợi &yacute; kh&ocirc;ng tồi cho những c&ocirc; n&agrave;ng mang phong c&aacute;ch năng động.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-28/neu-muon-nang-tam-style-cong-so-hay-tham-khao-ngay-tu-do-cua-4-my-nhan-nay-unnamed-9-1535435400-413-width812height1000.jpg\" /></p>\r\n\r\n<p>Những hoạ tiết kẻ sọc dọc hay caro cũng khiến cho v&oacute;c d&aacute;ng bạn g&aacute;i trở n&ecirc;n thon gọn hơn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-28/neu-muon-nang-tam-style-cong-so-hay-tham-khao-ngay-tu-do-cua-4-my-nhan-nay-unnamed-10-1535435400-218-width815height1000.jpg\" /></p>\r\n\r\n<p>Nhắc đến Thanh Hằng, kh&ocirc;ng thể bỏ qua style menswear m&agrave; c&ocirc; theo đuổi. Chị em c&ocirc;ng sở ho&agrave;n to&agrave;n c&oacute; thể ứng dụng phong c&aacute;ch n&agrave;y với những chiếc &aacute;o kho&aacute;c blazer nhẹ nh&agrave;ng v&agrave; vẫn mang n&eacute;t nữ t&iacute;nh.</p>\r\n\r\n<p><strong>2. MINH HẰNG</strong></p>\r\n\r\n<p>Một vị huấn luyện vi&ecirc;n kh&aacute;c của The Face cũng nhận được nhiều lời khen về phong c&aacute;ch thời trang của m&igrave;nh. Minh Hằng khiến kh&aacute;n giả y&ecirc;u th&iacute;ch nhờ gu ăn mặc trẻ trung, hiện đại nhưng vẫn v&ocirc; c&ugrave;ng bắt mắt. Ph&aacute;i đẹp c&oacute; thể theo ch&acirc;n Minh Hằng để sắm cho m&igrave;nh những m&oacute;n đồ đi l&agrave;m vừa trang nh&atilde; nhưng&nbsp;vẫn nổi bật giữa đ&aacute;m đ&ocirc;ng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-28/neu-muon-nang-tam-style-cong-so-hay-tham-khao-ngay-tu-do-cua-4-my-nhan-nay-unnamed-13-1535435400-233-width815height1000.jpg\" /></p>\r\n\r\n<p>Sơ mi trắng l&agrave; items &quot;đinh&quot; trong tủ đồ của bạn g&aacute;i, tuy nhi&ecirc;n một ch&uacute;t biến tấu như phần tay bồng duy&ecirc;n d&aacute;ng sẽ gi&uacute;p l&agrave;m mới phong c&aacute;ch c&ocirc;ng sở của bạn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-28/neu-muon-nang-tam-style-cong-so-hay-tham-khao-ngay-tu-do-cua-4-my-nhan-nay-unnamed-16-1535435401-220-width819height1000.jpg\" /></p>\r\n\r\n<p>Nếu bạn cảm thấy sơ mi trắng g&ograve; b&oacute;, th&igrave; sơ mi hoạ tiết hay những kiểu &aacute;o m&agrave;u trơn sặc sỡ cũng l&agrave; một gợi &yacute; kh&ocirc;ng tồi.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-28/neu-muon-nang-tam-style-cong-so-hay-tham-khao-ngay-tu-do-cua-4-my-nhan-nay-unnamed-14-1535435400-393-width1005height1000.jpg\" /></p>\r\n\r\n<p>Những thiết kế v&aacute;y su&ocirc;ng tối m&agrave;u đem lại vẻ cuốn h&uacute;t v&agrave; nữ t&iacute;nh cho những qu&yacute; c&ocirc; c&ocirc;ng sở.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-28/neu-muon-nang-tam-style-cong-so-hay-tham-khao-ngay-tu-do-cua-4-my-nhan-nay-unnamed-15-1535435401-831-width774height1000.jpg\" /></p>\r\n\r\n<p>Bộ suit được may từ chất liệu vải tweed cổ điển&nbsp;khiến HLV Minh Hằng tr&ocirc;ng quyền lực v&agrave; cực k&igrave; sang chảnh.</p>\r\n\r\n<p><strong>3. KỲ DUY&Ecirc;N</strong></p>\r\n\r\n<p>Từ trước đến nay, gu thời trang của&nbsp;<a href=\"https://eva.vn/hoa-hau-ky-duyen-p1563c36.html\">Hoa hậu Kỳ Duy&ecirc;n</a>&nbsp;lu&ocirc;n được đ&aacute;nh gi&aacute; cao bởi những bộ trang phục giản đơn&nbsp;nhưng kh&ocirc;ng k&eacute;m phần tinh tế. C&ocirc; n&agrave;ng kh&ocirc;ng chỉ l&agrave; biểu tượng thời trang cho đ&ocirc;ng đảo giới trẻ m&agrave; c&ograve;n khiến chị em c&ocirc;ng sở đứng ngồi kh&ocirc;ng y&ecirc;n bởi những m&oacute;n đồ streetstyle trẻ trung, nh&atilde; nhặn, ho&agrave;n to&agrave;n c&oacute; thể diện đi l&agrave;m.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-28/neu-muon-nang-tam-style-cong-so-hay-tham-khao-ngay-tu-do-cua-4-my-nhan-nay-unnamed-7-1535435400-667-width804height1000.jpg\" /></p>\r\n\r\n<p>Đến sơ mi trắng của c&ocirc; n&agrave;ng cũng được chăm ch&uacute;t tối đa bằng&nbsp;chi tiết đ&iacute;nh hoa cầu k&igrave;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-28/neu-muon-nang-tam-style-cong-so-hay-tham-khao-ngay-tu-do-cua-4-my-nhan-nay-unnamed-6-1535435400-133-width844height1000.jpg\" /></p>\r\n\r\n<p>M&agrave;u đen cũng l&agrave; lựa chọn an to&agrave;n d&agrave;nh cho những c&ocirc; n&agrave;ng c&ocirc;ng sở. Kh&ocirc;ng chỉ gi&uacute;p che đi những nhược điểm ngoại h&igrave;nh, gam m&agrave;u n&agrave;y c&ograve;n tạo cảm gi&aacute;c lịch sự v&agrave; cuốn h&uacute;t.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-28/neu-muon-nang-tam-style-cong-so-hay-tham-khao-ngay-tu-do-cua-4-my-nhan-nay-unnamed-4-1535435400-64-width708height1000.jpg\" /></p>\r\n\r\n<p>Một set đồ đậm chất &quot;thư k&yacute; Kim&quot; của Hoa hậu, ch&acirc;n v&aacute;y b&uacute;t ch&igrave; t&ocirc;n d&aacute;ng&nbsp;k&ecirc;t hợp c&ugrave;ng &aacute;o blouse v&agrave; t&uacute;i x&aacute;ch mini khiến bạn toả s&aacute;ng d&ugrave; đi chơi hay đi l&agrave;m.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-28/neu-muon-nang-tam-style-cong-so-hay-tham-khao-ngay-tu-do-cua-4-my-nhan-nay-unnamed-5-1535435400-68-width1032height1000.jpg\" /></p>\r\n\r\n<p>Kỳ Duy&ecirc;n cũng đặc biệt y&ecirc;u th&iacute;ch phong c&aacute;ch menswear, bằng chứng l&agrave; c&ocirc; n&agrave;ng sở hữu rất nhiều những bộ suit khoẻ khoắn, năng động.</p>\r\n\r\n<p><strong>4. HƯƠNG GIANG</strong></p>\r\n\r\n<p>Sau khi đăng quang Hoa hậu chuyển giới tại Th&aacute;i Lan, Hương Giang ng&agrave;y c&agrave;ng l&ecirc;n đời trong phong c&aacute;ch ăn mặc của m&igrave;nh. Kh&ocirc;ng chỉ được l&ograve;ng kh&aacute;n giả bởi những trang phục dạ hội lộng lẫy v&agrave; bắt mắt, người đẹp c&ograve;n c&oacute; g&acirc;y ấn tượng với gu thời trang h&agrave;ng ng&agrave;y của m&igrave;nh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-28/neu-muon-nang-tam-style-cong-so-hay-tham-khao-ngay-tu-do-cua-4-my-nhan-nay-unnamed-2-1535435400-294-width937height1000.jpg\" /></p>\r\n\r\n<p>Vốn l&agrave; một c&ocirc; g&aacute;i y&ecirc;u th&iacute;ch những gam m&agrave;u rực rỡ, những items cơ bản như ch&acirc;n v&aacute;y hay sơ mi cũng được c&ocirc; n&agrave;ng chọn lựa họa tiết v&agrave; m&agrave;u sắc nổi nhất.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-28/neu-muon-nang-tam-style-cong-so-hay-tham-khao-ngay-tu-do-cua-4-my-nhan-nay-unnamed-1-1535435400-397-width840height1000.jpg\" /></p>\r\n\r\n<p>Vừa lịch sự lại vừa c&aacute; t&iacute;nh, set đồ của Hương Giang đ&aacute;ng ch&uacute; &yacute; kh&ocirc;ng phải ở việc mặc &aacute;o ph&ocirc;ng b&ecirc;n ngo&agrave;i sơ mi m&agrave; l&agrave; việc chọn m&agrave;u cho&eacute; m&agrave; kh&ocirc;ng hề ph&ocirc; của c&ocirc; n&agrave;ng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-28/neu-muon-nang-tam-style-cong-so-hay-tham-khao-ngay-tu-do-cua-4-my-nhan-nay-unnamed-3-1535435400-5-width815height1000.jpg\" /></p>\r\n\r\n<p>Bộ suit chấm mi m&agrave;u v&agrave;ng m&ugrave; tạt cũng l&agrave; một hướng đi t&aacute;o bạo cho những c&ocirc; n&agrave;ng lu&ocirc;n muốn m&igrave;nh l&agrave; trung t&acirc;m ch&uacute; &yacute;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-28/neu-muon-nang-tam-style-cong-so-hay-tham-khao-ngay-tu-do-cua-4-my-nhan-nay-unnamed-1535435401-747-width874height1000.jpg\" /></p>\r\n\r\n<p>Hoạ tiết chấm bi hẳn rất được người đẹp ưu &aacute;i, những thiết kế v&aacute;y liền c&ugrave;ng hoạ tiết cổ điển sẽ đem lại hiệu quả kh&ocirc;ng ngờ cho những set đồ c&ocirc;ng sở.</p>\r\n', '3', '', '2018-10-01', '1', '', '', '2018-10-01', '2018-10-01');
INSERT INTO `post` (`id`, `cat_id`, `cat_slug`, `post_name`, `post_slug`, `post_img`, `post_img2`, `post_gtngan`, `post_gtchitiet`, `loaibaiviet`, `tacgia`, `date`, `online`, `meta_des`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(95, 28, 'tin-tuc', 'Học ngay 5 kiểu váy sơ mi cực đẹp của sao Việt, cứ mặc là chắc chắn được khen!', 'hoc-ngay-5-kieu-vay-so-mi-cuc-dep-cua-sao-viet-cu-mac-la-chac-chan-duoc-khen', 'EJxel-f2.jpg', '', 'Đừng nghĩ v&aacute;y sơ mi l&agrave; m&oacute;n đồ thời trang đơn điệu, nhờ xuất hiện nhiều kiểu d&aacute;ng, m&agrave;u sắc kh&aacute;c nhau m&agrave; kiểu v&aacute;y n&agrave;y ng&agrave;y c&agrave;ng được l&ograve;ng ph&aacute;i đẹp,.\r\n', '<p>Những chiếc v&aacute;y sơ mi trang nh&atilde;, mặc được xuy&ecirc;n suốt từ h&egrave; sang thu ch&iacute;nh l&agrave; m&oacute;n đồ&nbsp;<a href=\"https://eva.vn/thoi-trang-c36.html\">thời trang</a>&nbsp;được săn đ&oacute;n nhiều nhất trong thời gian gần đ&acirc;y. Đơn giản nhưng kh&ocirc;ng k&eacute;m phần duy&ecirc;n d&aacute;ng, kiểu đầm n&agrave;y xuất hiện trong những set đồ&nbsp;của h&agrave;ng loạt sao Việt, từ streetstyle ph&oacute;ng kho&aacute;ng đến thảm đỏ quyến rũ. Dưới đ&acirc;y, h&atilde;y c&ugrave;ng tham khảo những biến tấu của c&aacute;c mỹ nh&acirc;n&nbsp;Việt với chiếc v&aacute;y &quot;quốc d&acirc;n&quot; ai mặc l&ecirc;n cũng đẹp.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-24/hoc-theo-5-kieu-vay-so-mi-cuc-dep-cua-sao-viet-cu-mac-len-la-chac-chan-duoc-khen-unnamed-11-1535107464-628-width814height1000.jpg\" /></p>\r\n\r\n<p>Chiếc v&aacute;y sơ mi của&nbsp;<a href=\"https://eva.vn/diem-my-p1584c20.html\">Diễm My</a>&nbsp;9x l&agrave;m cho kh&ocirc;ng &iacute;t người phải trầm trồ v&igrave; qu&aacute; độc đ&aacute;o.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-24/hoc-theo-5-kieu-vay-so-mi-cuc-dep-cua-sao-viet-cu-mac-len-la-chac-chan-duoc-khen-unnamed-5-1535107464-675-width802height1000.jpg\" /></p>\r\n\r\n<p>T&oacute;c Ti&ecirc;n cũng kh&ocirc;ng hề l&eacute;p vế khi mặc corset b&ecirc;n ngo&agrave;i sơ mi d&aacute;ng d&agrave;i. C&aacute;ch kết hợp n&agrave;y kh&ocirc;ng chỉ khiến cho v&oacute;c d&aacute;ng của người đẹp thon gọn hơn m&agrave; c&ograve;n khiến tổng thể trang phục v&ocirc; c&ugrave;ng quyến rũ.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-24/hoc-theo-5-kieu-vay-so-mi-cuc-dep-cua-sao-viet-cu-mac-len-la-chac-chan-duoc-khen-unnamed-13-1535107464-251-width804height1000.jpg\" /></p>\r\n\r\n<p>Cũng lựa chọn mặc &aacute;o yếm ra ngo&agrave;i v&aacute;y sơ mi nhưng Minh Hằng c&ograve;n cẩn trọng phối th&ecirc;m quần skinny tối m&agrave;u b&ecirc;n dưới.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-24/hoc-theo-5-kieu-vay-so-mi-cuc-dep-cua-sao-viet-cu-mac-len-la-chac-chan-duoc-khen-unnamed-8-1535107464-615-width679height1000.jpg\" /></p>\r\n\r\n<p>Ho&agrave;ng Thuỳ diện v&aacute;y sơ mi vạt lệch m&agrave;u đen sang chảnh, điểm nhấn ch&iacute;nh l&agrave; những m&oacute;n phụ kiện đồng điệu đi k&egrave;m.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-24/hoc-theo-5-kieu-vay-so-mi-cuc-dep-cua-sao-viet-cu-mac-len-la-chac-chan-duoc-khen-unnamed-7-1535107464-65-width760height1000.jpg\" /></p>\r\n\r\n<p>Chiếc v&aacute;y sơ mi vạt high-low của H&agrave; Hồ c&agrave;ng th&ecirc;m tinh tế nhờ chi tiết&nbsp;nơ thắt&nbsp;ngang eo.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-24/hoc-theo-5-kieu-vay-so-mi-cuc-dep-cua-sao-viet-cu-mac-len-la-chac-chan-duoc-khen-unnamed-9-1535107464-420-width741height1000.jpg\" /></p>\r\n\r\n<p>Trong khi đ&oacute;, thiết kế v&aacute;y sơ mi trắng của Phạm Hương lại mang hơi hướng vintage với cổ tr&ograve;n, tay ngắn v&agrave; phần b&ecirc;n dưới xo&egrave; nhẹ nh&agrave;ng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-24/hoc-theo-5-kieu-vay-so-mi-cuc-dep-cua-sao-viet-cu-mac-len-la-chac-chan-duoc-khen-unnamed-14-1535107464-494-width1005height1000.jpg\" /></p>\r\n\r\n<p>Si&ecirc;u mẫu Ho&agrave;ng Yến g&acirc;y ấn tượng với thiết kế v&aacute;y sơ mi cut-out độc đ&aacute;o.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-24/hoc-theo-5-kieu-vay-so-mi-cuc-dep-cua-sao-viet-cu-mac-len-la-chac-chan-duoc-khen-unnamed-12-1535107464-741-width822height1000.jpg\" /></p>\r\n\r\n<p>Chi tiết kẻ sọc kh&ocirc;ng chỉ gi&uacute;p c&acirc;n đối d&aacute;ng người m&agrave; c&ograve;n gi&uacute;p Thanh Hằng tr&ocirc;ng &quot;mi nhon&quot; hơn rất nhiều.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-24/hoc-theo-5-kieu-vay-so-mi-cuc-dep-cua-sao-viet-cu-mac-len-la-chac-chan-duoc-khen-unnamed-10-1535107464-555-width808height1000.jpg\" /></p>\r\n\r\n<p>Đ&acirc;y cũng ch&iacute;nh l&agrave; hoạ tiết &quot;tủ&quot; của ngọc nữ Tăng Thanh H&agrave;, chiếc đầm giản dị nhưng kh&ocirc;ng k&eacute;m phần thanh lịch cho phong c&aacute;ch h&agrave;ng ng&agrave;y.</p>\r\n\r\n<p><strong>5 KIỂU V&Aacute;Y SƠ MI PH&Aacute;I ĐẸP KH&Ocirc;NG N&Ecirc;N BỎ LỠ</strong></p>\r\n\r\n<p><strong>1. V&Aacute;Y SƠ MI TRẮNG CƠ BẢN</strong></p>\r\n\r\n<p>Cũng giống như việc sơ mi trắng l&agrave; m&oacute;n đồ kh&ocirc;ng thể thiếu được trong tủ quần &aacute;o, một chiếc v&aacute;y trắng d&aacute;ng sơ mi cũng l&agrave; một lựa chọn ho&agrave;n hảo cho những người y&ecirc;u th&iacute;ch sự đơn giản, trẻ trung.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-24/hoc-theo-5-kieu-vay-so-mi-cuc-dep-cua-sao-viet-cu-mac-len-la-chac-chan-duoc-khen-unnamed-15-1535107465-135-width980height1000.jpg\" /></p>\r\n\r\n<p>Một chiếc v&aacute;y sơ mi trắng cơ bản sẽ rất ph&ugrave; hợp với những qu&yacute; c&ocirc; thanh lịch.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-24/hoc-theo-5-kieu-vay-so-mi-cuc-dep-cua-sao-viet-cu-mac-len-la-chac-chan-duoc-khen-unnamed-20-1535107465-845-width1008height1000.jpg\" /></p>\r\n\r\n<p>Điểm cộng của kiểu đầm n&agrave;y ch&iacute;nh l&agrave; rất dễ mặc v&agrave; c&oacute; thể phối hợp với nhiều loại phụ kiện kh&aacute;c nhau.</p>\r\n\r\n<p><strong>2. V&Aacute;Y SƠ MI K&Egrave;M THẮT LƯNG</strong></p>\r\n\r\n<p>D&ugrave; bạn th&iacute;ch mặc kiểu v&aacute;y d&aacute;ng su&ocirc;ng đến mức n&agrave;o, cũng đừng vội bỏ đi chiếc đai đi k&egrave;m với v&aacute;y sơ mi khi mua ch&uacute;ng về. Kh&ocirc;ng đơn giản chỉ l&agrave; điểm nhấn&nbsp;t&ocirc;n l&ecirc;n v&ograve;ng eo thon gọn, chi tiết n&agrave;y c&ograve;n gi&uacute;p người mặc th&ecirc;m phần sang trọng v&agrave; quyến rũ.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-24/hoc-theo-5-kieu-vay-so-mi-cuc-dep-cua-sao-viet-cu-mac-len-la-chac-chan-duoc-khen-unnamed-18-1535107465-394-width778height1000.jpg\" /></p>\r\n\r\n<p>Chiếc đai nơ xinh xắn gi&uacute;p bạn g&aacute;i th&ecirc;m phần nữ t&iacute;nh v&agrave; duy&ecirc;n d&aacute;ng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-24/hoc-theo-5-kieu-vay-so-mi-cuc-dep-cua-sao-viet-cu-mac-len-la-chac-chan-duoc-khen-unnamed-19-1535107465-990-width1231height1000.jpg\" /></p>\r\n\r\n<p>Thắt lưng đi k&egrave;m ch&iacute;nh l&agrave; điểm nhấn cho chiếc v&aacute;y su&ocirc;ng của bạn, kh&ocirc;ng chỉ c&acirc;n đối tỉ lệ th&acirc;n người, m&agrave; c&ograve;n gi&uacute;p &quot;ăn gian&quot; chiều cao cực tốt.</p>\r\n\r\n<p><strong>3. V&Aacute;Y SƠ MI DENIM</strong></p>\r\n\r\n<p>Chất liệu denim hẳn kh&ocirc;ng c&ograve;n lạ lẫm g&igrave; đối với c&aacute;c t&iacute;n đồ thời trang. V&aacute;y sơ mi denim mang đến cảm gi&aacute;c khoẻ khoắn, năng động v&agrave; kh&ocirc;ng k&eacute;m phần nổi bật cho người mặc. Đ&acirc;y l&agrave; một trong số &iacute;t những m&oacute;n đồ thời trang&nbsp;ph&ugrave; hợp với hầu như mọi v&oacute;c d&aacute;ng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-24/hoc-theo-5-kieu-vay-so-mi-cuc-dep-cua-sao-viet-cu-mac-len-la-chac-chan-duoc-khen-unnamed-16-1535107465-919-width926height1000.jpg\" /></p>\r\n\r\n<p>V&aacute;y sơ mi denim c&aacute; t&iacute;nh d&agrave;nh cho những c&ocirc; g&aacute;i năng động, hiện đại.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-24/hoc-theo-5-kieu-vay-so-mi-cuc-dep-cua-sao-viet-cu-mac-len-la-chac-chan-duoc-khen-unnamed-22-1535107465-62-width848height1000.jpg\" /></p>\r\n\r\n<p>Kh&ocirc;ng qu&aacute; cầu k&igrave; nhưng items n&agrave;y chắc hẳn sẽ khiến bạn nổi bật giữa đ&aacute;m đ&ocirc;ng.</p>\r\n\r\n<p><strong>4. V&Aacute;Y SƠ MI D&Aacute;NG D&Agrave;I</strong></p>\r\n\r\n<p>Điểm cộng của những chiếc v&aacute;y sơ mi d&aacute;ng d&agrave;i l&agrave; khả năng che giấu rất tốt&nbsp;nhược điểm về ngoại h&igrave;nh, từ v&ograve;ng eo mũm mĩm đến đ&ocirc;i ch&acirc;n v&ograve;ng kiềng. Sự s&aacute;ng tạo trong thiết kế d&aacute;ng d&agrave;i vừa&nbsp;giữ được n&eacute;t thanh lịch ở phần th&acirc;n như một chiếc &aacute;o sơ mi xinh xắn v&agrave; phần ch&acirc;n v&aacute;y d&aacute;ng x&ograve;e nữ t&iacute;nh, trẻ trung.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-24/hoc-theo-5-kieu-vay-so-mi-cuc-dep-cua-sao-viet-cu-mac-len-la-chac-chan-duoc-khen-unnamed-17-1535107465-648-width812height1000.jpg\" /></p>\r\n\r\n<p>Một chiếc v&aacute;y sơ mi d&aacute;ng d&agrave;i sẽ l&agrave; trợ thủ đắc lực d&agrave;nh&nbsp;cho những c&ocirc; n&agrave;ng chưa tự tin về v&oacute;c d&aacute;ng của m&igrave;nh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-24/hoc-theo-5-kieu-vay-so-mi-cuc-dep-cua-sao-viet-cu-mac-len-la-chac-chan-duoc-khen-unnamed-21-1535107465-443-width717height1000.jpg\" /></p>\r\n\r\n<p>Khi bạn diện items n&agrave;y, đừng qu&ecirc;n sử dụng thắt lưng để tạo điểm nhấn cho trang phục.</p>\r\n\r\n<p><strong>5. V&Aacute;Y SƠ MI BA LỖ</strong></p>\r\n\r\n<p>Một chiếc v&aacute;y sơ mi ba lỗ duy&ecirc;n d&aacute;ng c&oacute; thể mặc được trong mọi ho&agrave;n cảnh, từ đi chơi, đi l&agrave;m đến hẹn h&ograve; đều ph&ugrave; hợp. Những c&ocirc; n&agrave;ng b&aacute;nh b&egrave;o chắc chắn sẽ kết th&acirc;n với thiết kế trang nh&atilde; n&agrave;y.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-24/hoc-theo-5-kieu-vay-so-mi-cuc-dep-cua-sao-viet-cu-mac-len-la-chac-chan-duoc-khen-unnamed-23-1535107465-752-width672height1000.jpg\" /></p>\r\n\r\n<p>Kiểu v&aacute;y nhẹ nh&agrave;ng, uyển chuyển đặc biệt ph&ugrave; hợp với d&aacute;ng người nhỏ nhắn, mảnh mai.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.eva.vn/upload/3-2018/images/2018-08-24/hoc-theo-5-kieu-vay-so-mi-cuc-dep-cua-sao-viet-cu-mac-len-la-chac-chan-duoc-khen-unnamed-6-1535107464-128-width844height1000.jpg\" /></p>\r\n\r\n<p>D&aacute;ng v&aacute;y quấn cổ sơ mi cũng được lăng x&ecirc; nhiệt t&igrave;nh thời gian gần đ&acirc;y.</p>\r\n', '3', '', '2018-10-01', '1', '', '', '2018-10-01', '2018-10-01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `postdetail`
--

CREATE TABLE `postdetail` (
  `id` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `postdetail`
--

INSERT INTO `postdetail` (`id`, `img`, `post_id`) VALUES
(11, 'zmBmI-1.png', 59),
(12, 'LgI1l-f.jpg', 59),
(13, 'b88NU-4(64)-compressed.jpg', 59),
(14, 'RVYgC-6b9batdongsangiamgia3.jpg', 61),
(15, 'B1bXd-giaovienvanusinhduyendangtronglekhaigiangsom.jpg', 63),
(16, 'zH62C-20160220180113_dsc_0361-edit_16316722053_o_result.jpg', 60);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_translations`
--

CREATE TABLE `post_translations` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `post_name` text COLLATE utf8_unicode_ci,
  `post_slug` text COLLATE utf8_unicode_ci,
  `post_gtngan` longtext COLLATE utf8_unicode_ci,
  `post_gtchitiet` longtext COLLATE utf8_unicode_ci,
  `tacgia` text COLLATE utf8_unicode_ci,
  `date` date DEFAULT NULL,
  `online` int(11) DEFAULT NULL,
  `meta_des` int(11) DEFAULT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  `loaibaiviet` text COLLATE utf8_unicode_ci,
  `post_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_img2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_id` int(11) NOT NULL,
  `catcha` int(11) DEFAULT NULL,
  `cat_slug` text COLLATE utf8_unicode_ci NOT NULL,
  `pro_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pro_slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pro_gtngan` text COLLATE utf8_unicode_ci,
  `pro_gtchitiet` longtext COLLATE utf8_unicode_ci,
  `description3` longblob,
  `description4` longtext COLLATE utf8_unicode_ci,
  `pro_price` int(11) DEFAULT NULL,
  `kichthuoc` text COLLATE utf8_unicode_ci,
  `pro_newprice` int(11) DEFAULT NULL,
  `pro_sale` int(11) DEFAULT NULL,
  `pro_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pro_img2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pro_masp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mausac` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pro_khuyenmai` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pro_trangthai` int(11) DEFAULT NULL,
  `pro_tinhtrang` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pro_xuatxu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pro_noibat` int(11) DEFAULT NULL,
  `link` text COLLATE utf8_unicode_ci,
  `title` text COLLATE utf8_unicode_ci,
  `metadescription` text COLLATE utf8_unicode_ci,
  `metatab` text COLLATE utf8_unicode_ci,
  `online` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `cat_id`, `catcha`, `cat_slug`, `pro_name`, `pro_slug`, `pro_gtngan`, `pro_gtchitiet`, `description3`, `description4`, `pro_price`, `kichthuoc`, `pro_newprice`, `pro_sale`, `pro_img`, `pro_img2`, `pro_masp`, `mausac`, `pro_khuyenmai`, `pro_trangthai`, `pro_tinhtrang`, `pro_xuatxu`, `pro_noibat`, `link`, `title`, `metadescription`, `metatab`, `online`, `created_at`, `updated_at`) VALUES
(21, 72, 71, 'ao-thu-dong', ' Áo thu đông nữ Moxueer ren hoa', 'ao-thu-dong-nu-moxueer-ren-hoa', NULL, NULL, 0x3c703e264161637574653b6f2074687520c491266f636972633b6e67206ee1bbaf204d6f78756565722072656e20686f612070686f6e672063266161637574653b63682048266167726176653b6e205175e1bb916320c49169e1bb877520c491266167726176653b2076e1bb9b69207068e1baa76e2063e1bb952076266167726176653b2074617920266161637574653b6f207068e1bb91692072656e20686f61207875792665636972633b6e207468e1baa5752c2074c4836e672076e1babb2067e1bba3692063e1baa36d2c206e266561637574653b74206475792665636972633b6e2064266161637574653b6e672c206375e1bb916e2068267561637574653b742063686f207068266161637574653b6920c491e1bab9703c2f703e0d0a, NULL, 240000, '							<li><span>L</span></li>\r\n<li><span>S</span></li>\r\n						', NULL, NULL, 'ilmvS-dpNxUEBA.jpg', '', 'TD1', '<li><span>Xanh</span></li><li><span>Đen</span></li>', NULL, 1, NULL, NULL, 0, '							\r\n						', '							 Áo thu đông nữ Moxueer ren hoa\r\n						', '							\r\n						', '							\r\n					', 1, '2018-09-22 22:54:43', '2018-09-27 19:27:13'),
(22, 72, 71, 'ao-thu-dong', 'Sweater sơ mi dài tay họa tiết gothic HStyle', 'sweater-so-mi-dai-tay-hoa-tiet-gothic-hstyle', NULL, NULL, 0x3c703e537765617465722073c6a1206d692064266167726176653b69207461792068e1bb8d61207469e1babf7420676f7468696320485374796c652074e1baa16f206e2665636972633b6e207068e1baa76e2063e1bb9520266161637574653b6f20767569206de1baaf742c206c266167726176653b206d266f61637574653b6e20c491e1bb93206b68266f636972633b6e67207468e1bb8320746869e1babf752074726f6e672074e1bba720c491e1bb932063e1bba761206e68e1bbaf6e672063266f636972633b206e266167726176653b6e67206ec4836e6720c491e1bb996e672c207472e1babb207472756e673c2f703e0d0a, NULL, 240000, '							<li><span>L</span></li>\r\n<li><span>S</span></li>\r\n<li><span>XL</span></li>\r\n						', NULL, NULL, 'xq1Ez-SL4fTOKH.jpg', '', 'TD2', '<li><span>Xanh</span></li>\r\n<li><span>Trắng</span></li>\r\n<li><span>Đen</span></li>', NULL, 1, NULL, NULL, 0, '							\r\n						', '							\r\n						', '							\r\n						', '							\r\n					', 1, '2018-09-22 23:08:06', '2018-09-27 19:28:01'),
(23, 72, 71, 'ao-thu-dong', 'Áo thu đông nữ Moxueer ren hoa', 'ao-thu-dong-nu-moxueer-ren-hoa', NULL, NULL, 0x3c703e264161637574653b6f2074687520c491266f636972633b6e67206ee1bbaf204d6f78756565722072656e20686f612070686f6e672063266161637574653b63682048266167726176653b6e205175e1bb916320c49169e1bb877520c491266167726176653b2076e1bb9b69207068e1baa76e2063e1bb952076266167726176653b2074617920266161637574653b6f207068e1bb91692072656e20686f61207875792665636972633b6e207468e1baa5752c2074c4836e672076e1babb2067e1bba3692063e1baa36d2c206e266561637574653b74206475792665636972633b6e2064266161637574653b6e672c206375e1bb916e2068267561637574653b742063686f207068266161637574653b6920c491e1bab9703c2f703e0d0a, NULL, 240000, '							<li><span>L</span></li>\r\n<li><span>S</span></li>\r\n						', NULL, NULL, 'ziBtx-jdKrysbb.jpg', '', 'TD3', '<li><span>Xanh</span></li>\r\n<li><span>Trắng</span></li>', NULL, 1, NULL, NULL, 0, '							\r\n						', '							\r\n						', '							\r\n						', '							\r\n					', 1, '2018-09-22 23:11:34', '2018-09-27 19:31:41'),
(24, 72, 71, 'ao-thu-dong', 'ÁO LEN NỮ CÁNH DƠI THU ĐÔNG', 'ao-len-nu-canh-doi-thu-dong', NULL, NULL, 0x3c703e264161637574653b6f2063e1bb952074687579e1bb816e2078696e682078e1baaf6e202c6769267561637574653b702062e1baa16e206ee1bbaf2074266961637574653b6e682068c6a16e202c78696e6820c491e1bab9702068c6a16e202c76e1baa17420266161637574653b6f20626f207468756e206769267561637574653b702063686f2062e1baa16e2063266f61637574653b2063e1baa36d206769266161637574653b6320e1baa56d20266161637574653b703c2f703e0d0a, NULL, 180000, '							<li><span>L</span></li>\r\n<li><span>S</span></li>\r\n						', NULL, NULL, 'cPn22-SveLI3_simg_953ea4_903-903-36-62_cropf_simg_b5529c_250x250_maxb.jpg', '', 'TD4', '<li><span>Xanh</span></li>\r\n<li><span>Hồng</span></li>', NULL, 0, NULL, NULL, 0, '							\r\n						', '							\r\n						', '							\r\n						', '							\r\n					', 1, '2018-09-22 23:28:50', '2018-09-27 19:32:08'),
(25, 72, 71, 'tu-5-canh', 'tu nguoi lon', 'tu-nguoi-lon', NULL, NULL, '', NULL, 155000, '														<li><span>XL</span></li>\r\n<li><span>L</span></li>\r\n						\r\n						', NULL, NULL, '9ghb9-37549574_521633951596914_3576187326260314112_n_521633944930248.jpg', '', 'TD5', '<li><span>Xanh</span></li>\r\n<li><span>Trắng</span></li>', NULL, 1, NULL, NULL, 0, '														\r\n						\r\n						', '														\r\n						\r\n						', '														\r\n						\r\n						', '														\r\n					\r\n					', 1, '2018-09-22 23:35:01', '2018-11-16 20:41:10'),
(26, 81, 79, 'quan-jeans', 'Quần Jean Nữ Ống Đứng JESSIE EX', 'quan-jean-nu-ong-dung-jessie-ex', NULL, NULL, 0x3c703e3c7374726f6e673e3c7374726f6e673e5175e1baa76e206a65616e206ce1bbad6e67206ee1bbaf20e1bb916e672072e1bb996e672073266167726176653b6e6820c49169e1bb87753c2f7374726f6e673e3c2f7374726f6e673e3a204368e1baa574206c69e1bb8775206a65616e2062e1bb816e20c491e1bab9702c206d616e6720c491e1babf6e2063e1baa36d206769266161637574653b632074686fe1baa369206d266161637574653b692074726f6e67206de1bb8d6920686fe1baa17420c491e1bb996e672e20546869e1babf74206be1babf20c491c6a16e206769e1baa36e2c207468e1bb9d69207472616e67207068267567726176653b2068e1bba3702076e1bb9b69206e6869e1bb817520c491e1bb99207475e1bb9569206b68266161637574653b63206e6861753c2f703e0d0a, NULL, 209000, '														<li><span>XL</span></li>\r\n\r\n<li><span>L</span></li>\r\n						\r\n						', NULL, NULL, 'Sx8QN-quan_jeans_dai_nu_eco_jean_ca_tinh_018a_e5e9.jpg', '', 'QJ1', '<li><span>Xanh</span></li>\r\n\r\n<li><span>Trắng</span></li>', NULL, 1, NULL, NULL, 0, '														\r\n						\r\n						', '														\r\n						\r\n						', '														\r\n						\r\n						', '														\r\n					\r\n					', 1, '2018-09-23 01:46:29', '2018-09-27 19:32:47'),
(27, 81, 79, 'quan-jeans', 'Quần jean nữ IMAGINE U phối rách', 'quan-jean-nu-imagine-u-phoi-rach', NULL, NULL, 0x3c703e3c7374726f6e673e5175e1baa76e206a65616e206ee1bbaf20494d4147494e452055207068e1bb91692072266161637574653b6368204946303035313c2f7374726f6e673e3a204368e1baa574206c69e1bb8775206a65616e2062e1bb816e20c491e1bab9702c2063266f61637574653b20c491e1bb9920636f206769266174696c64653b6e206e68e1bab92c207468e1baa56d2068267561637574653b74206de1bb932068266f636972633b692074e1bb91742e20546869e1babf74206be1babf20c491c6a16e206769e1baa36e2c207468e1bb9d69207472616e67207068267567726176653b2068e1bba3702076e1bb9b69206e6869e1bb817520c491e1bb99207475e1bb9569206b68266161637574653b63206e6861753c2f703e0d0a, NULL, 302000, '														<li><span>26</span></li>\r\n<li><span>27</span></li>\r\n						\r\n						', NULL, NULL, 'AW0xm-quan_jean_nu_imagine_u_phoi_rach_if0051_36fb.jpg', '', 'QJ2', '<li><span>Xanh</span></li>', NULL, 1, NULL, NULL, 0, '														\r\n						\r\n						', '														\r\n						\r\n						', '														\r\n						\r\n						', '														\r\n					\r\n					', 1, '2018-09-23 01:50:04', '2018-09-27 19:33:18'),
(28, 83, 79, '0', 'Quần short nữ rách cá tính ', 'quan-short-nu-rach-ca-tinh', NULL, NULL, 0x3c703e3c7374726f6e673e3c7374726f6e673e5175e1baa76e2073686f7274206ee1bbaf2072266161637574653b63682063266161637574653b2074266961637574653b6e683c2f7374726f6e673e3c2f7374726f6e673e3a204368e1baa574206c69e1bb8775204a65616e2062e1bb816e206368e1baaf632c207468e1baa56d2068267561637574653b74206de1bb932068266f636972633b692074e1bb91742c2074686f266161637574653b6e67206d266161637574653b74206b6869206de1bab7632e20546869e1babf74206be1babf2074756120727561206ec6a16920e1bb916e67207175e1baa76e2c2063267567726176653b6e67207068e1baa76e20776173682072266161637574653b63682062e1bba5692062e1bab76d206d616e6720c491e1babf6e2063686f2062e1baa16e2076e1babb207472e1babb207472756e672c206ec4836e6720c491e1bb996e673c2f703e0d0a, NULL, 140000, '\r\n<li><span>XL</span></li>\r\n\r\n<li><span>L</span></li>', NULL, NULL, 'usxM8-quan_short_nu_rach_ca_tinh_224b.jpg', '', 'S42392', '<li><span>Xanh</span></li>\r\n\r\n<li><span>Trắng</span></li>', NULL, 0, NULL, NULL, 2, '', '', '', '', 1, '2018-09-23 03:15:47', '2018-09-23 03:15:47'),
(29, 83, 79, '0', 'Quần short nữ wash rách cá tính SID42384', 'quan-short-nu-wash-rach-ca-tinh-sid42384', NULL, NULL, 0x3c703e3c7374726f6e673e3c7374726f6e673e5175e1baa76e2073686f7274206ee1bbaf20776173682072266161637574653b63682063266161637574653b2074266961637574653b6e683c2f7374726f6e673e3c2f7374726f6e673e3a204368e1baa574206c69e1bb8775206a65616e2062e1bb816e20c491e1bab9702c206368e1baaf63206368e1baaf6e206b68692073e1bbad2064e1bba56e672e20546869e1babf74206be1babf206b69e1bb8375207175e1baa76e2073686f72742076e1bb9b69207068e1baa76e2074682661636972633b6e20776173682072266161637574653b63682062e1bba5692062e1bab76d206d616e6720c491e1babf6e2063686f2062e1baa16e2076e1babb207472e1babb207472756e672c206ec4836e6720c491e1bb996e672e3c2f703e0d0a, NULL, 150000, '<li><span>XL</span></li>\r\n\r\n<li><span>L</span></li>', NULL, NULL, '6KuZh-quan_short_nu_wash_rach_ca_tinh_3880.jpg', '', 'S42384', '<li><span>Xanh</span></li>\r\n\r\n<li><span>Trắng</span></li>', NULL, 1, NULL, NULL, 2, '', '', '', '', 1, '2018-09-23 03:21:12', '2018-09-23 03:21:12'),
(30, 83, 79, '0', 'Quần short jean xắn gấu cá tính SID52029', 'quan-short-jean-xan-gau-ca-tinh-sid52029', NULL, NULL, 0x3c703e3c7374726f6e673e3c7374726f6e673e5175e1baa76e2073686f7274206a65616e2078e1baaf6e2067e1baa5752063266161637574653b2074266961637574653b6e683c2f7374726f6e673e3c2f7374726f6e673e3a204368e1baa574206c69e1bb8775206a65616e2063e1bb9520c49169e1bb836e2c2062e1bb816e20c491e1bab970207468656f207468e1bb9d69206769616e2c207468e1baa56d2068267561637574653b74206de1bb932068266f636972633b692074e1bb91742e20546869e1babf74206be1babf207175e1baa76e2078e1baaf6e2067e1baa575207068e1bb91692077617368207468e1bb9d69207472616e672076266167726176653b2072266161637574653b63682062e1bba5692062e1bab76d206d616e6720c491e1babf6e2063686f2062e1baa16e2076e1babb207472e1babb207472756e672c206ec4836e6720c491e1bb996e672e3c2f703e0d0a, NULL, 25000, '<li><span>XL</span></li>\r\n\r\n<li><span>L</span></li>', NULL, NULL, 'W2cZI-quan_short_jean_xan_gau_ca_tinh_3f14.jpg', '', 'S52029', '<li><span>Xanh</span></li>\r\n\r\n<li><span>Trắng</span></li>', NULL, 1, NULL, NULL, 2, '', '', '', '', 1, '2018-09-23 03:23:08', '2018-09-23 03:23:08'),
(31, 95, 93, '0', 'Đầm ngủ HISEXY ngực ren T200 SID66421', 'dam-ngu-hisexy-nguc-ren-t200-sid66421', NULL, NULL, 0x3c703e3c7374726f6e673ec490e1baa76d206e67e1bba720484953455859206e67e1bbb1632072656e20543230303c2f7374726f6e673e3a204368e1baa574206c69e1bb877520706869206ce1bba561206d266161637574653b74206de1babb2c206de1bb816d206de1baa1692c2072e1baa574202665636972633b6d20266161637574653b692c2064e1bb85206769e1bab774206d6175206b68266f636972633b2063686f2062e1baa16e206c75266f636972633b6e2074686fe1baa369206d266161637574653b69206e68e1baa574206b686920686fe1baa17420c491e1bb996e672e20546869e1babf74206be1babf2068616920642661636972633b792067e1bba3692063e1baa36d2c207068e1bb91692072656e2074696e682074e1babf2063686f207068266161637574653b6920c491e1bab9702074682665636972633b6d2078696e682078e1baaf6e2076266167726176653b206c266f636972633b69206375e1bb916e3c2f703e0d0a, NULL, 300000, '							<li><span>XL</span></li>\r\n\r\n<li><span>L</span></li>\r\n						', NULL, NULL, 'NuigY-dam_ngu_hisexy_nguc_ren_t200_2c88.jpg', '', 'T200 SID66421', '<li><span>Xanh</span></li>\r\n\r\n<li><span>Trắng</span></li>', NULL, 1, NULL, NULL, 0, '							\r\n						', '							\r\n						', '							\r\n						', '							\r\n					', 1, '2018-09-23 06:54:23', '2018-09-23 07:07:26'),
(32, 91, 89, '0', 'Đầm maxi dự tiệc vạt bầu nữ tính SID66531', 'dam-maxi-du-tiec-vat-bau-nu-tinh-sid66531', NULL, NULL, 0x3c703e3c7374726f6e673ec490e1baa76d206d6178692064e1bbb1207469e1bb87632076e1baa1742062e1baa775206ee1bbaf2074266961637574653b6e683c2f7374726f6e673e3a204368e1baa574206c69e1bb87752072656e202665636972633b6d20266161637574653b692c206e68e1bab9206e68266167726176653b6e672c2062e1bb816e20c491e1bab9702c206b68266f636972633b6e672068e1baa76d2062266961637574653b2c2074686f266161637574653b6e67206d266161637574653b742c206c75266f636972633b6e206d616e67206ce1baa1692073e1bbb12074686fe1baa369206d266161637574653b69206e68e1baa5742063686f2062e1baa16e2e20546869e1babf74206be1babf2064266161637574653b6e672078266f67726176653b652073266167726176653b6e6820c49169e1bb87752c207068e1bb91692076e1baa1742062e1baa77520c491e1baa7752074696e682074e1babf2074e1baa16f2073e1bbb12073616e67207472e1bb8d6e672c207468616e68206ce1bb8b63683c2f703e0d0a, NULL, 500000, '<li><span>XL</span></li>\r\n\r\n<li><span>L</span></li>', NULL, NULL, '0EFbM-dam_maxi_du_tiec_vat_bau_nu_tinh_002b.jpg', '', 'D1', '<li><span>Xanh</span></li>\r\n\r\n<li><span>Trắng</span></li>', NULL, 1, NULL, NULL, 2, '', '', '', '', 1, '2018-09-23 06:56:20', '2018-09-23 06:56:20'),
(33, 90, 89, '0', 'Đầm maxi nơ vai nữ tính', 'dam-maxi-no-vai-nu-tinh', NULL, NULL, 0x3c703e3c7374726f6e673ec490e1baa76d206d617869206ec6a120766169206ee1bbaf2074266961637574653b6e683c2f7374726f6e673e3a204368e1baa574206c69e1bb877520766f616e206de1bb816d206de1baa1692c206d266161637574653b74206de1babb20c491e1baa7792074686f266161637574653b6e67206d266161637574653b742063686f2062e1baa16e2067266161637574653b6920792665636972633b6e20742661636972633b6d206b68692073e1bbad2064e1bba56e672073e1baa36e207068e1baa96d2e20546869e1babf74206be1babf20c491616e20642661636972633b792063266161637574653b636820c49169e1bb87752c7068e1bb9169206ec6a12078696e682078e1baaf2c2066726f6d2064266167726176653b692063686f206e266167726176653b6e672076e1babb206e676f266167726176653b692067e1bba3692063e1baa36d2c2078696e682078e1baaf6e206b6869206469e1bb876e3c2f703e0d0a, NULL, 500000, '<li><span>XL</span></li>\r\n\r\n<li><span>L</span></li>\r\n\r\n<li><span>S</span></li>\r\n\r\n<li><span>M</span></li>', NULL, NULL, 'UNwbM-dam_maxi_no_vai_nu_tinh_d8ca.jpg', '', 'd', '<li><span>Xanh</span></li>\r\n\r\n<li><span>Trắng</span></li>\r\n\r\n<li><span>Đỏ</span></li>\r\n\r\n<li><span>Cam</span></li>', NULL, 1, NULL, NULL, 0, '', '', '', '', 1, '2018-09-23 06:59:06', '2018-09-23 06:59:06'),
(34, 81, 79, '0', 'Quần culottes phối sọc thời trang', 'quan-culottes-phoi-soc-thoi-trang', NULL, NULL, 0x3c703e3c7374726f6e673e3c7374726f6e673e5175e1baa76e2063756c6f74746573207068e1bb91692073e1bb8d63207468e1bb9d69207472616e673c2f7374726f6e673e3c2f7374726f6e673e3a204368e1baa574206c69e1bb877520766f616e2063266161637574653b74206de1bb816d206de1baa1692c207468e1baa56d2068267561637574653b74206de1bb932068266f636972633b692074e1bb91742e20546869e1babf74206be1babf2074696e682074e1babf2c206b69e1bb83752064266161637574653b6e67207468e1bb9d69207472616e67206869e1bb876e20c491e1baa169206d616e67206ce1baa1692063686f2062e1baa16e2076e1babb206e676f266167726176653b69207468e1baad7420686f266167726176653b6e2068e1baa36f2c207468616e68206ce1bb8b63683c2f703e0d0a, NULL, 200000, '<li><span>XL</span></li>\r\n\r\n<li><span>L</span></li>\r\n\r\n<li><span>S</span></li>\r\n\r\n<li><span>M</span></li>', NULL, NULL, 'O5qLo-quan_culottes_phoi_soc_thoi_trang_ba55.jpg', '', 'g2', '<li><span>Xanh</span></li>\r\n\r\n<li><span>Trắng</span></li>\r\n\r\n<li><span>Đỏ</span></li>\r\n\r\n<li><span>Cam</span></li>', NULL, 1, NULL, NULL, 2, '', '', '', '', 1, '2018-09-23 07:01:21', '2018-09-23 07:01:21'),
(35, 94, 93, '0', 'Bộ đồ nữ đáng yêu', 'bo-do-nu-dang-yeu', NULL, NULL, 0x3c703e3c7374726f6e673e3c7374726f6e673e42e1bb9920c491e1bb93206ee1bbaf20c491266161637574653b6e6720792665636972633b753c2f7374726f6e673e3c2f7374726f6e673e3a204368e1baa574206c69e1bb8775207468756e2064612063266161637574653b207468e1baa56d2068267561637574653b742074e1bb9174206d616e67206ce1baa1692073e1bbb12074686fe1baa369206d266161637574653b692e20546869e1babf74206be1babf2067e1bb936d207175e1baa76e2073686f72742076266167726176653b20266161637574653b6f20746179206ce1bbad6e67206d616e6720c491e1babf6e2076e1babb206ec4836e6720c491e1bb996e672c206d266167726176653b75207472e1baaf6e67207468616e68206ce1bb8b63682064e1bb85207068e1bb916920c491e1bb9320c491e1bb8320c49169206368c6a1692064e1baa16f207068e1bb912076e1bb9b692062e1baa16e2062266567726176653b3c2f703e0d0a, NULL, 300000, '<li><span>XL</span></li>\r\n\r\n<li><span>L</span></li>\r\n\r\n<li><span>S</span></li>\r\n\r\n<li><span>M</span></li>', NULL, NULL, 'DKk4P-bo_do_nu_dang_yeu_8961.jpg', '', 'g', '<li><span>Xanh</span></li>\r\n\r\n<li><span>Trắng</span></li>\r\n\r\n<li><span>Đỏ</span></li>\r\n\r\n<li><span>Cam</span></li>', NULL, 0, NULL, NULL, 1, '', '', '', '', 1, '2018-09-23 07:12:48', '2018-09-23 07:12:48'),
(36, 94, 93, '0', 'Bộ đồ lửng nữ caro trẻ trung', 'bo-do-lung-nu-caro-tre-trung', NULL, NULL, 0x3c703e3c7374726f6e673e3c7374726f6e673e42e1bb9920c491e1bb93206ce1bbad6e67206ee1bbaf206361726f207472e1babb207472756e673c2f7374726f6e673e3c2f7374726f6e673e3a204368e1baa574206c69e1bb8775207468756e20636f206769266174696c64653b6e2c207468e1baa56d206de1bb932068266f636972633b692e20546869e1babf74206be1babf20266161637574653b6f2063e1bb95207472266f67726176653b6e2c20746179206e67e1baaf6e2063266161637574653b2074266961637574653b6e682c206e68e1baa56e206e68266161637574653b2076e1bb9b692063266161637574653b6368207068e1bb9169206361726f207068e1baa76e2074617920266161637574653b6f3c2f703e0d0a, NULL, 300000, '<li><span>XL</span></li>\r\n\r\n<li><span>L</span></li>\r\n\r\n<li><span>S</span></li>\r\n\r\n<li><span>M</span></li>', NULL, NULL, 'rGgGP-bo_do_lung_nu_caro_tre_trung_d8ac.jpg', '', 'j', '<li><span>Xanh</span></li>\r\n\r\n<li><span>Trắng</span></li>\r\n\r\n<li><span>Đỏ</span></li>\r\n\r\n<li><span>Cam</span></li>', NULL, 1, NULL, NULL, 0, '', '', '', '', 1, '2018-09-23 07:14:33', '2018-09-23 07:14:33'),
(37, 94, 93, '0', 'Bộ đồ Tim lửng thể thao', 'bo-do-tim-lung-the-thao', NULL, NULL, 0x3c703e3c7374726f6e673e42e1bb9920c491e1bb932054696d206ce1bbad6e67207468e1bb83207468616f3c2f7374726f6e673e3a204368e1baa574206c69e1bb8775207468756e2063266161637574653b2073e1baa575206769267561637574653b702073e1baa36e207068e1baa96d2063266f61637574653b20c491e1bb99207468e1baa56d2068267561637574653b742076266167726176653b2074686fe1baa369206d266161637574653b692063616f2074726f6e672073696e6820686fe1baa1742063c5a96e67206e68c6b02076e1baad6e20c491e1bb996e672e20546869e1babf74206be1babf207468656f206b69e1bb837520746179206e67e1baaf6e2c2063e1bb95207472266f67726176653b6e207669e1bb816e206d266167726176653b752078616e6820c491656e2063266161637574653b2074266961637574653b6e68206769267561637574653b70207472616e67207068e1bba5632074c4836e672076e1babb206ec4836e6720c491e1bb996e672c206b68e1bb8f65206b686fe1baaf6e63686f206e67c6b0e1bb9d69206de1bab7633c2f703e0d0a, NULL, 200000, '<li><span>XL</span></li>\r\n\r\n<li><span>L</span></li>\r\n\r\n<li><span>S</span></li>\r\n\r\n<li><span>M</span></li>', NULL, NULL, 'CyExT-bo_do_tim_lung_the_thao_d20a.jpg', '', 'l', '<li><span>Xanh</span></li>\r\n\r\n<li><span>Trắng</span></li>\r\n\r\n<li><span>Đỏ</span></li>\r\n\r\n<li><span>Cam</span></li>', NULL, 1, NULL, NULL, 1, '', '', '', '', 1, '2018-09-23 07:16:13', '2018-09-23 07:16:13'),
(38, 94, 93, '0', 'Đồ bộ nữ phối màu in ngôi sao', 'do-bo-nu-phoi-mau-in-ngoi-sao', NULL, NULL, '', NULL, 250000, '<li><span>XL</span></li>\r\n\r\n<li><span>L</span></li>\r\n\r\n<li><span>S</span></li>\r\n\r\n<li><span>M</span></li>', NULL, NULL, 'wBsl1-do_bo_nu_phoi_mau_in_ngoi_sao_cb96.jpg', '', 'j', '<li><span>Xanh</span></li>\r\n\r\n<li><span>Trắng</span></li>\r\n\r\n<li><span>Đỏ</span></li>\r\n\r\n<li><span>Cam</span></li>', NULL, 1, NULL, NULL, 2, '', '', '', '', 1, '2018-09-23 07:22:29', '2018-09-23 07:22:29'),
(39, 74, 71, 'ao-phong', 'Áo thun nữ in hình Paris mây form rộng hàn quốc vải dày mịn ATNK1074', 'ao-thun-nu-in-hinh-paris-may-form-rong-han-quoc-vai-day-min-atnk1074', NULL, NULL, 0x3c756c3e0d0a093c6c693e4368e1baa574206c69e1bb8775207468756e206de1bb816d206de1baa16920636f206769266174696c64653b6e2074e1bb9174202c2074686f266161637574653b6e67206d266161637574653b743c2f6c693e0d0a093c6c693e546869e1babf74206be1babf207468e1bb9d69207472616e67207068267567726176653b2068e1bba3702078752068c6b0e1bb9b6e67206869e1bb876e206e61793c2f6c693e0d0a093c6c693e4b69e1bb83752064266161637574653b6e6720c491612070686f6e672063266161637574653b63683c2f6c693e0d0a093c6c693ec490c6b0e1bb9d6e67206d61792074696e682074e1babf2073e1baaf632073e1baa36f3c2f6c693e0d0a093c6c693e41cc816f207468756e20c491c6b0c6a1cca363207468692665636972633bcc8174206b2665636972633bcc8120762665636972633bcc8920c49165cca37020747265cc89207472756e67206ec4836e6720c491266f636972633bcca36e67206e68c6b06e67206b68266f636972633b6e67206b65cc816d2070682661636972633bcc806e206475792665636972633b6e206461cc816e672e3c2f6c693e0d0a093c6c693e41cc816f20c491c6b0c6a1cca363207468692665636972633bcc8174206b2665636972633bcc8120c49165cca3702c206368752661636972633bcc896e20666f726d2c20c491c6b0c6a1cc806e67206d61792073c483cc8163207861cc896f2c207661cc896920636f74746f6e206461cc80792c206d69cca36e2c2074682661636972633bcc816d206875cc8174206d266f636972633bcc802068266f636972633b69207461cca36f2073c6b0cca32074686f61cc8969206d61cc8169206b6869206dc483cca363213c2f6c693e0d0a093c6c693e44e1bb852064266167726176653b6e67207068e1bb9169207472616e67207068e1bba563202c207468266961637574653b63682068e1bba37020c49169206368c6a16920c49169206c266167726176653b6d20c491692064e1baa16f207068e1bb913c2f6c693e0d0a093c6c693e546869cc8163682068c6a1cca3702063686f2073c6b0cca3206b2665636972633bcc81742068c6a1cca3702076c6b0cc81692071752661636972633bcc806e206a65616e2c20736fcca3742c6c656767696e67213c2f6c693e0d0a093c6c693e43616d206be1babf742076e1bb81206368e1baa574206cc6b0e1bba36e672073e1baa36e207068e1baa96d2c2062e1baa36f2068266167726176653b6e682076e1bb8b207472266961637574653b20696e2076c4a96e68207669e1bb856e206b68266f636972633b6e672070686169206de1bbb1633c2f6c693e0d0a093c6c693e43266f61637574653b20c491e1bba72063266161637574653b632073697a6520532c204d2c204c2c20584c2c32584c2c33584cc491266161637574653b7020e1bba96e672063686f206de1bb8d69206b68266161637574653b63682068266167726176653b6e673c2f6c693e0d0a093c6c693e3c6120687265663d2268747470733a2f2f7777772e6c617a6164612e766e2f70726f64756374732f616f2d7468756e2d6e752d796f752d6d616b652d6d652d736d696c652d61746e6b3936302d666f726d2d726f6e672d68616e2d71756f632d3130322d666f722d776f6d656e2d693136373836353237362d733236393333303430362e68746d6c3f73706d3d61326f346e2e7365617263686c6973746272616e642e6c6973742e31362e34613332326530393852596c4a4a26616d703b7365617263683d31223e3c696d6720616c743d22372e6a706722207372633d2268747470733a2f2f766e2d6c6976652e736c617469632e6e65742f6f726967696e616c2f63386239646431386132303361303337343162353564386539353063383833392e6a706722202f3e3c2f613e3c6120687265663d2268747470733a2f2f7777772e6c617a6164612e766e2f70726f64756374732f616f2d7468756e2d6e752d7472616e672d696e2d68696e682d6d656f2d6d756e2d666f726d2d726f6e672d68616e2d71756f632d7661692d6461792d6d696e2d61746e6b313037362d693136373836353034372d733138333639303237332e68746d6c3f73706d3d61326f346e2e7365617263686c6973742e6c6973742e312e376661313331653651546b47597a26616d703b7365617263683d31223e3c696d6720616c743d22382e6a706722207372633d2268747470733a2f2f766e2d6c6976652e736c617469632e6e65742f6f726967696e616c2f36613062383730653763643261396630393130613736326337366137323830322e6a706722202f3e3c2f613e3c2f6c693e0d0a3c2f756c3e0d0a, NULL, 50000, '<li><span>XL</span></li>\r\n\r\n<li><span>L</span></li>\r\n\r\n<li><span>S</span></li>\r\n\r\n<li><span>M</span></li>', NULL, NULL, 'e4fX0-5-1504860033-width650height444.jpg', '', 'ATNK1074', '<li><span>Xanh</span></li>\r\n\r\n<li><span>Trắng</span></li>\r\n\r\n<li><span>Đỏ</span></li>\r\n\r\n<li><span>Cam</span></li>', NULL, 1, NULL, NULL, 0, '', '', '', '', 1, '2018-09-29 20:00:48', '2018-09-29 20:00:48'),
(40, 98, 97, '0', 'Bikini 1 Mảnh Phối Ren', 'bikini-1-manh-phoi-ren', NULL, NULL, 0x3c703e53697a65204d3a20266c743b34396b672073697a65204c3a2035302d35356b672053697a6520584c3a2035362d36306b6720567569206c266f67726176653b6e6720636861742076e1bb9b692073686f7020c491e1bb8320636865636b2073697a652076266167726176653b2074c6b02076e1baa56e206e68612063266161637574653b63206e266167726176653b6e67204c692665636972633b6e2068e1bb872030393820323232203535373620c491e1bb832078656d2074682665636972633b6d20323030206de1baab7520266161637574653b6f2062c6a1692048266167726176653b6e3c2f703e0d0a0d0a3c703e3c696d6720616c743d2222207372633d222f636b66696e6465722f7573657266696c65732f696d616765732f626f69312e706e6722207374796c653d226865696768743a36303270783b2077696474683a363032707822202f3e3c2f703e0d0a, NULL, 250000, '<li><span>XL</span></li>\r\n\r\n<li><span>L</span></li>\r\n\r\n<li><span>S</span></li>\r\n\r\n<li><span>M</span></li>', NULL, NULL, 'tpmSc-boi1.png', '', 'b1', '\r\n<li><span>Xanh</span></li>\r\n\r\n<li><span>Trắng</span></li>\r\n\r\n<li><span>Đỏ</span></li>\r\n\r\n<li><span>Cam</span></li>', NULL, 1, NULL, NULL, 0, '', '', '', '', 1, '2018-09-30 01:07:32', '2018-09-30 01:07:32'),
(41, 98, 97, 'do-boi', 'Bikini 1 Mảnh Phối Ren 2', 'bikini-1-manh-phoi-ren-2', NULL, NULL, 0x3c703e3c696d6720616c743d2222207372633d222f636b66696e6465722f7573657266696c65732f696d616765732f626f69322e6a706722207374796c653d226865696768743a35373570783b2077696474683a333835707822202f3e3c2f703e0d0a0d0a3c703e266e6273703b3c2f703e0d0a, NULL, 245000, '<li><span>XL</span></li>\r\n\r\n<li><span>L</span></li>\r\n\r\n<li><span>S</span></li>\r\n\r\n<li><span>M</span></li>', NULL, NULL, 'R4aUi-boi2.jpg', '', 'b2', '<li><span>Xanh</span></li>\r\n\r\n<li><span>Trắng</span></li>\r\n\r\n<li><span>Đỏ</span></li>\r\n\r\n<li><span>Cam</span></li>', NULL, 1, NULL, NULL, 2, '', '', '', '', 1, '2018-09-30 01:15:36', '2018-09-30 01:15:36'),
(42, 90, 89, 'vay-dam-cong-so', 'Vay dep', 'vay-dep', NULL, NULL, 0x3c703e6666663c2f703e0d0a, NULL, 500000, '<li><span>XL</span></li>\r\n\r\n<li><span>L</span></li>\r\n\r\n<li><span>S</span></li>\r\n\r\n<li><span>M</span></li>', NULL, NULL, 'nSSQI-a1.jpg', '', 'a1', '<li><span>Xanh</span></li>\r\n\r\n<li><span>Trắng</span></li>\r\n\r\n<li><span>Đỏ</span></li>\r\n\r\n<li><span>Cam</span></li>', NULL, 1, NULL, NULL, 0, '', '', '', '', 1, '2018-09-30 06:23:14', '2018-09-30 06:23:14'),
(43, 95, 93, 'bo-do-ngu', 'a2', 'a2', NULL, NULL, 0x3c703e6b6b3c2f703e0d0a, NULL, 700000, '<li><span>XL</span></li>\r\n\r\n<li><span>L</span></li>\r\n\r\n<li><span>S</span></li>\r\n\r\n<li><span>M</span></li>', NULL, NULL, 'qob8s-n1.jpg', '', 'n1', '<li><span>Xanh</span></li>\r\n\r\n<li><span>Trắng</span></li>\r\n\r\n<li><span>Đỏ</span></li>\r\n\r\n<li><span>Cam</span></li>', NULL, 1, NULL, NULL, 0, '', '', '', '', 1, '2018-09-30 07:24:19', '2018-09-30 07:24:19'),
(44, 82, 79, 'quan-kaki', 'Quần Kaki Nữ Cao Cấp Size Lớn -Trắng Lưng Vừa- Đen Lưng Cao', 'quan-kaki-nu-cao-cap-size-lon-trang-lung-vua-den-lung-cao', NULL, NULL, 0x3c703e3c7374726f6e673e3c656d3e5155e1baa64e204b414b49204ee1bbae20c490454e2053495a45204e48e1bb8e20c490e1babe4e204ce1bb9a4e3c2f656d3e3c2f7374726f6e673e3c6272202f3e0d0a3c6272202f3e0d0a3c696d67207372633d2268747470733a2f2f6d65646961332e7363646e2e766e2f696d67322f323031382f345f31332f6345743563512e6a706722207374796c653d22626f726465722d7374796c653a6e6f6e653b206865696768743a6175746f2021696d706f7274616e7422202f3e3c6272202f3e0d0a3c6272202f3e0d0a3c6272202f3e0d0a3c7370616e207374796c653d22666f6e742d73697a653a31347078223e3c7370616e207374796c653d22636f6c6f723a23323132353239223e3c7370616e207374796c653d22666f6e742d66616d696c793a53465549546578742c617269616c223e3c7370616e207374796c653d226261636b67726f756e642d636f6c6f723a23666666666666223e2d204368e1baa5742076e1baa3693a206b616b6920636f206769266174696c64653b6e2063e1bbb1632074e1bb91742c207175e1baa76e206cc6b06e672063616f206769267561637574653b70207468752067e1bb8d6e2073c4836e206368e1baaf632076267567726176653b6e672062e1bba56e67206769267561637574653b702064266161637574653b6e6720c491e1bab970206d266167726176653b20656f2074686f6e207468e1baa32063e1bbb163206be1bbb32e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c6272202f3e0d0a3c7370616e207374796c653d22666f6e742d73697a653a31347078223e3c7370616e207374796c653d22636f6c6f723a23323132353239223e3c7370616e207374796c653d22666f6e742d66616d696c793a53465549546578742c617269616c223e3c7370616e207374796c653d226261636b67726f756e642d636f6c6f723a23666666666666223e2d204d266167726176653b753a266e6273703b3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7374726f6e673ec490454e202d205452e1baae4e473c2f7374726f6e673e3c6272202f3e0d0a4cc6b07520267961637574653b3a3c6272202f3e0d0af09fa4977175e1baa76e20c490454e206cc6b06e672063616f202d207175e1baa76e205452e1baae4e47206cc6b06e672076e1bbab61206e68266561637574653b206b68266161637574653b63682e3c6272202f3e0d0a446f2076e1baa369207472e1baaf6e67206cc6b06e672063616f206b68266161637574653b206de1bb8f6e672c206e2665636972633b6e2073686f70206368e1bb8d6e206c6fe1baa169206cc6b06e672076e1bbab61207468266967726176653b2076e1baa3692073e1babd2076e1bbab612076e1bab76e2068c6a16e206e6869e1bb81752e3c6272202f3e0d0a3c7370616e207374796c653d22666f6e742d73697a653a31347078223e3c7370616e207374796c653d22636f6c6f723a23323132353239223e3c7370616e207374796c653d22666f6e742d66616d696c793a53465549546578742c617269616c223e3c7370616e207374796c653d226261636b67726f756e642d636f6c6f723a23666666666666223e2d2053697a653a2053202834302d34336b67293c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c6272202f3e0d0a3c7370616e207374796c653d22666f6e742d73697a653a31347078223e3c7370616e207374796c653d22636f6c6f723a23323132353239223e3c7370616e207374796c653d22666f6e742d66616d696c793a53465549546578742c617269616c223e3c7370616e207374796c653d226261636b67726f756e642d636f6c6f723a23666666666666223e2d2053697a653a204d202834342d34376b67293c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c6272202f3e0d0a3c7370616e207374796c653d22666f6e742d73697a653a31347078223e3c7370616e207374796c653d22636f6c6f723a23323132353239223e3c7370616e207374796c653d22666f6e742d66616d696c793a53465549546578742c617269616c223e3c7370616e207374796c653d226261636b67726f756e642d636f6c6f723a23666666666666223e2d2053697a653a204c20283438202d2035326b67293c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c6272202f3e0d0a3c7370616e207374796c653d22666f6e742d73697a653a31347078223e3c7370616e207374796c653d22636f6c6f723a23323132353239223e3c7370616e207374796c653d22666f6e742d66616d696c793a53465549546578742c617269616c223e3c7370616e207374796c653d226261636b67726f756e642d636f6c6f723a23666666666666223e2d2053697a653a2053e1bb912035202835337e35366b6729266e6273703b3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c6272202f3e0d0a3c7370616e207374796c653d22666f6e742d73697a653a31347078223e3c7370616e207374796c653d22636f6c6f723a23323132353239223e3c7370616e207374796c653d22666f6e742d66616d696c793a53465549546578742c617269616c223e3c7370616e207374796c653d226261636b67726f756e642d636f6c6f723a23666666666666223e2d2053697a653a266e6273703b2053e1bb912036202835377e36316b67293c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c6272202f3e0d0a3c7370616e207374796c653d22666f6e742d73697a653a31347078223e3c7370616e207374796c653d22636f6c6f723a23323132353239223e3c7370616e207374796c653d22666f6e742d66616d696c793a53465549546578742c617269616c223e3c7370616e207374796c653d226261636b67726f756e642d636f6c6f723a23666666666666223e2d2053697a653a2053e1bb912038202836327e36366b6729266e6273703b3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c6272202f3e0d0a3c7370616e207374796c653d22666f6e742d73697a653a31347078223e3c7370616e207374796c653d22636f6c6f723a23323132353239223e3c7370616e207374796c653d22666f6e742d66616d696c793a53465549546578742c617269616c223e3c7370616e207374796c653d226261636b67726f756e642d636f6c6f723a23666666666666223e2d2053495a453a2053e1bb91203130202836377e37354b47293c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c6272202f3e0d0a3c7370616e207374796c653d22666f6e742d73697a653a31347078223e3c7370616e207374796c653d22636f6c6f723a23323132353239223e3c7370616e207374796c653d22666f6e742d66616d696c793a53465549546578742c617269616c223e3c7370616e207374796c653d226261636b67726f756e642d636f6c6f723a23666666666666223e54267567726176653b7920636869e1bb81752063616f206e68266561637574653b206b68266161637574653b63682c20c4912661636972633b79206368e1bb89206c266167726176653b2062e1baa36e6720c6b0e1bb9b632074266961637574653b6e68206368756e672076e1bb8120632661636972633b6e206ee1bab76e67206b68266161637574653b636820767569206c266f67726176653b6e672067e1bb8d6920686fe1bab763206e68e1baaf6e2063686f2053686f70206d266967726176653b6e68207472c6b0e1bb9b6320c491e1bb83206368e1bb8d6e20c491267561637574653b6e672053697a6520e1baa120f09f988d3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c6272202f3e0d0a3c7370616e207374796c653d22666f6e742d73697a653a31347078223e3c7370616e207374796c653d22636f6c6f723a23323132353239223e3c7370616e207374796c653d22666f6e742d66616d696c793a53465549546578742c617269616c223e3c7370616e207374796c653d226261636b67726f756e642d636f6c6f723a23666666666666223e4b68266161637574653b63682063616f20266c743b316d3530202b2074682665636972633b6d20312073697a653c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c6272202f3e0d0a3c7370616e207374796c653d22666f6e742d73697a653a31347078223e3c7370616e207374796c653d22636f6c6f723a23323132353239223e3c7370616e207374796c653d22666f6e742d66616d696c793a53465549546578742c617269616c223e3c7370616e207374796c653d226261636b67726f756e642d636f6c6f723a23666666666666223e4b68266161637574653b63682063616f202667743b20316d36202b2074682665636972633b6d20312073697a653c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c6272202f3e0d0a3c6272202f3e0d0a3c696d67207372633d2268747470733a2f2f6d65646961332e7363646e2e766e2f696d67322f323031382f345f31332f4f6c6d3057792e6a706722207374796c653d22626f726465722d7374796c653a6e6f6e653b206865696768743a6175746f2021696d706f7274616e7422202f3e3c2f703e0d0a, NULL, 10000, '<li><span>XL</span></li>\r\n<li><span>L</span></li>\r\n<li><span>S</span></li>\r\n<li><span>M</span></li>', NULL, NULL, 'xsyXz-g1fanf_simg_de2fe0_500x500_maxb.jpg', '', 'k1', '<li><span>Xanh</span></li>\r\n<li><span>Trắng</span></li>\r\n<li><span>Đỏ</span></li>\r\n<li><span>Cam</span></li>', NULL, 1, NULL, NULL, 0, '', '', '', '', 1, '2018-10-24 06:20:44', '2018-10-24 06:20:44'),
(45, 88, 79, 'quan-tat-nu', 'Quần tất nữ', 'quan-tat-nu', NULL, NULL, 0x3c703e3c7374726f6e673e5175e1baa76e2074e1baa574206ee1bbaf3c2f7374726f6e673e266e6273703bc49161206ec4836e672063266f61637574653b20746869e1babf74206be1babf20266f636972633b6d2064266161637574653b6e672067e1bb8d6e2067266167726176653b6e672c20c491e1bb992064266167726176653b692073e1baa36e207068e1baa96d20c491e1babf6e2063e1bb952063682661636972633b6e3c2f703e0d0a0d0a3c703e3c7374726f6e673e5175e1baa76e2074e1baa574206ee1bbaf3c2f7374726f6e673e266e6273703bc49161206ec4836e672063266f61637574653b20746869e1babf74206be1babf20266f636972633b6d2064266161637574653b6e672067e1bb8d6e2067266167726176653b6e672c20c491e1bb992064266167726176653b692073e1baa36e207068e1baa96d20c491e1babf6e2063e1bb952063682661636972633b6e206e2665636972633b6e2062e1baa16e2063266f61637574653b207468e1bb832074686fe1baa369206d266161637574653b692068c6a16e2074726f6e672064692063687579e1bb836e206861792076e1baad6e20c491e1bb996e672e2053e1baa36e207068e1baa96d2063266f61637574653b206861692074266961637574653b6e68206ec4836e672063686f2062e1baa16e207468617920c491e1bb95692076266167726176653b2073e1bbad2064e1bba56e672c2076e1bbab612063266f61637574653b207468e1bb83206c266167726176653b2074e1baa5742076e1bbab612063266f61637574653b207468e1bb83206c266167726176653b206de1bb997420636869e1babf63207175e1baa76e206c656767696e67207469e1bb876e206ce1bba3692e2053e1baa36e207068e1baa96d20c491c6b0e1bba363206c266167726176653b6d2074e1bbab206368e1baa574206c69e1bb8775207468756e2064266167726176653b79206ce1baa169206b68266f636972633b6e672078267567726176653b2076266167726176653b2063266f61637574653b20c491e1bb9920636f206769266174696c64653b6e2063616f206769267561637574653b702062e1baa16e207468612068e1bb932076e1baad6e20c491e1bb996e672076266167726176653b20767569206368c6a1692e2043267567726176653b6e6720c491c6b0e1bb9d6e67206d61792063e1baa96e207468e1baad6e2c2074e1bb89206de1bb89206769267561637574653b702062e1baa16e2074682665636972633b6d207068e1baa76e20792665636972633b6e20742661636972633b6d2076266167726176653b2068266167726176653b69206c266f67726176653b6e672e2042e1baa16e2068266174696c64653b792073e1bbad2064e1bba56e672073e1baa36e207068e1baa96d2063267567726176653b6e6720266161637574653b6f20666f726d2064266167726176653b692c2074682665636972633b6d20636869e1babf6320266161637574653b6f206b686f266161637574653b63206a65616e206e67e1baaf6e2076266167726176653b20c491266f636972633b692073616e64616c20c491656e206e6869e1bb8175207175616920c491e1bb832074266f636972633b6e206c2665636972633b6e20c491c6b0e1bba3632070686f6e672063266161637574653b63682063e1bba7612062e1baa36e2074682661636972633b6e2062e1baa16e2074726f6e672063266161637574653b63206375e1bb996320767569206368c6a1692063267567726176653b6e672062e1baa16e2062266567726176653b2e3c2f703e0d0a0d0a3c703e3c6120687265663d2268747470733a2f2f692e6134766e2e636f6d2f323031342f31302f32392f7175616e2d7461742d6e752d64612d6e616e672d3635376565632e6a706722206f6e636c69636b3d2272657475726e2066616c73653b22207461726765743d225f626c616e6b223e3c696d6720616c743d225175e1baa76e2074e1baa574206ee1bbaf20c49161206ec4836e67202d2048c3ac6e68203222207372633d2268747470733a2f2f692e6134766e2e636f6d2f323031342f31302f32392f7175616e2d7461742d6e752d64612d6e616e672d3635376565632e6a706722202f3e3c2f613e3c2f703e0d0a, NULL, 50000, '<li><span>XL</span></li>\r\n\r\n<li><span>L</span></li>\r\n\r\n<li><span>S</span></li>\r\n\r\n<li><span>M</span></li>', NULL, NULL, 'mDSkW-t1.jpg', '', '', '<li><span>Xanh</span></li>\r\n<li><span>Den</span></li>', NULL, 1, NULL, NULL, 0, '', '', '', '', 1, '2018-10-24 06:28:52', '2018-10-24 06:28:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quangcao`
--

CREATE TABLE `quangcao` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thongtin1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thongtin2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thongtin3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thongtin4` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quangcao`
--

INSERT INTO `quangcao` (`id`, `img`, `thongtin1`, `thongtin2`, `thongtin3`, `thongtin4`) VALUES
(1, 'LAXWV-dt1.png', '', '', '', ''),
(2, 'KXxAp-dt2.png', '', '', '', ''),
(3, 'hdaJr-dt3.jpg', 'g', 'g', 'g', 'g'),
(4, 'QrKDb-dt4.png', '', '', '', ''),
(5, 'qGsBM-dt5.jpg', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seo`
--

CREATE TABLE `seo` (
  `id` int(11) NOT NULL,
  `alt_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_seo` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `seo`
--

INSERT INTO `seo` (`id`, `alt_img`, `title_seo`, `meta_seo`) VALUES
(1, 'aonamxinhxinh', 'aonamhothotoxinh', 'ngonnogn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thongtin1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thongtin2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thongtin3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thongtin4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `img`, `thongtin1`, `thongtin2`, `thongtin3`, `thongtin4`) VALUES
(7, 'L75hw-f99ecdb91a86fad8a397.jpg', '', '', '', ''),
(8, 'DG4jJ-tu-bep-nhua-dep.jpg', '', '', '', ''),
(9, 'zOlJp-ke-go-phong-khach.jpg', '', '', '', ''),
(10, 'lnBrj-0211-1170x600.jpg', '', '', '', ''),
(11, 'sJtgW-38446553_508553099571666_4828954167525507072_n_508553096238333.jpg', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'quoclap', 'dantri@gmail.com', '$2y$10$MCUzlNQEzgdw0Rw.6n1ft.cidHDxiIEk/rC1GOxyPYZ557HlM1piq', 1, NULL, '2017-10-16 19:31:17', '2017-10-16 19:31:17'),
(6, 'lap', 'lap123@gmail.com', '$2y$10$iZ8tRanoZmDm5RveYHNK1uXMopu2p1yphpU0iffWeUSKkf.c51mxy', 1, 'R3Dkdgx8wHOrm6au35C2r5wOjI3Vd0hD6u3fobR8p8lb09xBqp88JIK6ucxJ', '2017-10-16 20:28:56', '2018-12-21 19:48:03'),
(7, 'lap', 'safza@gmail.com', '$2y$10$Nl.QPVsF5JYlO4mSIggkLuLbstfq6pKSbwmdtVZ4I2rjt.KUkj592', 1, NULL, '2018-01-23 07:30:28', '2018-01-23 07:30:28'),
(9, 'hoaphuong@gmail.com', 'phuong@gmail.com', '$2y$10$jjIv.99NugWagllLMjXRq.xtE3wlp/NuMGxnyX4zwpK3LelIaKcTm', 1, NULL, '2018-02-17 06:40:38', '2018-02-17 06:40:38'),
(10, 'vukhacanh', 'vukhacanh17@gmail.com', '$2y$10$NGGr.PAyPwUFOXuIQtbTaecyUbsrDV21HhC8GI.kNgXAC64kRq49i', 1, 'ykzZX0GloWhO4EHSeonQYVciPCIstx4GdcNPSF7wujHDS5KqpdzWBG7noTdk', '2018-11-14 06:29:34', '2018-11-16 20:43:26'),
(11, 'laptrinh678', 'laptrinh678@gmail.com', '$2y$10$Yywppw.HNqFHSshI1hyKMu79uv33jpYnP7KgKdkpjUCJp9uQiZbHK', 1, NULL, '2018-11-14 07:19:59', '2018-11-14 07:19:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_links`
--

CREATE TABLE `wp_links` (
  `id` int(11) NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `wp_links`
--

INSERT INTO `wp_links` (`id`, `link_url`, `link_name`, `link_image`, `link_target`, `link_description`, `link_visible`, `link_owner`, `link_rating`, `link_updated`, `link_rel`, `link_notes`, `link_rss`) VALUES
(1, 'http://localhost/aonam', 'ff', 'public/fontend/images', 'ff', 'ff', 'Y', 1, 0, '0000-00-00 00:00:00', 'ff', '', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `block`
--
ALTER TABLE `block`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `catepost`
--
ALTER TABLE `catepost`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cateproduct`
--
ALTER TABLE `cateproduct`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment_post`
--
ALTER TABLE `comment_post`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment_pro`
--
ALTER TABLE `comment_pro`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `head_foot`
--
ALTER TABLE `head_foot`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `img_prodetail`
--
ALTER TABLE `img_prodetail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khogiaodien`
--
ALTER TABLE `khogiaodien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Chỉ mục cho bảng `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `postdetail`
--
ALTER TABLE `postdetail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `post_translations`
--
ALTER TABLE `post_translations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quangcao`
--
ALTER TABLE `quangcao`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `block`
--
ALTER TABLE `block`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `catepost`
--
ALTER TABLE `catepost`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `cateproduct`
--
ALTER TABLE `cateproduct`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT cho bảng `comment_post`
--
ALTER TABLE `comment_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `comment_pro`
--
ALTER TABLE `comment_pro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `head_foot`
--
ALTER TABLE `head_foot`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `img_prodetail`
--
ALTER TABLE `img_prodetail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `khogiaodien`
--
ALTER TABLE `khogiaodien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT cho bảng `postdetail`
--
ALTER TABLE `postdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `post_translations`
--
ALTER TABLE `post_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `quangcao`
--
ALTER TABLE `quangcao`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `seo`
--
ALTER TABLE `seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
