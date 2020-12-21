-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th12 10, 2020 lúc 06:08 PM
-- Phiên bản máy phục vụ: 8.0.21
-- Phiên bản PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doan_cn`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `adMa` int NOT NULL AUTO_INCREMENT,
  `adTen` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `adEmail` text NOT NULL,
  `adMatkhau` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `adQuyen` int NOT NULL,
  `adTinhtrang` int NOT NULL,
  PRIMARY KEY (`adMa`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adMa`, `adTen`, `adEmail`, `adMatkhau`, `adQuyen`, `adTinhtrang`) VALUES
(7, 'master', 'b@b.com', '202cb962ac59075b964b07152d234b70', 165, 0),
(8, 'ad', 'das@a.co', 'c4ca4238a0b923820dcc509a6f75849b', 121, 0),
(9, 'moi', 'moi@moi.com', 'c4ca4238a0b923820dcc509a6f75849b', 165, 0),
(11, 'moi3', 'm@m.c', 'c4ca4238a0b923820dcc509a6f75849b', 100, 0),
(16, 'a', 'a@a.com', 'c4ca4238a0b923820dcc509a6f75849b', 100, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_chitiethoadon`
--

DROP TABLE IF EXISTS `tbl_chitiethoadon`;
CREATE TABLE IF NOT EXISTS `tbl_chitiethoadon` (
  `hdMa` varchar(250) NOT NULL,
  `spMa` varchar(50) NOT NULL,
  `spGia` int NOT NULL,
  `cthdSoluongsp` int NOT NULL,
  KEY `fk_cthd_sp` (`spMa`),
  KEY `fk_cthd_hd` (`hdMa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_chitiethoadon`
--

INSERT INTO `tbl_chitiethoadon` (`hdMa`, `spMa`, `spGia`, `cthdSoluongsp`) VALUES
('427990000', 'gamingLenovo', 27990000, 1),
('tru15600000', 'gamingMSIBravo', 18990000, 1),
('tru15600000', 'GamingMSI', 57900000, 1),
('tru15600000', 'AsusVivobook', 15600000, 1),
('tru15600000', 'AcerConceptD', 13000000, 2),
('tru15600000', 'AsusVivobook', 15600000, 1),
('ngh26490000', 'ASUSExpertbook', 16599000, 1),
('ngh26490000', 'GamingMSI', 57900000, 1),
('ngh26490000', 'GVNSonaPro', 26490000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_hoadon`
--

DROP TABLE IF EXISTS `tbl_hoadon`;
CREATE TABLE IF NOT EXISTS `tbl_hoadon` (
  `hdMa` varchar(250) NOT NULL,
  `hdSoluongsp` int NOT NULL,
  `hdNgaytao` date NOT NULL,
  `hdTongtien` int NOT NULL,
  `khMa` int NOT NULL,
  `hdTinhtrang` int NOT NULL,
  PRIMARY KEY (`hdMa`),
  KEY `fk_hd_kh` (`khMa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_hoadon`
--

INSERT INTO `tbl_hoadon` (`hdMa`, `hdSoluongsp`, `hdNgaytao`, `hdTongtien`, `khMa`, `hdTinhtrang`) VALUES
('427990000', 1, '2020-12-08', 27990000, 4, 0),
('ngh26490000', 3, '2020-12-11', 100989000, 7, 0),
('tru15600000', 3, '2020-12-10', 92490000, 4, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_khachhang`
--

DROP TABLE IF EXISTS `tbl_khachhang`;
CREATE TABLE IF NOT EXISTS `tbl_khachhang` (
  `khMa` int NOT NULL AUTO_INCREMENT,
  `khTen` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `khDiachi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `khNgaysinh` date NOT NULL,
  `khEmail` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `khGioitinh` int NOT NULL,
  `khSdt` text NOT NULL,
  `khHinh` text NOT NULL,
  `khMatkhau` text NOT NULL,
  `khQuyen` int NOT NULL,
  `khTinhtrang` int NOT NULL,
  PRIMARY KEY (`khMa`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_khachhang`
--

INSERT INTO `tbl_khachhang` (`khMa`, `khTen`, `khDiachi`, `khNgaysinh`, `khEmail`, `khGioitinh`, `khSdt`, `khHinh`, `khMatkhau`, `khQuyen`, `khTinhtrang`) VALUES
(4, 'trungnhan', 'hcm', '0002-01-01', 'ltn@gmail.com', 0, '000122312', 'bmw_s1000rr_bmw_bike_130736_3840x2400.jpg', '202cb962ac59075b964b07152d234b70', 0, 0),
(7, 'nghia', 'hochiminhcity', '1999-06-01', 'a@a.com', 0, '0366456798', 'IMG_6682.jpg', '202cb962ac59075b964b07152d234b70', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_loai`
--

DROP TABLE IF EXISTS `tbl_loai`;
CREATE TABLE IF NOT EXISTS `tbl_loai` (
  `loaiMa` int NOT NULL AUTO_INCREMENT,
  `loaiTen` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`loaiMa`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_loai`
--

INSERT INTO `tbl_loai` (`loaiMa`, `loaiTen`) VALUES
(1, 'Laptop'),
(3, 'Pc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

DROP TABLE IF EXISTS `tbl_sanpham`;
CREATE TABLE IF NOT EXISTS `tbl_sanpham` (
  `spMa` varchar(50) NOT NULL,
  `spTen` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `spMota` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `spGia` int NOT NULL,
  `spHinh` text NOT NULL,
  `spTinhtrang` int NOT NULL,
  `spNgaytao` date NOT NULL,
  `loaiMa` int NOT NULL,
  `thMa` int NOT NULL,
  PRIMARY KEY (`spMa`),
  KEY `fk_sp_th` (`thMa`),
  KEY `fk_sp_loai` (`loaiMa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`spMa`, `spTen`, `spMota`, `spGia`, `spHinh`, `spTinhtrang`, `spNgaytao`, `loaiMa`, `thMa`) VALUES
('AcerConceptD', 'Laptop ConceptD 7 Ezel CC715 71 7940', '  CPU	Intel Core i7-10875H 2.3GHz up to 5.1GHz 16MB\r\nRAM	32GB (16GBx2) DDR4 2666MHz (2x SO-DIMM socket, up to 32GB SDRAM)\r\nỔ lưu trữ:	1TB PCIe NVMe SSD (2 Slots)\r\nCard đồ họa	NVIDIA GeForce RTX 2060 6GB GDDR6\r\nMàn hình	15.6\" UHD (3840 x 2160) IPS, Acer ComfyViewTM LED-backlit TFT LCD, Acer ColorBlast technology, integrated touch, supporting Wacom pen solution, Pantone 100%sRGB , 340 Nits\r\nBàn phím	Led Orange\r\nAudio	DTS® X:Ultra Audio\r\nĐọc thẻ nhớ	SD card reader\r\nKết nối có dây (LAN)	Gigabit\r\nKết nối không dây	Intel® Wireless Wi-Fi 6 AX204, Bluetooth v5.0\r\nWebcam	720p HD\r\nCổng giao tiếp	2x Thunderbolt™ 3 / USB Type-C™ ports (USB 3.1 Gen 2)\r\n1x USB 3.2 Gen 1 port with power-off charging\r\n1x USB 3.1 Gen 1 port\r\n1x HDMI®2.0 port with HDCP support\r\n1x DisplayPort™\r\n1x Headset/speaker jack\r\n1x Ethernet (RJ-45) port', 13000000, '1_8554ffee5c5d429b8d47c9fa39b85ac8.png', 0, '2020-12-04', 1, 1),
('ASUSExpertbook', 'Laptop ASUS Expertbook P1410CJA EK354T', 'CPU	Intel Core i3-1005G1 (1.20 GHz up to 3.40 GHz, 4MB)\r\nRAM	4GB onboard DDR4/ 2666MHz + [1 x 4GB DDR4/ 2666MHz (1 slot)]\r\nỔ cứng	512GB SSD PCIe (M.2 2280)\r\nCard đồ họa	Intel UHD Graphics\r\nMàn hình	14.0\" inch (16:9) LED-backlit FHD (1920 x 1080) 60Hz Anti-Glare Panel with 45% NTSC\r\nCổng giao tiếp	\r\n2 x USB 2.0\r\n1 x USB 3.1 Gen 1 Type-A \r\n1 x USB 3.1 Gen 1 Type-C \r\n1 x HDMI \r\n1 x Headphone/Microphone combo audio jack \r\n1 x SATA3\r\nMicro-SD card reader', 16599000, 'laptop-asus-experbook-p1410cja-ek354t-2_379f608b6de644479b132717d612a797.webp', 0, '2020-12-04', 1, 1),
('AsusVivobook', 'Laptop Asus Vivobook A515EA BQ489T', 'CPU	Intel Core i3-1115G4 1.7GHz up to 4.1GHz 8MB\r\nRAM	4GB DDR4 2666MHz Onboard (1x SO-DIMM socket, up to 12GB SDRAM)\r\nỔ lưu trữ:	512GB SSD M.2 PCIE G3X4\r\nCard đồ họa	Intel® UHD Graphics for 11th Gen Intel® Processors\r\nMàn hình	15.6\" FHD (1920 x 1080) Anti-Glare with 45% NTSC, NanoEdge\r\nBàn phím	Fullsize\r\nAudio	Harman Kardon\r\nĐọc thẻ nhớ	Micro SD card reader\r\nKết nối có dây (LAN)	None\r\nKết nối không dây	802.11AC (2x2), bluetooth v5.0\r\nWebcam	HD Web Camera\r\nCổng giao tiếp	\r\n1x Type-A USB 3.2 Gen 1\r\n1x Type-C USB 3.2\r\n2x USB 2.0 port(s)\r\n1x HDMI 1.4', 15600000, '1_679c4b8a3ff4484ba35c6274a8f86dca.webp', 1, '2020-12-04', 1, 1),
('gamingLenovo', 'Laptop gaming Lenovo Legion 5 15IMH05 82AU004YVN', 'CPU	Intel Core i7-10750H\r\nRAM	8GB DDR4 2933MHz (2x SO-DIMM socket, up to 16GB SDRAM)\r\nỔ cứng	512GB SSD M.2 NVMe, x1 slot 2.5\" SATA (HDD/SSD)\r\nCard đồ họa	NVIDIA GeForce GTX 1650 4GB GDDR6 + Intel UHD Graphics\r\nMàn hình	15.6\" FHD (1920x1080), IPS, anti-glare, 120Hz, LED backlight, 250 nits, 16:9 aspect ratio, 45% NTSC\r\nCổng giao tiếp	4x USB 3.1 Gen 1 (Always On)\r\n2x USB 3.1 Gen 2\r\n1x USB 3.1 Type-C Gen 1 (with the function of DisPlay 1.4)\r\n1x USB 3.1 Type-C Gen 2 / Thunderbolt 3 (with the function of DP 1.4)\r\n1x HDMI 2.0\r\n1x Ethernet (RJ-45)\r\n1x headphone / microphone combo jack\r\nAudio	Harman® Speakers with Dolby Atmos® for Gaming\r\nĐọc thẻ nhớ	None\r\nChuẩn LAN	Gb LAN\r\nChuẩn WIFI	802.11ax 2x2\r\nBluetooth	v5.0\r\nWebcam	HD 720p\r\nHệ điều hành	Windows 10 Home\r\nPin	4 Cell 60 WHr\r\nTrọng lượng	2.3 kg\r\nMàu sắc	Phantom Black\r\nKích thước	363.06 x 259.61 x 23.57-26.1 (mm)', 27990000, 'gearvn (2).webp', 1, '2020-12-04', 1, 7),
('GamingMSI', 'Laptop Gaming MSI GE66 Raider 10SFS 474VN', 'Bộ vi xử lý (CPU) \r\nTên bộ vi xử lý\r\nIntel® Core™ i7-10875H Processor\r\nTốc độ \r\n2.30GHz up to 5.10GHz, 8 nhân 16 luồng\r\nBộ nhớ đệm\r\n16MB Intel® Smart Cache\r\nChipset\r\nIntel® HM470\r\nBộ nhớ trong (RAM Laptop)\r\nDung lượng\r\n32GB DDR4 3200MHz (2 x 16GB)\r\nSố khe ram\r\n2 Slots, Max 64GB\r\nỔ cứng (SSD Laptop) \r\nDung lượng\r\n1TB SSD NVMe PCIe Gen3x4\r\nKhả năng lưu trữ\r\n1 x M.2 SSD slot (NVMe PCIe Gen3)\r\n1 x M.2 SSD Combo slot (NVMe PCIe Gen3 / SATA) \r\nỔ đĩa quang (ODD) \r\nNone\r\nHiển thị (Màn hình Laptop)\r\nMàn hình\r\n15.6 Inch FHD IPS, 300Hz Thin Bezel, close to 100%sRGB\r\nĐộ phân giải\r\nFHD (1920 x 1080)\r\nĐồ Họa (VGA) \r\nBộ xử lý\r\nNVIDIA® GeForce RTX™ 2070 Super 8GB GDDR6\r\nCông nghệ\r\nKết nối (Network) \r\nLAN\r\n1 x RJ45 - Killer Gb LAN\r\nWireless\r\nKiller Wi-Fi 6 AX1650i (2*2 ax)\r\nBluetooth\r\nBluetooth v5.1', 57900000, 'gearvn.webp', 1, '2020-12-04', 1, 2),
('gamingMSIBravo', 'Laptop gaming MSI Bravo 15 A4DCR 270VN', ' CPU	AMD Ryzen 5 – 4600H\r\nRAM	DDR4 8GB (1 x 8GB) 3200MHz; 2 slots, up to 32GB\r\nỔ cứng	256GB SSD NVMe M.2 PCIe Gen 3×2, 1 slot SSD NVMe M.2 PCIe hoặc M.2 SATA III\r\nCard đồ họa	Radeon RX5300M 3GB\r\nMàn hình	15.6\" FHD (1920×1080), IPS, tần số quét 144Hz\r\nCổng giao tiếp	\r\n1x (4K @ 30Hz) HDMI\r\n\r\n1x RJ45\r\n\r\n1x Type-C USB3.2 Gen1\r\n\r\n3x Type-A USB3.2 Gen1\r\n\r\nBàn phím 	Backlight Keyboard ( Red )\r\nChuẩn WIFI	Intel Wi-Fi 6 AX201(2*2 ax)\r\nBluetooth	v5.0\r\nWebcam	HD 720p CMOS module\r\nHệ điều hành	Windows 10 Home\r\nPin	3 Cell\r\nTrọng lượng	1.88 kg\r\nMàu sắc	Đen \r\nKích thước	359 x 254 x 21.7 mm', 18990000, '2_f29c2792fd7f4e79b429f0133c6a8006.webp', 1, '2020-12-04', 1, 2),
('GVN', 'GVN Usopp', '- Mainboard	MSI H410M-A PRO	36 Tháng\r\n- CPU 	Intel Pentium G6400 / 4MB / 4.0GHz / 2 Nhân 4 Luồng / LGA 1200	36 Tháng\r\n- RAM 	G.SKILL Ripjaws V 1x8gb 2800MHz	36 Tháng\r\n- HDD	Có thể tùy chọn Nâng cấp	24 Tháng\r\n- SSD 	PNY SSD CS900 120G 2.5\" Sata 3	36 Tháng\r\n- PSU	Deepcool DN450 80 Plus	36 Tháng\r\n- Case	XIGMATEK XA-20 (ATX)	12 Tháng', 5580000, 'usopp_5d7af703a15640068df37891f46785a7.webp', 1, '2020-12-04', 3, 5),
('GVNAORUS', 'GVN AORUS S', '- Mainboard	GIGABYTE B365M AORUS ELITE LGA1151v2	36 Tháng\r\n- CPU 	INTEL Core i5 9400F 6C6T Coffeelake 4.1GHz	36 Tháng\r\n- RAM	Kingston HyperX Fury 2x8Gb 2666MHz DDR4	36 Tháng\r\n- VGA 	GIGABYTE GeForce RTX™ 2060 SUPER WINDFORCE OC 8G	36 Tháng\r\n- HDD	Tùy chọn mua thêm Tại Đây	24 Tháng\r\n- SSD	APACER AS340 Panther 2.5\" SATA III 240GB	36 Tháng\r\n- PSU	Gigabyte P650B 80 PLUS Bronze	36 Tháng\r\n- Case Deepcool MATREXX 55 Mid-Tower12 Tháng\r\n- Cooling DEEPCOOL GAMMAXX GTE V212 Tháng', 24300000, 'gvn_aorus_m_6334cf94ef4c41a0a89fe9640770fb93.webp', 1, '2020-12-04', 3, 6),
('GVNDariusS', 'GVN Darius S', 'Mainboard	MSI B450M Mortar MAX (AMD Socket AM4)	36 Tháng\r\nCPU	AMD Ryzen 5 3600x /6 nhân 12 luồng AM4	36 Tháng\r\nRAM	ADATA SPECTRIX D41 TUF Gaming RGB 1x8 BUS 3200	36 Tháng\r\nVGA - Card đồ họa	MSI GeForce® GTX 1660 SUPER Ventus OC 6GB GDDRA	36 Tháng\r\nHDD	Có thể tùy chọn Nâng cấp	24Tháng\r\nSSD	PNY SSD CS900 120G 2.5\" Sata 3	36 Tháng\r\nPSU	SILVERSTONE ST50F-ES230 500W 80Plus	36 Tháng\r\nCase 	Case XIGMATEK GEMINI (Mini Tower)	12 Tháng\r\n', 1659000, 'darius_6e62645c326f4672abf1616a66b94257.webp', 1, '2020-12-04', 3, 1),
('GVNGhosts', 'GVN Ghosts S', 'Mainboard	ASUS TUF GAMING B460M-PLUS	36 Tháng\r\nCPU	Intel Core i5 10400F / 12MB / 2.9GHz / 6 Nhân 12 Luồng / LGA 1200	36 Tháng\r\nRAM	Kingston HyperX Fury Black 2666 1x8 BUS 	36 Tháng\r\nVGA - Card đồ họa	GIGABYTE GeForce RTX™ 2060 SUPER WINDFORCE OC 8G	36 Tháng\r\nHDD	Có thể tùy chọn Nâng cấp	24Tháng\r\nSSD	PNY SSD CS900 240G 2.5\" Sata 3	36 Tháng\r\nPSU	SilverStone ST65F-ES230 80 Plus	36 Tháng\r\nCooling	DEEPCOOL GAMMAXX GTE V2	12 Tháng\r\nCase	XIGMATEK OMG QUEEN (EN45631) - GAMING M-ATX	12 Tháng', 21990000, 'ghosts_900x603_copy_c28346fde2354bab956e32383bfe0b75.webp', 1, '2020-12-04', 3, 2),
('GVNMystic', 'GVN Mystic M', 'Mainboard	Gigabyte H310M DS2 LGA 1151v2	36 Tháng\r\nCPU	Intel Core i3 9100F 4C4T 6M 3.6GHz	36 Tháng\r\nRAM	G.SKILL Ripjaws V 1x8GB 2800	36 Tháng\r\nVGA - Card đồ họa	MSI GTX 1650 Super VENTUS XS OC 4GB GDDR6	36 Tháng\r\nHDD	Có thể tùy chọn Nâng cấp	24Tháng\r\nSSD	PNY SSD CS900 120G 2.5\" Sata 3	36 Tháng\r\nPSU	Deepcool DN450 80 Plus	36 Tháng\r\nCase 	Case XIGMATEK GEMINI (Mini Tower)	12 Tháng', 10690000, 'mystic_c638a431a5c2400e8329ab04e39ac7fd.jpg', 1, '2020-12-04', 3, 1),
('GVNSonaPro', 'GVN Sona Pro S', 'Mainboard	GIGABYTE B460M AORUS PRO (rev. 1.0)	36 Tháng\r\nCPU	Intel Core i5 10400F / 12MB / 2.9GHz / 6 Nhân 12 Luồng / LGA 1200	36 Tháng\r\nRAM	Gigabyte Memory 1x8GB 2666	36 Tháng\r\nVGA - Card đồ họa	GIGABYTE GeForce RTX™ 3060 Ti Aorus M (Master) 8G	36 Tháng\r\nHDD	Có thể tùy chọn Nâng cấp	24 Tháng\r\nSSD	GIGABYTE GeForce RGigabyte SSD 240GB 2.5\" Sata 3	36 Tháng\r\nPSU	Gigabyte P650B 80 PLUS bronze	36 Tháng\r\nCase 	GIGABYTE C200 Glass	12 Tháng', 26490000, 'sona_pro_e917c26a120042899e58839ac1a1ded8.webp', 1, '2020-12-04', 3, 1),
('GVNVolibear', 'GVN Volibear S', 'Mainboard 	MSI MAG Z490 TOMAHAWK	36 Tháng\r\nCPU	Intel Core i7 10700F / 16MB / 2.9GHz / 8 Nhân 16 Luồng / LGA 1200	36 Tháng\r\nRAM 	HyperX Fury RGB 1x8 BUS 3200	36 Tháng\r\nVGA 	MSI GeForce GTX 1660 SUPER GAMINGX 6GB GDDR6	36 Tháng\r\nHDD 	TÙY CHỌN	24 Tháng\r\nSSD 	Gigabyte SSD 240GB 2.5\" Sata 3	60 Tháng\r\nPSU 	SilverStone ST65F-ES230 80 Plus	36 Tháng\r\nCase 	MSI MAG VAMPIRIC 100R	12 Tháng\r\nCooling	DEEPCOOL GAMMAXX GTE V2	72 Tháng', 25590000, 'volibear_52fabc7af20b460ab4ed7722c5289af5.webp', 1, '2020-12-04', 3, 1),
('GVNYuumi', 'GVN Yuumi S', '- Mainboard 	MSI MAG B460M MORTAR	36 Tháng\r\n- CPU 	Intel Core i5 10400F / 12MB / 2.9GHz / 6 Nhân 12 Luồng / LGA 1200	36 Tháng\r\n- RAM 	Kingston HyperX Fury Black 1x8GB 2666	36 Tháng\r\n- VGA 	MSI GeForce RTX™ 2060 VENTUS XS 6G OCV1 GDDR6	36 Tháng\r\n- HDD	Có thể tùy chọn Nâng cấp	24 Tháng\r\n- SSD	PNY SSD CS900 120G 2.5\" Sata 3	36 Tháng\r\n- PSU 	SilverStone ST50F-ES230 80 Plus	36 Tháng\r\n- Case 	XIGMATEK OMG AQUA (EN45808) - GAMING M-ATX	12 Tháng', 18550000, 'post_fb_900x603_541c2d337c2b40e7a2f2bb1c82186899.webp', 1, '2020-12-04', 3, 4),
('HPPavilion', 'Laptop HP Pavilion Gaming 15 ', ' CPU	AMD Ryzen 5 4600H 3.0GHz up to 4.0GHz 8MB\r\nRAM	8GB DDR4 3200MHz (2x SO-DIMM socket, up to 32GB SDRAM)\r\nỔ cứng	HDD 1TB 7200rpm + 128GB SSD M.2 PCIe\r\nCard đồ họa	NVIDIA GeForce GTX 1650 4GB GDDR6 + AMD Radeon™ Graphics\r\nMàn hình	15.6\" FHD (1920 x 1080) 144Hz, IPS, Anti-Glare, Micro-Edge, WLED-backlit, 250nits, 45% NTSC\r\nCổng giao tiếp 	1x USB Type-C® 5Gbps signaling rate\r\n1x USB Type-A 5Gbps signaling rate\r\n1x USB 2.0 Type-A (HP Sleep and Charge)\r\n1x HDMI 2.0\r\n1x RJ-45\r\nAudio	B&O PLAY, dual speakers, HP Audio Boost\r\nĐọc thẻ nhớ	1 multi-format SD media card reader\r\nChuẩn LAN	10/100/1000 GbE LAN\r\nChuẩn WIFI	Realtek RTL8822CE 802.11a/b/g/n/ac (2x2)\r\nBluetooth	v5.0\r\nWebcam	HP TrueVision 720p HD camera\r\nHệ điều hành	Windows 10 Home\r\nPin	3 Cell 52.5WHr\r\nTrọng lượng	1.98 kg\r\nMàu sắc	Shadow Black\r\nKích thước	36 x 25.7 x 2.35 cm', 18900000, 'gearvn (1).webp', 1, '2020-12-04', 1, 5),
('MSIGL65Leopard', 'Laptop MSI GL65 Leopard 10SCXK 089VN', 'CPU	Intel Core i7-10750H 2.6GHz up to 5.0GHz 12MB\r\nRAM	8GB DDR4 2666MHz (2x SO-DIMM socket, up to 32GB SDRAM)\r\nỔ cứng	512GB SSD M.2 PCIE, x1 slot 2.5\" SATA (HDD/SSD)\r\nCard đồ họa	NVIDIA GeForce GTX 1650 4GB GDDR6 + Intel UHD Graphics\r\nMàn hình	15.6\" FHD (1920 x 1080) IPS with Anti-Glare, 144Hz, Thin Bezel, 45% NTSC\r\nCổng giao tiếp	\r\n1x Type-C USB3.2 Gen1\r\n3x Type-A USB3.2 Gen1\r\n1x Mini-DisplayPort\r\n1x (4K @ 30Hz) HDMI\r\n1x RJ45\r\n\r\nAudio	Nahimic 3 Audio Technology\r\nBàn phím	Per-Key RGB\r\nĐọc thẻ nhớ	SD (XC/HC) Card Reader', 24990000, '1_16b2f999bc734c929733cc09ac95fe63.webp', 1, '2020-12-04', 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_thuonghieu`
--

DROP TABLE IF EXISTS `tbl_thuonghieu`;
CREATE TABLE IF NOT EXISTS `tbl_thuonghieu` (
  `thMa` int NOT NULL AUTO_INCREMENT,
  `thTen` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`thMa`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_thuonghieu`
--

INSERT INTO `tbl_thuonghieu` (`thMa`, `thTen`) VALUES
(1, 'ASUS'),
(2, 'MSI'),
(3, 'APPLE'),
(4, 'ACER'),
(5, 'HP'),
(6, 'DELL'),
(7, 'LENOVO');

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_chitiethoadon`
--
ALTER TABLE `tbl_chitiethoadon`
  ADD CONSTRAINT `fk_cthd_hd` FOREIGN KEY (`hdMa`) REFERENCES `tbl_hoadon` (`hdMa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_cthd_sp` FOREIGN KEY (`spMa`) REFERENCES `tbl_sanpham` (`spMa`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Các ràng buộc cho bảng `tbl_hoadon`
--
ALTER TABLE `tbl_hoadon`
  ADD CONSTRAINT `fk_hd_kh` FOREIGN KEY (`khMa`) REFERENCES `tbl_khachhang` (`khMa`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Các ràng buộc cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD CONSTRAINT `fk_sp_loai` FOREIGN KEY (`loaiMa`) REFERENCES `tbl_loai` (`loaiMa`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_sp_th` FOREIGN KEY (`thMa`) REFERENCES `tbl_thuonghieu` (`thMa`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
