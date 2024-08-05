-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th8 04, 2024 lúc 02:37 PM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `du_an_1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `address`
--

CREATE TABLE `address` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `adr` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `priority` int DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `address`
--

INSERT INTO `address` (`id`, `user_id`, `adr`, `priority`) VALUES
(24, 3, 'Hà Nội', 1),
(25, 1, 'Nghẹ An', 1),
(26, 6, 'Thái Hòa, Nghệ An', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `pro_id` int NOT NULL,
  `size_id` int NOT NULL,
  `var_id` int NOT NULL,
  `quantity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `pro_id`, `size_id`, `var_id`, `quantity`) VALUES
(151, 1, 3, 1, 7, 1),
(152, 31, 2, 2, 5, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `thumbnail`) VALUES
(1, 'Bánh mì', 'banh-mi.png'),
(2, 'Bánh Ngọt', 'banh-ngot.jpg'),
(3, 'Bánh sinh nhật', 'banh-sinh-nhat.jpg'),
(4, 'Bánh nướng', NULL),
(5, 'Bánh kem', NULL),
(6, 'Bánh bao', NULL),
(7, 'Bánh trung thu', 'banh-trung-thu.jpq');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `od_id` int NOT NULL,
  `user_id` int NOT NULL,
  `pro_id` int NOT NULL,
  `size_id` int NOT NULL,
  `var_id` int NOT NULL,
  `quantity` int NOT NULL,
  `adr_id` int NOT NULL,
  `request` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `payment_method` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `status` enum('Đang xử lý','Đã giao hàng','Đã hủy') COLLATE utf8mb4_general_ci DEFAULT 'Đang xử lý',
  `day` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `od_id`, `user_id`, `pro_id`, `size_id`, `var_id`, `quantity`, `adr_id`, `request`, `payment_method`, `status`, `day`) VALUES
