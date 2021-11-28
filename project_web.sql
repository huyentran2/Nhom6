-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 27, 2021 lúc 12:01 PM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `project_web`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminEmail` varchar(255) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminPass` varchar(255) NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(1, 'Huyen', 'huyen@gamil.com', 'huyenadmin', '12345', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_binhluan`
--

CREATE TABLE `tbl_binhluan` (
  `binhluan_id` int(11) NOT NULL,
  `tenbinhluan` varchar(255) NOT NULL,
  `binhluan` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_binhluan`
--

INSERT INTO `tbl_binhluan` (`binhluan_id`, `tenbinhluan`, `binhluan`, `product_id`, `blog_id`, `image`) VALUES
(1, 'Huyền Chi', 'Đẹp chắc bền', 5, 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) UNSIGNED NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(1, 'OSUN'),
(2, 'ZASAMI'),
(3, 'KING'),
(4, 'ZOCKER SPACE');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) UNSIGNED NOT NULL,
  `sId` varchar(255) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` varchar(200) NOT NULL,
  `quantily` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) UNSIGNED NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(1, 'Máy tập chạy bộ cơ tay'),
(2, 'Máy tập chạy bộ cơ'),
(3, 'Máy tập cơ bụng'),
(4, 'Dụng Cụ Thể Hình'),
(5, 'Phụ Kiện tập Gym'),
(6, 'Thiết bị Thể Thao Ngoài Trời'),
(7, 'Giày,quả bóng đá'),
(8, 'Thiết Bị phục hồi Chức năng'),
(9, 'KHUYẾN MẠI-GIÁ SỐC');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) UNSIGNED NOT NULL,
  `productId` int(11) UNSIGNED NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `zipcode` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zipcode`, `phone`, `email`, `password`) VALUES
(1, 'Trần Thị Huyền', '218 Lĩnh Nam', '10', 'null', '29', '0888007651', '225@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(11) UNSIGNED NOT NULL,
  `productName` varchar(255) NOT NULL,
  `customer_id` int(11) UNSIGNED NOT NULL,
  `quantily` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date_order` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productId`, `productName`, `customer_id`, `quantily`, `price`, `image`, `status`, `date_order`) VALUES
