-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 10, 2020 lúc 10:23 AM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `device`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `ID` int(11) NOT NULL,
  `CustomerName` varchar(200) NOT NULL,
  `PhoneNumber` varchar(11) NOT NULL,
  `Address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`ID`, `CustomerName`, `PhoneNumber`, `Address`) VALUES
(1, 'phat', '2147483647', 'phat@gmail.com'),
(2, 'NTD', '1041024123', 'afsaf@amafsa.com'),
(3, 'abc', '324234', 'a@gmail.com'),
(4, 'abc', '2147483647', 'a@gmail.com'),
(5, 'NTD', '921231543', 'NTD@gmail.com'),
(6, 'asd', '12341423', '132123'),
(7, 'TD', '963387465', 'TD@gmail.com'),
(8, 'Ten', '2147483647', 'nhwsdj2'),
(9, 'asd', '273273273', 'sadasd@gmail.com'),
(10, 'NTD', '987654456', 'asd asd  asd oq rq rjhal'),
(11, 'asd', '123', 'dsa a sd asd'),
(12, 'NTD', '089462172', 'UIT TIU'),
(13, 'sad', '2132132', 'sadsdasdsa'),
(14, 'das', '0708087', 'z fdsf sdf'),
(15, 'ntd', '092347423', 'di jsa sad'),
(16, 'dat', '21441244124', '1233123123'),
(17, 'ntd', '0987657765', 'sdsad ád d a ad ad aá'),
(18, 'ntd', '0987657765', 'sdsad ád d a ad ad aá'),
(19, 'q12', '1312', '123123'),
(20, 'NTD', '09699245182', 'dh cntt'),
(21, 'nguyen tien dat', '095992123', 'acb cá'),
(22, 'nguyen tien dat', '0969926509', 'ddddd');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `devicetype`
--

CREATE TABLE `devicetype` (
  `ID` int(11) NOT NULL,
  `ProductName` varchar(200) NOT NULL,
  `Image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `devicetype`
--