(109, 82, 1, 2, 1, 131, 2, 25, '', 'Thanh toán', 'Đã giao hàng', '2023-12-12 20:18:43'),
(110, 83, 1, 2, 1, 134, 2, 25, '', 'Thanh toán khi nhận hàng', 'Đã hủy', '2023-12-12 20:25:52'),
(111, 84, 1, 3, 1, 135, 2, 25, '', 'Thanh toán khi nhận hàng', 'Đã giao hàng', '2023-12-12 20:26:03'),
(112, 85, 1, 7, 1, 136, 2, 25, '', 'Thanh toán khi nhận hàng', 'Đã giao hàng', '2023-12-12 20:54:03'),
(113, 86, 1, 13, 1, 138, 2, 25, '', 'Thanh toán khi nhận hàng', 'Đã hủy', '2023-12-12 20:54:22'),
(114, 87, 1, 2, 1, 139, 3, 25, '', 'Thanh toán khi nhận hàng', 'Đã giao hàng', '2023-12-12 21:06:51'),
(115, 88, 1, 6, 3, 141, 1, 25, '', 'Thanh toán khi nhận hàng', 'Đã giao hàng', '2023-12-12 21:33:19'),
(116, 88, 1, 6, 1, 140, 1, 25, '', 'Thanh toán khi nhận hàng', 'Đã giao hàng', '2023-12-12 21:33:19'),
(117, 89, 1, 6, 2, 143, 2, 25, '', 'Thanh toán khi nhận hàng', 'Đã giao hàng', '2023-12-12 21:37:46'),
(118, 89, 1, 6, 1, 142, 1, 25, '', 'Thanh toán khi nhận hàng', 'Đã giao hàng', '2023-12-12 21:37:46'),
(119, 90, 5, 2, 1, 144, 1, 25, '', 'Thanh toán khi nhận hàng', 'Đã giao hàng', '2023-12-12 21:55:45'),
(120, 91, 6, 2, 1, 145, 2, 26, '', 'Thanh toán khi nhận hàng', 'Đã giao hàng', '2023-12-12 22:16:27'),
(121, 92, 1, 4, 1, 147, 5, 25, 'ít đá em nhé', 'Thanh toán khi nhận hàng', 'Đã giao hàng', '2024-06-30 23:03:52'),
(122, 92, 1, 2, 3, 146, 1, 25, 'ít đá em nhé', 'Thanh toán khi nhận hàng', 'Đã giao hàng', '2024-06-30 23:03:52'),
(123, 93, 1, 3, 3, 148, 2, 25, '', 'Thanh toán Chuyển khoản', 'Đang xử lý', '2024-07-05 14:40:46'),
(124, 94, 1, 3, 1, 150, 2, 25, '', 'Thanh toán khi nhận hàng', 'Đang xử lý', '2024-07-10 09:38:38'),
(125, 94, 1, 3, 3, 149, 3, 25, '', 'Thanh toán khi nhận hàng', 'Đang xử lý', '2024-07-10 09:38:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `fact` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `id_categ` int NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'on'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `img`, `fact`, `id_categ`, `status`) VALUES
(1, 'FFeen Đen', 'pro_1.jpg', 'Cà phê Đen thường được phục vụ thêm đường bên cạnh, tuy nhiên theo cánh cà phê thủ phải uống Đen đá không đường mới chứng tỏ được bản lĩnh đàn ông.', 1, 'on'),
(2, 'FFeen Espresso', 'pro_2.jpg', 'Ở những quán cà phê Ý truyền thống, bạn sẽ không order một ly Espresso mà đơn giản chỉ order caffè vì với người Ý,caffè nghĩa là Espresso.', 1, 'on'),
(3, 'FFeen Americano', 'pro_3.jpg', '“…Khi Captian America muốn cà phê Ý có hương vị quê nhà. Đó là lúc Americano ra đời…”', 1, 'on'),
(4, 'Co-ffeen Latte', 'pro_4.jpg', 'Latte và Capuchino đều được tạo ra từ Espresso, đố bạn biết chúng khác nhau chỗ nào..', 1, 'on'),
(5, 'FFeen Cappuccino', 'pro_5.jpg', 'Ngày mùng 8/11 hằng năm được coi là ngày quốc tế Cappuccino', 1, 'on'),
(6, 'Co-ffeen Mocha', 'pro_6.jpg', 'Đôi khi ở một số nơi, lớp sốt chocolate có thể bị đọng lại ở đáy cốc, nên trước khi uống bạn nên lấy thìa khuấy nhẹ đáy cốc lên nhé.', 1, 'on'),
(7, 'Co-ffeen Trứng', 'pro_7.jpg', 'Nếu ở Ý nổi tiếng với Espresso hay Cappuccino, thì ở Việt Nam chúng ta có Cà phê trứng.', 1, 'on'),
(8, 'FFeen Cốt Dừa', 'pro_8.jpg', 'Khách quốc tế nghĩ là không thể uống cà phê với quà dừa... No no, Việt Nam chúng tôi không nghĩ thế.', 1, 'on'),
(9, 'Co-feen Xỉu Bạc', 'pro_9.jpg', 'Chúng ta bước vào quán order một ly bạc xỉu mà không cần nhìn menu, vì ta biết nó là thứ đồ rẻ nhất trong của hàng.', 1, 'on'),
(10, 'Ô long nhài sữa', 'pro_10.jpg', '', 2, 'on'),
(11, 'Ô long sữa dừa', 'pro_11.jpg', '', 2, 'on'),
(12, 'Matcha Đá xay', 'pro_12.jpg', '', 2, 'on'),
(13, 'Matcha Latte', 'pro_13.jpg', '', 2, 'on'),
(17, 'sp test', 'ccc.jpg', 'asdfghj', 2, 'on'),
(18, 'vsdvsdv', 'NNjAerZA3kMYS3YwyKWQuwst1mWm8ayuFrFQcRjF.webp', 'dvvas', 1, 'on'),
(19, 'sp test', 'ccc.jpg', 'asdfghj', 2, 'on'),
(20, 'sp test', 'ccc.jpg', 'asdfghj', 2, 'on'),
(21, 'sp test', 'ccc.jpg', 'asdfghj', 2, 'on'),
(22, 'vsdvsdv', 'NNjAerZA3kMYS3YwyKWQuwst1mWm8ayuFrFQcRjF.webp', 'dvvas', 1, 'off'),
(23, 'test', 'OsnaTBa6MLh6HQvt5Tx6aV2IXwy5zREUCSNIowS6.webp', 'ccccc', 2, 'on'),
(24, 'test', 'OsnaTBa6MLh6HQvt5Tx6aV2IXwy5zREUCSNIowS6.webp', 'ccccc', 2, 'on'),
(25, 'sp test', 'ccc.jpg', 'asdfghj', 2, 'on'),
(26, 'sp test', 'OsnaTBa6MLh6HQvt5Tx6aV2IXwy5zREUCSNIowS6.webp', 'sfghjklc', 2, 'on'),
(27, 'sp test 2', 'sp1.jpg', 'jhgf', 3, 'on'),
(28, 'sp test 3 update', 'vn-11134207-7r98o-ly2mk5h3xlnd16.jpg', 'âsváváváváv', 3, 'on');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rates`
--

CREATE TABLE `rates` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `pro_id` int NOT NULL,
  `vote` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `rates`
--

INSERT INTO `rates` (`id`, `user_id`, `pro_id`, `vote`) VALUES
(46, 1, 2, 5),
(47, 1, 3, 4),
(48, 1, 7, 3),
(49, 1, 2, 1),
(50, 1, 6, 5),
(51, 1, 6, 4),
(53, 1, 6, 5),
(54, 5, 2, 0),
(55, 6, 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_member`
--

CREATE TABLE `role_member` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `role_member`
--

INSERT INTO `role_member` (`id`, `name`) VALUES
(0, 'Khách Hàng'),
(1, 'Admin'),
(2, 'Quản lý sản phẩm'),
(4, 'Quản lý đơn hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sizes`
--

CREATE TABLE `sizes` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sizes`
--

INSERT INTO `sizes` (`id`, `name`) VALUES
(1, '16cm'),
(2, '20cm'),
(3, '24cm');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `total_order`
--

CREATE TABLE `total_order` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `voucher_id` int NOT NULL,
  `total_price` int NOT NULL,
  `total_payment` int NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `total_order`
--

INSERT INTO `total_order` (`id`, `user_id`, `voucher_id`, `total_price`, `total_payment`, `date`) VALUES
(82, 1, 0, 100, 100, '2023-12-12 20:18:43'),
(83, 1, 0, 100, 100, '2023-12-12 20:25:52'),
(84, 1, 0, 100, 100, '2023-12-12 20:26:03'),
(85, 1, 0, 100, 100, '2023-12-12 20:54:03'),
(86, 1, 0, 100, 100, '2023-12-12 20:54:22'),
(87, 1, 0, 150, 150, '2023-12-12 21:06:51'),
(88, 1, 0, 120, 120, '2023-12-12 21:33:19'),
(89, 1, 0, 170, 170, '2023-12-12 21:37:46'),
(90, 5, 0, 50, 50, '2023-12-12 21:55:45'),
(91, 6, 0, 100, 100, '2023-12-12 22:16:27'),
(92, 1, 5, 370, 315, '2024-06-30 23:03:52'),
(93, 1, 0, 140, 140, '2024-07-05 14:40:46'),
(94, 1, 0, 310, 310, '2024-07-10 09:38:38'),
(95, 31, 0, 120, 120, '2024-08-04 16:49:08'),
(96, 31, 0, 120, 120, '2024-08-04 16:49:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_general_ci DEFAULT 'on',
  `role` int NOT NULL DEFAULT '0',
  `verification_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `token_expires_at` datetime DEFAULT NULL,
  `verified` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `name`, `phone`, `avatar`, `status`, `role`, `verification_token`, `token_expires_at`, `verified`) VALUES
(4, 'admin', '$2y$10$M80wQcW0q8sWsadXpADq1ux2MGMemDe2KjeMFUKy9AJtDFP7XYtp.', 'admin@gmail.com', '', '', '', 'on', 1, NULL, NULL, 1),
(15, 'testttt', '$2y$10$d0odNavZ2kr.DXMwQibBB.Er3520Xt2q3bCVgaLZlJZ/Ckk4.kpYq', 'tuddaph43370@fpt.edu.vn', '', '', 'Screenshot (15).png', 'off', 0, NULL, NULL, 1),
(31, 'tusdz', '$2y$10$9FwySyB2PS9pWs.KIDf3i.nkR0Nii/vv1YmSoNqedQsaRgtc4rMhq', 'gpttuonthi123@gmail.com', NULL, NULL, NULL, 'on', 0, NULL, NULL, 1),
(32, 'tus204', '$2y$10$PZVeJNx.66T3lqND.CbH6.JC65XHm1nfvnOsChknqtvehr0b1Wed.', 'tuwtf2605@gmail.com', NULL, NULL, NULL, 'on', 0, '292528b7722d9219129b9cc250af72f9ac9070483d3f943230878a67f39cdb4b', '2024-08-04 14:56:57', 1),
(37, 'bsdbsdsb', '$2y$10$ASbS59WWZv/UhDL51jIf2uxxoZTPCByDXm5sfcwtnOlodW0C3hKsK', NULL, NULL, NULL, NULL, 'off', 0, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_voucher`
--

CREATE TABLE `user_voucher` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `voucher_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_voucher`
--

INSERT INTO `user_voucher` (`id`, `user_id`, `voucher_id`) VALUES
(4, 1, 2),
(19, 2, 4),
(20, 2, 3),
(21, 1, 1),
(22, 1, 3),
(24, 5, 3),
(25, 31, 1),
(26, 31, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `variants`
--

CREATE TABLE `variants` (
  `id` int NOT NULL,
  `pro_id` int NOT NULL,
  `size_id` int NOT NULL,
  `price` decimal(10,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `variants`
--

INSERT INTO `variants` (`id`, `pro_id`, `size_id`, `price`) VALUES
(1, 1, 1, 50.000),
(2, 1, 2, 60.000),
(3, 1, 3, 70.000),
(4, 2, 1, 50.000),
(5, 2, 2, 60.000),
(6, 2, 3, 70.000),
(7, 3, 1, 50.000),
(8, 3, 2, 60.000),
(9, 3, 3, 70.000),
(10, 4, 1, 60.000),
(11, 4, 2, 75.000),
(12, 4, 3, 80.000),
(13, 5, 1, 50.000),
(14, 5, 2, 60.000),
(15, 5, 3, 70.000),
(16, 6, 1, 50.000),
(17, 6, 2, 60.000),
(18, 6, 3, 70.000),
(19, 7, 1, 50.000),
(20, 7, 2, 60.000),
(21, 7, 3, 70.000),
(22, 8, 1, 50.000),
(23, 8, 2, 60.000),
(24, 8, 3, 70.000),
(25, 9, 1, 50.000),
(26, 9, 2, 60.000),
(27, 9, 3, 70.000),
(28, 10, 1, 50.000),
(29, 10, 2, 60.000),
(30, 10, 3, 70.000),
(31, 11, 1, 50.000),
(32, 11, 2, 60.000),
(33, 11, 3, 70.000),
(34, 12, 1, 50.000),
(35, 12, 2, 60.000),
(36, 12, 3, 70.000),
(37, 13, 1, 50.000),
(38, 13, 2, 60.000),
(39, 13, 3, 70.000),
(49, 18, 1, 23.000),
(50, 18, 2, 34.000),
(51, 18, 3, 23.000),
(52, 22, 1, 23.000),
(53, 22, 2, 34.000),
(54, 22, 3, 43.000),
(55, 23, 1, 24.000),
(56, 23, 2, 45.000),
(57, 23, 3, 67.000),
(58, 24, 1, 24.000),
(59, 24, 2, 45.000),
(60, 24, 3, 67.000),
(61, 25, 1, 23.000),
(62, 25, 2, 12.000),
(63, 25, 3, 32.000),
(64, 26, 1, 12.000),
(65, 26, 2, 23.000),
(66, 26, 3, 34.000),
(67, 27, 1, 2.000),
(68, 27, 2, 3.000),
(69, 27, 3, 7.000),
(70, 28, 1, 12.000),
(71, 28, 2, 23.000),
(72, 28, 3, 32.000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `voucher`
--

CREATE TABLE `voucher` (
  `id` int NOT NULL,
  `value` int NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `voucher`
--

INSERT INTO `voucher` (`id`, `value`, `type`) VALUES
(1, 20, 'percent'),
(2, 20, 'fixed'),
(3, 50, 'fixed'),
(4, 10, 'fixed'),
(5, 15, 'percent'),
(8, 0, ''),
(9, 0, ''),
(10, 20, 'percent'),
(11, 20, 'fixed'),
(12, 20, 'fixed'),
(13, 99, 'percent');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `carts_ibfk_2` (`size_id`),
  ADD KEY `carts_ibfk_3` (`pro_id`),
  ADD KEY `carts_ibfk_4` (`var_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `var_id` (`var_id`),
  ADD KEY `adr_id` (`adr_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categ` (`id_categ`);

--
-- Chỉ mục cho bảng `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `pro_id` (`pro_id`);

--
-- Chỉ mục cho bảng `role_member`
--
ALTER TABLE `role_member`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `total_order`
--
ALTER TABLE `total_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_voucher`
--
ALTER TABLE `user_voucher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `voucher_id` (`voucher_id`);

--
-- Chỉ mục cho bảng `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pro_id` (`pro_id`),
  ADD KEY `size_id` (`size_id`);

--
-- Chỉ mục cho bảng `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `address`
--
ALTER TABLE `address`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `rates`
--
ALTER TABLE `rates`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `total_order`
--
ALTER TABLE `total_order`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `user_voucher`
--
ALTER TABLE `user_voucher`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `variants`
--
ALTER TABLE `variants`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT cho bảng `voucher`
--
ALTER TABLE `voucher`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `variants`
--
ALTER TABLE `variants`
  ADD CONSTRAINT `fk_pro_id` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
