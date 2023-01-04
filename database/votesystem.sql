-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2021 at 03:27 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `votesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'admin', '$2y$10$YJ3jSw58dqOEurW9fUgCLuhXcvpKTR01HEcEEJ41tneB7vxeG.eiK', 'Hội', 'Ngọc', 'ngochoi.jpg', '2021-05-30');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(18, 8, 'Hội', 'Đoàn Ngọc', 'ngochoi.jpg', 'Tên thường gọi: Đoàn Ngọc Hội<br><br>\r\nNgày sinh: 13/11/2001<br><br>\r\nGiới tính: Nam<br><br>\r\nDân tộc: Kinh<br><br>\r\nTôn giáo: Không<br><br>\r\nQuê quán: Khu Hòa Đông, Thị Trấn Ái Nghĩa, Huyện Đại Lộc, Tỉnh Quảng Nam<br><br>\r\nTrình độ học vấn: Trên ĐH<br><br>\r\nTrình độ chính trị: <br><br>\r\nTrình độ chuyên môn: Công nghệ thông tin<br><br>\r\nNghề nghiệp, chức vụ: Sinh viên Đại Học Sư Phạm Đà Nẵng<br><br>\r\nNơi làm việc: Ủy ban Trung ương Mặt trận Tổ quốc Việt Nam<br><br>\r\nNgày vào đảng: <br><br>\r\nNơi ứng cử: TP Đà Nẵng'),
(27, 8, 'Mẫn', 'Trần Thanh', 'tp can tho  tran thanh man ab4p6126.jpg', 'Tên thường gọi: Trần Thanh Mẫn<br><br>\r\nNgày sinh: 12/08/1962<br><br>\r\nGiới tính: Nam<br><br>\r\nDân tộc: Kinh<br><br>\r\nTôn giáo: Không<br><br>\r\nQuê quán: Xã Thạnh Xuân, huyện Châu Thành A, tỉnh Hậu Giang<br><br>\r\nTrình độ học vấn: Trên ĐH<br><br>\r\nTrình độ chính trị: Cử nhân<br><br>\r\nTrình độ chuyên môn: Quản trị kinh doanh, Học viện Chính trị quốc gia Hồ Chí Minh chuyên ngành Chính trị<br><br>\r\nNghề nghiệp, chức vụ: Ủy viên Trung ương Đảng, Phó Bí thư Đảng đoàn Mặt trận Tổ quốc Việt Nam; Phó Chủ tịch kiêm Tổng Thư ký Ủy ban Trung ương Mặt trận Tổ quốc Việt Nam, Ủy viên Ủy ban Kinh tế của Quốc hội, Trưởng đoàn đại biểu Quốc hội thành phố Cần Thơ<br><br>\r\nNơi làm việc: Ủy ban Trung ương Mặt trận Tổ quốc Việt Nam<br><br>\r\nNgày vào đảng: 25/08/1982<br><br>\r\nNơi ứng cử: TP Cần Thơ'),
(20, 8, 'Anh', 'Nguyễn Doãn', 'tp ha noi nguyen  doan anh   ab4p6439.jpg', 'Tên thường gọi: Nguyễn Doãn Anh<br><br>\r\n<br><br>\r\nNgày sinh: 10/10/1967<br><br>\r\n<br><br>\r\nGiới tính: Nam<br><br>\r\n<br><br>\r\nDân tộc: Kinh<br><br>\r\n<br><br>\r\nTôn giáo: Không<br><br>\r\n<br><br>\r\nQuê quán: Xã An Thượng, huyện Hoài Đức, thành phố Hà Nội<br><br>\r\n<br><br>\r\nTrình độ học vấn: Đại học<br><br>\r\n<br><br>\r\nTrình độ chính trị: Cao cấp<br><br>\r\n<br><br>\r\nTrình độ chuyên môn: Đại học, ngành Chỉ huy Tham mưu Binh chủng Hợp thành; Cao cấp chuyên ngành Quân sự<br><br>\r\n<br><br>\r\nNghề nghiệp, chức vụ: Trung tướng, Tư lệnh Quân khu 4, Ủy viên Uỷ ban Quốc phòng và An ninh của Quốc hội<br><br>\r\n<br><br>\r\nNơi làm việc: Quân khu 4<br><br>\r\n<br><br>\r\nNgày vào đảng: 03/04/1987<br><br>\r\n<br><br>\r\nNơi ứng cử: TP Hà Nội'),
(21, 10, 'Đạt', 'Nguyễn Tấn', 'Nguyen Tan dat.jpg', 'Tên thường gọi: Nguyễn Tấn Đạt<br>\r\n<br>\r\nNgày sinh: 06/07/1949<br>\r\n<br>\r\nGiới tính: Nam<br>\r\n<br>\r\nDân tộc: Kinh<br>\r\n<br>\r\nTôn giáo: Phật giáo Hòa Hảo<br>\r\n<br>\r\nQuê quán: Xã Hội An Đông, huyện Lấp Vò , Đồng Tháp<br>\r\n<br>\r\nTrình độ học vấn: Dưới ĐH<br>\r\n<br>\r\nTrình độ chính trị:<br>\r\n<br>\r\nTrình độ chuyên môn: Lương y (giáo viên cấp 1, sư phạm 11 + 2)<br>\r\n<br>\r\nNghề nghiệp, chức vụ: Quyền Trưởng ban trị sự Trung ương Phật giáo Hòa Hảo<br>\r\n<br>\r\nNơi làm việc: An Hòa Tự, thị trấn Phú Mỹ, An Giang<br>\r\n<br>\r\nNgày vào đảng: ...<br>\r\n<br>\r\nNơi ứng cử: An Giang'),
(22, 10, 'Đào', 'Hồ Thị Cẩm', 'Ho Thi Cam dao.jpg', 'Tên thường gọi: Hồ Thị Cẩm Đào<br>\r\n<br>\r\nNgày sinh: 12/06/1972<br>\r\n<br>\r\nGiới tính: Nữ<br>\r\n<br>\r\nDân tộc: Kinh<br>\r\n<br>\r\nTôn giáo: Không<br>\r\n<br>\r\nQuê quán: Xã Vĩnh Lợi, huyện Thạnh Trị, Sóc Trăng<br>\r\n<br>\r\nTrình độ học vấn: Đại học<br>\r\n<br>\r\nTrình độ chính trị: Cao cấp lý luận chính trị<br>\r\n<br>\r\nTrình độ chuyên môn: Cử nhân hành chính<br>\r\n<br>\r\nNghề nghiệp, chức vụ: Ủy viên Ban thường vụ Tỉnh ủy, Trưởng ban Dân vận tỉnh ủy Sóc Trăng, Trưởng ban Dân tộc Hội đồng nhân dân tỉnh Sóc Trăng, Ủy viên Uỷ ban Văn hoá, Giáo dục, Thanh niên, Thiếu niên và Nhi đồng của Quốc hội<br>\r\n<br>\r\nNơi làm việc: Ban Dân vận Tỉnh ủy Sóc Trăng<br>\r\n<br>\r\nNgày vào đảng: 06/12/1992<br>\r\n<br>\r\nNơi ứng cử: Sóc Trăng'),
(23, 10, 'Đăng', 'Phùng Khắc', 'Phung Khac dang.jpg', 'Tên thường gọi: Phùng Khắc Đăng<br>\r\n<br>\r\nNgày sinh: 15/08/1945<br>\r\n<br>\r\nGiới tính: Nam<br>\r\n<br>\r\nDân tộc: Kinh<br>\r\n<br>\r\nTôn giáo: Không<br>\r\n<br>\r\nQuê quán: Xã Phùng Xá, huyện Thạch Thất , TP Hà Nội<br>\r\n<br>\r\nTrình độ học vấn: 10/10<br>\r\n<br>\r\nTrình độ chính trị: Cao cấp lý luận chính trị<br>\r\n<br>\r\nTrình độ chuyên môn: Thạc sỹ Chính trị - Quân sự<br>\r\n<br>\r\nNghề nghiệp, chức vụ: Trung tướng, Ủy viên Đảng đoàn Hội Cựu chiến binh, Bí thư Đảng ủy cơ quan Trung ương Hội, Phó Chủ tịch Hội Cựu chiến binh Việt Nam, Ủy viên Đoàn chủ tịch Liên hiệp các tổ chức hữu nghị Việt Nam, Ủy viên Ủy ban Quốc phòng và An ninh của Quốc hội<br>\r\n<br>\r\nNơi làm việc: Hội Cựu chiến binh Việt Nam, 34 Lý Nam Đế, Hà Nội<br>\r\n<br>\r\nNgày vào đảng: 11/11/1966<br>\r\n<br>\r\nNơi ứng cử: Sơn La'),
(24, 10, 'Diễn', 'Lê', 'Le Dien.jpg', 'Tên thường gọi: Lê Diễn<br>\r\n<br>\r\nNgày sinh: 16/04/1960<br>\r\n<br>\r\nGiới tính: Nam<br>\r\n<br>\r\nDân tộc: Kinh<br>\r\n<br>\r\nTôn giáo: Không<br>\r\n<br>\r\nQuê quán: Xã Cát Lâm, huyện Phù Cát , Bình Định<br>\r\n<br>\r\nTrình độ học vấn: Trên ĐH<br>\r\n<br>\r\nTrình độ chính trị: Cao cấp lý luận chính trị<br>\r\n<br>\r\nTrình độ chuyên môn: Thạc sỹ quản lý giáo dục; Cử nhân khoa học quân sự; Cử nhân Kinh tế ngoại thương<br>\r\n<br>\r\nNghề nghiệp, chức vụ: Phó Bí thư tỉnh ủy, Chủ tịch UBND tỉnh, Trưởng đoàn đại biểu Quốc hội tỉnh Đắk Nông khóa XIII; Ủy viên Uỷ ban Tài chính-Ngân sách của Quốc hội<br>\r\n<br>\r\nNơi làm việc: Văn phòng Ủy ban nhân dân tỉnh Đắk Nông<br>\r\n<br>\r\nNgày vào đảng: 21/10/1981<br>\r\n<br>\r\nNơi ứng cử: Đắk Nông<br>\r\n<br>\r\nĐại biểu Quốc hội khoá: XIII'),
(25, 8, 'Anh', 'Nguyễn Thu', 'Nguyen Thu Anh.jpg', 'Tên thường gọi: Nguyễn Thu Anh<br><br>\r\n<br><br>\r\nNgày sinh: 28/08/1974<br><br>\r\n<br><br>\r\nGiới tính: Nữ<br><br>\r\n<br><br>\r\nDân tộc: Kinh<br><br>\r\n<br><br>\r\nTôn giáo: Không<br><br>\r\n<br><br>\r\nQuê quán: Xã Tân Tiến, huyện Ngọc Hiển , Cà Mau<br><br>\r\n<br><br>\r\nTrình độ học vấn: Đại học<br><br>\r\n<br><br>\r\nTrình độ chính trị:<br><br>\r\n<br><br>\r\nTrình độ chuyên môn: Đại học Y khoa, Bác sĩ chuyên khoa mắt<br><br>\r\n<br><br>\r\nNghề nghiệp, chức vụ: Ủy viên Uỷ ban Về các vấn đề xã hội của Quốc hội<br><br>\r\n<br><br>\r\nNơi làm việc: Bệnh viện II Lâm Đồng<br><br>\r\n<br><br>\r\nNgày vào đảng: 06/05/2004<br><br>\r\n<br><br>\r\nNơi ứng cử: Lâm Đồng'),
(26, 8, 'Ánh', 'Huỳnh Ngọc', 'Huynh Ngoc anh.jpg', 'Tên thường gọi: Huỳnh Ngọc Ánh<br><br>\r\nNgày sinh: 20/03/1962<br><br>\r\nGiới tính: Nam<br><br>\r\nDân tộc: Kinh<br><br>\r\nTôn giáo: Không<br><br>\r\nQuê quán: Xã Bạch Đằng, thành phố Quy Nhơn , Bình Định<br><br>\r\nTrình độ học vấn: Trên ĐH<br><br>\r\nTrình độ chính trị: Cử nhân chính trị<br><br>\r\nTrình độ chuyên môn: Thạc sỹ Luật<br><br>\r\nNghề nghiệp, chức vụ: Bí thư Đảng ủy, Phó Chánh án Tòa án Nhân dân thành phố Hồ Chí Minh, Ủy viên Ủy ban Tư pháp của Quốc hội<br><br>\r\nNơi làm việc: Tòa án Nhân dân thành phố Hồ Chí Minh<br><br>\r\nNgày vào đảng: 28/11/1988<br><br>\r\nNơi ứng cử: TP Hồ Chí Minh'),
(28, 8, 'Bảo', 'Nguyễn Ngọc', 'Nguyen Ngoc Bao.jpg', 'Tên thường gọi: Nguyễn Ngọc Bảo<br><br>\r\nNgày sinh: 16/06/1967<br><br>\r\nGiới tính: Nam<br><br>\r\nDân tộc: Kinh<br><br>\r\nTôn giáo: Không<br><br>\r\nQuê quán: Xã Văn Môn, huyện Yên Phong , Bắc Ninh<br><br>\r\nTrình độ học vấn: Trên ĐH<br><br>\r\nTrình độ chính trị: Cao cấp lý luận chính trị<br><br>\r\nTrình độ chuyên môn: Thạc sỹ kinh tế<br><br>\r\nNghề nghiệp, chức vụ: Ủy viên Thường vụ Đảng uỷ Khối doanh nghiệp Hà Nội, Bí thư Đảng ủy, Chủ tịch HĐ thành viên, Tổng giám đốc công ty TNHH một thành viên đầu tư Việt Hà; Phó chủ tịch Trung ương Hội Hữu nghị Việt Nam-Đan Mạch; Ủy viên Uỷ ban Kinh tế của Quốc hội<br><br>\r\nNơi làm việc: Công ty TNHH một thành viên đầu tư Việt Hà<br><br>\r\nNgày vào đảng: 20/01/1995<br><br>\r\nNơi ứng cử: TP Hà Nội'),
(29, 8, 'Bình', 'Giàng Thị', 'Giang Thi Binh.jpg', 'Họ và tên: Giàng Thị Bình<br><br>\r\nTên thường gọi: Giàng Thị Bình<br><br>\r\nNgày sinh: 27/01/1965<br><br>\r\nGiới tính: Nữ<br><br>\r\nDân tộc: Mông<br><br>\r\nTôn giáo: Không<br><br>\r\nQuê quán: Thị trấn Sa Pa, huyện Sa Pa , Lào Cai<br><br>\r\nTrình độ học vấn: Trên ĐH<br><br>\r\nTrình độ chính trị: Cao cấp lý luận chính trị<br><br>\r\nTrình độ chuyên môn: Thạc sỹ Luật<br><br>\r\nNghề nghiệp, chức vụ: Tỉnh ủy viên, Phó Trưởng đoàn chuyên trách Đoàn ĐBQH tỉnh Lào Cai khóa XIII, Ủy viên Uỷ ban Pháp luật của Quốc hội<br><br>\r\nNơi làm việc: Văn phòng Đoàn ĐBQH và HĐND tỉnh Lào Cai<br><<br>\r\nNgày vào đảng: 29/01/1997<br><br>\r\nNơi ứng cử: Lào Cai'),
(31, 8, 'Chiểu ', 'Trần Quang', 'Tran Quang Chieu.jpg', 'Tên thường gọi: Trần Quang Chiểu<br><br>\r\nNgày sinh: 29/12/1958<br><br>\r\nGiới tính: Nam<br>><br>\r\nDân tộc: Kinh<br><br>\r\nTôn giáo: Không<br><br>\r\nQuê quán: Xã Hải Trung, huyện Hải Hậu , Nam Định<br><br>\r\nTrình độ học vấn: Đại học<br><br>\r\nTrình độ chính trị: Cao cấp lý luận chính trị<br><br>\r\nTrình độ chuyên môn: Cử nhân Tài chính - Kế toán<br><br>\r\nNghề nghiệp, chức vụ: Ủy viên thường trực Uỷ ban Tài chính-Ngân sách của Quốc hội<br><br>\r\nNơi làm việc: Ủy ban Tài chính Ngân sách của Quốc hội, 37 Hùng Vương, Ba Đình, Hà Nội<br><br>\r\nNgày vào đảng: 22/12/1984<br><br>\r\nNơi ứng cử: Nam Định'),
(34, 10, 'Cường', 'Nguyễn Mạnh', 'Nguyen Manh Cuong.jpg', 'Họ và tên: Nguyễn Mạnh Cường<br><br>\r\nTên thường gọi: Nguyễn Mạnh Cường<br><br>\r\nNgày sinh: 14/01/1967<br><br>\r\nGiới tính: Nam<br><br>\r\nDân tộc: Kinh<br><br>\r\nTôn giáo: Không<br><br>\r\nQuê quán: Phường Trần Hưng Đạo, thành phố Nam Định , Nam Định<br><br>\r\nTrình độ học vấn: Trên ĐH<br><br>\r\nTrình độ chính trị: Cao cấp lý luận chính trị<br><br>\r\nTrình độ chuyên môn: Thạc sỹ Luật<br><br>\r\nNghề nghiệp, chức vụ: Ủy viên Ban chấp hành Đảng bộ cơ quan Văn phòng Quốc hội, Ủy viên Thường trực Ủy ban Tư pháp của Quốc hội<br><br>\r\nNơi làm việc: Văn phòng Quốc hội - 37 Hùng Vương, Ba Đình, Hà Nội<br><br>\r\nNgày vào đảng: 11/10/1997<br><br>\r\nNơi ứng cử: Quảng Bình<br><br>\r\nĐại biểu Quốc hội khoá: XIII'),
(41, 8, 'Dân', 'Thạch Thị', 'Thach Thi Dan.jpg', 'Tên thường gọi: Thạch Thị Dân<br>\r\n<br>\r\nNgày sinh: 12/06/1970<br>\r\n<br>\r\nGiới tính: Nữ<br>\r\n<br>\r\nDân tộc: Khmer(Khơ-me)<br>\r\n<br>\r\nTôn giáo: Phật giáo<br>\r\n<br>\r\nQuê quán: Xã Hòa Tân, huyện Cầu Kè, Trà Vinh<br>\r\n<br>\r\nTrình độ học vấn: Trên ĐH<br>\r\n<br>\r\nTrình độ chính trị: Cao cấp lý luận chính trị<br>\r\n<br>\r\nTrình độ chuyên môn: Thạc sỹ chuyên ngành Hóa học<br>\r\n<br>\r\nNghề nghiệp, chức vụ: Phó Hiệu trưởng Trường Đại học Trà Vinh, Ủy viên Uỷ ban Văn hoá, Giáo dục, Thanh niên, Thiếu niên và Nhi đồng của Quốc hội<br>\r\n<br>\r\nNơi làm việc: Trường Đại học Trà Vinh<br>\r\n<br>\r\nNgày vào đảng: 09/04/2004<br>\r\n<br>\r\nNơi ứng cử: Trà Vinh'),
(42, 10, 'Đồng', 'Hà Sỹ', 'Ha Sy dong.jpg', 'Tên thường gọi: Hà Sỹ Đồng<br>\r\n<br>\r\nNgày sinh: 18/01/1964<br>\r\n<br>\r\nGiới tính: Nam<br>\r\n<br>\r\nDân tộc: Kinh<br>\r\n<br>\r\nTôn giáo: Không<br>\r\n<br>\r\nQuê quán: Xã Triệu Ái, huyện Triệu Phong , Quảng Trị<br>\r\n<br>\r\nTrình độ học vấn: Trên ĐH<br>\r\n<br>\r\nTrình độ chính trị: Cao cấp lý luận chính trị<br>\r\n<br>\r\nTrình độ chuyên môn: Thạc sỹ lâm nghiệp<br>\r\n<br>\r\nNghề nghiệp, chức vụ: Tỉnh ủy viên; Trưởng Ban quản lý khu kinh tế tỉnh Quảng Trị; Phó Trưởng đoàn ĐBQH tỉnh Quảng Trị khóa XIII, Ủy viên Uỷ ban Tài chính-Ngân sách của Quốc hội<br>\r\n<br>\r\nNơi làm việc: Ban quản lý khu kinh tế tỉnh Quảng Trị, Số 91 Lê Duẩn, TP Đông Hà tỉnh Quảng Trị<br>\r\n<br>\r\nNgày vào đảng: 02/05/1989<br>\r\n<br>\r\nNơi ứng cử: Quảng Trị');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(8, 'Đại biểu quốc hội khóa XVI', 6, 1),
(10, 'Đại biểu hội đồng nhân dân các cấp nhiệm kỳ 2026 -2031', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voters_id`, `password`, `firstname`, `lastname`, `photo`) VALUES
(44, 'wyarxB1Jmz9IZDO', '$2y$10$JuPE9TINuR.LTX/JKUjMGuDPZWyimmil9CYM5iGNV2wWcxMiUphaC', 'Hòa', 'Trần Xuân', 'AvengerIW4 (2).jpg'),
(43, 'aEcCTb8AVMpROQ1', '$2y$10$hm3yyV0hoTHxZ0ugwKAuke9hxJYR.Jmk.YNol2eVZzb.ER2u5fziW', 'Hoa', 'Hoàng Thị', 'female.jpg'),
(42, '2isC8KZtFwRkjzy', '$2y$10$KYafBX.6lgDJuOQGlOQgp.Z/.sREACF3/.8as2/V61VIM9D/SLvzC', 'Hiếu', 'Nguyễn Văn', 'chọn-nuôi-cho-pug-2.jpg'),
(41, 'UVdKCqznGZWFP6w', '$2y$10$k8zIsONDwFCOh6ZjdfhXgOyxYVMES7wSMNfQ.rCCCEHSNBQ8cYuLq', 'Hiện', 'Nguyễn Văn', 'ebony.jpg'),
(40, 'HXnJq8iky4otaVx', '$2y$10$SxLkGEdD2iSdATI4T9W9z.KaSKdsY2Vv1ir4t4GqddUvGhSscWHZm', 'Hiền', 'Lê Minh', 'mask.jpg'),
(39, 'LRQmZqenHKdMNlT', '$2y$10$A3Ryx5AcNwNUzobTdEQmfOuL2nsovXceO.0ybZAhn.Ns7nysO9eMe', 'Hiệp ', 'Lê Quang', 'avatar.png'),
(32, 'ZpECXcawRBm7y9F', '$2y$10$SO.0Nd.v5HVLuOzdbx/G6OvhTHiarY7OsE429kk.e3FME56R7.v7O', 'Hải', 'Phạm Thị', 'Le Dien.jpg'),
(33, '2Ojen6hoEpZPz4r', '$2y$10$MjKR54gyuVNI5CKw4hpFeeKIEgUFrSePdeppS0Fz2lZU5Vqwlx0jS', 'Hải', 'Trần Thanh', 'male2.png'),
(34, 'cFxzZjMgHfDtVCl', '$2y$10$tvtm3JS7vNtioBTsn6C9eO2AZMKIHKf5ZhtR7RsF0cRMUkhlD8Zi6', 'Hội', 'Đoàn Ngọc', 'ngochoi.jpg'),
(35, 'IUNKfJYOmkiHhB7', '$2y$10$.XZJgF4RSIgC4cs4LaKIXeLhDMvNx9d6rYk4HPttpeb55TztNc4Fm', 'Sang', 'Nguyễn Hữu', '29573294_100394060811807_5075093024508575846_n.jpg'),
(36, 'JQvq4s12SNLthnl', '$2y$10$QQmExKPONJuSHwNm/WhQUu9NTb7YDppD9eOYnXrdsUJQ3UQciVtVy', 'Hằng', 'Trần Văn', 'Ho Thi Cam dao.jpg'),
(37, 'TyN9W45GQJadLb2', '$2y$10$qJwCZvh4dCUBAWy5i0deZO0eQTUZPvryZlBpbGHPlg5Xd53TGkCye', 'Hòa', 'Nguyễn Thị Thanh', 'Nguyen Thu Anh.jpg'),
(28, 'tSD4zWh7ynjV2P6', '$2y$10$lsQDO97xvaesIR7I82pYr.sBcynHvIy8kg2yBWi3TRgyaHr5sUlCm', 'Hà', 'Phạm Văn', 'Phung Khac dang.jpg'),
(29, 'MRDIbP1UHAyjxl7', '$2y$10$AGAUenGsOBqRwBut90cMhuhcYFnOEF11dF9XFdqO5WmBmQwxAHkKu', 'Hà', 'Lâm Lệ', 'Ha Sy dong.jpg'),
(30, 'USCZcbomOnwWj82', '$2y$10$6RX95as78GNcZlu0TZdkLuLpnpKqFfgj3e4mZ6HymcwlpJx3o5p62', 'Dần', 'Trần', '7399c2a1-2ed4-489f-9c8e-7e4111c3bf98.png'),
(38, '4tdlInhx8Paefyv', '$2y$10$Sgj5DGAPlB8HGiBPJWVqzO1LDAU6ZGwr47vOaS/Jk52IauOWMglP2', 'Hổ', 'Phạm Văn', 'killmongr.jpg'),
(45, 'V4E2pfXuyz5GtRx', '$2y$10$CEtL5AcrSYy/Uoc1hYThE.92WlIdIcHRcCCOXwpprSeKIbWW.uJxi', 'Học', 'Lê Văn', 'dealer-logo.jpg'),
(46, 'lNetwKZ7nJBPYDI', '$2y$10$E.I.uPduRNlFA1qet9WIU.jxmCDnX59nb64smlGs2/84lrqgnnUn2', 'Hội', 'Nguyễn', 'reddd.jpg'),
(47, 'V7RT9n81kCEhvz3', '$2y$10$WKIFjcraOolDRl4j6DqeTeN1xAzXE9omV7B6lJpo8dVXSSW9bXJRi', 'Khánh', 'Trần Quốc', 'thanossmile.jpg'),
(48, 'OUvuSPkMHoV1aeT', '$2y$10$ldudsZzcytCEK7AycWBu0uNGVtwjnMf5tXb4SxIBpqPiAT.U51zn.', 'Khích', 'Hà Thị', 'female4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `voters_id`, `candidate_id`, `position_id`) VALUES
(140, 43, 22, 10),
(141, 43, 24, 10),
(142, 43, 34, 10),
(143, 48, 18, 8),
(144, 48, 27, 8),
(145, 48, 20, 8),
(146, 48, 29, 8),
(147, 48, 31, 8),
(148, 48, 41, 8),
(149, 48, 24, 10),
(150, 48, 34, 10),
(151, 48, 42, 10),
(152, 29, 18, 8),
(153, 29, 27, 8),
(154, 29, 20, 8),
(155, 29, 26, 8),
(156, 29, 28, 8),
(157, 29, 31, 8),
(158, 29, 22, 10),
(159, 29, 23, 10),
(160, 29, 34, 10),
(161, 40, 18, 8),
(162, 40, 27, 8),
(163, 40, 20, 8),
(164, 40, 25, 8),
(165, 40, 29, 8),
(166, 40, 31, 8),
(167, 40, 21, 10),
(168, 40, 22, 10),
(169, 40, 34, 10),
(170, 39, 22, 10),
(171, 39, 24, 10),
(172, 39, 34, 10),
(173, 45, 18, 8),
(174, 45, 20, 8),
(175, 45, 26, 8),
(176, 45, 29, 8),
(177, 45, 31, 8),
(178, 45, 41, 8),
(179, 45, 21, 10),
(180, 45, 22, 10),
(181, 45, 34, 10),
(182, 46, 18, 8),
(183, 46, 26, 8),
(184, 46, 28, 8),
(185, 46, 29, 8),
(186, 46, 31, 8),
(187, 46, 41, 8),
(188, 46, 22, 10),
(189, 46, 23, 10),
(190, 46, 34, 10),
(191, 35, 18, 8),
(192, 35, 27, 8),
(193, 35, 25, 8),
(194, 35, 26, 8),
(195, 35, 29, 8),
(196, 35, 31, 8),
(197, 35, 22, 10),
(198, 35, 23, 10),
(199, 35, 42, 10),
(200, 37, 18, 8),
(201, 37, 25, 8),
(202, 37, 26, 8),
(203, 37, 28, 8),
(204, 37, 21, 10),
(205, 37, 24, 10),
(206, 37, 42, 10),
(207, 42, 21, 10),
(208, 42, 23, 10),
(209, 42, 34, 10),
(210, 41, 22, 10),
(211, 41, 23, 10),
(212, 41, 34, 10),
(213, 32, 23, 10),
(214, 32, 24, 10),
(215, 32, 34, 10),
(216, 28, 21, 10),
(217, 28, 22, 10),
(218, 28, 34, 10),
(219, 38, 18, 8),
(220, 38, 27, 8),
(221, 38, 34, 10),
(222, 38, 42, 10),
(223, 30, 18, 8),
(224, 30, 20, 8),
(225, 30, 28, 8),
(226, 30, 22, 10),
(227, 30, 24, 10),
(228, 30, 34, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