INSERT INTO `devicetype` (`ID`, `ProductName`, `Image`) VALUES
(1, 'Điện Thoại', 'https://cdn2.iconfinder.com/data/icons/mobile-communication-2/512/Phone-512.png'),
(2, 'Laptop', 'https://images.vexels.com/media/users/3/128132/isolated/preview/fa3b9aad78a9db81459bd03294a0f985-flat-laptop-icon-design-by-vexels.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetail`
--

CREATE TABLE `orderdetail` (
  `ID` int(11) NOT NULL,
  `OrderCode` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(200) NOT NULL,
  `Price` int(11) NOT NULL,
  `Number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orderdetail`
--

INSERT INTO `orderdetail` (`ID`, `OrderCode`, `ProductID`, `ProductName`, `Price`, `Number`) VALUES
(1, 3, 6, 'Điện thoại Samsung Galaxy Note 8', 19990000, 1),
(2, 4, 7, 'Laptop Dell Inspiron 3576 i5 8250U/4GB/1TB/Win10/(P63F002N76F)', 14690000, 1),
(3, 5, 10, 'Laptop Asus VivoBook X507UF i5 8250U/4GB/1TB/MX130/Win10 (EJ121T)', 14590000, 1),
(4, 5, 9, 'Laptop HP Pavilion 14 ce0021TU i3 8130U/4GB/1TB/Win10/(4MF00PA)', 12990000, 1),
(5, 6, 11, 'Laptop Lenovo Ideapad 330 15IKBR i3 7020U/4GB/1TB/Win10/(81DE00LDVN)\r\n', 9690000, 1),
(6, 7, 10, 'Laptop Asus VivoBook X507UF i5 8250U/4GB/1TB/MX130/Win10 (EJ121T)', 14590000, 1),
(7, 7, 6, 'Điện thoại Samsung Galaxy Note 8', 19990000, 1),
(8, 7, 9, 'Laptop HP Pavilion 14 ce0021TU i3 8130U/4GB/1TB/Win10/(4MF00PA)', 12990000, 1),
(9, 8, 5, 'Điện thoại iPhone 7 Plus 256GB', 23990000, 1),
(10, 8, 9, 'Laptop HP Pavilion 14 ce0021TU i3 8130U/4GB/1TB/Win10/(4MF00PA)', 12990000, 1),
(11, 9, 11, 'Laptop Lenovo Ideapad 330 15IKBR i3 7020U/4GB/1TB/Win10/(81DE00LDVN)\r\n', 9690000, 1),
(12, 10, 11, 'Laptop Lenovo Ideapad 330 15IKBR i3 7020U/4GB/1TB/Win10/(81DE00LDVN)\r\n', 9690000, 1),
(13, 11, 12, 'Laptop Dell Vostro 3468 i5 7200U/4GB/1TB/Win10', 13790000, 1),
(14, 12, 3, 'Điện thoại OPPO F9', 7690000, 1),
(15, 13, 11, 'Laptop Lenovo Ideapad 330 15IKBR i3 7020U/4GB/1TB/Win10/(81DE00LDVN)\r\n', 9690000, 1),
(16, 14, 12, 'Laptop Dell Vostro 3468 i5 7200U/4GB/1TB/Win10', 137900000, 10),
(17, 15, 11, 'Laptop Lenovo Ideapad 330 15IKBR i3 7020U/4GB/1TB/Win10/(81DE00LDVN)\r\n', 9690000, 1),
(18, 15, 9, 'Laptop HP Pavilion 14 ce0021TU i3 8130U/4GB/1TB/Win10/(4MF00PA)', 12990000, 1),
(19, 16, 1, 'Điện thoại iPhone Xs Max 64GB', 30990000, 1),
(20, 17, 12, 'Laptop Dell Vostro 3468 i5 7200U/4GB/1TB/Win10', 13790000, 1),
(21, 19, 12, 'Laptop Dell Vostro 3468 i5 7200U/4GB/1TB/Win10', 124110000, 9),
(22, 20, 1, 'Điện thoại iPhone Xs Max 64GB', 154950000, 5),
(23, 21, 12, 'Laptop Dell Vostro 3468 i5 7200U/4GB/1TB/Win10', 27580000, 2),
(24, 22, 11, 'Laptop Lenovo Ideapad 330 15IKBR i3 7020U/4GB/1TB/Win10/(81DE00LDVN)\r\n', 19380000, 2),
(25, 22, 9, 'Laptop HP Pavilion 14 ce0021TU i3 8130U/4GB/1TB/Win10/(4MF00PA)', 12990000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `ID` int(11) NOT NULL,
  `ProductName` varchar(200) NOT NULL,
  `Price` int(15) NOT NULL,
  `Image` varchar(200) NOT NULL,
  `ProductDetail` varchar(10000) NOT NULL,
  `ProductID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`ID`, `ProductName`, `Price`, `Image`, `ProductDetail`, `ProductID`) VALUES
(1, 'Điện thoại iPhone Xs Max 64GB', 30990000, 'https://cdn.tgdd.vn/Products/Images/42/190321/iphone-xs-max-gray-400x460.png', 'Hoàn toàn xứng đáng với những gì được mong chờ, phiên bản cao cấp nhất iPhone Xs Max của Apple năm nay nổi bật với chip A12 Bionic mạnh mẽ, màn hình rộng đến 6.5 inch, cùng camera kép trí tuệ nhân tạo và Face ID được nâng cấp.\r\nThiết kế cao cấp với viền thép không gỉ và mặt kính cường lực\r\nĐiện thoại iPhone Xs Max sở hữu lối thiết kế vô cùng đẹp mắt với những đường cong mềm mại được thừa hưởng từ chiếc iPhone đời trước đó.', 1),
(2, 'Điện thoại Samsung Galaxy Note 9', 22990000, 'https://cdn.tgdd.vn/Products/Images/42/154897/samsung-galaxy-note-9-black-400x460-400x460.png', 'Mang lại sự cải tiến đặc biệt trong cây bút S-Pen, siêu phẩm Samsung Galaxy Note 9 còn sở hữu dung lượng pin khủng lên tới 4.000 mAh cùng hiệu năng mạnh mẽ vượt bậc, xứng đáng là một trong những chiếc điện thoại cao cấp nhất của Samsung.\r\nMột chút thay đổi trong thiết kế\r\nChiếc điện thoại Samsung mới vẫn thừa hưởng lối thiết kế vô cùng quyến rũ từ đàn anh của mình với thân hình mạnh mẽ và được cách điệu bởi những đường cong mềm mại.', 1),
(3, 'Điện thoại OPPO F9', 7690000, 'https://cdn.tgdd.vn/Products/Images/42/182153/oppo-f9-tim-400x460.png', 'Là chiếc điện thoại OPPO mới nhất sở hữu công nghệ sạc VOOC đột phá, OPPO F9 còn được ưu ái nhiều tính năng nổi trội như thiết kế mặt lưng chuyển màu độc đáo, màn hình tràn viền giọt nước và camera chụp chân dung tích hợp trí tuệ nhân tạo A.I hoàn hảo.\r\nSạc VOOC nhanh đột phá\r\nTrong những giây phút gay cấn như chơi game điện thoại báo hết pin hay sáng dậy đi làm nhưng phát hiện quên sạc pin thì bộ sạc của OPPO F9 sẽ đem lại sự cứu trợ ngay lập tức.\r\n\r\nVới sạc VOOC 5V/AA, tốc độ sạc trở nên nhanh chóng so với các bộ sạc thông thường.', 1),
(4, 'Điện thoại Huawei Mate 20 Pro', 18990000, 'https://cdn.tgdd.vn/Products/Images/42/188963/huawei-mate-20-pro-green-400x460.png', 'Đặc điểm nổi bật của Huawei Mate 20 Pro\r\n\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Pin, Tai nghe, Sách hướng dẫn, Cây lấy sim, Ốp lưng\r\n\r\nThế hệ siêu phẩm mới của Huawei chính thức lộ diện với cái tên Huawei Mate 20 Pro, chiếc điện thoại thu hút trong thiết kế, mạnh mẽ trong hiệu năng cùng một hệ thống camera ấn tượng.\r\nThiết kế mới mẻ, bắt mắt\r\nSang trọng và đẳng cấp là những từ mà bạn có thể thốt lên khi chiêm ngưỡng thân hình của siêu phẩm Huawei Mate 20 Pro.', 1),
(5, 'Điện thoại iPhone 7 Plus 256GB', 23990000, 'https://cdn.tgdd.vn/Products/Images/42/87840/iphone-7-plus-256gb-jet-black-3-400x460.png', 'Với thiết kế không quá nhiều thay đổi, vẫn bảo tồn vẻ đẹp truyền thống từ thời iPhone 6 Plus,  iPhone 7 Plus được trang bị nhiều nâng cấp đáng giá như camera kép, đạt chuẩn chống nước chống bụi cùng cấu hình cực mạnh.', 1),
(6, 'Điện thoại Samsung Galaxy Note 8', 19990000, 'https://cdn.tgdd.vn/Products/Images/42/106211/samsung-galaxy-note8-black-400x460.png', 'Đặc điểm nổi bật của Samsung Galaxy Note 8\r\n\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Bút cảm ứng (+Ngòi bút), Cáp, Cây lấy sim, Ốp lưng, Adapter chuyển USB (Type C), Adapter chuyển Micro USB (USB OTG)\r\n\r\nGalaxy Note 8 là niềm hy vọng vực lại dòng Note danh tiếng của điện thoại Samsung với diện mạo nam tính, sang trọng. Máy trang bị camera kép xóa phông thời thượng, màn hình vô cực như trên S8 Plus, bút S Pen cùng nhiều tính năng mới và nhiều công nghệ được ưu ái.\r\nMàn hình vô cực hiện đại tiên tiến\r\nDù được giới thiệu là màn hình lên tới 6.3 inch nhưng thực sự khi cầm điện thoại Note 8 trên tay rất nhỏ gọn nhờ vào công nghệ \"màn hình vô cực\" tiên tiến nhất hiện nay của Samsung.', 1),
(7, 'Laptop Dell Inspiron 3576 i5 8250U/4GB/1TB/Win10/(P63F002N76F)', 14690000, 'https://cdn.tgdd.vn/Products/Images/44/166521/dell-inspiron-3576-p63f002n76f-450-600x600.png', 'Thiết kế thanh lịch, trọng lượng khá nhẹ phù hợp cho việc di chuyển hằng ngày đến lớp học, công sở - Laptop Dell Inspiron 3576 i5 8250U được trang bị cấu hình đủ mạnh để chạy tốt các ứng dụng văn phòng, cho phản hồi các thao tác kéo thả trong photoshop, AI khá nhanh rất phù hợp cho sinh viên, nhân viên văn phòng.', 2),
(9, 'Laptop HP Pavilion 14 ce0021TU i3 8130U/4GB/1TB/Win10/(4MF00PA)', 12990000, 'https://cdn.tgdd.vn/Products/Images/44/177638/hp-pavilion-14-ce0021tu-i-4mf00pa-33397-ava1-600x600.jpg', 'Bên cạnh thiết kế mỏng nhẹ, thời trang phù hợp cho việc di chuyển hằng ngày đến công sở, lớp học. Là một chiếc laptop văn phòng - HP Pavilion 14 ce0021TU sở hữu cấu hình vừa đủ mạnh xử lý tốt các ứng dụng văn phòng, đồ hoạ cơ bản cùng mức giá bán hấp dẫn sẽ phù hợp với học sinh, sinh viên hay những người thường xuyên sử dụng với những ứng dụng không quá nặng.', 2),
(10, 'Laptop Asus VivoBook X507UF i5 8250U/4GB/1TB/MX130/Win10 (EJ121T)', 14590000, 'https://cdn.tgdd.vn/Products/Images/44/193516/asus-x507uf-i5-8250u-4gb-1tb-2gb-mx130-ej121t-thumb-2-600x600.jpg', 'Laptop Asus X507UF i5 8250U (EJ121T) được thiết kế hiện đại, thanh lịch. Trọng lượng nhẹ phù hợp cho sinh viên - nhân viên văn phòng khi phải mang vác máy tính hằng ngày đến lớp, công ty. Bên cạnh đó máy được trang bị cấu hình khoẻ để chạy tốt ứng dụng đồ hoạ, chơi game nặng ở mức cơ bản.', 2),
(11, 'Laptop Lenovo Ideapad 330 15IKBR i3 7020U/4GB/1TB/Win10/(81DE00LDVN)\r\n', 9690000, 'https://cdn.tgdd.vn/Products/Images/44/193433/lenovo-ideapad-330-15ikbr-i3-7020u-4gb-1tb-156-win-hinhchitiet-600x600.jpg', 'Là một chiếc laptop sinh viên, bên cạnh thiết kế đơn giản, thanh lịch - Laptop Lenovo Ideapad 330 15IKBR 7020U được trang bị cấu hình khoẻ để chạy tốt ứng dụng văn phòng và đủ mạnh xử lý các thao tác kéo thả trong photoshop rất phù hợp cho sinh viên, nhân viên văn phòng.', 2),
(12, 'Laptop Dell Vostro 3468 i5 7200U/4GB/1TB/Win10', 13790000, 'https://cdn.tgdd.vn/Products/Images/44/90477/dell-vostro-3468-i5-7200u-den-450x300-450x300.png', 'Laptop Dell Vostro 3468 i5 7200U với vẻ ngoài mạnh mẽ, cứng cáp trọng lượng khá nhẹ phù hợp cho việc di chuyển hằng ngày của sinh viên, nhân viên văn phòng. Chiếc \"laptop Dell\" còn mang trong mình cấu hình đủ khoẻ để chạy tốt các ứng dụng đồ hoạ cơ bản, và những trang bị hiện đại như mở khoá vân tay.', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phonenumber` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`email`, `password`, `phonenumber`) VALUES
('admin@gmail.com', '123', '123'),
('user1@gmail.com', '123', '123'),
('user2@gmail.com', '123', '123'),
('ntd@gmail.com', '123', '123'),
('ntd98@gmail.com', '123', '09574231');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `devicetype`
--
ALTER TABLE `devicetype`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `devicetype`
--
ALTER TABLE `devicetype`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