(2, 6, 'Dụng cụ tập bụng giảm mỡ', 1, 1, '1000000', '95aeb21eea.png', 2, '2021-11-24 08:03:11'),
(3, 10, 'Giàn tạ King', 1, 3, '5100000', 'a4206dd069.jpg', 1, '2021-11-24 15:41:36'),
(4, 5, 'Máy chạy bộ điện Zasami KZ  ', 1, 1, '9900000', '7226c862cb.jpg', 0, '2021-11-26 12:32:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` tinytext NOT NULL,
  `catId` int(11) UNSIGNED NOT NULL,
  `brandId` int(11) UNSIGNED NOT NULL,
  `product_desc` text NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`) VALUES
(5, 'Máy chạy bộ điện Zasami KZ  ', 2, 2, '<p>B&ecirc;̀n khỏe đẹp chắc</p>', 0, '9900000', '7226c862cb.jpg'),
(6, 'Dụng cụ tập bụng giảm mỡ', 4, 1, '<p>Hi&ecirc;̣u quả tuy&ecirc;̣t vời</p>', 0, '1000000', '95aeb21eea.png'),
(7, 'Giày Santo Green  ', 7, 4, '<p>Đẹp &ecirc;m chắc</p>', 0, '850000', 'ba3a5f2ab8.jpg'),
(10, 'Giàn tạ King', 4, 3, '<p>Đẹp sang</p>', 1, '1700000', 'a4206dd069.jpg'),
(11, 'Giày Zoker space Trắng ', 7, 4, '<p><span>Gi&agrave;y đ&aacute; b&oacute;ng&nbsp;</span><span>&nbsp;Zocker Space Trắng</span><span>&nbsp;sở hữu rất nhiều ưu điểm của gi&agrave;y đ&aacute; b&oacute;ng s&acirc;n cỏ nh&acirc;n tạo đa năng, ph&ugrave; hợp với cấu tạo b&agrave;n ch&acirc;n của người Việt,&nbsp;cũng như lối chơi linh hoạt.</span></p>\r\n<p>Lớp&nbsp;da PU cao cấp đủ mỏng để cho cảm gi&aacute;c b&oacute;ng ch&acirc;n thật, nhưng cũng đủ d&agrave;y để bảo vệ tốt cho đ&ocirc;i ch&acirc;n của cầu thủ.</p>\r\n<p>Bề mặt da sử&nbsp;dụng c&ocirc;ng nghệ 3D, tạo độ nh&aacute;m l&yacute; tưởng, gi&uacute;p xử l&yacute; b&oacute;ng d&iacute;nh b&oacute;ng, thật ch&acirc;n.</p>\r\n<p>&nbsp;</p>\r\n<p>Mũi gi&agrave;y gia cố&nbsp;c&aacute;c đường chỉ định h&igrave;nh được may chắc chắn; Tạo h&igrave;nh quả &ocirc; van gi&uacute;p tăng cường khả năng kiểm so&aacute;t b&oacute;ng, hỗ trợ s&uacute;t b&oacute;ng bằng mu b&agrave;n ch&acirc;n.</p>\r\n<p>G&oacute;t gi&agrave;y&nbsp;th&ecirc;m&nbsp;lớp đệm, tạo ra sự bảo vệ cần thiết cho phần g&oacute;t, đồng thời tăng cường lực khi thực hiện chuyền, giật g&oacute;t.</p>\r\n<p>&nbsp;</p>\r\n<p>Đế gi&agrave;y từ&nbsp;cao su nguy&ecirc;n chất, cho độ đ&agrave;n hồi l&yacute; tưởng, trụ vững tr&ecirc;n bề mặt s&acirc;n cỏ nh&acirc;n tạo.</p>\r\n<p>Hệ thống đinh được thiết kế khoa học, kết hợp giữa c&aacute;c r&atilde;nh xẻ v&agrave; hệ thống đinh dăm TF được ph&acirc;n bổ đều khắp bề mặt đế. Đinh dăm tr&ograve;n được bố tr&iacute; song song với đinh h&igrave;nh ng&ocirc;i sao 3 c&aacute;nh đem đến những ưu điểm vượt trội trong luyện tập v&agrave; thi đấu: Đinh tr&ograve;n gi&uacute;p tăng tốc nhanh, trong khi đinh h&igrave;nh ng&ocirc;i sao hỗ trợ người mang gi&agrave;y kh&ocirc;ng bị ngừng đột ngột khi v&agrave;o b&oacute;ng, giảm nguy cơ bị chấn thương lật cổ ch&acirc;n.</p>', 1, '550000', 'f923f53dfc.jpg'),
(12, 'Xe đạp đơn     ', 6, 3, '<p>Đơn giản gọn ti&ecirc;̣n</p>', 1, '2000000', 'e0ecb6586c.jpg'),
(13, 'Đai lưng tập gym  ', 5, 2, '<p><span>Được thiết kế gi&uacute;p bạn bảo vệ, phần dưới của cột sống. Khi tập c&aacute;c động t&aacute;c kh&oacute;, v&agrave; nặng như n&acirc;ng tạ, sẽ gi&uacute;p cơ ho&agrave;nh, cơ cột sống co v&agrave; cứng để bảo vệ sức &eacute;p b&ecirc;n trong bụng.</span></p>\r\n<p><span><span>Khi mang đai lưng tập GYM, gi&uacute;p bạn tự tin hơn, thoải m&aacute;i hơn để tập cường độ cao hơn m&agrave; kh&ocirc;ng sợ bị chấn thương.</span></span></p>', 1, '290000', 'ab9450935d.jpg'),
(14, 'Giày đá bóng Đỏ ', 7, 4, '<p><span>Gi&agrave;y đ&aacute; b&oacute;ng Zocker Space Đỏ</span><span>&nbsp;l&agrave; một trong ba gam m&agrave;u mới của d&ograve;ng Space, được Zocker giới thiệu trong nửa đầu năm 2021.</span></p>\r\n<p><span>Gi&agrave;y sử dụng chất liệu da PU cao cấp, với độ mỏng vừa phải, cho cảm gi&aacute;c b&oacute;ng tốt, đồng thời đảm bảo an to&agrave;n cho đ&ocirc;i ch&acirc;n. Bề mặt da được xử l&yacute; 3D tạo độ nh&aacute;m, tăng cường khả năng kiểm so&aacute;t b&oacute;ng.</span></p>', 1, '550000', '541aff318e.jpg'),
(15, 'Giàn tạ đa năng   ', 4, 3, '<p><a href=\"https://www.thethaodaiviet.vn/gian-ta-da-nang-3-vi-tri-kz-82.html\"><em><span>Gi&agrave;n tạ đa năng 3 vị tr&iacute; KZ-82</span></em></a><span>&nbsp;sở hữu thiết kế tinh tế&nbsp;nhưng lại c&oacute; thể tập được nhiều động t&aacute;c kh&aacute;c nhau mang lại cho người tập th&acirc;n h&igrave;nh ho&agrave;n hảo. C&oacute; gi&agrave;n tạ KZ-82 bạn sẽ kh&ocirc;ng phải đến ph&ograve;ng tập, tiết kiệm thời gian m&agrave; vẫn c&oacute; body săn chắc</span></p>\r\n<p><span><span>Chức năng tập luyện: Phối hợp được nhiều b&agrave;i tập kh&aacute;c nhau, theo từng nh&oacute;m cơ cụ thể như tập vai, &eacute;p ngực, đạp đ&ugrave;i, k&eacute;o x&ocirc; ngắn, k&eacute;o x&ocirc; d&agrave;i, tập ch&acirc;n, tay, thắt lưng v&agrave; c&aacute;c nh&oacute;m cơ kh&aacute;c&hellip;</span></span></p>', 0, '18000000', '3563b85896.jpg'),
(16, 'Thảm tập Yoga', 5, 3, '<p><span>Thảm tập yoga chống trơn trượt, Thảm tập gym TPE cao cấp d&agrave;y 6mm, 8mm kh&ocirc;ng m&ugrave;i,độ b&aacute;m tốt</span></p>', 1, '50000', 'd8942b1131.jpg'),
(17, 'Máy tập gym đa năng', 8, 2, '<p><span>M&Aacute;Y TẬP GYM ĐA NĂNG LUX SPORT S6 l&agrave; mẫu m&aacute;y tập cơ bụng đời mới hiện nay, m&aacute;y được cải tiến với những ưu điểm nổi bật như c&oacute; thể tập gập bụng, c&oacute; đồng hồ đo c&aacute;c th&ocirc;ng số...</span></p>', 1, '1950000', '0ffe9f0b74.jpg'),
(18, 'Con lăn tập cơ bụng', 3, 2, '<p><span>Con lăn tập cơ bụng - Chất liệu nhựa , kim loại v&agrave; m&uacute;t xốp. - M&agrave;u sắc xanh l&aacute; kết hợp đen. - K&iacute;ch thước dụng cụ 24 x 18 cm đường k&iacute;nh b&aacute;nh x chiều d&agrave;i</span></p>', 1, '100000', 'babbf85124.jpg'),
(19, 'Kìm tập cơ', 5, 2, '<p>Giúp luy&ecirc;̣n cơ tay săn chắc</p>', 1, '1500000', '49e7309c15.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `sliderId` int(11) NOT NULL,
  `sliderName` varchar(255) NOT NULL,
  `slider_image` varchar(255) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) UNSIGNED NOT NULL,
  `productId` int(11) UNSIGNED NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Chỉ mục cho bảng `tbl_binhluan`
--
ALTER TABLE `tbl_binhluan`
  ADD PRIMARY KEY (`binhluan_id`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`),
  ADD KEY `productId` (`productId`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Chỉ mục cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`,`productId`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productId` (`productId`,`customer_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`),
  ADD KEY `catId` (`catId`,`brandId`),
  ADD KEY `brandId` (`brandId`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`sliderId`);

--
-- Chỉ mục cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`,`productId`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_binhluan`
--
ALTER TABLE `tbl_binhluan`
  MODIFY `binhluan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `sliderId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `tbl_cart_ibfk_1` FOREIGN KEY (`cartId`) REFERENCES `tbl_product` (`productId`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD CONSTRAINT `tbl_compare_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`catId`) REFERENCES `tbl_category` (`catId`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_product_ibfk_2` FOREIGN KEY (`brandId`) REFERENCES `tbl_brand` (`brandId`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD CONSTRAINT `tbl_wishlist_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
