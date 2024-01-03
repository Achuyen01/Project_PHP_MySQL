-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2022 at 04:45 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_man_fashion`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_bill`
--

CREATE TABLE `tb_bill` (
  `id_bill` int(11) NOT NULL,
  `code_bill` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `status_bill` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `id_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_bill`
--

INSERT INTO `tb_bill` (`id_bill`, `code_bill`, `status_bill`, `id_order`) VALUES
(17, '1711969', '1', 53),
(18, '6035072', '1', 54),
(19, '6035072', '1', 55),
(20, '6035072', '1', 56),
(21, '2788404', '1', 57),
(23, '9963808', '1', 62),
(24, '9963808', '1', 63);

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `id_category` int(11) NOT NULL,
  `code_category` char(30) COLLATE utf8_unicode_ci NOT NULL,
  `name_category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `unaccentname_category` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`id_category`, `code_category`, `name_category`, `unaccentname_category`, `parent_id`) VALUES
(43, 'AoNam', 'Áo nam', 'aonam', 0),
(44, 'QuanNam', 'Quần nam', 'quẦnnam', 0),
(45, 'PhuKienNam', 'Phụ kiện nam', 'phỤkiỆnnam', 0),
(99, 'GiayNam', 'Giày nam', 'giaynam', 0),
(100, 'KhuyenMai', 'Khuyến mãi', 'khuyẾnm??i', 0),
(101, 'AoSoMiNam', 'Áo sơ mi nam', 'aosominam', 43),
(102, 'AoThunNam', 'Áo thun nam', 'aothunnam', 43),
(103, 'AoKhoacNam', 'Áo khoác nam', 'aokhoacnam', 43),
(104, 'AoVestNam', 'Áo vest nam', 'aovestnam', 43),
(105, 'AoLenNam', 'Áo len nam', 'aolennam', 43),
(106, 'AoSoMiHanQuoc', 'Áo sơ mi Hàn Quốc', 'aosomihanquoc', 101),
(107, 'AoSoMiHoaTiet', 'Áo sơ mi họa tiết', 'aosomihoatiet', 101),
(108, 'AoSoMiCaro', 'Áo sơ mi Caro', 'aosomicaro', 101),
(109, 'AoSoMiNganTay', 'Áo sơ mi ngắn tay', 'aosomingantay', 101),
(110, 'AoThunNamCoCo', 'Áo thun nam có cổ', 'aothunnamcoco', 102),
(111, 'AoThunNamCoTron', 'Áo thun nam cổ tròn', 'aothunnamcotron', 102),
(112, 'AoThunNamCoTim', 'Áo thun nam cổ tim', 'aothunnamcotim', 102),
(113, 'AoThunNamTayDai', 'Áo thun nam tay dài', 'aothunnamtaydai', 102),
(114, 'AoKhoacDa', 'Áo khoác da', 'aokhoacda', 103),
(115, 'AoKhoacDu', 'Áo khoác dù', 'aokhoacdu', 103),
(116, 'AoKhoacNi', 'Áo khoác nỉ', 'aokhoacni', 103),
(117, 'AoKhoacJeanNam', 'Áo khoác jean nam', 'aokhoacjeannam', 103),
(118, 'AoKhoacKakiNam', 'Áo khoác kaki nam', 'aokhoackakinam', 103),
(119, 'AoKhoacCardigan', 'Áo khoác Cardigan', 'aokhoaccardigan', 103),
(120, 'AoVestNamHanQuoc', 'Áo vest nam Hàn Quốc', 'aovestnamhanquoc', 104),
(121, 'AoGileNam', 'Áo gile nam', 'aogilenam', 104),
(122, 'AoLenNamHanQuoc', 'Áo len nam Hàn Quốc', 'aolennamhanquoc', 105),
(123, 'QuanJeanNam', 'Quần jean nam', 'quẦnjeannam', 44),
(124, 'QuanKakiNam', 'Quần kaki nam', 'quẦnkakinam', 44),
(125, 'QuanShortNam', 'Quần short nam', 'quẦnshortnam', 44),
(126, 'QuanJoggerNam', 'Quần Jogger nam', 'quẦnjoggernam', 44),
(127, 'QuanTayNam', 'Quần tây nam', 'quẦnt??ynam', 44),
(128, 'QuanJeanSkinny', 'Quần jean Skinny', 'quanjeanskinny', 123),
(129, 'QuanJeanRachNam', 'Quần jean rách nam', 'quanjeanrachnam', 123),
(130, 'QuanJeanOngDung', 'Quần jean ống đứng', 'quanjeanongdung', 123),
(131, 'QuanKakiOngCon', 'Quần kaki ống côn', 'quankakiongcon', 124),
(132, 'QuanShortJean', 'Quần short jean', 'quanshortjean', 125),
(133, 'QuanShortThun', 'Quần short thun', 'quanshortthun', 125),
(134, 'QuanShortKaki', 'Quần short kaki', 'quanshortkaki', 125),
(135, 'QuanTayOngCon', 'Quần tây ống côn', 'quantayongcon', 127),
(136, 'ViDaNam', 'VÍ DA NAM', 'v??danam', 45),
(137, 'NonNam', 'NÓN NAM', 'n??nnam', 45),
(138, 'TuiXachNam', 'TÚI XÁCH NAM', 't??ixachnam', 45),
(139, 'ThatLungNam', 'THẮT LƯNG NAM', 'thẮtl??ngnam', 45),
(140, 'CaVat&No', 'CÀ VẠT & NƠ', 'cavẠt&n??', 45),
(141, 'BaloNam', 'BALO NAM', 'balonam', 45),
(142, 'MatKinhNam', 'MẮT KÍNH NAM', 'mẮtk??nhnam', 45),
(143, 'ViDaNgang', 'Ví da ngang', 'vidangang', 136),
(144, 'ViDaDung', 'Ví da đứng', 'vidadung', 136),
(145, 'ViDaiCamTay', 'Ví dài cầm tay', 'vidaicamtay', 136),
(146, 'NonLuoiTrai', 'Nón lưỡi trai', 'nonluoitrai', 137),
(147, 'NonSnapback', 'Nón Snapback', 'nonsnapback', 137),
(148, 'NonLenNam', 'Nón len nam', 'nonlennam', 137),
(149, 'TuiDeoCheoNam', 'Túi đeo chéo nam', 'tuideocheonam', 138),
(150, 'TuiXachTayNam', 'Túi xách tay nam', 'tuixachtaynam', 138),
(151, 'TuiDaNam', 'Túi da nam', 'tuidanam', 138),
(152, 'GiayMoiNam', 'Giày mọi nam', 'giaymoinam', 99),
(153, 'GiayTayNam', 'Giày tây nam', 'giaytaynam', 99),
(154, 'GiayBootNam', 'Giày boot nam', 'giaybootnam', 99),
(155, 'GiayTheThaoNam', 'Giày thể thao nam', 'giaythethaonam', 99),
(156, 'GiayThoiTrangNam', 'Giày thời trang nam', 'giaythoitrangnam', 99),
(157, 'GiayTangChieuCaoNam', 'Giày tăng chiều cao nam', 'giaytangchieucaonam', 99);

-- --------------------------------------------------------

--
-- Table structure for table `tb_city`
--

CREATE TABLE `tb_city` (
  `id_city` int(11) NOT NULL,
  `code_city` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `name_city` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_city`
--

INSERT INTO `tb_city` (`id_city`, `code_city`, `name_city`) VALUES
(3, 'AnGiang', 'An Giang'),
(4, 'VungTau', 'Bà Rịa - Vũng tàu'),
(5, 'BacGiang', 'Bắc Giang'),
(6, 'BacKan', 'Bắc Kạn'),
(7, 'BacLieu', 'Bạc Liêu'),
(8, 'BacNinh', 'Bắc Ninh'),
(9, 'BenTre', 'Bến Tre'),
(10, 'BinhDinh', 'Bình Định'),
(11, 'BinhDuong', 'Bình Dương'),
(12, 'BinhPhuoc', 'Bình Phước'),
(13, 'BinhThuan', 'Bình Thuận'),
(14, 'CaMau', 'Cà Mau'),
(15, 'CaoBang', 'Cao Bằng'),
(16, 'DakLak', 'Đắk Lắk'),
(17, 'DakNong', 'Đắk Nông'),
(18, 'DienBien', 'Điện Biên'),
(19, 'DongNai', 'Đồng Nai'),
(20, 'DongThap', 'Đồng Tháp'),
(21, 'GiaLai', 'Gia Lai'),
(22, 'HaGiang', 'Hà Giang'),
(23, 'HaNam', 'Hà Nam'),
(24, 'HaTinh', 'Hà Tĩnh'),
(25, 'HaiDuong', 'Hải Dương'),
(26, 'HauGiang', 'Hậu Giang'),
(27, 'HoaBinh', 'Hòa Bình'),
(28, 'HungYen', 'Hưng Yên'),
(29, 'KhanhHoa', 'Khánh Hòa'),
(30, 'KienGiang', 'Kiên Giang'),
(31, 'KonTum', 'Kon Tum'),
(32, 'LaiChau', 'Lai Châu'),
(33, 'LamDong', 'Lâm Đồng'),
(34, 'LangSon', 'Lạng Sơn'),
(35, 'LaoCai', 'Lào Cai'),
(36, 'LongAn', 'Long An'),
(37, 'NamDinh', 'Nam Định'),
(38, 'NgheAn', 'Nghệ An'),
(39, 'NinhBinh', 'Ninh Bình'),
(40, 'NinhThuan', 'Ninh Thuận'),
(41, 'PhuTho', 'Phú Thọ'),
(42, 'QuangBinh', 'Quảng Bình'),
(43, 'QuangNam', 'Quảng Nam'),
(44, 'QuangNgai', 'Quảng Ngãi'),
(45, 'QuangNinh', 'Quảng Ninh'),
(46, 'QuangTri', 'Quảng Trị'),
(47, 'SocTrang', 'Sóc Trăng'),
(48, 'SonLa', 'Sơn La'),
(49, 'TayNinh', 'Tây Ninh'),
(50, 'ThaiBinh', 'Thái Bình'),
(51, 'ThaiNguyen', 'Thái Nguyên'),
(52, 'ThanhHoa', 'Thanh Hóa'),
(53, 'ThuaThienH', 'Thừa Thiên Huế'),
(54, 'TienGiang', 'Tiền Giang'),
(55, 'TraVinh', 'Trà Vinh'),
(56, 'TuyenQuang', 'Tuyên Quang'),
(57, 'VinhLong', 'Vĩnh Long'),
(58, 'VinhPhuc', 'Vĩnh Phúc'),
(59, 'YenBai', 'Yên Bái'),
(60, 'PhuYen', 'Phú Yên'),
(61, 'CanTho', 'Cần Thơ'),
(62, 'DaNang', 'Đà Nẵng'),
(63, 'HaiPhong', 'Hải Phòng'),
(64, 'HaNoi', 'Hà Nội'),
(65, 'TP.HCM', 'Thành phố Hồ Chí Minh');

-- --------------------------------------------------------

--
-- Table structure for table `tb_contact`
--

CREATE TABLE `tb_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `number_phone` char(11) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `status` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_contact`
--

INSERT INTO `tb_contact` (`id`, `name`, `email`, `number_phone`, `address`, `content`, `status`) VALUES
(6, 'Lê Ngọc Tiến Thành', 'lengoctienthanh@gmail.com', '01262898272', '188/48B Nguyễn Văn Cừ', 'Tôi có thể đặt hàng theo ý muốn riêng có được không ?', '1'),
(7, 'Lê Thanh Tuấn', 'lethanhtuan@gmail.com', '01262898272', 'Nguyễn Văn Cừ, tp.Cần Thơ', 'tôi có thể gọi điện thoại order trực tiếp được không ?', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_district`
--

CREATE TABLE `tb_district` (
  `id_district` int(11) NOT NULL,
  `code_district` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `name_district` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_city` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_district`
--

INSERT INTO `tb_district` (`id_district`, `code_district`, `name_district`, `id_city`) VALUES
(5, 'AnPhu', 'An Phú', 3),
(6, 'TanChau', 'Tân Châu', 3),
(7, 'PhuTan', 'Phú Tân', 3),
(8, 'ChauDoc', 'Châu Đốc', 3),
(9, 'TinhBien', 'Tịnh Biên', 3),
(10, 'TriTon', 'Trị Tôn', 3),
(11, 'ChauPhu', 'Châu Phú', 3),
(12, 'ChauThanh', 'Châu Thành', 3),
(13, 'ChoMoi', 'Chợ Mới', 3),
(14, 'LongXuyen', 'Long Xuyên', 3),
(15, 'ThoaiSon', 'Thoại Sơn', 3),
(16, 'VungTau', 'Vũng Tàu', 4),
(17, 'BaRia', 'Bà Rịa', 4),
(18, 'XuyenMoc', 'Xuyên Mộc', 4),
(19, 'LongDien', 'Long Điền', 4),
(20, 'ConDao', 'Côn Đảo', 4),
(21, 'TanThanh', 'Tân Thành', 4),
(22, 'ChauDuc', 'Châu Đức', 4),
(23, 'DatDo', 'Đất Đỏ', 4),
(24, 'HiepHoa', 'Hiệp Hòa', 5),
(25, 'YenDung', 'Yên Dũng', 5),
(26, 'LucNam', 'Lục Nam', 5),
(27, 'SonDong', 'Sơn Động', 5),
(28, 'LangGiang', 'Lạng Giang', 5),
(29, 'VietYen', 'Việt Yên', 5),
(30, 'LucNgan', 'Lục Ngạn', 5),
(31, 'YenThe', 'Yên Thế', 5),
(32, 'BacKan', 'Bắc Kạn', 6),
(33, 'PacNam', 'Pác Nặm', 6),
(34, 'BaBe', 'Ba Bể', 6),
(35, 'NganSon', 'Ngân Sơn', 6),
(36, 'BachThong', 'Bạch Thông', 6),
(37, 'ChoDon', 'Chợ Đồn', 6),
(38, 'ChoMoi', 'Chợ Mới', 6),
(39, 'NaRi', 'Na Rì', 6),
(40, 'BacLieu', 'Bạc Liêu', 7),
(41, 'VinhLoi', 'Vĩnh Lợi', 7),
(42, 'HongDan', 'Hồng Dân', 7),
(43, 'GiaRai', 'Giá Rai', 7),
(44, 'PhuocLong', 'Phước Long', 7),
(45, 'DongHai', 'Đông Hải', 7),
(46, 'HoaBinh', 'Hòa Bình', 7),
(47, 'BacNinh', 'Bắc Ninh', 8),
(48, 'YenPhong', 'Yên Phong', 8),
(49, 'QueVo', 'Quế Võ', 8),
(50, 'TienDu', 'Tiên Du', 8),
(51, 'TuSon', 'Từ Sơn', 8),
(52, 'ThuanThanh', 'Thuận Thành', 8),
(53, 'GiaBinh', 'Gia Bình', 8),
(54, 'LuongTai', 'Lương Tài', 8),
(55, '1', 'Quận Ba Đình', 64),
(56, '2', 'Quận Hoàn Kiếm', 64),
(57, '3', 'Quận Tây Hồ', 64),
(58, '4', 'Quận Long Biên', 64),
(59, '5', 'Quận Cầu Giấy', 64),
(60, '6', 'Quận Đống Đa', 64),
(61, '7', 'Quận Hai Bà Trưng', 64),
(62, '8', 'Quận Hoàng Ma', 64),
(63, '9', 'Quận Thanh Xuân', 64),
(64, '10', 'Huyện Sóc Sơn', 64),
(65, '11', 'Huyện Đông Anh', 64),
(66, '12', 'Huyện Gia Lâm', 64),
(67, '13', 'Quận Nam Từ Liêm', 64),
(68, '14', 'Huyện Thanh Trì', 64),
(69, '15', 'Quận Bắc Từ Liêm', 64),
(70, '16', 'Huyện Mê Linh', 64),
(71, '17', 'Quận Hà Đông', 64),
(72, '18', 'Thị xã Sơn Tây', 64),
(73, '19', 'Huyện Ba Vì', 64),
(74, '20', 'Huyện Phúc Thọ', 64),
(75, '21', 'Huyện Đan Phượng', 64),
(76, '22', 'Huyện Hoài Đức', 64),
(77, '23', 'Huyện Quốc Oai', 64),
(78, '24', 'Huyện Thạch Thất', 64),
(79, '25', 'Huyện Chương Mỹ', 64),
(80, '26', 'Huyện Thanh Oai', 64),
(81, '27', 'Huyện Thường Tín', 64),
(82, '28', 'Huyện Phú Xuyên', 64),
(83, '29', 'Huyện Ứng Hòa', 64),
(84, '30', 'Huyện Mỹ Đức', 64),
(85, 'O1', 'Thành phố Hà Giang', 22),
(86, '026', 'Huyện Đồng Văn', 22),
(87, '027', 'Huyện Mèo Vạc', 22),
(88, '028', 'Huyện Yên Minh', 22),
(89, '029', 'Huyện Quản Bạ', 22),
(90, '030', 'Huyện Vị Xuyên', 22),
(91, '031', 'Huyện Bắc Mê', 22),
(92, '032', 'Huyện Hoàng Su Phì', 22),
(93, '033', 'Huyện Xín Mần', 22),
(94, '034', 'Huyện Bắc Quang', 22),
(95, '035', 'Huyện Quang Bình', 22),
(96, '040', 'Thành phố Cao Bằng', 15),
(97, '042', 'Huyện Bảo Lâm', 15),
(98, '043', 'Huyện Bảo Lạc', 15),
(99, '044', 'Huyện Thông Nông', 15),
(100, '045', 'Huyện Hà Quảng', 15),
(101, '046', 'Huyện Trà Lĩnh', 15),
(102, '047', 'Huyện Trùng Khánh', 15),
(103, '048', 'Huyện Hạ Lang', 15),
(104, '049', 'Huyện Quảng Uyên', 15),
(105, '050', 'Huyện Phục Hoà', 15),
(106, '051', 'Huyện Hoà An', 15),
(107, '052', 'Huyện Nguyên Bình', 15),
(108, '053', 'Huyện Thạch An', 15),
(110, '058', 'Thành Phố Bắc Kạn', 6),
(111, '060', 'Huyện Pác Nặm', 6),
(112, '061', 'Huyện Ba Bể', 6),
(113, '062', 'Huyện Ngân Sơn', 6),
(114, '063', 'Huyện Bạch Thông', 6),
(115, '064', 'Huyện Chợ Đồn', 6),
(116, '066', 'Huyện Na Rì', 6),
(119, '070', 'Thành phố Tuyên Quang', 56),
(120, '071', 'Huyện Lâm Bình', 56),
(121, '072', 'Huyện Nà Hang', 56),
(122, '073', 'Huyện Chiêm Hóa', 56),
(123, '074', 'Huyện Hàm Yên', 56),
(124, '075', 'Huyện Yên Sơn', 56),
(125, '076', 'Huyện Sơn Dương', 56),
(126, '080', 'Thành phố Lào Cai', 35),
(127, '082', 'Huyện Bát Xát', 35),
(128, '083', 'Huyện Mường Khương', 35),
(129, '084', 'Huyện Si Ma Cai', 35),
(130, '085', 'Huyện Bắc Hà', 35),
(131, '086', 'Huyện Bảo Thắng', 35),
(132, '087', 'Huyện Bảo Yên', 35),
(133, '088', 'Huyện Sa Pa', 35),
(134, '089', 'Huyện Văn Bàn', 35),
(135, '094', 'Thành phố Điện Biên Phủ', 18),
(136, '095', 'Thị Xã Mường Lay', 18),
(137, '096', 'Huyện Mường Nhé', 18),
(138, '097', 'Huyện Mường Chà', 18),
(139, '098', 'Huyện Tủa Chùa', 18),
(140, '099', 'Huyện Tuần Giáo', 18),
(141, '100', 'Huyện Điện Biên', 18),
(142, '101', 'Huyện Điện Biên Đông', 18),
(143, '102', 'Huyện Mường Ảng', 18),
(144, '103', 'Huyện Nậm Pồ', 18),
(145, '105', 'Thành phố Lai Châu', 32),
(146, '106', 'Huyện Tam Đường', 32),
(147, '107', 'Huyện Mường Tè', 32),
(148, '108', 'Huyện Sìn Hồ', 32),
(149, '109', 'Huyện Phong Thổ', 32),
(150, '110', 'Huyện Than Uyên', 32),
(151, '111', 'Huyện Tân Uyên', 32),
(152, '112', 'Huyện Nậm Nhùn', 32),
(153, '116', 'Thành phố Sơn La', 48),
(154, '118', 'Huyện Quỳnh Nhai', 48),
(155, '119', 'Huyện Thuận Châu', 48),
(156, '120', 'Huyện Mường La', 48),
(157, '121', 'Huyện Bắc Yên', 48),
(158, '122', 'Huyện Phù Yên', 48),
(159, '123', 'Huyện Mộc Châu', 48),
(160, '124', 'Huyện Yên Châu', 48),
(161, '125', 'Huyện Mai Sơn', 48),
(162, '126', 'Huyện Sông Mã', 48),
(163, '127', 'Huyện Sốp Cộp', 48),
(164, '128', 'Huyện Vân Hồ', 48),
(165, '132', 'Thành phố Yên Bái', 59),
(166, '133', 'Thị xã Nghĩa Lộ', 59),
(167, '134', 'Huyện Lục Yên', 59),
(168, '136', 'Huyện Văn Yên', 59),
(169, '137', 'Huyện Mù Căng Chải', 59),
(170, '138', 'Huyện Trấn Yên', 59),
(171, '139', 'Huyện Trạm Tấu', 59),
(172, '140', 'Huyện Văn Chấn', 59),
(173, '141', 'Huyện Yên Bình', 59),
(174, '148', 'Thành phố Hòa Bình', 27),
(175, '150', 'Huyện Đà Bắc', 27),
(176, '151', 'Huyện Kỳ Sơn', 27),
(177, '152', 'Huyện Lương Sơn', 27),
(178, '153', 'Huyện Kim Bôi', 27),
(179, '154', 'Huyện Cao Phong', 27),
(180, '155', 'Huyện Tân Lạc', 27),
(181, '156', 'Huyện Mai Châu', 27),
(182, '157', 'Huyện Lạc Sơn', 27),
(183, '158', 'Huyện Yên Thủy', 27),
(184, '159', 'Huyện Lạc Thủy', 27),
(185, '164', 'Thành phố Thái Nguyên', 51),
(186, '165', 'Thành phố Sông Công', 51),
(187, '167', 'Huyện Định Hóa', 51),
(188, '168', 'Huyện Phú Lương', 51),
(189, '169', 'Huyện Đồng Hỷ', 51),
(190, '170', 'Huyện Võ Nhai', 51),
(191, '171', 'Huyện Đại Từ', 51),
(192, '172', 'Thị xã Phổ Yên', 51),
(193, '173', 'Huyện Phú Bình', 51),
(194, '178', 'Thành phố Lạng Sơn', 34),
(195, '180', 'Huyện Tràng Định', 34),
(196, '181', 'Huyện Bình Gia', 34),
(197, '182', 'Huyện Văn Lãng', 34),
(198, '183', 'Huyện Cao Lộc', 34),
(199, '184', 'Huyện Văn Quan', 34),
(200, '185', 'Huyện Bắc Sơn', 34),
(201, '186', 'Huyện Hữu Lũng', 34),
(202, '187', 'Huyện Chi Lăng', 34),
(203, '188', 'Huyện Lộc Bình', 34),
(204, '189', 'Huyện Đình Lập', 34),
(205, '193', 'Thành phố Hạ Long', 45),
(206, '194', 'Thành Phố Móng Cái', 45),
(207, '195', 'Thành Phố Cẩm Phả', 45),
(208, '196', 'Thành Phố Uông Bí', 45),
(209, '198', 'Huyện Bình Liêu', 45),
(210, '199', 'Huyện Tiên Yên', 45),
(211, '200', 'Huyện Đầm Hà', 45),
(212, '201', 'Huyện Hải Hà', 45),
(213, '202', 'Huyện Ba Chẽ', 45),
(214, '203', 'Huyện Vân Đồn', 45),
(215, '204', 'Huyện Hoành Bồ', 45),
(216, '205', 'Thị xã Đông Triều', 45),
(217, '206', 'Thị xã Quảng Yên', 45),
(218, '207', 'Huyện Cô Tô', 45),
(219, '227', 'Thành phố Việt Trì', 41),
(220, '228', 'Thị xã Phú Thọ', 41),
(221, '230', 'Huyện Đoan Hùng', 41),
(222, '231', 'Huyện Hạ Hoà', 41),
(223, '232', 'Huyện Thanh Ba', 41),
(224, '233', 'Huyện Phù Ninh', 41),
(225, '234', 'Huyện Yên Lập', 41),
(226, '235', 'Huyện Cẩm Khê', 41),
(227, '236', 'Huyện Tam Nông', 41),
(228, '237', 'Huyện Lâm Thao', 41),
(229, '238', 'Huyện Thanh Sơn', 41),
(230, '239', 'Huyện Thanh Thuỷ', 41),
(231, '240', 'Huyện Tân Sơn', 41),
(232, '243', 'Thành phố Vĩnh Yên', 58),
(233, '244', 'Thị xã Phúc Yên', 58),
(234, '246', 'Huyện Lập Thạch', 58),
(235, '247', 'Huyện Tam Dương', 58),
(236, '248', 'Huyện Tam Đảo', 58),
(237, '249', 'Huyện Bình Xuyên', 58),
(238, '251', 'Huyện Yên Lạc', 58),
(239, '252', 'Huyện Vĩnh Tường', 58),
(240, '253', 'Huyện Sông Lô', 58),
(241, '288', 'Thành phố Hải Dương', 25),
(242, '290', 'Thị xã Chí Linh', 25),
(243, '291', 'Huyện Nam Sách', 25),
(244, '292', 'Huyện Kinh Môn', 25),
(245, '293', 'Huyện Kim Thành', 25),
(246, '294', 'Huyện Thanh Hà', 25),
(247, '295', 'Huyện Cẩm Giàng', 25),
(248, '296', 'Huyện Bình Giang', 25),
(249, '297', 'Huyện Gia Lộc', 25),
(250, '298', 'Huyện Tứ Kỳ', 25),
(251, '299', 'Huyện Ninh Giang', 25),
(252, '300', 'Huyện Thanh Miện', 25),
(253, '303', 'Quận Hồng Bàng', 63),
(254, '304', 'Quận Ngô Quyền', 63),
(255, '305', 'Quận Lê Chân', 63),
(256, '306', 'Quận Hải An', 63),
(257, '307', 'Quận Kiến An', 63),
(258, '308', 'Quận Đồ Sơn', 63),
(259, '309', 'Quận Dương Kinh', 63),
(260, '311', 'Huyện Thuỷ Nguyên', 63),
(261, '312', 'Huyện An Dương', 63),
(262, '313', 'Huyện An Lão', 63),
(263, '314', 'Huyện Kiến Thuỵ', 63),
(264, '315', 'Huyện Tiên Lãng', 63),
(265, '316', 'Huyện Vĩnh Bảo', 63),
(266, '317', 'Huyện Cát Hải', 63),
(267, '323', 'Thành phố Hưng Yên', 28),
(268, '325', 'Huyện Văn Lâm', 28),
(269, '326', 'Huyện Văn Giang', 28),
(270, '327', 'Huyện Yên Mỹ', 28),
(271, '328', 'Huyện Mỹ Hào', 28),
(272, '329', 'Huyện Ân Thi', 28),
(273, '330', 'Huyện Khoái Châu', 28),
(274, '331', 'Huyện Kim Động', 28),
(275, '332', 'Huyện Tiên Lữ', 28),
(276, '333', 'Huyện Phù Cừ', 28),
(277, '336', 'Thành phố Thái Bình', 50),
(278, '338', '-Huyện Quỳnh Phụ', 50),
(279, '339', 'Huyện Hưng Hà', 50),
(280, '340', 'Huyện Đông Hưng', 50),
(281, '341', 'Huyện Thái Thụy', 50),
(282, '342', 'Huyện Tiền Hải', 50),
(283, '343', 'Huyện Kiến Xương', 50),
(284, '344', 'Huyện Vũ Thư', 50),
(285, '347', 'Thành phố Phủ Lý', 23),
(286, '349', 'Huyện Duy Tiên', 23),
(287, '350', 'Huyện Kim Bảng', 23),
(288, '351', 'Huyện Thanh Liêm', 23),
(289, '353', 'Huyện Bình Lục', 23),
(290, '352', 'Huyện Lý Nhân', 23),
(291, '356', 'Thành phố Nam Định', 37),
(292, '358', 'Huyện Mỹ Lộc', 37),
(293, '359', 'Huyện Vụ Bản', 37),
(294, '360', 'Huyện Ý Yên', 37),
(295, '361', 'Huyện Nghĩa Hưng', 37),
(296, '362', 'Huyện Nam Trực', 37),
(297, '363', 'Huyện Trực Ninh', 37),
(298, '364', 'Huyện Xuân Trường', 37),
(299, '365', 'Huyện Giao Thủy', 37),
(300, '366', 'Huyện Hải Hậu', 37),
(301, '369', 'Thành phố Ninh Bình', 39),
(302, '370', 'Thành phố Tam Điệp', 39),
(303, '372', 'Huyện Nho Quan', 39),
(304, '373', 'Huyện Gia Viễn', 39),
(305, '374', 'Huyện Hoa Lư', 39),
(306, '375', 'Huyện Yên Khánh', 39),
(307, '376', 'Huyện Kim Sơn', 39),
(308, '377', 'Huyện Yên Mô', 39),
(309, '380', 'Thành phố Thanh Hóa', 52),
(310, '381', 'Thị xã Bỉm Sơn', 52),
(311, '382', 'Thị xã Sầm Sơn', 52),
(312, '384', 'Huyện Mường Lát', 52),
(313, '385', 'Huyện Quan Hóa', 52),
(314, '386', 'Huyện Bá Thước', 52),
(315, '387', 'Huyện Quan Sơn', 52),
(316, '388', 'Huyện Lang Chánh', 52),
(317, '389', 'Huyện Ngọc Lặc', 52),
(318, '390', 'Huyện Cẩm Thủy', 52),
(319, '391', 'Huyện Thạch Thành', 52),
(320, '392', 'Huyện Hà Trung', 52),
(321, '393', 'Huyện Vĩnh Lộc', 52),
(322, '394', 'Huyện Yên Định', 52),
(323, '395', 'Huyện Thọ Xuân', 52),
(324, '396', 'Huyện Thường Xuân', 52),
(325, '397', 'Huyện Triệu Sơn', 52),
(326, '398', 'Huyện Thiệu Hóa', 52),
(327, '399', 'Huyện Hoằng Hóa', 52),
(328, '400', 'Huyện Hậu Lộc', 52),
(329, '401', 'Huyện Nga Sơn', 52),
(330, '402', 'Huyện Như Xuân', 52),
(331, '403', 'Huyện Như Thanh', 52),
(332, '404', 'Huyện Nông Cống', 52),
(333, '405', 'Huyện Đông Sơn', 52),
(334, '406', 'Huyện Quảng Xương', 52),
(335, '407', 'Huyện Tĩnh Gia', 52),
(336, '412', 'Thành phố Vinh', 38),
(337, '413', 'Thị xã Cửa Lò', 38),
(338, '414', 'Thị xã Thái Hoà', 38),
(339, '415', 'Huyện Quế Phong', 38),
(340, '416', 'Huyện Quỳ Châu', 38),
(341, '417', 'Huyện Kỳ Sơn', 38),
(342, '418', 'Huyện Tương Dương', 38),
(343, '419', 'Huyện Nghĩa Đàn', 38),
(344, '420', 'Huyện Quỳ Hợp', 38),
(345, '421', 'Huyện Quỳnh Lưu', 38),
(346, '422', 'Huyện Con Cuông', 38),
(347, '423', 'Huyện Tân Kỳ', 38),
(348, '424', 'Huyện Anh Sơn', 38),
(349, '425', 'Huyện Diễn Châu', 38),
(350, '426', 'Huyện Yên Thành', 38),
(351, '427', 'Huyện Đô Lương', 38),
(352, '428', 'Huyện Thanh Chương', 38),
(353, '429', 'Huyện Nghi Lộc', 38),
(354, '430', 'Huyện Nam Đàn', 38),
(355, '431', 'Huyện Hưng Nguyên', 38),
(356, '432', 'Thị xã Hoàng Mai', 38),
(357, '436', 'Thành phố Hà Tĩnh', 24),
(358, '437', 'Thị xã Hồng Lĩnh', 24),
(359, '439', 'Huyện Hương Sơn', 24),
(360, '440', 'Huyện Đức Thọ', 24),
(361, '441', 'Huyện Vũ Quang', 24),
(362, '442', 'Huyện Nghi Xuân', 24),
(363, '443', 'Huyện Can Lộc', 24),
(364, '444', 'Huyện Hương Khê', 24),
(365, '445', 'Huyện Thạch Hà', 24),
(366, '446', 'Huyện Cẩm Xuyên', 24),
(367, '447', 'Huyện Kỳ Anh', 24),
(368, '448', 'Huyện Lộc Hà', 24),
(369, '449', 'Thị xã Kỳ Anh', 24),
(370, '450', 'Thành Phố Đồng Hới', 42),
(371, '452', 'Huyện Minh Hóa', 42),
(372, '453', 'Huyện Tuyên Hóa', 42),
(373, '454', 'Huyện Quảng Trạch', 42),
(374, '455', 'Huyện Bố Trạch', 42),
(375, '456', 'Huyện Quảng Ninh', 42),
(376, '457', 'Huyện Lệ Thủy', 42),
(377, '458', 'Thị xã Ba Đồn', 42),
(378, '461', 'Thành phố Đông Hà', 46),
(379, '462', 'Thị xã Quảng Trị', 46),
(380, '464', 'Huyện Vĩnh Linh', 46),
(381, '465', 'Huyện Hướng Hóa', 46),
(382, '466', 'Huyện Gio Linh', 46),
(383, '467', 'Huyện Đa Krông', 46),
(384, '468', 'Huyện Cam Lộ', 46),
(385, '469', 'Huyện Triệu Phong', 46),
(386, '470', 'Huyện Hải Lăng', 46),
(387, '474', 'Thành phố Huế', 53),
(388, '476', 'Huyện Phong Điền', 53),
(389, '477', 'Huyện Quảng Điền', 53),
(390, '478', 'Huyện Phú Vang', 53),
(391, '479', 'Thị xã Hương Thủy', 53),
(392, '480', 'Thị xã Hương Trà', 53),
(393, '481', 'Thị xã Hương Trà', 53),
(394, '482', 'Huyện Phú Lộc', 53),
(395, '483', 'Huyện Nam Đông', 53),
(396, '490', 'Quận Liên Chiểu', 62),
(397, '491', 'Quận Thanh Khê', 62),
(398, '492', 'Quận Hải Châu', 62),
(399, '493', 'Quận Sơn Trà', 62),
(400, '494', 'Quận Ngũ Hành Sơn', 62),
(401, '495', 'Quận Cẩm Lệ', 62),
(402, '497', 'Huyện Hòa Vang', 62),
(403, '502', 'Thành phố Tam Kỳ', 43),
(404, '503', 'Thành phố Hội An', 43),
(405, '504', 'Huyện Tây Giang', 43),
(406, '505', 'Huyện Đông Giang', 43),
(407, '506', 'Huyện Đại Lộc', 43),
(408, '507', 'Thị xã Điện Bàn', 43),
(409, '508', 'Huyện Duy Xuyên', 43),
(410, '509', 'Huyện Quế Sơn', 43),
(411, '510', 'Huyện Nam Giang', 43),
(412, '511', 'Huyện Phước Sơn', 43),
(413, '512', 'Huyện Hiệp Đức', 43),
(414, '513', 'Huyện Thăng Bình', 43),
(415, '514', 'Huyện Tiên Phước', 43),
(416, '515', 'Huyện Bắc Trà My', 43),
(417, '516', 'Huyện Nam Trà My', 43),
(418, '517', 'Huyện Núi Thành', 43),
(419, '518', 'Huyện Phú Ninh', 43),
(420, '519', 'Huyện Nông Sơn', 43),
(421, '522', 'Thành phố Quảng Ngãi', 44),
(422, '524', 'Huyện Bình Sơn', 44),
(423, '525', 'Huyện Trà Bồng', 44),
(424, '526', 'Huyện Tây Trà', 44),
(425, '527', 'Huyện Sơn Tịnh', 44),
(426, '528', 'Huyện Tư Nghĩa', 44),
(427, '529', 'Huyện Sơn Hà', 44),
(428, '530', 'Huyện Sơn Tây', 44),
(429, '531', 'Huyện Minh Long', 44),
(430, '532', 'Huyện Nghĩa Hành', 44),
(431, '533', 'Huyện Mộ Đức', 44),
(432, '534', 'Huyện Đức Phổ', 44),
(433, '535', 'Huyện Ba Tơ', 44),
(434, '536', 'Huyện Lý Sơn', 44),
(435, '540', 'Thành phố Qui Nhơn', 10),
(436, '542', 'Huyện An Lão', 10),
(437, '543', 'Huyện Hoài Nhơn', 10),
(438, '544', 'Huyện Hoài Ân', 10),
(439, '545', 'Huyện Phù Mỹ', 10),
(440, '546', 'Huyện Vĩnh Thạnh', 10),
(441, '547', 'Huyện Tây Sơn', 10),
(442, '548', 'Huyện Phù Cát', 10),
(443, '549', 'Thị xã An Nhơn', 10),
(444, '550', 'Huyện Tuy Phước', 10),
(445, '551', 'Huyện Vân Canh', 10),
(446, '555', 'Thành phố Tuy Hoà', 60),
(447, '557', 'Thị xã Sông Cầu', 60),
(448, '558', 'Huyện Đồng Xuân', 60),
(449, '559', 'Huyện Tuy An', 60),
(450, '560', 'Huyện Sơn Hòa', 60),
(451, '561', 'Huyện Sông Hinh', 60),
(452, '562', 'Huyện Tây Hoà', 60),
(453, '563', 'Huyện Phú Hoà', 60),
(454, '564', 'Huyện Đông Hòa', 60),
(455, '568', 'Thành phố Nha Trang', 29),
(456, '569', 'Thành phố Cam Ranh', 29),
(457, '570', 'Huyện Cam Lâm', 29),
(458, '571', 'Huyện Vạn Ninh', 29),
(459, '572', 'Thị xã Ninh Hòa', 29),
(460, '573', 'Huyện Khánh Vĩnh', 29),
(461, '574', 'Huyện Diên Khánh', 29),
(462, '575', 'Huyện Khánh Sơn', 29),
(463, '576', 'Huyện Trường Sa', 29),
(464, '582', 'Thành phố Phan Rang-Tháp Chàm', 40),
(465, '584', 'Huyện Bác Ái', 40),
(466, '585', 'Huyện Ninh Sơn', 40),
(467, '586', 'Huyện Ninh Hải', 40),
(468, '587', 'Huyện Ninh Phước', 40),
(469, '588', 'Huyện Thuận Bắc', 40),
(470, '589', 'Huyện Thuận Nam', 40),
(471, '593', 'Thành phố Phan Thiết', 13),
(472, '594', 'Thị xã La Gi', 13),
(473, '595', 'Huyện Tuy Phong', 13),
(474, '596', 'Huyện Bắc Bình', 13),
(475, '598', 'Huyện Hàm Thuận Nam', 13),
(476, '599', 'Huyện Tánh Linh', 13),
(477, '600', 'Huyện Đức Linh', 13),
(478, '601', 'Huyện Hàm Tân', 13),
(479, '602', 'Huyện Phú Qui', 13),
(480, '608', 'Thành phố Kon Tum', 31),
(481, '610', 'Huyện Đắk Glei', 31),
(482, '611', 'Huyện Ngọc Hồi', 31),
(483, '612', 'Huyện Đắk Tô', 31),
(484, '613', 'Huyện Kon Plông', 31),
(485, '614', 'Huyện Kon Rẫy', 31),
(486, '615', 'Huyện Đắk Hà', 31),
(487, '616', 'Huyện Sa Thầy', 31),
(488, '617', 'Huyện Tu Mơ Rông', 31),
(489, '622', 'Thành phố Pleiku', 21),
(490, '623', 'Thị xã An Khê', 21),
(491, '624', 'Thị xã Ayun Pa', 21),
(492, '625', 'Huyện KBang', 21),
(493, '626', 'Huyện Đăk Đoa', 21),
(494, '627', 'Huyện Chư Păh', 21),
(495, '628', 'Huyện Ia Grai', 21),
(496, '629', 'Huyện Mang Yang', 21),
(497, '630', 'Huyện Kông Chro', 21),
(498, '631', 'Huyện Đức Cơ', 21),
(499, '632', 'Huyện Chư Prông', 21),
(500, '633', 'Huyện Chư Sê', 21),
(501, '634', 'Huyện Đăk Pơ', 21),
(502, '635', 'Huyện Ia Pa', 21),
(503, '637', 'Huyện Krông Pa', 21),
(504, '638', 'Huyện Phú Thiện', 21),
(505, '639', 'Huyện Chư Pưh', 21),
(506, '643', 'Thành phố Buôn Ma Thuột', 16),
(507, '644', 'Thị Xã Buôn Hồ', 16),
(508, '646', 'Huyện Ea Súp', 16),
(509, '647', 'Huyện Buôn Đôn', 16),
(510, '649', 'Huyện Krông Búk', 16),
(511, '648', 'Huyện Cư M gar', 16),
(512, '645', 'Huyện Ea H leo', 16),
(513, '650', 'Krông Năng', 16),
(514, '651', 'Huyện Ea Kar', 16),
(515, '652', 'Huyện M Đrắk', 16),
(516, '653', 'Huyện Krông Bông', 16),
(517, '654', 'Huyện Krông Pắc', 16),
(518, '655', 'Huyện Krông Pắc', 16),
(519, '656', 'Huyện Lắk', 16),
(520, '657', 'Huyện Cư Kuin', 16),
(521, '660', 'Thị xã Gia Nghĩa', 17),
(522, '661', 'Huyện Đăk Glong', 17),
(523, '662', 'Huyện Cư Jút', 17),
(524, '663', 'Huyện Đắk Mil', 17),
(525, '664', 'Huyện Krông Nô', 17),
(526, '665', 'Huyện Đắk Song', 17),
(527, '666', 'Huyện Đắk R Lấp', 17),
(528, '667', 'Huyện Tuy Đức', 17),
(529, '672', 'Thành phố Đà Lạt', 33),
(530, '673', 'Thành phố Bảo Lộc', 33),
(531, '674', 'Huyện Đam Rông', 33),
(532, '675', 'Huyện Lạc Dương', 33),
(533, '676', 'Huyện Lâm Hà', 33),
(534, '677', 'Huyện Đơn Dương', 33),
(535, '678', 'Huyện Đức Trọng', 33),
(536, '679', 'Huyện Di Linh', 33),
(537, '680', 'Huyện Bảo Lâm', 33),
(538, '681', 'Huyện Đạ Huoai', 33),
(539, '682', 'Huyện Đạ Tẻh', 33),
(540, '683', 'Huyện Cát Tiên', 33),
(541, '688', 'Thị xã Phước Long', 12),
(542, '689', 'Thị xã Đồng Xoài', 12),
(543, '690', 'Thị xã Bình Long', 12),
(544, '691', 'Huyện Bù Gia Mập', 12),
(545, '692', 'Huyện Lộc Ninh', 12),
(546, '693', 'Huyện Bù Đốp', 12),
(547, '694', 'Huyện Hớn Quản', 12),
(548, '695', 'Huyện Đồng Phú', 12),
(549, '696', 'Huyện Bù Đăng', 12),
(550, '697', 'Huyện Chơn Thành', 12),
(551, '698', 'Huyện Phú Riềng', 12),
(552, '703', 'Thành phố Tây Ninh', 49),
(553, '705', 'Huyện Tân Biên', 49),
(554, '706', 'Huyện Tân Châu', 49),
(555, '707', 'Huyện Dương Minh Châu', 49),
(556, '708', 'Huyện Châu Thành', 49),
(557, '709', 'Huyện Hòa Thành', 49),
(558, '710', 'Huyện Gò Dầu', 49),
(559, '711', 'Huyện Bến Cầu', 49),
(560, '712', 'Huyện Trảng Bàng', 49),
(561, '718', 'Thành phố Thủ Dầu Một', 11),
(562, '719', 'Huyện Bàu Bàng', 11),
(563, '720', 'Huyện Dầu Tiếng', 11),
(564, '721', 'Thị xã Bến Cát', 11),
(565, '722', 'Huyện Phú Giáo', 11),
(566, '723', 'Thị xã Tân Uyên', 11),
(567, '724', 'Thị xã Dĩ An', 11),
(568, '725', 'Thị xã Thuận An', 11),
(569, '726', 'Huyện Bắc Tân Uyên', 11),
(570, '731', 'Thành phố Biên Hòa', 19),
(571, '732', 'Thị xã Long Khánh', 19),
(572, '733', 'Huyện Tân Phú', 19),
(573, '735', 'Huyện Vĩnh Cửu', 19),
(574, '736', 'Huyện Định Quán', 19),
(575, '737', 'Huyện Trảng Bom', 19),
(576, '738', 'Huyện Thống Nhất', 19),
(577, '739', 'Huyện Cẩm Mỹ', 19),
(578, '740', 'Huyện Long Thành', 19),
(579, '741', 'Huyện Xuân Lộc', 19),
(580, '742', 'Huyện Nhơn Trạch', 19),
(581, '760', 'Quận 1', 65),
(582, '761', 'Quận 12', 65),
(583, '762', 'Quận Thủ Đức', 65),
(584, '763', 'Quận 9', 65),
(585, '764', 'Quận Gò Vấp', 65),
(586, '765', 'Quận Bình Thạnh', 65),
(587, '766', 'Quận Tân Bình', 65),
(588, '767', 'Quận Tân Phú', 65),
(589, '768', 'Quận Phú Nhuận', 65),
(590, '769', 'Quận 2', 65),
(591, '770', 'Quận 3', 65),
(592, '771', 'Quận 10', 65),
(593, '772', 'Quận 11', 65),
(594, '773', 'Quận 4', 65),
(595, '774', 'Quận 5', 65),
(596, '775', 'Quận 6', 65),
(597, '776', 'Quận 8', 65),
(598, '777', 'Quận Bình Tân', 65),
(599, '778', 'Quận 7', 65),
(600, '783', 'Huyện Củ Chi', 65),
(601, '784', 'Huyện Hóc Môn', 65),
(602, '785', 'Huyện Bình Chánh', 65),
(603, '786', 'Huyện Nhà Bè', 65),
(604, '787', 'Huyện Cần Giờ', 65),
(605, '794', 'Thành phố Tân An', 36),
(606, '795', 'Thị xã Kiến Tường', 36),
(607, '796', 'Huyện Tân Hưng', 36),
(608, '797', 'Huyện Vĩnh Hưng', 36),
(609, '798', 'Huyện Mộc Hóa', 36),
(610, '7800', 'Huyện Thạnh Hóa', 36),
(611, '801', 'Huyện Đức Huệ', 36),
(612, '802', 'Huyện Đức Hòa', 36),
(613, '803', 'Huyện Bến Lức', 36),
(614, '804', 'Huyện Thủ Thừa', 36),
(615, '805', 'Huyện Tân Trụ', 36),
(616, '806', 'Huyện Cần Đước', 36),
(617, '808', 'Huyện Châu Thành', 36),
(618, '807', 'Huyện Cần Giuộc', 36),
(619, '815', 'Thành phố Mỹ Tho', 54),
(620, '816', 'Thị xã Gò Công', 54),
(621, '817', 'Thị xã Cai Lậy', 54),
(622, '818', 'Huyện Tân Phước', 54),
(623, '819', 'Huyện Cái Bè', 54),
(624, '820', 'Huyện Cai Lậy', 54),
(625, '821', 'Huyện Châu Thành', 54),
(626, '822', 'Huyện Chợ Gạo', 54),
(627, '823', 'Huyện Gò Công Tây', 54),
(628, '8234', 'Huyện Gò Công Đông', 54),
(629, '825', 'Huyện Tân Phú Đông', 54),
(630, '815', 'Thành phố Mỹ Tho', 9),
(631, '816', 'Thị xã Gò Công', 9),
(632, '817', 'Thị xã Cai Lậy', 9),
(633, '818', 'Huyện Tân Phước', 9),
(634, '819', 'Huyện Cái Bè', 9),
(635, '820', 'Huyện Cai Lậy', 9),
(636, '821', 'Huyện Châu Thành', 9),
(637, '822', 'Huyện Chợ Gạo', 9),
(638, '823', 'Huyện Gò Công Tây', 9),
(639, '824', 'Huyện Gò Công Đông', 9),
(640, '825', 'Huyện Tân Phú Đông', 9),
(641, '842', 'Thành phố Trà Vinh', 55),
(642, '844', 'Huyện Càng Long', 55),
(643, '845', 'Huyện Cầu Kè', 55),
(644, '846', 'Huyện Tiểu Cần', 55),
(645, '847', 'Huyện Châu Thành', 55),
(646, '848', 'Huyện Cầu Ngang', 55),
(647, '849', 'Huyện Trà Cú', 55),
(648, '850', 'Huyện Duyên Hải', 55),
(649, '851', 'Thị xã Duyên Hải', 55),
(650, '855', 'Thành phố Vĩnh Long', 57),
(651, '857', 'Huyện Long Hồ', 57),
(652, '858', 'Huyện Mang Thít', 57),
(653, '859', 'Huyện Vũng Liêm', 58),
(654, '860', 'Huyện Tam Bình', 57),
(655, '861', 'Thị xã Bình Minh', 57),
(656, '862', 'Huyện Trà Ôn', 57),
(657, '863', 'Huyện Bình Tân', 57),
(658, '866', 'Thành phố Cao Lãnh', 20),
(659, '867', 'Thành phố Sa Đéc', 20),
(660, '868', 'Thị xã Hồng Ngự', 20),
(661, '869', 'Huyện Tân Hồng', 20),
(662, '870', 'Huyện Hồng Ngự', 20),
(663, '871', 'Huyện Tam Nông', 20),
(664, '872', 'Huyện Tháp Mười', 20),
(665, '873', 'Huyện Cao Lãnh', 20),
(666, '874', 'Huyện Thanh Bình', 20),
(667, '875', 'Huyện Lấp Vò', 20),
(668, '876', 'Huyện Lai Vung', 20),
(669, '877', 'Huyện Châu Thành', 20),
(670, '899', 'Thành phố Rạch Giá', 30),
(671, '900', 'Thị xã Hà Tiên', 30),
(672, '902', 'Huyện Kiên Lương', 30),
(673, '903', 'Huyện Hòn Đất', 30),
(674, '904', 'Huyện Tân Hiệp', 30),
(675, '905', 'Huyện Châu Thành', 30),
(676, '907', 'Huyện Gò Quao', 30),
(677, '906', 'Huyện Giồng Riềng', 30),
(678, '908', 'Huyện An Biên', 30),
(679, '909', 'Huyện An Minh', 30),
(680, '910', 'Huyện Vĩnh Thuận', 30),
(681, '911', 'Huyện Phú Quốc', 30),
(682, '912', 'Huyện Kiên Hải', 30),
(683, '913', 'Huyện U Minh Thượng', 30),
(684, '914', 'Huyện Giang Thành', 30),
(685, '916', 'Quận Ninh Kiều', 61),
(686, '917', 'Quận Ô Môn', 61),
(687, '918', 'Quận Bình Thuỷ', 61),
(688, '919', 'Quận Cái Răng', 61),
(689, '923', 'Quận Thốt Nốt', 60),
(690, '924', 'Huyện Vĩnh Thạnh', 61),
(691, '925', 'Huyện Cờ Đỏ', 61),
(692, '926', 'Huyện Phong Điền', 61),
(693, '927', 'Huyện Thới Lai', 61),
(694, '930', 'Thành phố Vị Thanh', 26),
(695, '931', 'Thị xã Ngã Bảy', 26),
(696, '932', 'Huyện Châu Thành A', 26),
(697, '933', 'Huyện Châu Thành', 26),
(698, '934', 'Huyện Phụng Hiệp', 26),
(699, '935', 'Huyện Vị Thuỷ', 26),
(700, '936', 'Huyện Long Mỹ', 26),
(701, '937', 'Thị xã Long Mỹ', 26),
(702, '941', 'Thành phố Sóc Trăng', 47),
(703, '942', 'Huyện Châu Thành', 47),
(704, '943', 'Huyện Kế Sách', 47),
(705, '944', 'Huyện Mỹ Tú', 47),
(706, '945', 'Huyện Cù Lao Dung', 47),
(707, '946', 'Huyện Long Phú', 47),
(708, '947', 'Huyện Mỹ Xuyên', 47),
(709, '948', 'Thị xã Ngã Năm', 47),
(710, '949', 'Huyện Thạnh Trị', 47),
(711, '950', 'Thị xã Vĩnh Châu', 47),
(712, '951', 'Huyện Trần Đề', 47),
(713, '964', 'Thành phố Cà Mau', 14),
(714, '966', 'Huyện U Minh', 14),
(715, '968', 'Huyện Trần Văn Thời', 14),
(716, '969', 'Huyện Cái Nước', 14),
(717, '967', 'Huyện Thới Bình', 15),
(718, '970', 'Huyện Đầm Dơi', 14),
(719, '971', 'Huyện Năm Căn', 14),
(720, '972', 'Huyện Phú Tân', 14),
(721, '973', 'Huyện Ngọc Hiển', 14);

-- --------------------------------------------------------

--
-- Table structure for table `tb_information`
--

CREATE TABLE `tb_information` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_information`
--

INSERT INTO `tb_information` (`id`, `name`, `value`) VALUES
(1, 'name', '3T-SHOP'),
(2, 'description', 'Thương hiệu thời trang nam 3T Chuyên các dòng sản phẩm thời trang nam: Quần jean, quần tây, quần kaki, áo sơ mi, áo khoác, áo vest, áo thun, phụ kiện nam,...'),
(3, 'logo_header', 'image/logo-top.png'),
(4, 'logo_footer', 'image/logo-bottom.png'),
(5, 'email', ' 3T-Shop@gmail.com.vn'),
(6, 'phone', ' 0963832571 0123456789'),
(7, 'adress', 'Thanh Hóa'),
(15, 'slider', 'image/g144.jpg image/g137.jpg image/g142.jpg image/g143.jpg image/g116.jpg'),
(16, 'fb', 'https://www.facebook.com/ly.a.thanh.01/'),
(17, 'image_1', 'image/slide-1-trang-chu-slide-1.jpg'),
(18, 'category_1', '17'),
(19, 'image_2', 'image/slide-2-trang-chu-slide-2.jpg'),
(20, 'category_2', '22'),
(21, 'image_3', 'image/slide-3-trang-chu-slide-3.jpg'),
(22, 'category_3', '23'),
(23, 'image_4', 'image/slide-4-trang-chu-slide-4.jpg'),
(24, 'category_4', '18'),
(25, 'gioithieu', '<p>&nbsp;</p>\r\n\r\n<p><strong>Thương hiệu Thời trang 3T&nbsp;được th&agrave;nh lập từ th&aacute;ng 3 năm 2010, l&agrave; một trong những thương hiệu thời trang nam uy t&iacute;n h&agrave;ng đầu Việt Nam. Với sự quản l&yacute; chặt chẽ, chuy&ecirc;n nghiệp của đội ngũ&nbsp;quản l&yacute;; Nỗ lực s&aacute;ng tạo kh&ocirc;ng ngừng của bộ phận thiết kế, Sự tận t&acirc;m của nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng&hellip; l&agrave; những yếu tố l&agrave;m n&ecirc;n thương hiệu thời trang 3T&nbsp;lớn mạnh như hiện nay.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>3T&nbsp;lu&ocirc;n quan niệm thời trang l&agrave; sự t&igrave;m t&ograve;i v&agrave; s&aacute;ng tạo n&ecirc;n những sản phẩm của 3T&nbsp;đều được thiết kế ri&ecirc;ng với sự trẻ trung, hiện đại để mang lại gu&nbsp;thời trang hợp mốt nhất cho c&aacute;c bạn trẻ. C&aacute;c d&ograve;ng sản phẩm của 3T&nbsp;kh&ocirc;ng ngừng đa dạng về kiểu d&aacute;ng, mẫu m&atilde; từ &aacute;o sơ mi, &aacute;o thun, &aacute;o kho&aacute;c, &aacute;o vest, quần jean, quần t&acirc;y, quần kaki&hellip; đến c&aacute;c phụ kiện thời trang v&ocirc; c&ugrave;ng s&agrave;nh điệu, tất cả tạo n&ecirc;n vẻ đẹp ho&agrave;n hảo, hiện đại, phong c&aacute;ch cho ph&aacute;i mạnh</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>B&ecirc;n cạnh đ&oacute; 3T&nbsp;lu&ocirc;n đặt m&igrave;nh v&agrave;o t&acirc;m l&yacute; v&agrave; quyền lợi của kh&aacute;ch h&agrave;ng để tung ra những sản phẩm thời trang chất lượng tốt nhất, mẫu m&atilde; cực đẹp, mới lạ nhưng với gi&aacute; cả cực k&igrave; hấp dẫn, cạnh tranh nhất.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Hiện nay, thương hiệu thời trang nam 3T&nbsp;ph&aacute;t triển ng&agrave;y c&agrave;ng lớn mạnh th&agrave;nh một hệ thống với nhiều chi nh&aacute;nh cửa h&agrave;ng b&aacute;n lẻ tại TPHCM, Đồng Nai v&agrave; Vũng T&agrave;u. Ngo&agrave;i ra, nhằm tạo sự tiện lợi mua sắm tối đa cho kh&aacute;ch h&agrave;ng, 3T&nbsp;ph&aacute;t triển hệ thống b&aacute;n h&agrave;ng online, giao h&agrave;ng đến tận tay người ti&ecirc;u d&ugrave;ng tr&ecirc;n to&agrave;n quốc. Giờ đ&acirc;y ngay tại nh&agrave; bạn cũng c&oacute; thể chọn cho m&igrave;nh những sản phẩm ph&ugrave; hợp với sở th&iacute;ch v&agrave; phong c&aacute;ch của m&igrave;nh.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Đến với 3T-SHOP, ch&uacute;ng t&ocirc;i lu&ocirc;n tận t&acirc;m tư vấn gi&uacute;p qu&yacute; kh&aacute;ch t&igrave;m được những sản phẩm y&ecirc;u th&iacute;ch, ph&ugrave; hợp với nhu cầu v&agrave; g&oacute;p phần tạo n&ecirc;n phong c&aacute;ch cho ri&ecirc;ng m&igrave;nh!</strong></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tb_label`
--

CREATE TABLE `tb_label` (
  `id_label` int(11) NOT NULL,
  `code_label` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `name_label` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_label`
--

INSERT INTO `tb_label` (`id_label`, `code_label`, `name_label`) VALUES
(22, 'Bitis', 'Bitis'),
(23, 'Gucci', 'Gucci'),
(24, 'Burberry', 'Burberry'),
(25, 'Nike', 'Nike'),
(26, 'Adidas', 'Adidas'),
(27, 'Converse', 'Converse'),
(28, 'LouisVuitt', 'Louis Vuitton'),
(29, 'Prada', 'Prada'),
(30, 'Versace', 'Versace'),
(31, 'Dior', 'Dior');

-- --------------------------------------------------------

--
-- Table structure for table `tb_order`
--

CREATE TABLE `tb_order` (
  `id_order` int(11) NOT NULL,
  `code_order` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `status_order` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `id_product` int(11) NOT NULL,
  `size_product` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity_product` int(5) NOT NULL,
  `name_customer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_customer` char(11) COLLATE utf8_unicode_ci NOT NULL,
  `address_customer` text COLLATE utf8_unicode_ci NOT NULL,
  `email_customer` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_day` datetime NOT NULL,
  `id_district` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_order`
--

INSERT INTO `tb_order` (`id_order`, `code_order`, `status_order`, `id_product`, `size_product`, `quantity_product`, `name_customer`, `phone_customer`, `address_customer`, `email_customer`, `order_day`, `id_district`) VALUES
(53, '9615329', '1', 19, 's', 1, 'Ly A Thành', '01262898272', 'abc, Hòa Lạc', 'lyathanh@gmail.com', '2023-06-10 21:48:00', 7),
(54, '3296782', '1', 19, 'l', 4, 'Ly A Thành', '01262898272', '123, abcd', 'lyathanh@gmail.com', '2023-06-10 23:05:00', 26),
(55, '3296782', '1', 20, 'xl', 9,'Ly A Thành', '01262898272', '123, abcd', 'lyathanh@gmail.com', '2023-06-10 23:05:00', 26),
(56, '3296782', '1', 21, 'm', 6, 'Ly A Thành', '01262898272', '123, abcd', 'lyathanh@gmail.com', '2023-06-10 23:05:00', 26),
(57, '9887352', '1', 20, 'L', 6, 'Ly A Thành', '01262898272', '188/48B Nguyễn Văn Cừ, An Hòa', 'lyathanh@gmail', '2023-06-11 08:04:38', 28),
(62, '4387044', '1', 20, 'l', 4, 'Ly A Thành', '01262898272', ' 123, Cái Răng', 'lyathanh@gmail', '2023-06-12 08:59:00', 8),
(63, '4387044', '1', 21, 'm', 6, 'Ly A Thành', '01262898272', ' 123, Cái Răng', 'lyathanh@gmail', '2023-06-12 08:59:00', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `id_product` int(11) NOT NULL,
  `code_product` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `name_product` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_label` int(11) NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `image_thump` text COLLATE utf8_unicode_ci NOT NULL,
  `price_product` int(11) NOT NULL,
  `saleprice_product` int(11) NOT NULL,
  `describe_product` text COLLATE utf8_unicode_ci NOT NULL,
  `size_product` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `view_product` int(11) NOT NULL,
  `date_product` date NOT NULL,
  `status_product` char(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`id_product`, `code_product`, `name_product`, `id_category`, `id_label`, `image`, `image_thump`, `price_product`, `saleprice_product`, `describe_product`, `size_product`, `view_product`, `date_product`, `status_product`) VALUES
(19, 'A8024', 'ÁO SƠ MI HÀN QUỐC CAM TRƠN', 106, 22, 'upload/resize/ao-so-mi-han-quoc-cam-tron-asm788-7258-slide-1_thump.jpg upload/resize/ao-so-mi-han-quoc-cam-tron-asm788-7258-slide-2_thump.jpg upload/resize/ao-so-mi-han-quoc-cam-tron-asm788-7258-slide-3_thump.jpg upload/resize/ao-so-mi-han-quoc-cam-tron-asm788-7258-slide-4_thump.jpg', 'upload/resize/ao-so-mi-han-quoc-cam-tron-asm788-7258-slide-1_thump.jpg upload/resize/ao-so-mi-han-quoc-cam-tron-asm788-7258-slide-2_thump.jpg upload/resize/ao-so-mi-han-quoc-cam-tron-asm788-7258-slide-3_thump.jpg upload/resize/ao-so-mi-han-quoc-cam-tron-asm788-7258-slide-4_thump.jpg', 200000, 245000, 'Áo Sơ Mi Hàn Quốc Cam Trơn với thiết kế cổ trụ, tay dài, form ôm nhẹ, phối nút ở cổ áo tinh tế. Thiết kế đơn giản theo phong cách Hàn Quốc rất thời trang, vải trơn thanh lịch, chất liệu 100% cotton cao cấp thấm hút tốt, pha sợi spandex giúp co giãn và không co rút, nhăn nhàu khi sử dụng. Đường chỉ may tỉ mỉ, tinh tế đến từng chi tiết nhỏ. Màu sắc nổi bật, kiểu dáng hiện đại, giúp bạn tự tin và lịch lãm hơn.', 'a:4:{s:1:\"s\";s:1:\"9\";s:1:\"m\";s:2:\"10\";s:1:\"l\";i:6;s:2:\"xl\";s:2:\"10\";}', 3, '2022-06-10', '1'),
(20, 'A551', 'ÁO SƠ MI HÀN QUỐC TRẮNG KEM TRƠN', 106, 22, 'upload/resize/ao-so-mi-han-quoc-trang-kem-tron-asm788-7251-slide-1_thump.jpg upload/resize/ao-so-mi-han-quoc-trang-kem-tron-asm788-7251-slide-2_thump.jpg upload/resize/ao-so-mi-han-quoc-trang-kem-tron-asm788-7251-slide-3_thump.jpg upload/resize/ao-so-mi-han-quoc-trang-kem-tron-asm788-7251-slide-4_thump.jpg', 'upload/resize/ao-so-mi-han-quoc-trang-kem-tron-asm788-7251-slide-1_thump.jpg upload/resize/ao-so-mi-han-quoc-trang-kem-tron-asm788-7251-slide-2_thump.jpg upload/resize/ao-so-mi-han-quoc-trang-kem-tron-asm788-7251-slide-3_thump.jpg upload/resize/ao-so-mi-han-quoc-trang-kem-tron-asm788-7251-slide-4_thump.jpg', 200000, 245000, 'Áo Sơ Mi Hàn Quốc Trắng Kem Trơn màu sắc trang nhã, thiết kế hiện đại không gây cảm giác nhàm chán. Form ôm, vải suông, tay dài, cổ trụ phối nút tạo điểm nhấn tinh tế cho sản phẩm. Chất liệu cao cấp từ 100% cotton thấm hút tốt, pha sợi spandex giúp sản phẩm có độ co giãn, không nhăn nhàu co rút sau khi giặt. Thiết kế theo phong cách Hàn Quốc rất thời trang và hiện đại, giúp bạn thêm chuyên nghiệp, lịch lãm và nam tính hơn.', 'a:4:{s:1:\"s\";s:2:\"10\";s:1:\"m\";s:2:\"10\";s:1:\"l\";i:0;s:2:\"xl\";s:2:\"10\";}', 14, '2022-06-10', '1'),
(21, 'A3516', 'ÁO SƠ MI HÀN QUỐC XANH ĐEN TRƠN', 106, 22, 'upload/resize/ao-so-mi-han-quoc-xanh-den-tron-asm788-7255-slide-1_thump.jpg upload/resize/ao-so-mi-han-quoc-xanh-den-tron-asm788-7255-slide-2_thump.jpg upload/resize/ao-so-mi-han-quoc-xanh-den-tron-asm788-7255-slide-3_thump.jpg', 'upload/resize/ao-so-mi-han-quoc-xanh-den-tron-asm788-7255-slide-1_thump.jpg upload/resize/ao-so-mi-han-quoc-xanh-den-tron-asm788-7255-slide-2_thump.jpg upload/resize/ao-so-mi-han-quoc-xanh-den-tron-asm788-7255-slide-3_thump.jpg', 200000, 245000, 'Áo Sơ Mi Hàn Quốc Xanh Đen Trơn  với thiết kế cổ trụ, tay dài, form ôm nhẹ, phối nút ở cổ áo tinh tế. Thiết kế đơn giản theo phong cách Hàn Quốc rất thời trang, vải trơn thanh lịch, chất liệu 100% cotton cao cấp thấm hút tốt. Đường chỉ may tỉ mỉ, tinh tế đến từng chi tiết nhỏ. Màu sắc nổi bật, kiểu dáng hiện đại, giúp bạn tự tin và lịch lãm hơn.', 'a:4:{s:1:\"s\";s:2:\"10\";s:1:\"m\";i:4;s:1:\"l\";s:2:\"10\";s:2:\"xl\";s:2:\"10\";}', 4, '2022-06-10', '1'),
(23, 'A441', 'ÁO SƠ MI TRẮNG KEM', 106, 22, 'upload/resize/ao-so-mi-trang-kem-asm836-8193-slide-1_thump.jpg upload/resize/ao-so-mi-trang-kem-asm836-8193-slide-2_thump.jpg upload/resize/ao-so-mi-trang-kem-asm836-8193-slide-3_thump.jpg upload/resize/ao-so-mi-trang-kem-asm836-8193-slide-4_thump.jpg', 'upload/resize/ao-so-mi-trang-kem-asm836-8193-slide-1_thump.jpg upload/resize/ao-so-mi-trang-kem-asm836-8193-slide-2_thump.jpg upload/resize/ao-so-mi-trang-kem-asm836-8193-slide-3_thump.jpg upload/resize/ao-so-mi-trang-kem-asm836-8193-slide-4_thump.jpg ', 200000, 245000, 'Màu trắng kem luôn mang đến cho người mặc sự thanh lịch, nhã nhặn như chiếc Áo Sơ Mi Trắng Kem này. Áo co giãn rất thoải mái và thấm hút mồ hôi cực tốt nhờ chất liệu từ cotton cao cấp. Điểm nhấn của chiếc áo nằm ở những đường lượn cong nhiều màu trải đều khắp mặt áo rất ấn tượng. Đảm bảo sẽ làm bật lên style ăn mặc hiện đại của bạn.', 'a:3:{s:1:\"m\";s:2:\"10\";s:1:\"l\";s:2:\"10\";s:2:\"xl\";s:2:\"10\";}', 3, '2022-06-11', '1'),
(28, 'A792', 'ÁO SƠ MI TRẮNG KEM', 107, 22, 'upload/resize/ao-so-mi-trang-kem-asm838-8198-slide-1_thump.jpg upload/resize/ao-so-mi-trang-kem-asm838-8198-slide-2_thump.jpg upload/resize/ao-so-mi-trang-kem-asm838-8198-slide-3_thump.jpg upload/resize/ao-so-mi-trang-kem-asm838-8198-slide-4_thump.jpg', 'upload/resize/ao-so-mi-trang-kem-asm838-8198-slide-1_thump.jpg upload/resize/ao-so-mi-trang-kem-asm838-8198-slide-2_thump.jpg upload/resize/ao-so-mi-trang-kem-asm838-8198-slide-3_thump.jpg upload/resize/ao-so-mi-trang-kem-asm838-8198-slide-4_thump.jpg ', 200000, 245000, 'Áo Sơ Mi Trắng Kem thanh lịch với màu trắng kem nhã nhặn, chất liệu cao cấp từ cotton co giãn, thấm hút tốt, giúp sản phẩm không những bền đẹp mà còn có giá trị sử dụng rất cao. Chiếc áo được nhấn nhá với những họa tiết nhỏ, trải đều khắp mặt áo rất ấn tượng. Đảm bảo sẽ làm bật lên style ăn mặc hiện đại của bạn.', 'a:2:{s:1:\"l\";s:2:\"10\";s:2:\"xl\";s:2:\"10\";}', 0, '2022-06-11', '1'),
(30, 'A3007', 'ÁO SƠ MI HỌA TIẾT ĐỎ ĐÔ', 107, 22, 'upload/resize/ao-so-mi-hoa-tiet-do-do-asm706-5720-slide-1_thump.jpg upload/resize/ao-so-mi-hoa-tiet-do-do-asm706-5720-slide-2_thump.jpg upload/resize/ao-so-mi-hoa-tiet-do-do-asm706-5720-slide-3_thump.jpg upload/resize/ao-so-mi-hoa-tiet-do-do-asm706-5720-slide-4_thump.jpg', 'upload/resize/ao-so-mi-hoa-tiet-do-do-asm706-5720-slide-1_thump.jpg upload/resize/ao-so-mi-hoa-tiet-do-do-asm706-5720-slide-2_thump.jpg upload/resize/ao-so-mi-hoa-tiet-do-do-asm706-5720-slide-3_thump.jpg upload/resize/ao-so-mi-hoa-tiet-do-do-asm706-5720-slide-4_thump.jpg ', 200000, 225000, 'Áo Sơ Mi Họa Tiết Đỏ Đô kiểu dáng trẻ trung, phối họa tiết lạ mắt tạo điểm nhấn cho sản phẩm. Màu đỏ đô nổi bật, tay dài, cổ bẻ cao thời trang. Tên và logo thương hiệu gắn bên ngực phải mang đến sự khác biệt cho sản phẩm. Chất liệu vải cotton cao cấp bền đẹp, không nhăn, thấm hút mồ hôi tốt tạo sự thoải mái khi mặc.\r\n\r\n', 'a:2:{s:1:\"l\";s:2:\"10\";s:2:\"xl\";s:2:\"10\";}', 0, '2022-06-11', '1'),
(32, 'A5771', 'ÁO SƠ MI CA RÔ XANH ĐEN', 108, 22, 'upload/resize/ao-so-mi-ca-ro-xanh-den-asm832-7937-slide-1_thump.jpg upload/resize/ao-so-mi-ca-ro-xanh-den-asm832-7937-slide-3_thump.jpg upload/resize/ao-so-mi-ca-ro-xanh-den-asm832-7937-slide-4_thump.jpg', 'upload/resize/ao-so-mi-ca-ro-xanh-den-asm832-7937-slide-1_thump.jpg upload/resize/ao-so-mi-ca-ro-xanh-den-asm832-7937-slide-3_thump.jpg upload/resize/ao-so-mi-ca-ro-xanh-den-asm832-7937-slide-4_thump.jpg ', 200000, 245000, 'Áo Sơ Mi Ca Rô Xanh Đen màu sắc tươi sáng, nổi bật với những đường sọc caro xanh đen cá tính cho người mặc nét sang trọng, lịch lãm. Kiểu dáng thanh lịch, hợp thời trang, phù hợp với nhiều đối tượng. Hãy bắt đầu ngày mới với những sắc màu trẻ trung, tươi sáng từ Áo sơ mi của 3t shop.\r\n\r\n', 'a:2:{s:1:\"l\";s:2:\"10\";s:2:\"xl\";s:2:\"10\";}', 0, '2022-06-11', '1'),
(33, 'A5042', 'ÁO SƠ MI CA RÔ XANH ĐEN', 108, 22, 'upload/resize/ao-so-mi-ca-ro-xanh-den-asm886-8768-slide-1_thump.jpg upload/resize/ao-so-mi-ca-ro-xanh-den-asm886-8768-slide-2_thump.jpg upload/resize/ao-so-mi-ca-ro-xanh-den-asm886-8768-slide-3_thump.jpg upload/resize/ao-so-mi-ca-ro-xanh-den-asm886-8768-slide-4_thump.jpg', 'upload/resize/ao-so-mi-ca-ro-xanh-den-asm886-8768-slide-1_thump.jpg upload/resize/ao-so-mi-ca-ro-xanh-den-asm886-8768-slide-2_thump.jpg upload/resize/ao-so-mi-ca-ro-xanh-den-asm886-8768-slide-3_thump.jpg upload/resize/ao-so-mi-ca-ro-xanh-den-asm886-8768-slide-4_thump.jpg ', 150000, 195000, '', 'a:3:{s:1:\"m\";s:2:\"10\";s:1:\"l\";s:2:\"10\";s:2:\"xl\";s:2:\"10\";}', 0, '2022-06-11', '1'),
(35, 'A6757', 'ÁO SƠ MI SỌC XANH RÊU ASM840', 108, 22, 'upload/resize/ao-so-mi-soc-xanh-reu-asm840-8259-slide-1_thump.jpg upload/resize/ao-so-mi-soc-xanh-reu-asm840-8259-slide-2_thump.jpg upload/resize/ao-so-mi-soc-xanh-reu-asm840-8259-slide-3_thump.jpg upload/resize/ao-so-mi-soc-xanh-reu-asm840-8259-slide-4_thump.jpg', 'upload/resize/ao-so-mi-soc-xanh-reu-asm840-8259-slide-1_thump.jpg upload/resize/ao-so-mi-soc-xanh-reu-asm840-8259-slide-2_thump.jpg upload/resize/ao-so-mi-soc-xanh-reu-asm840-8259-slide-3_thump.jpg upload/resize/ao-so-mi-soc-xanh-reu-asm840-8259-slide-4_thump.jpg ', 200000, 245000, 'Áo Sơ Mi Sọc Xanh Rêu với những đường sọc màu bắt mắt đã phá tan sự giản đơn của một chiếc áo sơ mi trắng. Kiểu dáng thanh lịch, hợp thời trang, phù hợp với nhiều đối tượng. Sọc màu xanh rêu cá tính ở ngực phải tạo nên điểm nhấn cho sản phẩm cũng như sự thu hút cho người mặc.', 'a:2:{s:1:\"m\";s:2:\"10\";s:1:\"l\";s:2:\"10\";}', 0, '2022-06-11', '1'),
(36, 'A6208', 'ÁO SƠ MI CA RÔ XANH LÁ CÂY', 108, 22, 'upload/resize/ao-so-mi-ca-ro-xanh-la-cay-asm858-8504-slide-1_thump.jpg upload/resize/ao-so-mi-ca-ro-xanh-la-cay-asm858-8504-slide-2_thump.jpg upload/resize/ao-so-mi-ca-ro-xanh-la-cay-asm858-8504-slide-3_thump.jpg upload/resize/ao-so-mi-ca-ro-xanh-la-cay-asm858-8504-slide-4_thump.jpg upload/resize/ao-so-mi-ca-ro-xanh-la-cay-asm858-8504-slide-5_thump.jpg', 'upload/resize/ao-so-mi-ca-ro-xanh-la-cay-asm858-8504-slide-1_thump.jpg upload/resize/ao-so-mi-ca-ro-xanh-la-cay-asm858-8504-slide-2_thump.jpg upload/resize/ao-so-mi-ca-ro-xanh-la-cay-asm858-8504-slide-3_thump.jpg upload/resize/ao-so-mi-ca-ro-xanh-la-cay-asm858-8504-slide-4_thump.jpg upload/resize/ao-so-mi-ca-ro-xanh-la-cay-asm858-8504-slide-5_thump.jpg', 150000, 195000, 'Nếu bạn cảm thấy nhàm chán với Áo sơ mi trơn thì hãy thay đổi diện mạo với Áo Sơ Mi Ca Rô Xanh Lá Cây cá tính này. Màu xanh lá cây tươi sáng phối những đường sọc caro nhỏ bắt mắt tạo nên sự nổi bật cho người mặc. Bên cạnh đó, thiết kế dáng cổ trụ cài nút lịnh lãm, tay dài, cùng hàng nút cài tiệp màu áo càng làm tăng lên vẻ thu hút.', 'a:0:{}', 1, '2022-06-11', '1'),
(37, 'A4311', 'ÁO SƠ MI NGẮN TAY TRẮNG KEM', 109, 22, 'upload/resize/ao-so-mi-ngan-tay-trang-kem-asm776-7005-slide-1_thump.jpg upload/resize/ao-so-mi-ngan-tay-trang-kem-asm776-7005-slide-2_thump.jpg upload/resize/ao-so-mi-ngan-tay-trang-kem-asm776-7005-slide-3_thump.jpg upload/resize/ao-so-mi-ngan-tay-trang-kem-asm776-7005-slide-4_thump.jpg', 'upload/resize/ao-so-mi-ngan-tay-trang-kem-asm776-7005-slide-1_thump.jpg upload/resize/ao-so-mi-ngan-tay-trang-kem-asm776-7005-slide-2_thump.jpg upload/resize/ao-so-mi-ngan-tay-trang-kem-asm776-7005-slide-3_thump.jpg upload/resize/ao-so-mi-ngan-tay-trang-kem-asm776-7005-slide-4_thump.jpg ', 200000, 225000, 'Áo Sơ Mi Ngắn Tay Trắng Kem thiết kế tinh tế đi cùng màu sắc trang nhã. Cổ trụ phối nút, tay ngắn, đường may đều đẹp chắc chắn. Đường viền cổ phối khác màu và logo nho nhỏ trên ngực áo tạo điểm nhấn. Chất liệu cao cấp 100% cotton thấm hút tốt, pha sợi spandex giúp sản phẩm vừa ôm dáng khoe body vừa co giãn cực thoải mái cho người mặc, lại không nhăn nhàu không co rút. Sản phẩm giúp bạn nam có vẻ ngoài lịch lãm và sang trọng hơn, nhưng vẫn giữ được nét tươi trẻ và hiện đại.', 'a:2:{s:1:\"l\";s:2:\"10\";s:2:\"xl\";s:2:\"10\";}', 0, '2022-06-11', '1'),
(38, 'A6907', 'ÁO SƠ MI NGẮN TAY ĐỎ ĐÔ', 109, 22, 'upload/resize/ao-so-mi-ngan-tay-do-do-asm776-7003-slide-1_thump.jpg upload/resize/ao-so-mi-ngan-tay-do-do-asm776-7003-slide-2_thump.jpg upload/resize/ao-so-mi-ngan-tay-do-do-asm776-7003-slide-3_thump.jpg upload/resize/ao-so-mi-ngan-tay-do-do-asm776-7003-slide-4_thump.jpg', 'upload/resize/ao-so-mi-ngan-tay-do-do-asm776-7003-slide-1_thump.jpg upload/resize/ao-so-mi-ngan-tay-do-do-asm776-7003-slide-2_thump.jpg upload/resize/ao-so-mi-ngan-tay-do-do-asm776-7003-slide-3_thump.jpg upload/resize/ao-so-mi-ngan-tay-do-do-asm776-7003-slide-4_thump.jpg ', 200000, 225000, 'Áo Sơ Mi Ngắn Tay Đỏ Đô thiết kế hiện đại, màu đỏ đô nam tính và lịch lãm. Chất liệu cao cấp 100% cotton thấm hút tốt, pha sợi spandex nên sản phẩm tăng độ co giãn, không nhăn nhàu và co rút. Thiết kế mới lạ, cổ trụ phối nút nam tính, đường viền cổ khác màu và logo trên ngực áo tạo điểm nhấn cho sản phẩm. Đường chỉ may đều đẹp chắc chắn. Sản phẩm giúp người mặc nổi bật và cuốn hút hơn.', 'a:2:{s:1:\"l\";s:2:\"10\";s:2:\"xl\";s:2:\"10\";}', 0, '2022-06-11', '1'),
(39, 'A2555', 'ÁO SƠ MI NGẮN TAY ĐEN', 109, 22, 'upload/resize/ao-so-mi-ngan-tay-den-asm710-6052-slide-1_thump.jpg upload/resize/ao-so-mi-ngan-tay-den-asm710-6052-slide-2_thump.jpg', 'upload/resize/ao-so-mi-ngan-tay-den-asm710-6052-slide-1_thump.jpg upload/resize/ao-so-mi-ngan-tay-den-asm710-6052-slide-2_thump.jpg ', 150000, 185000, 'Áo Sơ Mi Ngắn Tay Đen màu đen nam tính phối viền cổ áo, cổ tay áo và túi trước ngực tạo điểm nhấn cho sản phẩm. Thiết kế đơn giản với áo cổ bẻ, tay ngắn trẻ trung. Form áo ôm vừa vặn, đường may đẹp, tinh tế mang đến vẻ ngoài thanh lịch, nam tính. Chất liệu cotton mềm mại, thấm hút mồ hôi, mang lại cảm giác thoải mái khi mặc .', 'a:3:{s:1:\"m\";s:2:\"10\";s:1:\"l\";s:2:\"10\";s:2:\"xl\";s:2:\"10\";}', 0, '2022-06-11', '1'),
(40, 'A4822', 'ÁO SƠ MI NGẮN TAY XANH BÍCH', 109, 22, 'upload/resize/ao-so-mi-ngan-tay-xanh-bich-asm710-6054-slide-1_thump.jpg upload/resize/ao-so-mi-ngan-tay-xanh-bich-asm710-6054-slide-2_thump.jpg', 'upload/resize/ao-so-mi-ngan-tay-xanh-bich-asm710-6054-slide-1_thump.jpg upload/resize/ao-so-mi-ngan-tay-xanh-bich-asm710-6054-slide-2_thump.jpg', 150000, 185000, 'Áo Sơ Mi Ngắn Tay Xanh Bích Gam màu xanh bích phối viền cổ áo, cổ tay áo và túi trước ngực tạo điểm nhấn.\r\n- Thiết kế đơn giản với áo cổ bẻ, tay ngắn trẻ trung.\r\n- Form áo ôm vừa vặn, đường may đẹp, tinh tế mang đến vẻ ngoài thanh lịch, nam tính.\r\n- Chất liệu cotton mềm mại, thấm hút mồ hôi, mang lại cảm giác thoải mái khi mặc', 'a:3:{s:1:\"m\";s:1:\"0\";s:1:\"l\";s:1:\"0\";s:2:\"xl\";s:1:\"0\";}', 0, '2022-06-11', '1'),
(41, 'A8543', 'ÁO SƠ MI NGẮN TAY CA RÔ ĐEN', 108, 22, 'upload/resize/ao-so-mi-ca-ro-den-asm912-8796-slide-1_thump.jpg upload/resize/ao-so-mi-ca-ro-den-asm912-8796-slide-3_thump.jpg upload/resize/ao-so-mi-ca-ro-den-asm912-8796-slide-4_thump.jpg', 'upload/resize/ao-so-mi-ca-ro-den-asm912-8796-slide-1_thump.jpg upload/resize/ao-so-mi-ca-ro-den-asm912-8796-slide-3_thump.jpg upload/resize/ao-so-mi-ca-ro-den-asm912-8796-slide-4_thump.jpg ', 150000, 185000, '', 'a:3:{s:1:\"m\";s:2:\"10\";s:1:\"l\";s:2:\"10\";s:2:\"xl\";s:2:\"10\";}', 0, '2022-06-12', '1'),
(43, 'A603', 'ÁO SƠ MI NGẮN TAY XANH RÊU', 108, 22, 'upload/resize/ao-so-mi-ca-ro-xanh-reu-asm904-8782-slide-1_thump.jpg upload/resize/ao-so-mi-ca-ro-xanh-reu-asm904-8782-slide-2_thump.jpg upload/resize/ao-so-mi-ca-ro-xanh-reu-asm904-8782-slide-3_thump.jpg', 'upload/resize/ao-so-mi-ca-ro-xanh-reu-asm904-8782-slide-1_thump.jpg upload/resize/ao-so-mi-ca-ro-xanh-reu-asm904-8782-slide-2_thump.jpg upload/resize/ao-so-mi-ca-ro-xanh-reu-asm904-8782-slide-3_thump.jpg ', 150000, 185000, '', 'a:3:{s:1:\"m\";s:2:\"10\";s:1:\"l\";s:2:\"10\";s:2:\"xl\";s:2:\"10\";}', 0, '2022-06-12', '1'),
(44, 'A5', 'ÁO SƠ MI CỔ LÃNH TỤ NGẮN TAY TRẮNG', 109, 22, 'upload/resize/ao-so-mi-co-lanh-tu-ngan-tay-trang-asm798-7571-slide-1_thump.jpg upload/resize/ao-so-mi-co-lanh-tu-ngan-tay-trang-asm798-7571-slide-2_thump.jpg upload/resize/ao-so-mi-co-lanh-tu-ngan-tay-trang-asm798-7571-slide-3_thump.jpg', 'upload/resize/ao-so-mi-co-lanh-tu-ngan-tay-trang-asm798-7571-slide-1_thump.jpg upload/resize/ao-so-mi-co-lanh-tu-ngan-tay-trang-asm798-7571-slide-2_thump.jpg upload/resize/ao-so-mi-co-lanh-tu-ngan-tay-trang-asm798-7571-slide-3_thump.jpg ', 200000, 225000, 'Áo Sơ Mi Cổ Lãnh Tụ Ngắn Tay Trắng thiết kế tay ngắn năng động, form ôm, mang phong cách thời trang Hàn quốc tạo cảm giác sang trọng và đẳng cấp cho người mặc. Dáng cổ trụ, may những đường viền nhỏ dọc ngực áo tạo điểm nhấn cho sản phẩm. Chất liệu cao cấp từ 100% cotton, pha thêm sợi spandex giúp sản phẩm không những thấm hút tốt, mà còn không nhăn nhàu mất dáng sau khi giặt bởi có độ co giãn. Rất đáng để trải nghiệm!', 'a:3:{s:1:\"m\";s:2:\"10\";s:1:\"l\";s:2:\"10\";s:2:\"xl\";s:2:\"10\";}', 0, '2022-06-12', '1'),
(45, 'A3320', 'ÁO SƠ MI NGẮN TAY XANH ĐEN', 109, 22, 'upload/resize/ao-so-mi-ngan-tay-xanh-den-asm880-8746-slide-products-594b7404cb3a3_thump.jpg upload/resize/ao-so-mi-ngan-tay-xanh-den-asm880-8746-slide-products-594b7404cdf05_thump.jpg upload/resize/ao-so-mi-ngan-tay-xanh-den-asm880-8746-slide-products-594b7404ce598_thump.jpg upload/resize/ao-so-mi-ngan-tay-xanh-den-asm880-8746-slide-products-594b7404de395_thump.jpg', 'upload/resize/ao-so-mi-ngan-tay-xanh-den-asm880-8746-slide-products-594b7404cb3a3_thump.jpg upload/resize/ao-so-mi-ngan-tay-xanh-den-asm880-8746-slide-products-594b7404cdf05_thump.jpg upload/resize/ao-so-mi-ngan-tay-xanh-den-asm880-8746-slide-products-594b7404ce598_thump.jpg upload/resize/ao-so-mi-ngan-tay-xanh-den-asm880-8746-slide-products-594b7404de395_thump.jpg ', 150000, 185000, 'Áo Sơ Mi Ngắn Tay Xanh Đen thiết kế cổ bẻ ve nhỏ, tay áo ngắn năng động thích hợp cho dân công sở thay đổi diện mạo khô khan thường thấy. Bên cạnh đó, chất cotton cao cấp mang đến cảm giác thoải mái, dễ chịu cho người mặc.', 'a:3:{s:1:\"m\";s:2:\"10\";s:1:\"l\";s:2:\"10\";s:2:\"xl\";s:2:\"10\";}', 0, '2022-06-12', '1'),
(46, 'A1438', 'ÁO SƠ MI NGẮN TAY XANH BÍCH', 109, 22, 'upload/resize/ao-so-mi-ngan-tay-xanh-bich-asm743-6337-slide-1_thump.jpg upload/resize/ao-so-mi-ngan-tay-xanh-bich-asm743-6337-slide-2_thump.jpg upload/resize/ao-so-mi-ngan-tay-xanh-bich-asm743-6337-slide-3_thump.jpg', 'upload/resize/ao-so-mi-ngan-tay-xanh-bich-asm743-6337-slide-1_thump.jpg upload/resize/ao-so-mi-ngan-tay-xanh-bich-asm743-6337-slide-2_thump.jpg upload/resize/ao-so-mi-ngan-tay-xanh-bich-asm743-6337-slide-3_thump.jpg ', 150000, 185000, 'Áo Sơ Mi Ngắn Tay Xanh Bích với gam màu xanh bích tươi mát, trẻ trung, dễ phối đồ. Thiết kế đơn giản với áo cổ bẻ, tay ngắn khỏe khoắn. Chất liệu cotton mềm mại, thấm hút mồ hôi, mang lại cảm giác thoải mái khi mặc. Form áo ôm vừa vặn, đường may đẹp, tinh tế mang đến vẻ ngoài thanh lịch, nam tính.', 'a:5:{s:1:\"s\";s:2:\"10\";s:1:\"m\";s:2:\"10\";s:1:\"l\";s:2:\"10\";s:2:\"xl\";s:2:\"10\";s:3:\"xxl\";s:2:\"10\";}', 0, '2022-06-12', '1'),
(47, 'A2942', 'ÁO SƠ MI NGẮN TAY XANH ĐEN', 109, 22, 'upload/resize/ao-so-mi-ngan-tay-xanh-den-asm869-8664-slide-1_thump.jpg upload/resize/ao-so-mi-ngan-tay-xanh-den-asm869-8664-slide-2_thump.jpg upload/resize/ao-so-mi-ngan-tay-xanh-den-asm869-8664-slide-3_thump.jpg upload/resize/ao-so-mi-ngan-tay-xanh-den-asm869-8664-slide-4_thump.jpg', 'upload/resize/ao-so-mi-ngan-tay-xanh-den-asm869-8664-slide-1_thump.jpg upload/resize/ao-so-mi-ngan-tay-xanh-den-asm869-8664-slide-2_thump.jpg upload/resize/ao-so-mi-ngan-tay-xanh-den-asm869-8664-slide-3_thump.jpg upload/resize/ao-so-mi-ngan-tay-xanh-den-asm869-8664-slide-4_thump.jpg', 200000, 225000, 'Áo Sơ Mi Ngắn Tay Xanh Đen thiết kế theo phong cách thời trang Hàn Quốc, gọn gàng, lịch lãm mang đến cho người mặc vẻ ngoài bắt mắt, thu hút phái nữ.', 'a:0:{}', 0, '2022-06-12', '1'),
(49, 'A1088', 'ÁO THUN CÓ CỔ XANH LÁ CÂY IN NỔI CỜ ĐỨC', 110, 22, 'upload/resize/ao-thun-co-co-xanh-la-cay-in-noi-co-duc-at519-336-p_thump.jpg upload/resize/ao-thun-co-co-xanh-la-cay-in-noi-co-duc-at519-336-p(1)_thump.jpg', 'upload/resize/ao-thun-co-co-xanh-la-cay-in-noi-co-duc-at519-336-p_thump.jpg upload/resize/ao-thun-co-co-xanh-la-cay-in-noi-co-duc-at519-336-p(1)_thump.jpg ', 100000, 170000, '', 'a:2:{s:1:\"m\";s:2:\"10\";s:1:\"l\";s:2:\"10\";}', 0, '2022-06-12', '1'),
(50, 'A9312', 'ÁO THUN CÁ SẤU XANH LÁ CÂY', 110, 22, 'upload/resize/ao-thun-ca-sau-xanh-la-cay-at632-7961-slide-1_thump.jpg upload/resize/ao-thun-ca-sau-xanh-la-cay-at632-7961-slide-2_thump.jpg upload/resize/ao-thun-ca-sau-xanh-la-cay-at632-7961-slide-3_thump.jpg upload/resize/ao-thun-ca-sau-xanh-la-cay-at632-7961-slide-4_thump.jpg upload/resize/ao-thun-ca-sau-xanh-la-cay-at632-7961-slide-5_thump.jpg', 'upload/resize/ao-thun-ca-sau-xanh-la-cay-at632-7961-slide-1_thump.jpg upload/resize/ao-thun-ca-sau-xanh-la-cay-at632-7961-slide-2_thump.jpg upload/resize/ao-thun-ca-sau-xanh-la-cay-at632-7961-slide-3_thump.jpg upload/resize/ao-thun-ca-sau-xanh-la-cay-at632-7961-slide-4_thump.jpg upload/resize/ao-thun-ca-sau-xanh-la-cay-at632-7961-slide-5_thump.jpg ', 150000, 195000, '', 'a:3:{s:1:\"m\";s:2:\"10\";s:1:\"l\";s:2:\"10\";s:2:\"xl\";s:2:\"10\";}', 1, '2022-06-12', '1'),
(51, 'A4261', 'ÁO THUN CÁ SẤU CỔ LÃNH TỤ ĐEN', 110, 22, 'upload/resize/ao-thun-ca-sau-den-at574-6225-slide-1_thump.jpg upload/resize/ao-thun-ca-sau-den-at574-6225-slide-2_thump.jpg', 'upload/resize/ao-thun-ca-sau-den-at574-6225-slide-1_thump.jpg upload/resize/ao-thun-ca-sau-den-at574-6225-slide-2_thump.jpg ', 150000, 195000, 'Áo Thun Cá Sấu Cổ Lãnh Tụ Đen AT574 màu đen cá tính phối đỏ đô bên tay áo tạo điểm nhấn cho sản phẩm. Thiết kế tay ngắn, cổ lãnh tụ kèm nút, phối hàng chữ dọc chạy theo nút thời trang. Chất liệu thun cotton mềm mại, co giãn tạo sự thoáng mát khi mặc. Logo và chữ CITIZEN sử dụng công nghệ in cao được in nổi bật bên ngực áo. Form áo ôm body.\r\n\r\n', 'a:3:{s:1:\"m\";s:2:\"10\";s:1:\"l\";s:2:\"10\";s:2:\"xl\";s:2:\"10\";}', 0, '2022-06-12', '1'),
(52, 'A8432', 'ÁO THUN CÁ SẤU CỔ LÃNH TỤ XANH LÁ CÂY', 110, 22, 'upload/resize/ao-thun-ca-sau-xanh-la-cay-at574-6229-slide-1_thump.jpg upload/resize/ao-thun-ca-sau-xanh-la-cay-at574-6229-slide-2_thump.jpg upload/resize/ao-thun-ca-sau-xanh-la-cay-at574-6229-slide-3_thump.jpg upload/resize/ao-thun-ca-sau-xanh-la-cay-at574-6229-slide-4_thump.jpg', 'upload/resize/ao-thun-ca-sau-xanh-la-cay-at574-6229-slide-1_thump.jpg upload/resize/ao-thun-ca-sau-xanh-la-cay-at574-6229-slide-2_thump.jpg upload/resize/ao-thun-ca-sau-xanh-la-cay-at574-6229-slide-3_thump.jpg upload/resize/ao-thun-ca-sau-xanh-la-cay-at574-6229-slide-4_thump.jpg', 150000, 195000, 'Áo Thun Cá Sấu Cổ Lãnh Tụ Xanh Lá Cây màu xanh lá cây tươi sáng phối màu trắng kem ở tay áo tạo điểm nhấn nổi bật cho sản phẩm. Thiết kế tay ngắn, cổ lãnh tụ kèm nút, phối hàng chữ dọc chạy theo nút thời trang. Chất liệu thun cotton mềm mại, co giãn tạo sự thoáng mát khi mặc. Logo và chữ CITIZEN sử dụng công nghệ in cao được in nổi bật bên ngực áo. Form áo ôm body giúp chàng ôm dáng và khoe hình thể chuẩn. Sản phẩm mới, mang đến phong cách năng động, khỏe khoắn cho người mặc.', 'a:4:{s:1:\"s\";s:1:\"1\";s:1:\"m\";s:1:\"1\";s:1:\"l\";s:1:\"1\";s:2:\"xl\";s:1:\"1\";}', 0, '2022-06-12', '1'),
(53, 'A267', 'ÁO THUN CÁ SẤU CỔ LÃNH TỤ VÀNG ', 110, 22, 'upload/resize/ao-thun-ca-sau-vang-at574-6228-slide-1_thump.jpg upload/resize/ao-thun-ca-sau-vang-at574-6228-slide-2_thump.jpg upload/resize/ao-thun-ca-sau-vang-at574-6228-slide-3_thump.jpg upload/resize/ao-thun-ca-sau-vang-at574-6228-slide-4_thump.jpg', 'upload/resize/ao-thun-ca-sau-vang-at574-6228-slide-1_thump.jpg upload/resize/ao-thun-ca-sau-vang-at574-6228-slide-2_thump.jpg upload/resize/ao-thun-ca-sau-vang-at574-6228-slide-3_thump.jpg upload/resize/ao-thun-ca-sau-vang-at574-6228-slide-4_thump.jpg', 150000, 195000, 'Áo Thun Cá Sấu Cổ Lãnh Tụ Vàng màu vàng phối trắng ở tay áo tạo điểm nhấn nổi bật. Thiết kế tay ngắn, cổ lãnh tụ kèm nút, phối hàng chữ dọc chạy theo nút thời trang. Chất liệu thun cotton mềm mại, co giãn tạo sự thoáng mát khi mặc. Logo và chữ CITIZEN sử dụng công nghệ in cao được in nổi bật bên ngực áo. Form áo ôm body giúp chàng ôm dáng và khoe hình thể chuẩn, áo có nhiều size giúp bạn dễ đàng lựa chọn sản phẩm phù hợp.\r\n\r\n', 'a:3:{s:1:\"m\";s:1:\"2\";s:1:\"l\";s:1:\"1\";s:2:\"xl\";s:1:\"1\";}', 0, '2022-06-12', '1'),
(54, 'A8182', 'ÁO THUN CÁ SẤU XÁM MUỐI TIÊU', 110, 22, 'upload/resize/ao-thun-ca-sau-xam-muoi-tieu-at587-6518-slide-1_thump.jpg upload/resize/ao-thun-ca-sau-xam-muoi-tieu-at587-6518-slide-2_thump.jpg upload/resize/ao-thun-ca-sau-xam-muoi-tieu-at587-6518-slide-3_thump.jpg upload/resize/ao-thun-ca-sau-xam-muoi-tieu-at587-6518-slide-4_thump.jpg upload/resize/ao-thun-ca-sau-xam-muoi-tieu-at587-6518-slide-5_thump.jpg', 'upload/resize/ao-thun-ca-sau-xam-muoi-tieu-at587-6518-slide-1_thump.jpg upload/resize/ao-thun-ca-sau-xam-muoi-tieu-at587-6518-slide-2_thump.jpg upload/resize/ao-thun-ca-sau-xam-muoi-tieu-at587-6518-slide-3_thump.jpg upload/resize/ao-thun-ca-sau-xam-muoi-tieu-at587-6518-slide-4_thump.jpg upload/resize/ao-thun-ca-sau-xam-muoi-tieu-at587-6518-slide-5_thump.jpg', 150000, 195000, 'Áo Thun Cá Sấu Xám Muối Tiêu thiết kế tay ngắn, cổ bẻ tạo sự khỏe khoắn năng động. Màu xám muối tiêu phối xanh trên vai áo cùng các đường sọc ngang trên thân áo. Họa tiết xe đạp được in cao bên ngực phải áo Chất liệu thun cá sấu mềm mại, co giãn tốt, mặc thoáng mát. Form ôm body giúp tôn dáng và body chuẩn hoàn hảo.', 'a:5:{s:1:\"s\";s:2:\"10\";s:1:\"m\";s:2:\"10\";s:1:\"l\";s:2:\"10\";s:2:\"xl\";s:2:\"10\";s:3:\"xxl\";s:2:\"10\";}', 0, '2022-06-12', '1'),
(55, 'A7230', 'ÁO THUN CÁ SẤU XANH LÁ CÂY ', 110, 22, 'upload/resize/ao-thun-ca-sau-xanh-la-cay-at580-6344-slide-1_thump.jpg upload/resize/ao-thun-ca-sau-xanh-la-cay-at580-6344-slide-2_thump.jpg upload/resize/ao-thun-ca-sau-xanh-la-cay-at580-6344-slide-3_thump.jpg upload/resize/ao-thun-ca-sau-xanh-la-cay-at580-6344-slide-4_thump.jpg', 'upload/resize/ao-thun-ca-sau-xanh-la-cay-at580-6344-slide-1_thump.jpg upload/resize/ao-thun-ca-sau-xanh-la-cay-at580-6344-slide-2_thump.jpg upload/resize/ao-thun-ca-sau-xanh-la-cay-at580-6344-slide-3_thump.jpg upload/resize/ao-thun-ca-sau-xanh-la-cay-at580-6344-slide-4_thump.jpg', 150000, 195000, 'Áo Thun Cá Sấu Xanh Lá Cây màu xanh lá cây tươi sáng phối viền trắng ở cổ áo. Thiết kế tay ngắn, cổ lãnh tụ kèm nút gài cá tính, năng động. Chất liệu thun cá sấu mềm mại, co giãn tạo sự thoáng mát khi mặc. Logo sử dụng công nghệ in cao được in nổi bật bên ngực áo. Form áo ôm body giúp chàng ôm dáng và khoe hình thể chuẩn cho nam giới', 'a:3:{s:1:\"m\";s:1:\"1\";s:1:\"l\";s:1:\"1\";s:2:\"xl\";s:1:\"1\";}', 0, '2022-06-12', '1'),
(56, 'A6533', 'ÁO THUN CỔ TRÒN ĐỎ ĐÔ PRADA', 111, 22, 'upload/resize/ao-thun-co-tron-do-do-prada-at540-4896-slide-1_thump.jpg upload/resize/ao-thun-co-tron-do-do-prada-at540-4896-slide-2_thump.jpg upload/resize/ao-thun-co-tron-do-do-prada-at540-4896-slide-3_thump.jpg upload/resize/ao-thun-co-tron-do-do-prada-at540-4896-slide-4_thump.jpg', 'upload/resize/ao-thun-co-tron-do-do-prada-at540-4896-slide-1_thump.jpg upload/resize/ao-thun-co-tron-do-do-prada-at540-4896-slide-2_thump.jpg upload/resize/ao-thun-co-tron-do-do-prada-at540-4896-slide-3_thump.jpg upload/resize/ao-thun-co-tron-do-do-prada-at540-4896-slide-4_thump.jpg', 120000, 165000, 'Áo Thun Cổ Tròn Đỏ Đô AT540 chất liệu thun thoáng mát. Thiết kế form áo body ôm vừa, cổ tròn, tay ngắn, phối chữ và họa tiết lạ, tạo sự trẻ trung, năng động cho người mặc.\r\n\r\n', 'a:3:{s:1:\"m\";s:1:\"1\";s:1:\"l\";s:1:\"1\";s:2:\"xl\";s:1:\"1\";}', 0, '2022-06-12', '1'),
(57, 'G2586', 'Boot Tăng Chiều Cao Bò Đậm', 153, 22, 'upload/giay-boot-tang-chieu-cao-mau-nau-g163-9113.jpg upload/giay-boot-tang-chieu-cao-mau-nau-g163-9113-slide-products-59ccbea9e5af1.jpg upload/giay-boot-tang-chieu-cao-mau-nau-g163-9113-slide-products-59ccbeaa522be.jpg upload/giay-boot-tang-chieu-cao-mau-nau-g163-9113-slide-products-59ccbeaa8162d.jpg', 'upload/resize/giay-boot-tang-chieu-cao-mau-nau-g163-9113_thump.jpg upload/resize/giay-boot-tang-chieu-cao-mau-nau-g163-9113-slide-products-59ccbea9e5af1_thump.jpg upload/resize/giay-boot-tang-chieu-cao-mau-nau-g163-9113-slide-products-59ccbeaa522be_thump.jpg upload/resize/giay-boot-tang-chieu-cao-mau-nau-g163-9113-slide-products-59ccbeaa8162d_thump.jpg', 650000, 725000, '', 'a:6:{i:39;s:2:\"10\";i:40;s:2:\"10\";i:41;s:2:\"10\";i:42;s:2:\"10\";i:43;s:2:\"10\";i:44;s:2:\"10\";}', 3, '2022-06-13', '1'),
(58, 'G4203', 'Giày Tây Tăng Chiều Cao Màu Bò', 153, 23, 'upload/resize/giay-tay-tang-chieu-cao-mau-bo-g123-8475_thump.jpg upload/resize/giay-tay-tang-chieu-cao-mau-bo-g123-8475-slide-products-59e1d779a77d1_thump.jpg upload/resize/giay-tay-tang-chieu-cao-mau-bo-g123-8475-slide-products-59e1d779cdbd4_thump.jpg', 'upload/resize/giay-tay-tang-chieu-cao-mau-bo-g123-8475_thump.jpg upload/resize/giay-tay-tang-chieu-cao-mau-bo-g123-8475-slide-products-59e1d779a77d1_thump.jpg upload/resize/giay-tay-tang-chieu-cao-mau-bo-g123-8475-slide-products-59e1d779cdbd4_thump.jpg', 550000, 645000, 'Giày Tây Tăng Chiều Cao Màu Bò thiết kế theo form Giày Tây sang trọng, ôm chân vừa phải rất thoải mái và tiện lợi. Ưu điểm đặc biệt của G123 là giúp tăng chiều cao lên đến 5-6cm một cách tự nhiên, đẹp mắt. Chất liệu 100% da bò thật, êm mềm và rất bền, cho bạn ứng dụng được ở nhiều hoàn cảnh.', 'a:10:{i:35;s:2:\"10\";i:36;s:2:\"10\";i:37;s:2:\"10\";i:38;s:2:\"10\";i:39;s:2:\"10\";i:40;s:2:\"10\";i:41;s:2:\"10\";i:42;s:2:\"10\";i:43;s:2:\"10\";i:44;s:2:\"10\";}', 0, '2022-06-13', '1'),
(59, 'G7104', 'Giày Tăng Chiều Cao Màu Bò Đậm', 153, 27, 'upload/resize/giay-tay-tang-chieu-cao-mau-bo-g123-8475_thump.jpg upload/resize/giay-tay-tang-chieu-cao-mau-bo-g123-8475-slide-products-59e1d779a77d1_thump.jpg upload/resize/giay-tay-tang-chieu-cao-mau-bo-g123-8475-slide-products-59e1d779cdbd4_thump.jpg', 'upload/resize/giay-tay-tang-chieu-cao-mau-bo-g123-8475_thump.jpg upload/resize/giay-tay-tang-chieu-cao-mau-bo-g123-8475-slide-products-59e1d779a77d1_thump.jpg upload/resize/giay-tay-tang-chieu-cao-mau-bo-g123-8475-slide-products-59e1d779cdbd4_thump.jpg ', 550000, 645000, '', 'a:7:{i:38;s:2:\"10\";i:39;s:2:\"10\";i:40;s:2:\"10\";i:41;s:2:\"10\";i:42;s:2:\"10\";i:43;s:2:\"10\";i:44;s:2:\"10\";}', 0, '2022-06-13', '1'),
(60, 'G1306', 'Boot Tăng Chiều Cao Đen', 154, 27, 'upload/resize/giay-boot-tang-chieu-cao-mau-nau-g164-9116_thump.jpg upload/resize/giay-boot-tang-chieu-cao-mau-nau-g164-9116-slide-products-59ccbfe7b1187_thump.jpg upload/resize/giay-boot-tang-chieu-cao-mau-nau-g164-9116-slide-products-59ccbfe7870ea_thump.jpg', 'upload/resize/giay-boot-tang-chieu-cao-mau-nau-g164-9116_thump.jpg upload/resize/giay-boot-tang-chieu-cao-mau-nau-g164-9116-slide-products-59ccbfe7b1187_thump.jpg upload/resize/giay-boot-tang-chieu-cao-mau-nau-g164-9116-slide-products-59ccbfe7870ea_thump.jpg ', 650000, 745000, '', 'a:6:{i:39;s:2:\"10\";i:40;s:2:\"10\";i:41;s:2:\"10\";i:42;s:2:\"10\";i:43;s:2:\"10\";i:44;s:2:\"10\";}', 0, '2022-06-13', '1'),
(61, 'G313', 'Boot Tăng Chiều Cao Nâu', 154, 24, 'upload/resize/giay-boot-tang-chieu-cao-mau-nau-g164-9116_thump.jpg upload/resize/giay-boot-tang-chieu-cao-mau-nau-g164-9116-slide-products-59ccbfe7b1187_thump.jpg upload/resize/giay-boot-tang-chieu-cao-mau-nau-g164-9116-slide-products-59ccbfe7870ea_thump.jpg', 'upload/resize/giay-boot-tang-chieu-cao-mau-nau-g164-9116_thump.jpg upload/resize/giay-boot-tang-chieu-cao-mau-nau-g164-9116-slide-products-59ccbfe7b1187_thump.jpg upload/resize/giay-boot-tang-chieu-cao-mau-nau-g164-9116-slide-products-59ccbfe7870ea_thump.jpg ', 650000, 745000, '', 'a:6:{i:39;s:2:\"10\";i:40;s:2:\"10\";i:41;s:2:\"10\";i:42;s:2:\"10\";i:43;s:2:\"10\";i:44;s:2:\"10\";}', 0, '2022-06-13', '1'),
(62, 'G2161', 'Boot Tăng Chiều Cao Bò Đậm', 154, 29, 'upload/resize/giay-boot-tang-chieu-cao-mau-nau-g164-9116_thump.jpg upload/resize/giay-boot-tang-chieu-cao-mau-nau-g164-9116-slide-products-59ccbfe7b1187_thump.jpg upload/resize/giay-boot-tang-chieu-cao-mau-nau-g164-9116-slide-products-59ccbfe7870ea_thump.jpg', 'upload/resize/giay-boot-tang-chieu-cao-mau-nau-g164-9116_thump.jpg upload/resize/giay-boot-tang-chieu-cao-mau-nau-g164-9116-slide-products-59ccbfe7b1187_thump.jpg upload/resize/giay-boot-tang-chieu-cao-mau-nau-g164-9116-slide-products-59ccbfe7870ea_thump.jpg', 650000, 745000, '', 'a:7:{i:38;s:2:\"10\";i:39;s:2:\"10\";i:40;s:2:\"10\";i:41;s:2:\"10\";i:42;s:2:\"10\";i:43;s:2:\"10\";i:44;s:2:\"10\";}', 0, '2022-06-13', '1'),
(63, 'G9741', 'Giày Thể Thao Màu Đen', 155, 27, 'upload/resize/giay-the-thao-mau-den-g169-9275-slide-products-59f6edbe20cde_thump.jpg', 'upload/resize/giay-the-thao-mau-den-g169-9275-slide-products-59f6edbe20cde_thump.jpg ', 450000, 585000, 'Giày Thể Thao Màu Đen kiểu dáng thể thao đơn giản, đề cao tính ứng dụng, sự thoải mái cho người dùng. Lót trong với bề mặt da êm ái, thoáng khí, mang đến cảm giác dễ chịu dù diện cả ngày', 'a:6:{i:39;s:2:\"10\";i:40;s:2:\"10\";i:41;s:2:\"10\";i:42;s:2:\"10\";i:43;s:2:\"10\";i:44;s:2:\"10\";}', 0, '2022-06-13', '1'),
(64, 'G4980', 'Giày Thể Thao Màu Trắng', 155, 24, 'upload/resize/giay-the-thao-mau-den-g147-8713_thump.jpg upload/resize/giay-the-thao-mau-den-g147-8713-slide-2_thump.jpg upload/resize/giay-the-thao-mau-den-g147-8713-slide-3_thump.jpg', 'upload/resize/giay-the-thao-mau-den-g147-8713_thump.jpg upload/resize/giay-the-thao-mau-den-g147-8713-slide-2_thump.jpg upload/resize/giay-the-thao-mau-den-g147-8713-slide-3_thump.jpg ', 450000, 525000, '', 'a:6:{i:39;s:2:\"10\";i:40;s:2:\"10\";i:41;s:2:\"10\";i:42;s:2:\"10\";i:43;s:2:\"10\";i:44;s:2:\"10\";}', 0, '2022-06-13', '1'),
(65, 'G9514', 'Giày Mọi Màu Bò Đậm', 152, 29, 'upload/resize/giay-moi-mau-bo-dam-g167-9271_thump.jpg upload/resize/giay-moi-mau-bo-dam-g167-9271-slide-products-59f6e646496ef_thump.jpg upload/resize/giay-moi-mau-bo-dam-g167-9271-slide-products-59f6e64610779_thump.jpg', 'upload/resize/giay-moi-mau-bo-dam-g167-9271_thump.jpg upload/resize/giay-moi-mau-bo-dam-g167-9271-slide-products-59f6e646496ef_thump.jpg upload/resize/giay-moi-mau-bo-dam-g167-9271-slide-products-59f6e64610779_thump.jpg ', 350000, 575000, 'Giày Mọi Màu Bò Đậm chất liệu da bò 100% bền, phần thân có thêm thun co giãn giúp mang thoải mái và dễ di chuyển. Đế cao su chất lượng cao, bền và độ bám tốt, tránh trơn trượt. Giày có độ thoáng khí tốt đi cùng phần đệm lót êm ái.', 'a:6:{i:39;s:2:\"10\";i:40;s:2:\"10\";i:41;s:2:\"10\";i:42;s:2:\"10\";i:43;s:2:\"10\";i:44;s:2:\"10\";}', 0, '2022-06-13', '1'),
(66, 'G4329', 'Giày Mọi Màu Đen', 152, 30, 'upload/resize/giay-moi-mau-den-g170-9274_thump.jpg upload/resize/giay-moi-mau-den-g170-9274-slide-products-59f6e9e313f37_thump.jpg upload/resize/giay-moi-mau-den-g170-9274-slide-products-59f6e9e343dc3_thump.jpg', 'upload/resize/giay-moi-mau-den-g170-9274_thump.jpg upload/resize/giay-moi-mau-den-g170-9274-slide-products-59f6e9e313f37_thump.jpg upload/resize/giay-moi-mau-den-g170-9274-slide-products-59f6e9e343dc3_thump.jpg ', 450000, 545000, 'Giày Mọi Màu Đen chất liệu da bò 100% bền, mang êm chân và dễ di chuyển. Đế cao su chất lượng cao, bền và độ bám tốt, tránh trơn trượt. Thiết kế bề mặt da lộn tạo điểm nhấn khác biệt, sang trọng hơn cho người sử dụng.', 'a:6:{i:39;s:2:\"10\";i:40;s:2:\"10\";i:41;s:2:\"10\";i:42;s:2:\"10\";i:43;s:2:\"10\";i:44;s:2:\"10\";}', 0, '2022-06-13', '1'),
(67, 'G8654', 'Boot Tăng Chiều Cao Bò Đậm', 157, 26, 'upload/resize/giay-boot-tang-chieu-cao-mau-nau-g163-9113_thump.jpg upload/resize/giay-boot-tang-chieu-cao-mau-nau-g163-9113-slide-products-59ccbea9e5af1_thump.jpg upload/resize/giay-boot-tang-chieu-cao-mau-nau-g163-9113-slide-products-59ccbeaa522be_thump.jpg', 'upload/resize/giay-boot-tang-chieu-cao-mau-nau-g163-9113_thump.jpg upload/resize/giay-boot-tang-chieu-cao-mau-nau-g163-9113-slide-products-59ccbea9e5af1_thump.jpg upload/resize/giay-boot-tang-chieu-cao-mau-nau-g163-9113-slide-products-59ccbeaa522be_thump.jpg ', 550000, 725000, '', 'a:6:{i:39;s:2:\"10\";i:40;s:2:\"10\";i:41;s:2:\"10\";i:42;s:2:\"10\";i:43;s:2:\"10\";i:44;s:2:\"10\";}', 0, '2022-06-13', '1'),
(68, 'G7336', 'Giày Tây Tăng Chiều Cao Đen', 157, 26, 'upload/resize/giay-tay-tang-chieu-cao-den-g123-8471_thump.jpg upload/resize/giay-tay-tang-chieu-cao-den-g123-8471-slide-products-59e0669ee9fa5_thump.jpg upload/resize/giay-tay-tang-chieu-cao-den-g123-8471-slide-products-59e0669f46e55_thump.jpg upload/resize/giay-tay-tang-chieu-cao-den-g123-8471-slide-products-59e0669f2095d_thump.jpg', 'upload/resize/giay-tay-tang-chieu-cao-den-g123-8471_thump.jpg upload/resize/giay-tay-tang-chieu-cao-den-g123-8471-slide-products-59e0669ee9fa5_thump.jpg upload/resize/giay-tay-tang-chieu-cao-den-g123-8471-slide-products-59e0669f46e55_thump.jpg upload/resize/giay-tay-tang-chieu-cao-den-g123-8471-slide-products-59e0669f2095d_thump.jpg ', 550000, 645000, 'Giày Tây Tăng Chiều Cao Đen được thiết kế lớp lót trong cao, bằng da mềm, giúp tăng chiều cao của người dùng lên đến 5-6cm một cách dễ dàng mà không làm mất đi dáng vẻ sang trọng của một đôi giày Tây. Kiểu dáng thời trang và tiện lợi, màu sắc nam tính, thích hợp phối với đa dạng trang phục.', 'a:6:{i:39;s:2:\"10\";i:40;s:2:\"10\";i:41;s:2:\"10\";i:42;s:2:\"10\";i:43;s:2:\"10\";i:44;s:2:\"10\";}', 0, '2022-06-13', '1'),
(69, 'G7646', 'Giày Tây Tăng Chiều Cao Màu Bò', 157, 31, 'upload/resize/giay-tay-tang-chieu-cao-mau-bo-g123-8475_thump.jpg upload/resize/giay-tay-tang-chieu-cao-mau-bo-g123-8475-slide-products-59e1d779a77d1_thump.jpg upload/resize/giay-tay-tang-chieu-cao-mau-bo-g123-8475-slide-products-59e1d779cdbd4_thump.jpg', 'upload/resize/giay-tay-tang-chieu-cao-mau-bo-g123-8475_thump.jpg upload/resize/giay-tay-tang-chieu-cao-mau-bo-g123-8475-slide-products-59e1d779a77d1_thump.jpg upload/resize/giay-tay-tang-chieu-cao-mau-bo-g123-8475-slide-products-59e1d779cdbd4_thump.jpg ', 500000, 645000, 'Giày Tây Tăng Chiều Cao Màu Bò  thiết kế theo form Giày Tây sang trọng, ôm chân vừa phải rất thoải mái và tiện lợi. Ưu điểm đặc biệt của G123 là giúp tăng chiều cao lên đến 5-6cm một cách tự nhiên, đẹp mắt. Chất liệu 100% da bò thật, êm mềm và rất bền, cho bạn ứng dụng được ở nhiều hoàn cảnh.', 'a:6:{i:39;s:2:\"10\";i:40;s:2:\"10\";i:41;s:2:\"10\";i:42;s:2:\"10\";i:43;s:2:\"10\";i:44;s:2:\"10\";}', 0, '2022-06-13', '1'),
(70, 'G5617', 'Giày Tây Tăng Chiều Cao Nâu', 157, 23, 'upload/resize/giay-tay-tang-chieu-cao-nau-g123-8472_thump.jpg upload/resize/giay-tay-tang-chieu-cao-nau-g123-8472-slide-products-59e06722bdd1b_thump.jpg upload/resize/giay-tay-tang-chieu-cao-nau-g123-8472-slide-products-59e06722ed013_thump.jpg', 'upload/resize/giay-tay-tang-chieu-cao-nau-g123-8472_thump.jpg upload/resize/giay-tay-tang-chieu-cao-nau-g123-8472-slide-products-59e06722bdd1b_thump.jpg upload/resize/giay-tay-tang-chieu-cao-nau-g123-8472-slide-products-59e06722ed013_thump.jpg ', 450000, 645000, 'Giày Tây Tăng Chiều Cao Nâu - dòng sản phẩm mới ra mắt tại 3T shop và ngay lập tức chiếm được cảm tình của giới trẻ. Giày được thiết kế lớp lót cao, mềm, giúp tăng chiều cao của người dùng lên đến 5-6cm một cách dễ dàng mà vẫn rất thoải mái. Sản phẩm thời trang và tiện lợi, phù hợp cho nhiều độ tuổi khác nhau.', 'a:6:{i:39;s:2:\"10\";i:40;s:2:\"10\";i:41;s:2:\"10\";i:42;s:2:\"10\";i:43;s:2:\"10\";i:44;s:2:\"10\";}', 0, '2022-06-13', '1'),
(71, 'G566', 'Giày Tăng Chiều Cao Màu Bò Đậm', 157, 29, 'upload/resize/giay-tay-mau-nau-g98-9102_thump.jpg upload/resize/giay-tay-mau-nau-g98-9102-slide-products-59ccb68f0ecec_thump.jpg upload/resize/giay-tay-mau-nau-g98-9102-slide-products-59ccb68f3d51e_thump.jpg upload/resize/giay-tay-mau-nau-g98-9102-slide-products-59ccb68f6af4f_thump.jpg', 'upload/resize/giay-tay-mau-nau-g98-9102_thump.jpg upload/resize/giay-tay-mau-nau-g98-9102-slide-products-59ccb68f0ecec_thump.jpg upload/resize/giay-tay-mau-nau-g98-9102-slide-products-59ccb68f3d51e_thump.jpg upload/resize/giay-tay-mau-nau-g98-9102-slide-products-59ccb68f6af4f_thump.jpg ', 550000, 645000, '', 'a:8:{i:37;s:2:\"10\";i:38;s:2:\"10\";i:39;s:2:\"10\";i:40;s:2:\"10\";i:41;s:2:\"10\";i:42;s:2:\"10\";i:43;s:2:\"10\";i:44;s:2:\"10\";}', 0, '2022-06-13', '1'),
(72, 'G2468', 'Boot Tăng Chiều Cao Đen', 157, 29, 'upload/resize/giay-boot-tang-chieu-cao-mau-nau-g164-9116_thump.jpg upload/resize/giay-boot-tang-chieu-cao-mau-nau-g164-9116-slide-products-59ccbfe7b1187_thump.jpg upload/resize/giay-boot-tang-chieu-cao-mau-nau-g164-9116-slide-products-59ccbfe7d9a49_thump.jpg upload/resize/giay-boot-tang-chieu-cao-mau-nau-g164-9116-slide-products-59ccbfe7870ea_thump.jpg', 'upload/resize/giay-boot-tang-chieu-cao-mau-nau-g164-9116_thump.jpg upload/resize/giay-boot-tang-chieu-cao-mau-nau-g164-9116-slide-products-59ccbfe7b1187_thump.jpg upload/resize/giay-boot-tang-chieu-cao-mau-nau-g164-9116-slide-products-59ccbfe7d9a49_thump.jpg upload/resize/giay-boot-tang-chieu-cao-mau-nau-g164-9116-slide-products-59ccbfe7870ea_thump.jpg ', 600000, 745000, '', 'a:6:{i:39;s:2:\"10\";i:40;s:2:\"10\";i:41;s:2:\"10\";i:42;s:2:\"10\";i:43;s:2:\"10\";i:44;s:2:\"10\";}', 0, '2022-06-13', '1'),
(73, 'Q5153', 'Quần Jeans Skinny Xanh Đen', 128, 31, 'upload/resize/quan-jeans-skinny-xam-chuot-qj1539-9371_thump.jpg upload/resize/quan-jeans-skinny-xam-chuot-qj1539-9371-slide-products-5a2138ccaa180_thump.jpg upload/resize/quan-jeans-skinny-xam-chuot-qj1539-9371-slide-products-5a2138cceb90d_thump.jpg upload/resize/quan-jeans-skinny-xam-chuot-qj1539-9371-slide-products-5a2138cd23c0d_thump.jpg upload/resize/quan-jeans-skinny-xam-chuot-qj1539-9371-slide-products-5a2138ce3d31d_thump.jpg', 'upload/resize/quan-jeans-skinny-xam-chuot-qj1539-9371_thump.jpg upload/resize/quan-jeans-skinny-xam-chuot-qj1539-9371-slide-products-5a2138ccaa180_thump.jpg upload/resize/quan-jeans-skinny-xam-chuot-qj1539-9371-slide-products-5a2138cceb90d_thump.jpg upload/resize/quan-jeans-skinny-xam-chuot-qj1539-9371-slide-products-5a2138cd23c0d_thump.jpg upload/resize/quan-jeans-skinny-xam-chuot-qj1539-9371-slide-products-5a2138ce3d31d_thump.jpg ', 250000, 395000, 'Quần Jeans Skinny Xanh Đen chất jean dày dặn, có co giãn, form skinny ôm dáng thời trang. Màu xanh đen phối vết xước nhẹ thời thượng, rất dễ phối với nhiều kiểu áo như thun, sơ mi... Đường chỉ may đều, đẹp mắt, tỉ mỉ.', 'a:6:{i:39;s:2:\"10\";i:40;s:2:\"10\";i:41;s:2:\"10\";i:42;s:2:\"10\";i:43;s:2:\"10\";i:44;s:2:\"10\";}', 1, '2022-06-13', '1'),
(74, 'Q5007', 'Quần Jeans Skinny Xám Chuột', 128, 24, 'upload/quan-jeans-skinny-xanh-qj1542-9369.jpg upload/quan-jeans-skinny-xanh-qj1542-9369-slide-products-5a21371a5b648.jpg upload/quan-jeans-skinny-xanh-qj1542-9369-slide-products-5a21371a21a0b.jpg upload/quan-jeans-skinny-xanh-qj1542-9369-slide-products-5a213719d4c7f.jpg upload/quan-jeans-skinny-xanh-qj1542-9369-slide-products-5a2137198c2e1.jpg', 'upload/resize/quan-jeans-skinny-xanh-qj1542-9369_thump.jpg upload/resize/quan-jeans-skinny-xanh-qj1542-9369-slide-products-5a21371a5b648_thump.jpg upload/resize/quan-jeans-skinny-xanh-qj1542-9369-slide-products-5a21371a21a0b_thump.jpg upload/resize/quan-jeans-skinny-xanh-qj1542-9369-slide-products-5a213719d4c7f_thump.jpg upload/resize/quan-jeans-skinny-xanh-qj1542-9369-slide-products-5a2137198c2e1_thump.jpg', 250000, 395000, 'Quần Jeans Skinny Xám Chuột chất jean dày dặn, có co giãn, form skinny ôm dáng thời trang. Màu xám chuột phối vết xước nhẹ thời thượng, rất dễ phối với nhiều kiểu áo như thun, sơ mi... Đường chỉ may đều, đẹp mắt, tỉ mỉ.', 'a:7:{i:27;s:2:\"10\";i:28;s:2:\"10\";i:29;s:2:\"10\";i:30;s:2:\"10\";i:31;s:2:\"10\";i:32;s:2:\"10\";i:33;s:2:\"10\";}', 1, '2022-06-13', '1'),
(75, 'Q2603', 'Quần Jeans Skinny Xanh Đen', 128, 27, 'upload/resize/quan-jeans-skinny-xanh-den-qj1538-9372_thump.jpg upload/resize/quan-jeans-skinny-xanh-den-qj1538-9372-slide-products-5a2206900b8cc_thump.jpg upload/resize/quan-jeans-skinny-xanh-den-qj1538-9372-slide-products-5a2206903c8fe_thump.jpg upload/resize/quan-jeans-skinny-xanh-den-qj1538-9372-slide-products-5a2206909d833_thump.jpg upload/resize/quan-jeans-skinny-xanh-den-qj1538-9372-slide-products-5a22069068ea3_thump.jpg', 'upload/resize/quan-jeans-skinny-xanh-den-qj1538-9372_thump.jpg upload/resize/quan-jeans-skinny-xanh-den-qj1538-9372-slide-products-5a2206900b8cc_thump.jpg upload/resize/quan-jeans-skinny-xanh-den-qj1538-9372-slide-products-5a2206903c8fe_thump.jpg upload/resize/quan-jeans-skinny-xanh-den-qj1538-9372-slide-products-5a2206909d833_thump.jpg upload/resize/quan-jeans-skinny-xanh-den-qj1538-9372-slide-products-5a22069068ea3_thump.jpg ', 200000, 315000, 'Quần Jeans Skinny Xanh Đen chất jean dày dặn, có co giãn, form skinny ôm nhẹ. Màu xanh đen phối wax bạc cá tính, rất dễ phối với nhiều kiểu áo như thun, sơ mi... Đường chỉ may đều, đẹp mắt, tỉ mỉ.', 'a:5:{i:27;s:2:\"10\";i:28;s:2:\"10\";i:29;s:2:\"10\";i:30;s:2:\"10\";i:31;s:2:\"10\";}', 0, '2022-06-13', '1'),
(76, 'Q5288', 'Quần Jeans Rách Xám Chuột', 129, 26, 'upload/resize/quan-jeans-rach-xanh-den-qj1546-9375_thump.jpg upload/resize/quan-jeans-rach-xanh-den-qj1546-9375-slide-products-5a220c85b743a_thump.jpg upload/resize/quan-jeans-rach-xanh-den-qj1546-9375-slide-products-5a220c85e7970_thump.jpg', 'upload/resize/quan-jeans-rach-xanh-den-qj1546-9375_thump.jpg upload/resize/quan-jeans-rach-xanh-den-qj1546-9375-slide-products-5a220c85b743a_thump.jpg upload/resize/quan-jeans-rach-xanh-den-qj1546-9375-slide-products-5a220c85e7970_thump.jpg ', 250000, 375000, 'Quần Jeans Rách Xám Chuột chất vải dày dặn, bền, có co giãn, áp dụng công nghệ wash jean hiện đại. Form skinny ôm nhẹ, màu xám chuột thời thượng, phong cách bụi bặm, ngầu, dễ phối trang phục.', 'a:5:{i:27;s:2:\"10\";i:28;s:2:\"10\";i:29;s:2:\"10\";i:30;s:2:\"10\";i:31;s:2:\"10\";}', 0, '2022-06-13', '1'),
(77, 'Q2379', 'Quần Jeans Rách Đen', 129, 29, 'upload/resize/quan-jeans-rach-xam-chuot-qj1548-9376_thump.jpg upload/resize/quan-jeans-rach-xam-chuot-qj1548-9376-slide-products-5a220d92c1d1a_thump.jpg upload/resize/quan-jeans-rach-xam-chuot-qj1548-9376-slide-products-5a220d9259fad_thump.jpg upload/resize/quan-jeans-rach-xam-chuot-qj1548-9376-slide-products-5a220d9310e0c_thump.jpg upload/resize/quan-jeans-rach-xam-chuot-qj1548-9376-slide-products-5a220d9284034_thump.jpg', 'upload/resize/quan-jeans-rach-xam-chuot-qj1548-9376_thump.jpg upload/resize/quan-jeans-rach-xam-chuot-qj1548-9376-slide-products-5a220d92c1d1a_thump.jpg upload/resize/quan-jeans-rach-xam-chuot-qj1548-9376-slide-products-5a220d9259fad_thump.jpg upload/resize/quan-jeans-rach-xam-chuot-qj1548-9376-slide-products-5a220d9310e0c_thump.jpg upload/resize/quan-jeans-rach-xam-chuot-qj1548-9376-slide-products-5a220d9284034_thump.jpg ', 200000, 345000, 'Quần Jeans Rách Đen chất vải dày dặn, bền, có co giãn, áp dụng công nghệ wash jean hiện đại. Form skinny ôm nhẹ, màu đen bụi bặm, ngầu, được ưa chuộng nhất hiện nay. Dễ phối trang phục với áo thun, sơ mi, áo khoác thể thao, blazer...', 'a:6:{i:27;s:2:\"10\";i:28;s:2:\"10\";i:29;s:2:\"10\";i:30;s:2:\"10\";i:31;s:2:\"10\";i:32;s:2:\"10\";}', 0, '2022-06-13', '1'),
(78, 'Q8975', 'Quần Jeans Rách Xanh Đen', 129, 27, 'upload/resize/quan-jeans-rach-xanh-den-qj1545-9374_thump.jpg upload/resize/quan-jeans-rach-xanh-den-qj1545-9374-slide-products-5a220bf6a2fa5_thump.jpg upload/resize/quan-jeans-rach-xanh-den-qj1545-9374-slide-products-5a220bf6dfcb4_thump.jpg upload/resize/quan-jeans-rach-xanh-den-qj1545-9374-slide-products-5a220bf63aac5_thump.jpg upload/resize/quan-jeans-rach-xanh-den-qj1545-9374-slide-products-5a220bf670609_thump.jpg', 'upload/resize/quan-jeans-rach-xanh-den-qj1545-9374_thump.jpg upload/resize/quan-jeans-rach-xanh-den-qj1545-9374-slide-products-5a220bf6a2fa5_thump.jpg upload/resize/quan-jeans-rach-xanh-den-qj1545-9374-slide-products-5a220bf6dfcb4_thump.jpg upload/resize/quan-jeans-rach-xanh-den-qj1545-9374-slide-products-5a220bf63aac5_thump.jpg upload/resize/quan-jeans-rach-xanh-den-qj1545-9374-slide-products-5a220bf670609_thump.jpg ', 200000, 375000, 'Quần Jeans Rách Xanh Đen chất vải dày dặn, bền, có co giãn, áp dụng công nghệ wash jean hiện đại. Form skinny ôm nhẹ, màu xanh đen trầm, phong cách bụi bặm, ngầu, dễ phối trang phục.', 'a:5:{i:27;s:2:\"10\";i:28;s:2:\"10\";i:29;s:2:\"10\";i:30;s:2:\"10\";i:31;s:2:\"10\";}', 0, '2022-06-13', '1'),
(79, 'Q9581', 'Quần Jeans Ống Đứng Đen', 130, 24, 'upload/resize/quan-jeans-ong-dung-den-qj1521-8995-slide-5995bc1979cf7_thump.jpg upload/resize/quan-jeans-ong-dung-den-qj1521-8995-slide-5995bc19901ec_thump.jpg upload/resize/quan-jeans-ong-dung-den-qj1521-8995-slide-5995bc1989711_thump.jpg', 'upload/resize/quan-jeans-ong-dung-den-qj1521-8995-slide-5995bc1979cf7_thump.jpg upload/resize/quan-jeans-ong-dung-den-qj1521-8995-slide-5995bc19901ec_thump.jpg upload/resize/quan-jeans-ong-dung-den-qj1521-8995-slide-5995bc1989711_thump.jpg ', 250000, 345000, '', 'a:7:{i:27;s:2:\"10\";i:28;s:2:\"10\";i:29;s:2:\"10\";i:30;s:2:\"10\";i:31;s:2:\"10\";i:32;s:2:\"10\";i:33;s:2:\"10\";}', 0, '2022-06-13', '1'),
(80, 'Q7321', 'Quần Jeans Ống Đứng Đen', 130, 28, 'upload/resize/quan-jeans-ong-dung-den-qj1523-8996_thump.jpg upload/resize/quan-jeans-ong-dung-den-qj1523-8996-slide-5995be107ca28_thump.jpg upload/resize/quan-jeans-ong-dung-den-qj1523-8996-slide-5995be1071d2f_thump.jpg', 'upload/resize/quan-jeans-ong-dung-den-qj1523-8996_thump.jpg upload/resize/quan-jeans-ong-dung-den-qj1523-8996-slide-5995be107ca28_thump.jpg upload/resize/quan-jeans-ong-dung-den-qj1523-8996-slide-5995be1071d2f_thump.jpg ', 250000, 345000, '', 'a:5:{i:27;s:2:\"10\";i:28;s:2:\"10\";i:29;s:2:\"10\";i:30;s:2:\"10\";i:31;s:2:\"10\";}', 0, '2022-06-13', '1'),
(81, 'Q9774', 'Quần Jeans Ống Đứng Xanh Dương', 130, 28, 'upload/resize/quan-jeans-ong-dung-xanh-duong-qj1519-8961_thump.jpg upload/resize/quan-jeans-ong-dung-xanh-duong-qj1519-8961-slide-products-59732e477a83d_thump.jpg upload/resize/quan-jeans-ong-dung-xanh-duong-qj1519-8961-slide-products-59732e47782b2_thump.jpg upload/resize/quan-jeans-ong-dung-xanh-duong-qj1519-8961-slide-products-59732e478500e_thump.jpg upload/resize/quan-jeans-ong-dung-xanh-duong-qj1519-8961-slide-products-59732e4793520_thump.jpg', 'upload/resize/quan-jeans-ong-dung-xanh-duong-qj1519-8961_thump.jpg upload/resize/quan-jeans-ong-dung-xanh-duong-qj1519-8961-slide-products-59732e477a83d_thump.jpg upload/resize/quan-jeans-ong-dung-xanh-duong-qj1519-8961-slide-products-59732e47782b2_thump.jpg upload/resize/quan-jeans-ong-dung-xanh-duong-qj1519-8961-slide-products-59732e478500e_thump.jpg upload/resize/quan-jeans-ong-dung-xanh-duong-qj1519-8961-slide-products-59732e4793520_thump.jpg ', 250000, 345000, '', 'a:5:{i:27;s:2:\"10\";i:28;s:2:\"10\";i:29;s:2:\"10\";i:30;s:2:\"10\";i:31;s:2:\"10\";}', 0, '2022-06-13', '1');
INSERT INTO `tb_product` (`id_product`, `code_product`, `name_product`, `id_category`, `id_label`, `image`, `image_thump`, `price_product`, `saleprice_product`, `describe_product`, `size_product`, `view_product`, `date_product`, `status_product`) VALUES
(82, 'Q6422', 'Quần Jean Ống Đứng Xanh Dương', 130, 27, 'upload/resize/quan-jean-ong-dung-xanh-duong-qj1493-8821_thump.jpg upload/resize/quan-jean-ong-dung-xanh-duong-qj1493-8821-slide-2_thump.jpg upload/resize/quan-jean-ong-dung-xanh-duong-qj1493-8821-slide-3_thump.jpg upload/resize/quan-jean-ong-dung-xanh-duong-qj1493-8821-slide-4_thump.jpg', 'upload/resize/quan-jean-ong-dung-xanh-duong-qj1493-8821_thump.jpg upload/resize/quan-jean-ong-dung-xanh-duong-qj1493-8821-slide-2_thump.jpg upload/resize/quan-jean-ong-dung-xanh-duong-qj1493-8821-slide-3_thump.jpg upload/resize/quan-jean-ong-dung-xanh-duong-qj1493-8821-slide-4_thump.jpg ', 250000, 345000, '', 'a:5:{i:27;s:2:\"10\";i:28;s:2:\"10\";i:29;s:2:\"10\";i:30;s:2:\"10\";i:31;s:2:\"10\";}', 0, '2022-06-13', '1'),
(83, 'Q3048', 'Quần Jean Ống Đứng Xanh Dương Đậm', 130, 28, 'upload/resize/quan-jean-skinny-xanh-duong-dam-qj1364-7317_thump.jpg upload/resize/quan-jean-skinny-xanh-duong-dam-qj1364-7317-slide-2_thump.jpg upload/resize/quan-jean-skinny-xanh-duong-dam-qj1364-7317-slide-3_thump.jpg upload/resize/quan-jean-skinny-xanh-duong-dam-qj1364-7317-slide-4_thump.jpg', 'upload/resize/quan-jean-skinny-xanh-duong-dam-qj1364-7317_thump.jpg upload/resize/quan-jean-skinny-xanh-duong-dam-qj1364-7317-slide-2_thump.jpg upload/resize/quan-jean-skinny-xanh-duong-dam-qj1364-7317-slide-3_thump.jpg upload/resize/quan-jean-skinny-xanh-duong-dam-qj1364-7317-slide-4_thump.jpg ', 250000, 395000, 'Quần Jean Ống Đứng Xanh Dương Đậm  thích hợp cho những bạn nam ưa thích sự thoải mái, phóng khoáng. Chất liệu jean bền đẹp theo thời gian. Phối được cùng các trang phục khác một cách dễ dàng. Được thiết kế và sản xuất độc quyền bởi thương hiệu .', 'a:5:{i:27;s:2:\"10\";i:28;s:2:\"10\";i:29;s:2:\"10\";i:30;s:2:\"10\";i:31;s:2:\"10\";}', 0, '2022-06-13', '1'),
(84, 'Q8456', 'Quần Jean Ống Đứng Xanh', 130, 25, 'upload/resize/quan-jean-skinny-xanh-qj1364-7315_thump.jpg upload/resize/quan-jean-skinny-xanh-qj1364-7315-slide-2_thump.jpg upload/resize/quan-jean-skinny-xanh-qj1364-7315-slide-3_thump.jpg upload/resize/quan-jean-skinny-xanh-qj1364-7315-slide-4_thump.jpg', 'upload/resize/quan-jean-skinny-xanh-qj1364-7315_thump.jpg upload/resize/quan-jean-skinny-xanh-qj1364-7315-slide-2_thump.jpg upload/resize/quan-jean-skinny-xanh-qj1364-7315-slide-3_thump.jpg upload/resize/quan-jean-skinny-xanh-qj1364-7315-slide-4_thump.jpg ', 250000, 395000, 'Quần Jean Ống Đứng Xanh là một trong những mẫu quần jean ống đứng, màu sắc hài hòa được thiết kế và sản xuất độc quyền ở 3T. Chất jean cao cấp, chắc chắn mang đến sự khỏe khoắn cho người mặc. Thích hợp cho cả đi học, đi chơi và đi làm.', 'a:5:{i:27;s:2:\"10\";i:28;s:2:\"10\";i:29;s:2:\"10\";i:30;s:2:\"10\";i:31;s:2:\"10\";}', 0, '2022-06-13', '1'),
(85, 'Q8485', 'Quần Kaki ống côn Xám', 131, 23, 'upload/resize/quan-kaki-den-qk167-9346_thump.jpg upload/resize/quan-kaki-den-qk167-9346-slide-products-5a20d95213a70_thump.jpg upload/resize/quan-kaki-den-qk167-9346-slide-products-5a20d95242a88_thump.jpg upload/resize/quan-kaki-den-qk167-9346-slide-products-5a20d9527163c_thump.jpg', 'upload/resize/quan-kaki-den-qk167-9346_thump.jpg upload/resize/quan-kaki-den-qk167-9346-slide-products-5a20d95213a70_thump.jpg upload/resize/quan-kaki-den-qk167-9346-slide-products-5a20d95242a88_thump.jpg upload/resize/quan-kaki-den-qk167-9346-slide-products-5a20d9527163c_thump.jpg ', 150000, 225000, 'Quần Kaki Xám chất vải dày dặn, bền màu, thoáng mát, thấm hút mồ hôi tốt. Form ống côn ôm nhẹ, có co giãn nên mặc rất thoải mái. Màu sắc thanh lịch, rất dễ phối trang phục khi đi làm, đi học, đi chơi...', 'a:5:{i:27;s:2:\"10\";i:28;s:2:\"10\";i:29;s:2:\"10\";i:30;s:2:\"10\";i:31;s:2:\"10\";}', 0, '2022-06-13', '1'),
(86, 'Q4209', 'Quần Kaki Màu Kem', 131, 27, 'upload/resize/quan-kaki-den-qk166-9344_thump.jpg upload/resize/quan-kaki-den-qk166-9344-slide-products-5a20d64e461fd_thump.jpg upload/resize/quan-kaki-den-qk166-9344-slide-products-5a20d64e7410e_thump.jpg upload/resize/quan-kaki-den-qk166-9344-slide-products-5a20d64ea1eff_thump.jpg', 'upload/resize/quan-kaki-den-qk166-9344_thump.jpg upload/resize/quan-kaki-den-qk166-9344-slide-products-5a20d64e461fd_thump.jpg upload/resize/quan-kaki-den-qk166-9344-slide-products-5a20d64e7410e_thump.jpg upload/resize/quan-kaki-den-qk166-9344-slide-products-5a20d64ea1eff_thump.jpg ', 150000, 225000, 'Quần Kaki Màu Kem chất vải dày dặn, bền màu, thoáng mát, thấm hút mồ hôi tốt. Form ống côn ôm nhẹ, có co giãn nên mặc rất thoải mái. Màu sắc thanh lịch, rất dễ phối trang phục khi đi làm, đi học, đi chơi...', 'a:5:{i:27;s:2:\"10\";i:28;s:2:\"10\";i:29;s:2:\"10\";i:30;s:2:\"10\";i:31;s:2:\"10\";}', 0, '2022-06-13', '1'),
(87, 'Q511', 'Quần Kaki Ống Côn Đen', 131, 26, 'upload/resize/quan-kaki-xanh-den-qk165-9343_thump.jpg upload/resize/quan-kaki-xanh-den-qk165-9343-slide-products-5a20d43be2b98_thump.jpg upload/resize/quan-kaki-xanh-den-qk165-9343-slide-products-5a20d43c1d42c_thump.jpg upload/resize/quan-kaki-xanh-den-qk165-9343-slide-products-5a20d43c4c1b5_thump.jpg upload/resize/quan-kaki-xanh-den-qk165-9343-slide-products-5a20d43c845bb_thump.jpg', 'upload/resize/quan-kaki-xanh-den-qk165-9343_thump.jpg upload/resize/quan-kaki-xanh-den-qk165-9343-slide-products-5a20d43be2b98_thump.jpg upload/resize/quan-kaki-xanh-den-qk165-9343-slide-products-5a20d43c1d42c_thump.jpg upload/resize/quan-kaki-xanh-den-qk165-9343-slide-products-5a20d43c4c1b5_thump.jpg upload/resize/quan-kaki-xanh-den-qk165-9343-slide-products-5a20d43c845bb_thump.jpg ', 150000, 225000, 'Quần Kaki Đen  chất vải dày dặn, bền màu, thoáng mát, thấm hút mồ hôi tốt. Form ống côn ôm nhẹ, có co giãn nên mặc rất thoải mái. Màu sắc nam tính, lịch lãm, rất dễ phối trang phục khi đi làm, đi học, đi chơi...', 'a:8:{i:27;s:2:\"10\";i:28;s:2:\"10\";i:29;s:2:\"10\";i:30;s:2:\"10\";i:31;s:2:\"10\";i:32;s:2:\"10\";i:33;s:2:\"10\";i:34;s:2:\"10\";}', 0, '2022-06-13', '1'),
(88, 'Q1272', 'Quần Kaki Xám Xanh', 131, 26, 'upload/resize/quan-kaki-xam-qk167-9347_thump.jpg upload/resize/quan-kaki-xam-qk167-9347-slide-products-5a20d9db53b36_thump.jpg upload/resize/quan-kaki-xam-qk167-9347-slide-products-5a20d9db86a4f_thump.jpg', 'upload/resize/quan-kaki-xam-qk167-9347_thump.jpg upload/resize/quan-kaki-xam-qk167-9347-slide-products-5a20d9db53b36_thump.jpg upload/resize/quan-kaki-xam-qk167-9347-slide-products-5a20d9db86a4f_thump.jpg ', 120000, 225000, 'Quần Kaki Xám Xanh chất vải dày dặn, bền màu, thoáng mát, thấm hút mồ hôi tốt. Form ống côn ôm nhẹ, có co giãn nên mặc rất thoải mái. Màu sắc thanh lịch, rất dễ phối trang phục khi đi làm, đi học, đi chơi...', 'a:5:{i:27;s:2:\"10\";i:28;s:2:\"10\";i:29;s:2:\"10\";i:30;s:2:\"10\";i:31;s:2:\"10\";}', 0, '2022-06-13', '1'),
(89, 'P9861', 'Ví Da Nam Màu Bò', 143, 24, 'upload/resize/vi-da-nam-mau-den-bv195-9282-slide-products-59f84219b552f_thump.jpg upload/resize/vi-da-nam-mau-den-bv195-9282-slide-products-59f842198bd39_thump.jpg', 'upload/resize/vi-da-nam-mau-den-bv195-9282-slide-products-59f84219b552f_thump.jpg upload/resize/vi-da-nam-mau-den-bv195-9282-slide-products-59f842198bd39_thump.jpg ', 150000, 295000, 'Ví Da Nam Màu Bò chất liệu da bò thật 100%, chất lượng, bền, đường may tỉ mỉ. Ví thiết kế kiểu dáng ngang tăng diện tích chứa, các ngăn nhỏ tiện ích cũng được đưa vào nhiều hơn để lưu giữ thẻ ATM, namecard, giấy tờ tùy thân.', 'a:1:{s:1:\"s\";s:2:\"26\";}', 0, '2022-06-13', '1'),
(90, 'P8431', 'Ví Da Nam Màu Đen', 143, 25, 'upload/resize/vi-da-nam-mau-bo-bv200-9283_thump.jpg upload/resize/vi-da-nam-mau-bo-bv200-9283-slide-products-59f843378707c_thump.jpg', 'upload/resize/vi-da-nam-mau-bo-bv200-9283_thump.jpg upload/resize/vi-da-nam-mau-bo-bv200-9283-slide-products-59f843378707c_thump.jpg ', 150000, 295000, 'Ví Da Nam Màu Đen chất liệu da bò thật 100%, chất lượng, bền, đường may tỉ mỉ. Ví thiết kế kiểu dáng ngang tăng diện tích chứa, các ngăn nhỏ tiện ích cũng được đưa vào nhiều hơn để lưu giữ thẻ ATM, namecard, giấy tờ tùy thân.', 'a:1:{s:1:\"s\";s:2:\"40\";}', 0, '2022-06-13', '1'),
(91, 'P1412', 'Ví Da Nam Màu Nâu', 143, 26, 'upload/resize/vi-da-nam-mau-nau-bv200-9284_thump.jpg upload/resize/vi-da-nam-mau-nau-bv200-9284-slide-products-59f8443f462c2_thump.jpg', 'upload/resize/vi-da-nam-mau-nau-bv200-9284_thump.jpg upload/resize/vi-da-nam-mau-nau-bv200-9284-slide-products-59f8443f462c2_thump.jpg ', 150000, 295000, 'Ví Da Nam Màu Nâu chất liệu da bò thật 100%, chất lượng, bền, đường may tỉ mỉ. Ví thiết kế kiểu dáng ngang tăng diện tích chứa, các ngăn nhỏ tiện ích cũng được đưa vào nhiều hơn để lưu giữ thẻ ATM, namecard, giấy tờ tùy thân.', 'a:1:{s:1:\"s\";s:2:\"50\";}', 0, '2022-06-13', '1'),
(92, 'P1658', 'Ví Da Nam Màu Nâu', 143, 29, 'upload/resize/vi-da-nam-mau-nau-bv200-9284_thump.jpg upload/resize/vi-da-nam-mau-nau-bv200-9284-slide-products-59f8443f462c2_thump.jpg', 'upload/resize/vi-da-nam-mau-nau-bv200-9284_thump.jpg upload/resize/vi-da-nam-mau-nau-bv200-9284-slide-products-59f8443f462c2_thump.jpg ', 150000, 275000, '', 'a:1:{s:1:\"s\";s:2:\"40\";}', 0, '2022-06-13', '1'),
(93, 'P9548', 'Ví Da Nam Màu Đen', 144, 26, 'upload/resize/vi-da-nam-mau-den-bv199-9279_thump.jpg upload/resize/vi-da-nam-mau-den-bv199-9279-slide-products-59f83f16c6875_thump.jpg', 'upload/resize/vi-da-nam-mau-den-bv199-9279_thump.jpg upload/resize/vi-da-nam-mau-den-bv199-9279-slide-products-59f83f16c6875_thump.jpg ', 150000, 225000, 'Ví Da Nam Màu Đen  chất liệu da bò bền, chắc chắn, cùng nhiều ngăn bên trong giúp bảo quản tốt tiền bạc, giấy tờ, thẻ atm, ảnh kỷ niệm. Thiết kế kiểu dáng đứng gọn nhẹ dễ dàng cho vào túi quần, túi áo.', 'a:1:{s:1:\"s\";s:2:\"40\";}', 0, '2022-06-13', '1'),
(94, 'P3314', 'Ví Da Nam Màu Xanh', 144, 26, 'upload/resize/vi-da-nam-mau-xanh-bv199-9281_thump.jpg upload/resize/vi-da-nam-mau-xanh-bv199-9281-slide-products-59f840495a6df_thump.jpg', 'upload/resize/vi-da-nam-mau-xanh-bv199-9281_thump.jpg upload/resize/vi-da-nam-mau-xanh-bv199-9281-slide-products-59f840495a6df_thump.jpg ', 150000, 225000, 'Ví Da Nam Màu Xanh chất liệu da bò bền, chắc chắn, cùng nhiều ngăn bên trong giúp bảo quản tốt tiền bạc, giấy tờ, thẻ atm, ảnh kỷ niệm. Thiết kế kiểu dáng đứng gọn nhẹ dễ dàng cho vào túi quần, túi áo.', 'a:1:{s:1:\"s\";s:2:\"40\";}', 0, '2022-06-13', '1'),
(95, 'P4168', 'Ví Da Nam Màu Nâu', 144, 31, 'upload/resize/vi-da-nam-mau-nau-bv199-9280_thump.jpg upload/resize/vi-da-nam-mau-nau-bv199-9280-slide-products-59f83fae614e4_thump.jpg', 'upload/resize/vi-da-nam-mau-nau-bv199-9280_thump.jpg upload/resize/vi-da-nam-mau-nau-bv199-9280-slide-products-59f83fae614e4_thump.jpg ', 150000, 225000, 'Ví Da Nam Màu Nâu  chất liệu da bò bền, chắc chắn, cùng nhiều ngăn bên trong giúp bảo quản tốt tiền bạc, giấy tờ, thẻ atm, ảnh kỷ niệm. Thiết kế kiểu dáng đứng gọn nhẹ dễ dàng cho vào túi quần, túi áo.', 'a:1:{s:1:\"s\";s:2:\"40\";}', 0, '2022-06-13', '1'),
(96, 'P2473', 'Ví Da Nam Cầm Tay Nâu', 145, 30, 'upload/resize/vi-da-nam-cam-tay-nau-bv163-7439-slide-1_thump.jpg upload/resize/vi-da-nam-cam-tay-nau-bv163-7439-slide-2_thump.jpg upload/resize/vi-da-nam-cam-tay-nau-bv163-7439-slide-3_thump.jpg', 'upload/resize/vi-da-nam-cam-tay-nau-bv163-7439-slide-1_thump.jpg upload/resize/vi-da-nam-cam-tay-nau-bv163-7439-slide-2_thump.jpg upload/resize/vi-da-nam-cam-tay-nau-bv163-7439-slide-3_thump.jpg ', 200000, 325000, 'Ví Da Nam Cầm Tay Nâu thay đổi phong cách của bạn với kiểu dáng ví cầm tay mới lạ. Màu nâu sang trọng, thu hút. Vân da tự nhiên đẹp mắt, thanh lịch. Chất liệu da thật 100%, bền đẹp và sang trọng. Ví cầm tay có thể mở ra, gấp vào tiện dụng, thích hợp cho việc cất giữ tiền bạc, thẻ ATM, giấy tờ dài... vừa an toàn vừa không sợ bị có nếp gấp. Sản phẩm thể hiện chất riêng của bạn.', 'a:1:{s:1:\"s\";s:2:\"40\";}', 0, '2022-06-13', '1'),
(97, 'P3908', 'Ví Da Nam Cầm Tay Đen', 145, 22, 'upload/resize/vi-da-nam-cam-tay-nau-bv163-7439-slide-1_thump.jpg upload/resize/vi-da-nam-cam-tay-nau-bv163-7439-slide-2_thump.jpg upload/resize/vi-da-nam-cam-tay-nau-bv163-7439-slide-3_thump.jpg', 'upload/resize/vi-da-nam-cam-tay-nau-bv163-7439-slide-1_thump.jpg upload/resize/vi-da-nam-cam-tay-nau-bv163-7439-slide-2_thump.jpg upload/resize/vi-da-nam-cam-tay-nau-bv163-7439-slide-3_thump.jpg ', 200000, 325000, 'Ví Da Nam Cầm Tay Đen thay đổi phong cách của bạn với kiểu dáng ví cầm tay mới lạ. Màu đen lịch lãm, thu hút. Vân da tự nhiên đẹp mắt, thanh lịch. Chất liệu da thật 100%, bền đẹp và sang trọng. Ví cầm tay có thể mở ra, gấp vào tiện dụng, thích hợp cho việc cất giữ tiền bạc, thẻ ATM, giấy tờ dài... vừa an toàn vừa không sợ bị có nếp gấp. Sản phẩm thể hiện chất riêng của bạn.', 'a:1:{s:1:\"s\";s:2:\"40\";}', 0, '2022-06-13', '1'),
(98, 'P1765', 'Nón Đen', 146, 29, 'upload/resize/non-den-n382-9236_thump.jpg upload/resize/non-den-n382-9236-slide-products-59eeaeb990d71_thump.jpg', 'upload/resize/non-den-n382-9236_thump.jpg upload/resize/non-den-n382-9236-slide-products-59eeaeb990d71_thump.jpg ', 50000, 95000, 'Nón Lưỡi Trai Đen chất liệu kaki rất bền, không phai màu, dễ giặt và dễ bảo quản. Phối lưới mang đến cảm giác thông thoáng vô cùng dễ chịu. Đường may đều, đẹp mắt, tỉ mỉ và chắc chắn. Nón có thể điều chỉnh kích thước tùy theo nhu cầu sử dụng. Có thể dùng cho cả nam và nữ.', 'a:1:{s:1:\"s\";s:2:\"40\";}', 0, '2022-06-13', '1'),
(99, 'K6838', 'ÁO SƠ MI CA RÔ XANH DƯƠNG', 100, 28, 'upload/resize/ao-so-mi-ca-ro-xanh-den-asm832-7936-slide-1_thump.jpg upload/resize/ao-so-mi-ca-ro-xanh-den-asm832-7936-slide-2_thump.jpg upload/resize/ao-so-mi-ca-ro-xanh-den-asm832-7936-slide-3_thump.jpg', 'upload/resize/ao-so-mi-ca-ro-xanh-den-asm832-7936-slide-1_thump.jpg upload/resize/ao-so-mi-ca-ro-xanh-den-asm832-7936-slide-2_thump.jpg upload/resize/ao-so-mi-ca-ro-xanh-den-asm832-7936-slide-3_thump.jpg ', 50000, 122000, 'Áo Sơ Mi Ca Rô Xanh Dương thiết kế dạng cổ bẻ, tay dài phối nút cài kín đáo. Sọc caro màu xanh dương nổi bật trên nền vải trắng tạo sự thu hút cho sản phẩm cũng như người mặc. Phong cách Hàn Quốc, form ôm body gọn gàng giúp bạn nam khoe dáng chuẩn nhưng vẫn thoải mái khi vận động.', 'a:3:{s:1:\"s\";s:2:\"10\";s:1:\"m\";s:2:\"10\";s:1:\"l\";s:2:\"10\";}', 0, '2022-06-13', '1'),
(100, 'K4544', 'ÁO SƠ MI XANH ĐEN', 100, 26, 'upload/resize/ao-so-mi-xanh-den-asm873-8731-slide-products-594b39246c6d4_thump.jpg upload/resize/ao-so-mi-xanh-den-asm873-8731-slide-products-594b39247fde6_thump.jpg upload/resize/ao-so-mi-xanh-den-asm873-8731-slide-products-594b392480d37_thump.jpg upload/resize/ao-so-mi-xanh-den-asm873-8731-slide-products-594b392478136_thump.jpg upload/resize/ao-so-mi-xanh-den-asm873-8731-slide-products-594b392488820_thump.jpg', 'upload/resize/ao-so-mi-xanh-den-asm873-8731-slide-products-594b39246c6d4_thump.jpg upload/resize/ao-so-mi-xanh-den-asm873-8731-slide-products-594b39247fde6_thump.jpg upload/resize/ao-so-mi-xanh-den-asm873-8731-slide-products-594b392480d37_thump.jpg upload/resize/ao-so-mi-xanh-den-asm873-8731-slide-products-594b392478136_thump.jpg upload/resize/ao-so-mi-xanh-den-asm873-8731-slide-products-594b392488820_thump.jpg ', 70000, 130000, 'Áo Sơ Mi Xanh Đen thiết kế theo phong cách thời trang Hàn Quốc, tôn dáng hoàn hảo cho người mặc. Chất liệu được tối ưu hơn khi có pha sợi spandex khiến sản phẩm co giãn và thấm hút hiệu quả. Một lựa chọn mới cho các chàng trai công sở.', 'a:4:{s:1:\"s\";s:2:\"10\";s:1:\"m\";s:2:\"10\";s:1:\"l\";s:2:\"10\";s:2:\"xl\";s:2:\"10\";}', 0, '2022-06-13', '1'),
(101, 'K9357', 'ÁO SƠ MI TRẮNG', 100, 25, 'upload/resize/ao-so-mi-trang-asm874-8733-slide-products-594b405f8c0b6_thump.jpg upload/resize/ao-so-mi-trang-asm874-8733-slide-products-594b405f94c55_thump.jpg upload/resize/ao-so-mi-trang-asm874-8733-slide-products-594b405f94d66_thump.jpg upload/resize/ao-so-mi-trang-asm874-8733-slide-products-594b405f946d7_thump.jpg', 'upload/resize/ao-so-mi-trang-asm874-8733-slide-products-594b405f8c0b6_thump.jpg upload/resize/ao-so-mi-trang-asm874-8733-slide-products-594b405f94c55_thump.jpg upload/resize/ao-so-mi-trang-asm874-8733-slide-products-594b405f94d66_thump.jpg upload/resize/ao-so-mi-trang-asm874-8733-slide-products-594b405f946d7_thump.jpg ', 70000, 130000, 'F5 phong cách công sở thường ngày của bạn với Áo Sơ Mi Trắng cùng những họa tiết thêu tay, cập nhật theo xu hướng thời trang nam mới nhất. Với item này, bạn sẽ trở thành chàng soái ca lãng tử và vô cùng cuốn hút.', 'a:5:{s:1:\"s\";s:2:\"10\";s:1:\"m\";s:2:\"10\";s:1:\"l\";s:2:\"10\";s:2:\"xl\";s:2:\"10\";s:3:\"xxl\";s:2:\"10\";}', 0, '2022-06-13', '1'),
(102, 'K6790', 'ÁO SƠ MI XANH ĐEN', 100, 26, 'upload/resize/ao-so-mi-xanh-den-asm874-8734-slide-products-594b48d8dd7b8_thump.jpg upload/resize/ao-so-mi-xanh-den-asm874-8734-slide-products-594b48d8e50f2_thump.jpg upload/resize/ao-so-mi-xanh-den-asm874-8734-slide-products-594b48d8e260f_thump.jpg upload/resize/ao-so-mi-xanh-den-asm874-8734-slide-products-594b48d8f1f61_thump.jpg', 'upload/resize/ao-so-mi-xanh-den-asm874-8734-slide-products-594b48d8dd7b8_thump.jpg upload/resize/ao-so-mi-xanh-den-asm874-8734-slide-products-594b48d8e50f2_thump.jpg upload/resize/ao-so-mi-xanh-den-asm874-8734-slide-products-594b48d8e260f_thump.jpg upload/resize/ao-so-mi-xanh-den-asm874-8734-slide-products-594b48d8f1f61_thump.jpg ', 80000, 130000, 'Áo Sơ Mi Xanh Đen được làm từ chất liệu cotton lụa cao cấp, tạo độ bóng mịn sang trọng. Mang nét lãng đãng cho các chàng trai nhờ những họa tiết hoa bồ công anh thêu tay tỉ mỉ ở ngực áo.', 'a:4:{s:1:\"s\";s:2:\"10\";s:1:\"m\";s:2:\"10\";s:1:\"l\";s:2:\"10\";s:2:\"xl\";s:2:\"10\";}', 0, '2022-06-13', '1'),
(103, 'K6834', 'ÁO THUN TRẮNG', 100, 24, 'upload/resize/ao-thun-xanh-den-at719-9172-slide-products-59e1d055c2734_thump.jpg upload/resize/ao-thun-xanh-den-at719-9172-slide-products-59e1d055f20b4_thump.jpg upload/resize/ao-thun-xanh-den-at719-9172-slide-products-59e1d0562da45_thump.jpg upload/resize/ao-thun-xanh-den-at719-9172-slide-products-59e1d0565c86e_thump.jpg', 'upload/resize/ao-thun-xanh-den-at719-9172-slide-products-59e1d055c2734_thump.jpg upload/resize/ao-thun-xanh-den-at719-9172-slide-products-59e1d055f20b4_thump.jpg upload/resize/ao-thun-xanh-den-at719-9172-slide-products-59e1d0562da45_thump.jpg upload/resize/ao-thun-xanh-den-at719-9172-slide-products-59e1d0565c86e_thump.jpg ', 50000, 87000, '', 'a:4:{s:1:\"s\";s:2:\"10\";s:1:\"m\";s:2:\"10\";s:1:\"l\";s:2:\"10\";s:2:\"xl\";s:2:\"10\";}', 0, '2022-06-13', '1'),
(104, 'K4775', 'ÁO KHOÁC DA XANH ĐEN', 100, 30, 'upload/resize/ao-khoac-xanh-den-ak208-8445-slide-1_thump.jpg upload/resize/ao-khoac-xanh-den-ak208-8445-slide-4_thump.jpg', 'upload/resize/ao-khoac-xanh-den-ak208-8445-slide-1_thump.jpg upload/resize/ao-khoac-xanh-den-ak208-8445-slide-4_thump.jpg ', 150000, 312000, 'Áo Khoác Da Xanh Đen tạo nên nét mới lạ cho kiểu áo khoác da thường thấy. Vẫn là form áo suông thoải mái, dáng tay dài, cổ trụ thấp cá tính. AK208 còn được dập nổi các họa tiết caro, hoa lá đẹp mắt ở ngực áo. Hứa hẹn mang đến cho người mặc nhiều trải nghiệm thú vị.', 'a:4:{s:1:\"s\";s:2:\"10\";s:1:\"m\";s:2:\"10\";s:1:\"l\";s:2:\"10\";s:2:\"xl\";s:2:\"10\";}', 0, '2022-06-13', '1'),
(105, 'K194', 'ÁO SƠ MI XANH ĐEN', 100, 23, 'upload/resize/ao-so-mi-xanh-den-asm919-8940-slide-59730e4f0a1d5_thump.jpg upload/resize/ao-so-mi-xanh-den-asm919-8940-slide-59730e4f1fb68_thump.jpg upload/resize/ao-so-mi-xanh-den-asm919-8940-slide-59730e4f185ab_thump.jpg upload/resize/ao-so-mi-xanh-den-asm919-8940-slide-59730e4f12302_thump.jpg', 'upload/resize/ao-so-mi-xanh-den-asm919-8940-slide-59730e4f0a1d5_thump.jpg upload/resize/ao-so-mi-xanh-den-asm919-8940-slide-59730e4f1fb68_thump.jpg upload/resize/ao-so-mi-xanh-den-asm919-8940-slide-59730e4f185ab_thump.jpg upload/resize/ao-so-mi-xanh-den-asm919-8940-slide-59730e4f12302_thump.jpg ', 80000, 130000, '', 'a:4:{s:1:\"s\";s:2:\"10\";s:1:\"m\";s:2:\"10\";s:1:\"l\";s:2:\"10\";s:2:\"xl\";s:2:\"10\";}', 0, '2022-06-13', '1'),
(106, 'K7108', 'ÁO KHOÁC DA NÂU', 100, 26, 'upload/resize/ao-khoac-da-nau-ak208-8444-slide-1_thump.jpg upload/resize/ao-khoac-da-nau-ak208-8444-slide-2_thump.jpg upload/resize/ao-khoac-da-nau-ak208-8444-slide-3_thump.jpg', 'upload/resize/ao-khoac-da-nau-ak208-8444-slide-1_thump.jpg upload/resize/ao-khoac-da-nau-ak208-8444-slide-2_thump.jpg upload/resize/ao-khoac-da-nau-ak208-8444-slide-3_thump.jpg ', 150000, 312000, 'Áo Khoác Da Nâu được tạo điểm nhấn với những họa tiết bắt mắt được dập nổi ở ngực áo. Màu da nâu sang trọng, đường nét gãy gọn, đẹp mắt. Thiết kế dáng cổ trụ thấp có nút cài, tay dài, túi hông sâu rộng có khóa kéo. Áo có khóa kéo dài linh hoạt, rất tiện lợi được phối cả ở cổ tay.', 'a:5:{s:1:\"s\";s:2:\"10\";s:1:\"m\";s:2:\"10\";s:1:\"l\";s:2:\"10\";s:2:\"xl\";s:2:\"10\";s:3:\"xxl\";s:2:\"10\";}', 0, '2022-06-13', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_ship`
--

CREATE TABLE `tb_ship` (
  `id_ship` int(11) NOT NULL,
  `code_ship` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `id_bill` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `status_ship` char(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_ship`
--

INSERT INTO `tb_ship` (`id_ship`, `code_ship`, `id_bill`, `id_order`, `status_ship`) VALUES
(3, '2790948', 17, 53, '2'),
(4, '6517668', 18, 54, '1'),
(5, '6517668', 19, 55, '1'),
(6, '6517668', 20, 56, '1'),
(7, '4506480', 21, 57, '1'),
(9, '4082240', 23, 62, '1'),
(10, '4082240', 24, 63, '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `account_user` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `pass_user` text COLLATE utf8_unicode_ci NOT NULL,
  `name_user` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `birthday_user` date NOT NULL,
  `cmnd_user` char(13) COLLATE utf8_unicode_ci NOT NULL,
  `address_user` text COLLATE utf8_unicode_ci NOT NULL,
  `phonenumber_user` char(11) COLLATE utf8_unicode_ci NOT NULL,
  `email_user` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `type_user` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `status_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `account_user`, `pass_user`, `name_user`, `birthday_user`, `cmnd_user`, `address_user`, `phonenumber_user`, `email_user`, `type_user`, `status_user`) VALUES
(7, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'Ly A Thành', '2001-10-18', '362489844', 'Hà Giang', '01262898272', 'lengoctienthanh@gmail.com', '0', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_bill`
--
ALTER TABLE `tb_bill`
  ADD PRIMARY KEY (`id_bill`),
  ADD KEY `fk_order` (`id_order`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `tb_city`
--
ALTER TABLE `tb_city`
  ADD PRIMARY KEY (`id_city`);

--
-- Indexes for table `tb_contact`
--
ALTER TABLE `tb_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_district`
--
ALTER TABLE `tb_district`
  ADD PRIMARY KEY (`id_district`),
  ADD KEY `fk_city` (`id_city`);

--
-- Indexes for table `tb_information`
--
ALTER TABLE `tb_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_label`
--
ALTER TABLE `tb_label`
  ADD PRIMARY KEY (`id_label`);

--
-- Indexes for table `tb_order`
--
ALTER TABLE `tb_order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `fk_product` (`id_product`),
  ADD KEY `fk_district_order` (`id_district`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `fk_label` (`id_label`),
  ADD KEY `fk_category` (`id_category`);

--
-- Indexes for table `tb_ship`
--
ALTER TABLE `tb_ship`
  ADD PRIMARY KEY (`id_ship`),
  ADD KEY `fk_bill_ship` (`id_bill`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_bill`
--
ALTER TABLE `tb_bill`
  MODIFY `id_bill` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `tb_city`
--
ALTER TABLE `tb_city`
  MODIFY `id_city` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `tb_contact`
--
ALTER TABLE `tb_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_district`
--
ALTER TABLE `tb_district`
  MODIFY `id_district` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=722;

--
-- AUTO_INCREMENT for table `tb_information`
--
ALTER TABLE `tb_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tb_label`
--
ALTER TABLE `tb_label`
  MODIFY `id_label` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tb_order`
--
ALTER TABLE `tb_order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `tb_ship`
--
ALTER TABLE `tb_ship`
  MODIFY `id_ship` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_bill`
--
ALTER TABLE `tb_bill`
  ADD CONSTRAINT `fk_order` FOREIGN KEY (`id_order`) REFERENCES `tb_order` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_district`
--
ALTER TABLE `tb_district`
  ADD CONSTRAINT `fk_city` FOREIGN KEY (`id_city`) REFERENCES `tb_city` (`id_city`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_order`
--
ALTER TABLE `tb_order`
  ADD CONSTRAINT `fk_district_order` FOREIGN KEY (`id_district`) REFERENCES `tb_district` (`id_district`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_product` FOREIGN KEY (`id_product`) REFERENCES `tb_product` (`id_product`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD CONSTRAINT `fk_category` FOREIGN KEY (`id_category`) REFERENCES `tb_category` (`id_category`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_label` FOREIGN KEY (`id_label`) REFERENCES `tb_label` (`id_label`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_ship`
--
ALTER TABLE `tb_ship`
  ADD CONSTRAINT `fk_bill_ship` FOREIGN KEY (`id_bill`) REFERENCES `tb_bill` (`id_bill`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
