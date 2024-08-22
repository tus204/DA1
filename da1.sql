-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th8 14, 2024 lúc 03:46 AM
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
-- Cơ sở dữ liệu: `da1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `image`, `title`, `status`) VALUES
(2, 'moon-cake.jpg', 'banner 2', 1),
(6, 'banner-cake-3.jpeg', 'banner 3', 1),
(7, 'banner-cake-2.jpg', 'banner 1', 1),
(8, 'banner-cake-4.jpg', 'banner 4', 1),
(9, 'banner-cake-5.jpg', 'banner 5', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `cart_id` int NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_price` int NOT NULL,
  `product_quantity` int NOT NULL,
  `product_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`cart_id`, `product_id`, `user_id`, `product_name`, `product_price`, `product_quantity`, `product_image`) VALUES
(185, 28, 17, 'Bánh hoa tulip', 180000, 1, 'vn-11134207-7r98o-lnwi5ma4ep657a.jpg'),
(200, 2, 16, 'Bánh Kem Trang Trí Tiệc Cưới 3 Tầng Sang Trọng Gía Tại Xưởng Chất Liệu Formek Bên', 650000, 1, 'banhkem-2.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `category_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `image`, `status`) VALUES
(1, 'Chưa có danh mục', 'default-product.jpg', 0),
(2, 'Bánh Trung Thu', 'moon-cake.jpg', 1),
(4, 'Bánh Kem', 'banh-kem.jpg', 1),
(6, 'Bánh Quy', 'banh-quy.jpg', 1),
(16, 'Bánh Bông Lan', 'banh-bong-lan.jpg', 1),
(17, 'Bánh Mì', 'Fresh_bakery_promo_2_0.jpg', 1),
(20, 'Bánh Donut', 'banh-donut.jpg', 1),
(23, 'test', 'banner-main-3.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `comment_id` int NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 ẩn 1 hiện',
  `user_id` int NOT NULL,
  `product_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`comment_id`, `content`, `date`, `status`, `user_id`, `product_id`) VALUES
(11, 'được', '2024-08-07 06:30:05', 1, 16, 30),
(12, 'okela', '2024-08-07 08:22:14', 0, 16, 26),
(13, 'được\r\n', '2024-08-12 12:22:08', 1, 15, 29),
(14, 'được e', '2024-08-14 08:02:51', 1, 16, 28);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderdetails_id` int NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orderdetails`
--

INSERT INTO `orderdetails` (`orderdetails_id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(101, 51, 29, 2, 50000),
(102, 51, 30, 1, 102000),
(103, 52, 30, 1, 102000),
(104, 53, 29, 1, 50000),
(105, 54, 29, 1, 50000),
(106, 55, 26, 2, 200000),
(107, 56, 26, 1, 200000),
(108, 57, 26, 4, 200000),
(110, 59, 24, 1, 120000),
(111, 59, 30, 1, 102000),
(112, 60, 15, 2, 95000),
(113, 61, 29, 5, 50000),
(114, 62, 23, 1, 120000),
(115, 62, 30, 1, 102000),
(116, 62, 24, 1, 120000),
(117, 63, 2, 1, 650000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `user_id` int NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total` int NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `date`, `total`, `address`, `phone`, `note`, `status`) VALUES
(51, 16, '2024-08-07 06:08:28', 202000, 'Mỹ Đình, HN', '0974566306', 'giao cẩn thận nhé', 4),
(52, 16, '2024-07-28 06:33:47', 102000, 'Ha Noi', '0987654312', '', 2),
(53, 16, '2024-08-01 06:43:26', 50000, 'Ha Noi', '0987654312', '', 5),
(54, 16, '2024-08-12 06:55:38', 50000, 'Mỹ Đình, HN', '0974566306', '', 4),
(55, 16, '2024-08-07 08:24:08', 400000, 'Mỹ Đình, HN', '0974566306', '', 4),
(56, 16, '2024-08-01 08:29:14', 200000, 'Mỹ Đình, HN', '0974566306', '', 4),
(57, 16, '2024-07-28 08:30:47', 800000, 'Mỹ Đình, HN', '0974566306', '', 4),
(58, 15, '2024-08-12 11:51:49', 126000, 'Ha Noi', '0976542314', '', 4),
(59, 16, '2024-08-13 20:37:49', 222000, 'Mỹ Đình, HN', '0974566306', '', 3),
(60, 16, '2024-08-14 07:35:52', 190000, 'Mỹ Đình, HN', '0974566306', 'giao cẩn thận nhé', 5),
(61, 16, '2024-08-14 08:14:40', 250000, 'Hàm Lợn', '0987654321', 'chưa có', 5),
(62, 16, '2024-08-14 09:21:52', 342000, 'Mỹ Đình, HN', '0974566306', '', 1),
(63, 16, '2024-08-14 09:50:14', 650000, 'Mỹ Đình, HN', '0974566306', 'hehe', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `post_id` int NOT NULL,
  `category_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `views` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`post_id`, `category_id`, `title`, `image`, `author`, `content`, `views`, `status`, `created_at`, `updated_at`) VALUES
(1, 9, 'Top các loại bánh ngọt ngon nhất thế giới bạn nên thử một lần', 'post1.jpg', 'Admin', '<p>Bạn là người yêu thích những món bánh mềm, ngọt ngào và thơm ngon. Luôn muốn tìm hiểu và thưởng thức những loại bánh ngon nổi tiếng&nbsp; thì không thể bỏ qua chia sẻ về <strong>top những loại bánh ngọt ngon nhất Thế giới </strong>ngay dưới đây.</p><p>Bánh ngọt là một món ăn với hình thức bánh được làm từ bột qua quá trình nhào nặn và nướng lên để làm món tráng miệng. Bánh ngọt được chia thành rất nhiều loại, phân biệt nhờ nguyên liệu, kỹ thuật chế biến và hình dáng của bánh. Bánh thường được phục vụ cho các mục đích như: Sinh nhật, cưới hỏi, giáng sinh, quà tặng bạn bè,… Dưới đây là <strong>top những loại bánh ngon nhất thế giới </strong>mà bạn nên nếm thử một lần trong đời nếu có cơ hội.</p><h2><strong>Bánh Cheesecake – Món tráng miệng hoàn hảo</strong></h2><p>Cheesecake là loại bánh ngọt được làm chủ yếu phô mai nên thường có vị béo ngậy đặc trưng. Phía trên bánh thường được phủ thêm một lớp mứt hoa quả rất thơm ngon và hấp dẫn.</p><p><img src=\"https://www.maythucphamxanh.vn/storage/44/xg/44xgk76qxmfyb4v8jpshdspst3y3_1.-Top-nh%E1%BB%AFng-lo%E1%BA%A1i-b%C3%A1nh-ng%E1%BB%8Dt-ngon-nh%E1%BA%A5t-th%E1%BA%BF-gi%E1%BB%9Bi-1-300x225.jpg\" alt=\"Bánh cheeseCake \" width=\"300\" height=\"225\"></p><p>Bánh cheeseCake phủ mứt rất hấp dẫn.</p><p>Chiếc bánh pho mát kem được ra đời từ những năm 1800 và trở thành một trong những món ăn không thể thiếu của người dân New York.</p><h3><strong>Bánh Tiramisu – Vị ngon từ nước Ý</strong></h3><p>Tiramisu là loại bánh ngọt khá quen thuộc tại Việt Nam nhưng ít ai hiểu rõ về loại bánh ngọt này. Bánh lọt <strong>top những loại bánh ngon nhất thế giới </strong>bởi vì nó mang vị cà phê rất thơm ngon đến từ Italy.</p><p><img src=\"https://www.maythucphamxanh.vn/storage/k0/9l/k09lp82ejodg60b9q6hkazq2s52y_2.-Top-nh%E1%BB%AFng-lo%E1%BA%A1i-b%C3%A1nh-ng%E1%BB%8Dt-ngon-nh%E1%BA%A5t-th%E1%BA%BF-gi%E1%BB%9Bi-300x169.jpg\" width=\"300\" height=\"169\"></p><p>Tiramisu còn mang cái tên khác “ Thiên đường ở trong miệng”.</p><p>Tiramisu bao gồm các lớp bánh quy Savoiardi nướng và cà phê xen kẽ với hỗn hợp trứng, đường, pho mai mascarpone đánh bông, bột ca cao. Khi ăn bạn sẽ cảm nhận được mùi thơm của ca cao, vị béo ngậy của trứng và pho mai rất ngon và chưa nhiều dinh dưỡng.</p><blockquote><p><i><strong>Xem thêm: </strong></i><a href=\"https://maythucphamxanh.vn/s/may-tron-bot-lam-banh-7kg-tron-bot-mi-2-motor\"><i><strong>Máy trộn bột làm bánh giá rẻ 7KG</strong></i></a></p></blockquote><h3><strong>Swedish Princess – Món bánh truyền thống từ Thuỵ Điển</strong></h3><p>Đây là một loại bánh có vị ngọt ngào như chính cái tên của nó vậy. Nguồn gốc xuất xứ của Swedish Princess là từ đất nước Thuỵ điển nổi tiếng. Trước đây ở Thuỵ điển bánh Swedish Princess chỉ dành cho hoàng gia, quý tộc.</p><p><img src=\"https://www.maythucphamxanh.vn/storage/87/o3/87o3pp98kh4lhv0ol9ixrvabqnyg_3.-Top-nh%E1%BB%AFng-lo%E1%BA%A1i-b%C3%A1nh-ng%E1%BB%8Dt-ngon-nh%E1%BA%A5t-th%E1%BA%BF-gi%E1%BB%9Bi-1.jpg\" alt=\"Swedish Prince\" width=\"275\" height=\"183\"></p><p>Swedish Prince được rất nhiều người yêu thích.</p><p>Bánh được làm từ mứt, trứng, sữa, kem và cốt bánh bông lan. Ngoài ra, bánh còn được bảo phủ một lớp hạnh nhân màu xanh rất mát mặt và cuốn hút mọi ánh nhìn.</p><h3><strong>Macaron – Hương vị từ nước Pháp</strong></h3><p>Đây là loại bánh có nguồn gốc xuất xứ từ nước Pháp, với các thành phần chủ yếu từ trứng gà, đường bột, đường cát, bột hạnh nhân và màu thực phẩm. Bánh thường có hình tròn, gồm hai và ba lớp xếp lên nhau trông rất đẹp mắt.</p><p><img src=\"https://www.maythucphamxanh.vn/storage/sz/dr/szdrb4d5bnmyqh5agibps9u5b767_4.-Top-nh%E1%BB%AFng-lo%E1%BA%A1i-b%C3%A1nh-ng%E1%BB%8Dt-ngon-nh%E1%BA%A5t-th%E1%BA%BF-gi%E1%BB%9Bi.jpg\" alt=\"Macaron\" width=\"600\" height=\"400\"></p><p>Hình ảnh bánh Macaron.</p><p>Bên trong bánh thường có lớp nhân được làm từ các loại mứt, chocolate hoặc kem bơ tạo cho bánh độ mềm, béo. Thông thường, Macaron rất đa dạng về màu sắc và hương vị giúp người ăn thoải mái lựa chọn theo sở thích của bản thân.</p><p>Trên đây là Top các loại bánh ngọt ngon nhất thế giới được nhiều người yêu thích sử dụng vào mỗi bữa sáng hay các bữa tráng miệng. Hy vọng các bạn sẽ được thử hết các loại bánh này và tìm ra đâu là loại bánh mình yêu thích nhất nhé.</p><p>Bên cạnh đó bạn rất yêu thích bánh ngọt và luôn muốn tự tay làm ra những chiếc bánh ngọt ngon nhất Thế giới nhất định không thể không sắm ngay cho mình chiếc <a href=\"https://maythucphamxanh.vn/may-nghien-bot-sieu-min-cong-suat-lon.htm\">máy nghiền bột siêu mịn</a> vô cùng tiện lợi và giúp cho công việc làm bánh trở nên đơn giản hơn.</p>', 0, 1, '2023-11-29 17:13:09', '2024-08-14 08:22:15'),
(5, 2, 'Tổng hợp các loại bánh truyền thống Việt Nam cực ngon lại dễ làm', 'post2.jpg', 'Admin', '<h3><strong>1. Bánh chưng</strong></h3><p>Bánh chưng là một <a href=\"https://www.dienmayxanh.com/vao-bep/mon-banh\">món bánh</a> đặc trưng gắn liền với văn hóa ẩm thực Việt Nam, thường xuất hiện trong những <a href=\"https://www.dienmayxanh.com/vao-bep/ngay-le-tet\">ngày lễ tết</a>. Sự khéo léo từ cách làm nhân nhị, cách gói lá tạo hình vuông vức và cách nấu kì công tạo nên một món bánh thơm ngon với phần gạo nếp mềm dẻo, lớp nhân với thịt mỡ béo ngậy hòa quyện cùng đậu xanh thơm lừng ăn cùng với dưa món, củ kiệu chắc chắn sẽ khiến bạn thích mê.</p><p>Không chỉ là một món ăn được nhiều người Việt yêu thích mà còn lấy lòng biết bao nhiêu du khách nước ngoài khi ghé và thưởng thức món bánh này. Sắp sửa đón chào một năm mới, hãy thử trổ tài với món bánh hấp dẫn này với công thức chi tiết ngay dưới đây nhé!</p><p><strong>Xem chi tiết</strong></p><ul><li><a href=\"https://www.dienmayxanh.com/vao-bep/cach-lam-banh-chung-cho-ngay-tet-00428\">Cách làm bánh chưng chuẩn vị ngon, đậm đà cho ngày Tết truyền thống</a></li><li><a href=\"https://www.dienmayxanh.com/vao-bep/cach-lam-banh-chung-hoa-dau-biec-thom-ngon-dep-mat-de-dang-00063\">Cách làm bánh chưng hoa đậu biếc thơm ngon dẻo mịn, đẹp mắt ngày Tết</a></li></ul><p><img src=\"https://cdn.tgdd.vn/2020/12/content/Untitled-3-800x653.jpg\" alt=\"Bánh chưng\" width=\"800\" height=\"653\"></p><h3><strong>2. Bánh tét</strong></h3><p>Nhắc đến món bánh chưng thì không thể nào quên được bánh tét, có thể gọi là một cặp đôi đi liền trong những ngày lễ tết, đặc biệt là tết Nguyên Đán. Nhân bánh truyền thống với đậu xanh mềm bùi, phần thịt mỡ thơm ngon tan chảy hòa quyện cùng lớp vỏ nếp sẽ làm món ăn thêm hương vị hấp dẫn. Ngoài ra, tùy theo khu vực mà nhân bánh được biến tấu đa dạng, nhân ngọt, mặn, nhân chuối, nhân đậu,...</p><p>Từng khoanh bánh tròn được cắt ra sau khi luộc chín, thưởng thức ngay khi còn nóng kèm với <a href=\"https://www.dienmayxanh.com/vao-bep/cach-lam-dua-mon-chuan-vi-ngon-gion-ai-cung-lam-duoc-452\">dưa kiệu</a> hoặc có thể chiên giòn, nhắc đến thôi cũng khiến bạn phải suýt xoa thèm rồi đúng không nào. Hãy thử ngay cách làm mà Điện máy XANH chia sẻ dưới đây nhé!</p><p><strong>Xem chi tiết</strong></p><ul><li><a href=\"https://www.dienmayxanh.com/vao-bep/cach-lam-banh-tet-ngon-xanh-dep-mat-an-hoai-khong-ngan-00435\">Cách làm bánh tét ngon, xanh, đẹp mắt, ăn hoài không ngán</a></li><li><a href=\"https://www.dienmayxanh.com/vao-bep/cach-lam-banh-tet-nhan-chuoi-chuan-vi-mien-tay-01606\">Cách làm bánh tét nhân chuối chuẩn vị miền Tây thơm ngon đón tết</a></li></ul><p><img src=\"https://cdn.tgdd.vn/2020/12/content/Untitled-4-800x653.jpg\" alt=\"Bánh tét\" width=\"800\" height=\"653\"></p><h3><strong>3. Bánh giầy</strong></h3><p>Bánh giầy được xem là một món bánh đặc trưng của dân tộc Việt Nam kèm theo là một sự tích từ thời cha ông mà ai cũng được nghe khi còn nhỏ. Món bánh vô cùng đơn giản với bột được hấp dẻo mềm kẹp cùng miếng chả lụa dai dai hoặc có thể được bọc với đậu xanh mềm bùi, cắn một miếng thôi cũng đem đến cho bạn một hương vị thơm ngon khó thể nào quên được.</p><p>Hãy trổ tài ngay với công thức làm bánh dày cực kì đơn giản cho cả gia đình theo hướng dẫn dưới đây ngay thôi nào.</p><p><strong>Xem chi tiết</strong></p><ul><li><a href=\"https://www.dienmayxanh.com/vao-bep/cach-lam-banh-giay-cho-ngay-gio-to-00907\">Cách làm bánh dày (bánh giầy) mềm dai, cực đơn giản tại nhà</a></li><li><a href=\"https://www.dienmayxanh.com/vao-bep/cach-lam-banh-giay-dau-xanh-truyen-thong-thom-ngo-02406\">Cách làm bánh giầy đậu xanh truyền thống, thơm ngon trắng ngần, dẻo mịn</a></li></ul><p><img src=\"https://cdn.tgdd.vn/2020/12/content/Untitled-5-800x533.jpg\" alt=\"bánh dày\" width=\"800\" height=\"533\"></p><h3><strong>4. Bánh giò</strong></h3><p>Bánh giò với lớp vỏ bánh được làm từ <a href=\"https://www.dienmayxanh.com/vao-bep/bot-gao-la-gi-cach-phan-biet-bot-gao-te-va-bot-gao-nep-05813\">bột gạo</a> và <a href=\"https://www.dienmayxanh.com/vao-bep/bot-nang-la-gi-bot-mi-la-gi-cach-nhan-biet-hai-loai-bot-01268\">bột năng</a> dẻo mềm, lớp nhân bên trong là thịt nạc cùng mộc nhĩ (nấm mèo) với trứng cút hòa quyện vào nhau tạo nên một hương vị thơm ngon, khó cưỡng. Người nấu khéo léo bọc bên ngoài lớp vỏ chuối và tạo hình tam giác, tuy nhiên nhiều bạn khéo tay đã biến tấu món bánh này với nhiều hình dáng hoặc không cần bọc lá chuối, lớp nhân cũng đa dạng, phong phú hơn.</p><p>Hãy thử làm ngay món bánh này với công thức cực đơn giản dưới đây sẽ khiến gia đình bạn thích mê cho mà xem.</p><p><strong>Xem chi tiết</strong></p><ul><li><a href=\"https://www.dienmayxanh.com/vao-bep/cach-lam-banh-gio-nong-mem-min-thom-ngon-cuc-don-gian-01481\">Cách làm bánh giò nóng mềm mịn thơm ngon, cực đơn giản tại nhà</a></li><li><a href=\"https://www.dienmayxanh.com/vao-bep/cach-lam-banh-gio-khong-can-la-chuoi-thom-ngon-don-gian-05025\">Cách làm bánh giò không cần lá chuối thơm ngon đơn giản</a></li></ul><p><img src=\"https://cdn.tgdd.vn/2020/12/content/Untitled-6-800x533.jpg\" alt=\"Bánh giò\" width=\"800\" height=\"533\"></p><h3><strong>5. Bánh tiêu</strong></h3><p>Bánh tiêu là một cái tên khá quen thuộc trong các món bánh của Việt Nam mà hầu như người Việt nào cũng từng được nếm thử và không thể quên mùi vị thơm ngon của nó.</p><p>Bánh sử dụng nguyên liệu chính là bột mì cùng với mè rang được chiên phồng thơm phức, miếng bánh mềm, giòn nhẹ vô cùng hấp dẫn. Ngày nay để tăng thêm nhiều hương vị phong phú hơn cho món bánh này mà người chế biến còn thêm nhân <a href=\"https://www.dienmayxanh.com/vao-bep/dau-xanh-co-tac-dung-gi-nhung-mon-an-dinh-duong-tu-dau-xanh-05017\">đậu xanh</a>, trứng sữa, dứa, dừa,... giúp bánh thơm ngon đa dạng hơn.</p><p>Hãy cùng bắt tay làm ngay những chiếc bánh tiêu tròn tròn, giòn thơm cho cả gia đình ngay nhé, chắc chắn sẽ khiến mọi người thích mê đấy.</p><p><strong>Xem chi tiết</strong></p><ul><li><a href=\"https://www.dienmayxanh.com/vao-bep/cach-lam-banh-tieu-nhan-cade-sua-trung-thom-ngon-beo-min-00190\">Cách làm bánh tiêu nhân cade sữa trứng thơm ngon béo mịn</a></li><li><a href=\"https://www.dienmayxanh.com/vao-bep/cach-lam-banh-tieu-nhan-dau-xanh-dua-phong-mem-thom-ngon-de-04988\">Cách làm bánh tiêu nhân đậu xanh dừa phồng mềm thơm ngon dễ làm</a></li></ul><p><img src=\"https://cdn.tgdd.vn/2020/12/content/Untitled-7-800x533-1.jpg\" alt=\"Bánh tiêu\" width=\"800\" height=\"533\"></p><h3><strong>6. Bánh tai heo</strong></h3><p>Bánh tai heo như một món quà vặt gắn liền với tuổi thơ của nhiều người, những chiếc bánh giòn rụm với hình xoắn ốc tựa như tai heo xinh xắn không chỉ gây kích thích cho trẻ con mà người lớn cũng cực kì thích mê món ăn vặt này.</p><p>Món bánh sử dụng nguyên liệu chính là bột mì, đường và trứng được đôi tay khéo léo nhào trộn sau đó tạo hình thành những miếng bánh nhỏ với những đường sọc xoáy đan xen rồi đem đi chiên giòn.</p><p>Món bánh sẽ ngon hơn nếu do chính đôi tay khéo léo của bạn làm ra đó, đừng ngần ngại mà không thử trổ tài vì công thức vô cùng đơn giản, nhấn xem ngay nhé!</p><p><strong>Xem chi tiết</strong></p><ul><li><a href=\"https://www.dienmayxanh.com/vao-bep/huong-dan-chi-tiet-cach-lam-banh-tai-heo-thom-gion-tai-nha-01034\">Chi tiết cách làm bánh tai heo thơm giòn tại nhà cực ngon</a></li><li><a href=\"https://www.dienmayxanh.com/vao-bep/cach-lam-banh-tai-heo-bang-noi-chien-khong-dau-gion-rum-thom-04364\">Cách làm bánh tai heo bằng nồi chiên không dầu giòn rụm thơm ngon</a></li></ul><p><img src=\"https://cdn.tgdd.vn/2020/12/content/Untitled-8-800x624.jpg\" alt=\"Bánh tai heo\" width=\"800\" height=\"624\"></p><h3><strong>7. Bánh da lợn - bánh chín tầng mây</strong></h3><p>Trong những món bánh truyền thống Việt Nam thì không thể thiếu bánh da lợn, một trong những món bánh với đầy màu sắc xen kẽ với nhau vô cùng bắt mắt. Thử miếng bánh này bạn sẽ không thể quên được hương vị thơm ngon, miếng bánh dẻo mềm, ngọt ngọt và thơm phức mùi lá dứa, đậu xanh, khoai môn, sầu riêng,...</p><p>Bánh sử dụng nguyên liệu chính là bột gạo, bột năng được đôi tay khéo léo của thợ làm bánh nhào trộn, tạo màu và tạo thành những tầng bánh đầy màu sắc. Hãy thử vào bếp thực hiện ngay món ăn hấp dẫn này để chiêu đãi gia đình ngay nhé!</p><p><strong>Xem chi tiết</strong></p><ul><li><a href=\"https://www.dienmayxanh.com/vao-bep/cach-lam-banh-da-lon-thom-bui-vi-dau-xanh-la-dua-cuc-ngon-01080\">Cách làm bánh da lợn thơm bùi vị đậu xanh lá dứa cực ngon</a></li><li><a href=\"https://www.dienmayxanh.com/vao-bep/cach-lam-banh-da-lon-chin-tang-may-gion-dai-dep-mat-05089\">Cách làm bánh da lợn chín tầng mây giòn dai đẹp mắt</a></li></ul><p><img src=\"https://cdn.tgdd.vn/2020/12/content/Untitled-9-800x624.jpg\" alt=\"Bánh da lợn - bánh chín tầng mây\" width=\"800\" height=\"624\"></p><h3><strong>8. Bánh đúc</strong></h3><p>Thưởng thức những chiếc bánh đúc nóng hổi với thịt băm và mộc nhĩ (nấm mèo), chan thêm miếng <a href=\"https://www.dienmayxanh.com/vao-bep/cong-thuc-cach-pha-nuoc-mam-chua-ngot-cham-thit-luoc-cuc-don-1121\">nước mắm chua ngọt</a> mà tả thôi cũng đã thấy cồn cào trong bụng rồi đúng không nè.</p><p>Ngoài món bánh đúc mặn thì bạn cũng hãy một lần thưởng thức bánh đúc ngọt với nước dừa béo ngậy, đậu phộng rang bùi bùi, cắn miếng bánh dẻo mềm, chắc chắn sẽ khiến bạn không thể ngừng ăn được đâu.</p><p>Phải nói là bánh đúc của Việt Nam đã đem đến một hương vị gây thương nhớ đối với những thực khách trong nước và cả ngoài nước. Còn chần chờ gì mà không nhanh tay vào bếp chiêu đãi gia đình món ăn vừa thơm ngon lại vừa dễ làm này đúng không nào.</p><p><strong>Xem chi tiết</strong></p><ul><li><a href=\"https://www.dienmayxanh.com/vao-bep/cach-lam-banh-duc-ngot-mon-an-vat-tuoi-tho-don-gian-tai-nha-01729\">Cách làm bánh đúc ngọt - món ăn vặt tuổi thơ đơn giản tại nhà</a></li><li><a href=\"https://www.dienmayxanh.com/vao-bep/cach-lam-banh-duc-nong-ngon-khong-dung-voi-va-han-the-01099\">Cách làm bánh đúc nóng ngon không dùng vôi và hàn the cực an toàn</a></li></ul><p><img src=\"https://cdn.tgdd.vn/2020/12/content/Untitled-10-800x624.jpg\" alt=\"Bánh đúc\" width=\"800\" height=\"624\"></p><h3><strong>9. Bánh bột lọc</strong></h3><p>Nhắc đến ẩm thực Huế bạn sẽ nhớ ngay đến món bánh bột lọc trứ danh của xứ này, với vỏ bánh dai dai nhân tôm thịt hoặc nhân đậu xanh được ướp đậm đà dùng kèm với nước mắm mặn ngọt cay cay vô cùng hấp dẫn. Rắc thêm một ít hành phi, mỡ hành sẽ giúp tăng thêm hương vị thơm ngon.</p><p>Bạn chỉ tốn một vài phút đã có ngay món bánh thơm ngon này rồi, hãy trổ tài ngay để chiêu đãi gia đình và bạn bè nhé.</p><p><strong>Xem chi tiết</strong></p><ul><li><a href=\"https://www.dienmayxanh.com/vao-bep/cach-lam-banh-bot-loc-hue-dung-dieu-00566\">Cách làm bánh bột lọc Huế đúng điệu</a></li><li><a href=\"https://www.dienmayxanh.com/vao-bep/cach-lam-banh-bot-loc-ngon-00526\">Cách làm bánh bột lọc nhân tôm thịt thơm ngon khó cưỡng</a></li></ul><p><img src=\"https://cdn.tgdd.vn/2020/12/content/Untitled-11-800x624.jpg\" alt=\"Bánh bột lọc\" width=\"800\" height=\"624\"></p><h3><strong>10. Bánh tẻ</strong></h3><p>Bánh tẻ hay còn được gọi là bánh lá, bánh răng bừa đây là món bánh đặc sản của vùng đồng bằng Bắc Bộ, Thanh Hóa. Bánh được làm từ bột gạo tẻ với lớp nhân thịt kết hợp với nấm mèo (mộ nhĩ), nấm hương và được ướp vị đậm đà, vỏ bánh mềm dẻo được bọc khéo léo bên ngoài bằng lớp lá dong hoặc lá chuối rồi mang đi hấp chín.</p><p>Đây là món bánh thường được sử dụng để ăn sáng hoặc ăn buổi xế chiều kèm với nước mắm mặn ngọt sẽ khiến bạn phải suýt xoa khen ngon đấy. Hãy thử làm ngay món bánh đơn giản này với công thức được Điện máy XANH chia sẻ dưới đây nhé!</p><p><strong>Xem chi tiết:</strong> <a href=\"https://www.dienmayxanh.com/vao-bep/cach-lam-banh-te-thom-ngon-deo-min-don-gian-chuan-01857\">Cách làm bánh răng bừa (bánh tẻ) thơm ngon đơn giản chuẩn vị miền Bắc</a></p><p><img src=\"https://cdn.tgdd.vn/2020/12/content/Untitled-12-800x533.jpg\" alt=\"Bánh tẻ\" width=\"800\" height=\"533\"></p><h3><strong>11. Bánh tổ</strong></h3><p>Bánh tổ được làm bằng bột gạo nếp, pha trộn cùng với mè, gừng, đường nâu,... và được hấp chín; tạo nên một hương vị ngon ngọt, thơm nồng. Đây là một món ăn đặc sản của xứ Quảng thường được thấy trong các dịp lễ tết, giỗ kỵ được xem như một món ăn may mắn, với ý nghĩa đem đến sự phát triển, thành công và thuận lợi hơn trong năm tới.</p><p><strong>Xem chi tiết:</strong> <a href=\"https://www.dienmayxanh.com/vao-bep/cach-lam-banh-to-truyen-thong-thom-ngon-don-gian--01851\">Cách làm bánh tổ truyền thống thơm ngon, đơn giản chuẩn vị cho dịp lễ Tết</a></p><p><img src=\"https://cdn.tgdd.vn/2020/12/content/Untitled-13-800x506.jpg\" alt=\"Bánh tổ\" width=\"800\" height=\"506\"></p><h3><strong>12. Bánh bò</strong></h3><p>Chắc chắn người Việt ai cũng đã từng nếm thử qua hương vị của những chiếc bánh bò xinh xắn, đầy màu sắc bông xốp, vị ngọt thanh, ăn một lần bạn sẽ phải thích mê.</p><p>Nguyên liệu cơ bản tạo nên món bánh này là bột gạo, bột năng, đường và <a href=\"https://www.dienmayxanh.com/vao-bep/phan-biet-cac-loai-men-no-bot-no-muoi-no-trong-lam-banh-01730\">men nở</a>, ở một số vùng sử dụng <a href=\"https://www.dienmayxanh.com/vao-bep/cay-thot-not-duong-thot-not-cong-dung-va-nhung-luu-y-khi-dung-02384\">đường thốt nốt</a> làm bánh tạo nên những chiếc bánh có màu nâu ngà, vị ngọt đặc trưng vô cùng hấp dẫn.</p><p>Hiện nay, trên thị trường cũng có bán những loại bột bánh bò đã pha sẵn vô cùng tiện lợi, bạn chỉ cần cho thêm đường, tạo màu đem hấp lên là có thể thưởng thức ngay rồi. Chan thêm ít <a href=\"https://www.dienmayxanh.com/vao-bep/nuoc-cot-dua-co-tac-dung-gi-cac-mon-an-ngon-voi-nuoc-cot-dua-05969\">nước cốt dừa</a>, rắc thêm mè và đậu phộng (lạc) rang cùng với ít dừa bào là ngon hết sẩy luôn đó nha, hãy thử vào bếp làm theo công thức mà Điện máy XANH chia sẻ để gia đình mình cùng thưởng thức món bánh bò do chính đôi tay khéo léo của bạn làm ra nhé!</p><p><strong>Xem chi tiết</strong></p><ul><li><a href=\"https://www.dienmayxanh.com/vao-bep/cach-lam-banh-bo-thot-not-thom-ngon-chuan-vi-an-giang-01736\">Cách làm bánh bò thốt nốt thơm ngon chuẩn vị An Giang</a></li><li><a href=\"https://www.dienmayxanh.com/vao-bep/cach-lam-banh-bo-nuong-la-dua-thom-ngon-nhieu-re--02754\">Cách làm bánh bò nướng lá dứa thơm ngon, nhiều rễ dai mềm đơn giản dễ</a></li></ul><p><img src=\"https://cdn.tgdd.vn/2020/12/content/Untitled-14-800x616.jpg\" alt=\"Bánh bò\" width=\"800\" height=\"616\"></p><h3><strong>13. Bánh bèo</strong></h3><p>Nhắc đến bánh bèo bạn sẽ nhớ ngay đến những chiếc bánh tròn tròn xinh xinh với màu trắng đục từ bột gạo, được phủ lên một lớp nhân đậu xanh, tôm chấy, mỡ hành óng ả đựng trong những chiếc chén nhỏ chan cùng với nước mắm mặn ngọt, nghĩ thôi là đã thấy thèm rồi đó.</p><p>Không chỉ là những chiếc bánh bèo mặn mà còn có cả bánh bèo ngọt với đậu xanh bùi bùi chan cùng nước cốt dừa phải nói là ăn một lần là nhớ mãi không quên được đâu.</p><p>Nếu bạn là một người yêu thích món bánh bèo này thì hãy trổ tài ngay với công thức cực kì đơn giản để làm ra những chiếc bánh bèo mặn hoặc ngọt thơm ngon cho cả gia đình chỉ trong vài phút. Nhấn xem công thức dưới đây ngay nhé!</p><p><strong>Xem chi tiết</strong></p><ul><li><a href=\"https://www.dienmayxanh.com/vao-bep/cach-lam-banh-beo-chen-don-gian-tai-nha-00794\">Cách làm bánh bèo chén tôm chấy đơn giản tại nhà</a></li><li><a href=\"https://www.dienmayxanh.com/vao-bep/cach-lam-banh-beo-ngot-thom-ngon-don-gian-tai-nha-02383\">Cách làm bánh bèo ngọt thơm ngon đơn giản tại nhà</a></li></ul><p><img src=\"https://cdn.tgdd.vn/2020/12/content/Untitled-15-800x616.jpg\" alt=\"Bánh bèo\" width=\"800\" height=\"616\"></p><h3><strong>14. Bánh lá gai</strong></h3><p>Bánh ít lá gai là đặc sản của vùng đất Bình Định, với đặc điểm khó quên là lớp vỏ màu đen tuyền được làm bằng bột gạo nếp, nhân bên trong là đậu xanh, dừa và bọc gói cẩn thận bên ngoài là những lớp lá gai, đây là loại lá tạo nên màu đen đặc trưng của loại bánh này.</p><p>Cắn miếng bánh bạn sẽ cảm giác được lớp vỏ bánh dẻo mềm, nhân bùi bùi ngọt ngọt vô cùng hấp dẫn. Thử làm ngay với công thức được chia sẻ dưới đây nhé!</p><p><strong>Xem chi tiết:</strong> <a href=\"https://www.dienmayxanh.com/vao-bep/2-cach-lam-banh-la-gai-mem-min-ngon-nhu-ngoai-hang-01885\">2 Cách làm bánh ít lá gai nhân đậu và nhân dừa mềm mịn ngon như ngoài hàng</a></p><p><img src=\"https://cdn.tgdd.vn/2020/12/content/Untitled-16-800x616.jpg\" alt=\"Bánh lá gai\" width=\"800\" height=\"616\"></p><h3><strong>15. Bánh ít trần</strong></h3><p>Bánh ít trần được xem là một món quà vặt đặc sản của người miền Trung, cái hương vị đậm đà, dẻo mềm của bột bánh và nhân hòa quyện cùng nhau khiến bạn nhắc thôi cũng đã muốn thử ngay rồi.</p><p>Vỏ bánh sử dụng bột nếp và bột năng tạo nên độ dai dai, mềm mềm cùng với nhân ngọt như: nhân dừa, đậu xanh,... ăn kèm với nước cốt dừa hoặc bánh mặn với nhân thịt nấm được ướp vị đậm đà dùng kèm với nước mắm mặn ngọt bạn sẽ phải suýt xoa đấy.</p><p>Hãy thử tài khéo léo với món bánh này cho gia đình trong những dịp cuối tuần đi nào, chắc chắn cả nhà bạn sẽ tấm tắc khen ngon cho mà xem.</p><p><strong>Xem chi tiết</strong></p><ul><li><a href=\"https://www.dienmayxanh.com/vao-bep/cach-lam-banh-it-tran-hue-ngon-dung-dieu-dam-da-don-gian-01484\">Cách làm bánh ít trần Huế ngon đúng điệu, đậm đà đơn giản</a></li><li><a href=\"https://www.dienmayxanh.com/vao-bep/cach-lam-banh-it-tran-la-dua-ngot-thom-ngon-trong--02281\">Cách làm bánh ít trần lá dứa ngọt thơm ngon trong mịn đơn giản dễ làm</a></li></ul><p><img src=\"https://cdn.tgdd.vn/2020/12/content/Untitled-17-800x616.jpg\" alt=\"Bánh ít trần \" width=\"800\" height=\"616\"></p><h3><strong>16. Bánh trôi</strong></h3><p>Trong những ngày tết Hàn Thực (mùng 3 tháng 3 âm lịch) thì không thể thiếu món bánh trôi nước hay còn được gọi là chè trôi nước. Những viên bánh tròn vo, dẻo dai với lớp nhân phong phú: đậu xanh, <a href=\"https://www.dienmayxanh.com/vao-bep/6-cong-dung-cua-me-den-doi-voi-suc-khoe-cua-con-nguoi-04638\">mè đen</a>, dừa,... ăn cùng với nước đường và cốt dừa thơm nồng mùi gừng, rắc thêm ít mè rang thơm phức mà nghĩ thôi cũng đã phát thèm rồi.</p><p>Bánh trôi là một trong những loại bánh truyền thống, thường xuất hiện trong các lễ hội ẩm thực và được rất nhiều thực khách yêu thích bởi hương vị ngọt thanh, hấp dẫn. Bạn hãy thử qua một lần, chắc chắn sẽ khiến bạn thích mê.</p><p><strong>Xem chi tiết</strong></p><ul><li><a href=\"https://www.dienmayxanh.com/vao-bep/cach-lam-banh-troi-nuoc-nhan-duong-phen-truyen-thong-thom-04744\">Cách làm bánh trôi nước nhân đường phên truyền thống thơm ngon dễ làm</a></li><li><a href=\"https://www.dienmayxanh.com/vao-bep/cach-lam-banh-troi-tau-me-den-thom-ngon-de-lam-chu-02273\">Cách làm bánh trôi tàu mè đen thơm ngon dễ làm chuẩn vị người Hoa</a></li></ul><p><img src=\"https://cdn.tgdd.vn/2020/12/content/Untitled-18-800x616.jpg\" alt=\"Bánh trôi\" width=\"800\" height=\"616\"></p><h3><strong>17. Bánh cuốn</strong></h3><p>Bánh cuốn ngọt với lớp vỏ bánh làm từ bột gạo pha chút bột năng để tạo độ dẻo mềm, dai dai cho bánh, phần nhân đậu xanh được nấu chín nhừ đem đến cho bạn một hương vị thơm ngon hấp dẫn, rắc thêm ít mè rang thơm lừng, bùi bùi ngọt ngọt hòa quyện vào nhau vô cùng lạ miệng.</p><p>Hãy thử làm ngay món bánh này với công thức mà Điện máy XANH chia sẻ nhé, chắc chắn sẽ khiến gia đình bạn ăn hoài không ngừng được đâu.</p><p><strong>Xem chi tiết:</strong> <a href=\"https://www.dienmayxanh.com/vao-bep/cach-lam-banh-cuon-ngot-thom-ngon-don-gian-bang-ch-02275\">Cách làm bánh cuốn ngọt thơm ngon đơn giản bằng chảo chống dính</a></p><p><img src=\"https://cdn.tgdd.vn/2020/12/content/Untitled-19-800x498.jpg\" alt=\"Bánh cuốn ngọt\" width=\"800\" height=\"498\"></p>', 0, 1, '2023-11-29 17:25:47', '2024-08-14 08:24:50'),
(8, 9, 'TOP 5 Loại bánh sinh nhật CỰC NGON', 'post3.jpg', 'Admin', '<p><strong>1. Bánh gato</strong></p><p><img src=\"https://bizweb.dktcdn.net/100/438/465/files/banh-gato.jpg?v=1652233064325\" width=\"480\" height=\"480\"></p><p><i>Bánh Gato sinh nhật hoa quả</i></p><p><br>Đây có lẽ là một trong 5 loại bánh kem sinh nhật quen thuộc nhất với chúng ta phải không nào. Mẫu mã các loại bánh càng ngày càng đẹp, hương vị bánh và kem cũng dần thay đổi để phù hợp với xu thế.<br>Một chiếc bánh gato ngon cần phải có phần cốt bánh bông xốp, nhẹ, ăn không bị bứ. Bên cạnh đó thì lượng kem cũng cần vừa phải, không quá nhiều hay quá ít, không quá ngọt cũng không quá nhạt, và quan trọng nhất là không bị ngán.</p><p><strong>2. Tiramisu</strong></p><p><img src=\"https://bizweb.dktcdn.net/100/438/465/files/tiramisu-birthday.jpg?v=1652233474329\" width=\"480\" height=\"508\"></p><p><i>Tiramisu sinh nhật</i></p><p><br>Chiếc bánh này còn có tên là “pick me up”, hay dịch tiếng Việt có nghĩa là “hãy mang em đi”. Bánh có xuất xứ từ Ý, tượng trưng cho tình yêu mãnh liệt do bánh vừa có vị đắng vừa có vị ngọt cũng như tình yêu vừa hạnh phúc vừa đau khổ. Ngoài ra, bánh được giới bánh ngọt gọi là nữ hoàng của mọi loại bánh.Về độ nổi tiếng thì có lẽ không bánh nào qua được. Người đam mê bánh ngọt lẫn người thường có lẽ đều đã một lần nghe đến tên bánh này.</p><p>Bánh không những cuốn hút bởi vẻ ngoài mà còn gây ấn tượng sâu đậm bới hương vị của nó. Bánh là sự kết hợp của vị giòn, ngọt của bánh Lady Finger, vị thơm của cà phê đen và rượu Rhum, cùng với độ béo ngậy đến từ heavy cream và phô mai Mascapone.</p><p>Các biến thể của Tiramisu để nó phù hợp hơn với từng nước có thể kể đến là Tiramisu dâu, Tiramisu chocolate, Tiramisu chanh, Tiramisu chuối, Tiramisu phúc bồn từ, Tiramisu trà xanh và cả Tiramisu bia.</p><p><strong>3. Bánh mousse</strong></p><p><img src=\"https://bizweb.dktcdn.net/100/438/465/files/mousse-sinh-nhat.jpg?v=1652233568880\" width=\"480\" height=\"640\"></p><p><i>Bánh Mousse Sinh Nhật Hoa Quả</i></p><p><br>Mousse là một loại bánh có lớp kem mát lạnh mềm mịn, tan trong miệng, đây là những đặc trưng đầu tiên khi người ta nghĩ đến mousse. Với ý nghĩa là \"bọt\" trong tiếng Pháp, mousse chính là chiếc bánh có vẻ ngoài đẹp mắt với lớp bánh gato mỏng bên dưới, phía trên là kem mịn, tan nhanh tự bọt biển chỉ để lại sự vấn vương nơi đầu lưỡi thực khách.<br>Chỉ với lòng trắng trứng đánh bông, kết hợp với các nguyên liệu khác như gelatin, kem tươi hay hương trái cây mà mousse lại trở thành món tráng miệng không thể thiếu và được lòng bao nhiêu người chỉ với một lần nếm qua.<br>Thuộc dòng bánh lạnh nên mousse ăn man mát, vị béo ngậy của kem tươi hòa cùng các hương vị thêm vào tạo nên sự độc đáo của bánh. Hương vị thêm vào mousse cũng vô cùng đa dạng và phong phú như hương vị của các loại trái cây, chocolate, trà xanh,…</p><p><strong>4. Cheesecake</strong><br>Bánh cheesecake không còn xa lạ gì với người dân Việt Nam, đặc biệt là giới trẻ bởi bánh hiện được bán và trưng bày khắp các tiệm bánh đặc biệt là các quán coffee và trà. Tiệm coffee và trà có thể không có đủ loại bánh nhưng loại bánh chắc chắn họ nghĩ đến bán đầu tiên có lẽ là bánh cheesecake. Cheesecake có rất nhiều biến tấu từ cheesecake cơ bản cho đến cheesecake trái cây (chanh dây, dâu, việt quất, phúc bồn từ, v…v…). Ngoài ra còn có cheesecake cà phê, trà xanh, chocolate và oreo. Món bánh được lòng mọi người nhất mà hầu như tiệm cà phê hay trà nào cũng có bán đó là bánh cheesecake chanh dây.</p><p>Bánh được gọi là cheesecake là do bánh được làm từ creamcheese và whipping cream. Bánh cheesecake khác với các loại bánh khác ở chỗ là bánh này là thuộc dòng bánh lạnh. Còn các bánh khác thì đòi hỏi phải có lò nướng. Bánh cheesecake thông thường sẽ gồm hai lớp. Lớp dưới cùng là phần bánh quy hay bánh oreo được đập vụn và trộn với bơ. Còn phần chính bên trên là kem tươi và creamcheese và mứt hoa quả trộn đều ta sẽ được hỗn hợp lỏng. Sau đó, để bánh được đông lại thì bánh được để vào tủ lạnh và nhờ hoạt động của galetine, bánh sẽ tạo hình và cứng cáp hơn.</p><p><strong>5. Bánh kem lạnh (ice cream cake)</strong></p><p><img src=\"https://bizweb.dktcdn.net/100/438/465/files/banh-kem-lanh.jpg?v=1652233677263\" width=\"480\" height=\"480\"></p><p><i>Bánh kem lạnh mới lạ</i></p><p><br>Dòng bánh này khá mới lạ và vô cùng độc đáo. Thay vì phần cốt bánh gato thông thường, nguyên liệu của dòng bánh này là kem lạnh mà chúng ta vẫn hay thưởng thức. Kem được đổ vào khuôn bánh gato, cho vào ngăn đá tủ lạnh cho đông lại, tách ra và xếp các lớp mỏng lại với nhau và trang trí thành 1 chiếc bánh lớn.<br>Vì thành phần chủ yếu là kem lạnh nên dòng bánh này sẽ thích hợp với các bữa tiệc sinh nhật trong phòng có bật điều hòa hơn.</p>', 0, 1, '2023-12-03 13:45:32', '2024-08-14 08:27:34'),
(9, 9, 'Khám Phá 15 Món Bánh Ngon Tuyệt Vào Mùa Thu Se Lạnh', 'post4.jpg', 'Admin', '<p>Đến Hà Nội vào đúng dịp thu sang chắc chắn sẽ khiến bạn xao xuyến trước vẻ đẹp của thiên nhiên, đất trời và khí hậu nơi đây. Không chỉ được chiêm ngưỡng cảnh sắc mùa thu lãng mạn mà còn tuyệt vời hơn nữa khi bạn có cơ hội thưởng thức những món bánh thơm ngon hấp dẫn.</p><p>Hãy cùng Hawonkoo khám phá ngay 15 món bánh chỉ nghe tên đã&nbsp;gợi nhớ về thu Hà Nội trong bài viết dưới đây nhé!</p><h2>Bánh khoai lang chiên</h2><p>Bánh khoai lang chiên giòn rụm vàng ươm sẽ xua tan không khí se lạnh của mùa thu. Bánh có vị ngọt nhẹ, thơm mùi trứng sữa kích thích vị giác. Chỉ với những nguyên liệu quen thuộc và chiếc nồi chiên không dầu bạn đã có ngay món bánh thơm ngon để cả nhà cùng thưởng thức.</p><p><img src=\"https://static.hawonkoo.vn/hwk02/images/2023/09/banh-khoai.jpg\" alt=\"\" width=\"1000\" height=\"563\"></p><h2>Bánh sắn nướng cốt dừa</h2><p>Hương thơm của những chiếc xe bán bánh sắn dạo phảng phất trong gió mê đắm lòng người. Những chiếc bánh được nướng trên than hồng, ấm nóng dẻo mịn, ngậy mùi cốt dừa sưởi ấm tâm hồn của người qua đường mỗi dịp thu sang.&nbsp;</p><p><img src=\"https://static.hawonkoo.vn/hwk02/images/2023/09/banh-san-nuong-cot-dua.jpg\" alt=\"\" width=\"1000\" height=\"563\"></p><h2>Bánh cam</h2><p>Bánh cam là món bánh ăn vặt mùa thu bạn nhất định phải thử. Bánh có hình tròn xoe, lớp vỏ bùi béo từ mè, phần nhân mịn ngọt từ đậu xanh nhâm nhi cùng trà nóng vô cùng tuyệt vời. Công thức làm bánh cam vừa đơn giản, hương vị lại thơm ngon là sự lựa chọn phù hợp cho cả gia đình vào những ngày cuối tuần. &nbsp;</p><p><img src=\"https://static.hawonkoo.vn/hwk02/images/2023/09/banh-cam.jpg\" alt=\"\" width=\"1000\" height=\"563\"></p><h2>Bánh chuối chiên</h2><p><br>Bánh chuối chiên là món bánh quen thuộc gắn liền với bao thế hệ. Vỏ bánh giòn rụm, nhân chuối chín mềm, vị ngọt dịu. Bên ngoài rắc thêm ít mè rang thơm lừng hết ý. Buổi xế mùa thu đông trời lành lạnh được thưởng thức miếng bánh chuối chiên nóng giòn và chuyện trò cùng bạn bè, người thân thật là tuyệt vời.</p><p><img src=\"https://static.hawonkoo.vn/hwk02/images/2023/10/banh-chuoi-chien.jpg\" alt=\"\" width=\"1000\" height=\"563\"></p><h2>Bánh ngô</h2><p>Bánh ngô cùng là một sự lựa không tồi cho mùa thu này. Bánh có lớp bột bên ngoài giòn tan, từng hạt bắp non được trộn lẫn bên trong ngọt mềm nóng hổi. Khi chấm cùng tương ớt, tương cà hoặc ăn kèm rau sống và nước mắm chua ngọt đều khiến chúng ta phải mê đắm.</p><p><img src=\"https://static.hawonkoo.vn/hwk02/images/2023/09/banh-ngo.jpg\" alt=\"\" width=\"1000\" height=\"563\"></p><h2>Bánh gối</h2><p>Bánh gối có lớp vỏ giòn ruộm, phần nhân thịt được nêm nếm vừa ăn chắc chắn sẽ là món bánh không thể bỏ lỡ mỗi khi trời chuyển lạnh. Bánh gối ngon nhất khi vừa chiên xong, bạn có thể cuốn thêm rau sống và chấm cùng nước mắm chua ngọt để cảm nhận trọn vẹn vị ngon tuyệt đỉnh của loại bánh này.</p><p><img src=\"https://static.hawonkoo.vn/hwk02/images/2023/09/banh-goi.jpg\" alt=\"\" width=\"1000\" height=\"563\"></p><h2>Bánh bao chiên</h2><p>Một trong những món bánh lý tưởng dành cho những ngày thu lạnh đó là những chiếc bánh bao chiên xinh xắn nóng hổi. Vỏ bánh giòn nhẹ có vị ngọt vừa phải, nhân bánh kết hợp giữa thịt, mộc nhĩ và trứng cút mềm ẩm được cả trẻ em và người lớn yêu thích.</p><p><img src=\"https://static.hawonkoo.vn/hwk02/images/2023/09/banh-bao-chien.jpg\" alt=\"\" width=\"1000\" height=\"563\"></p><h2>Bánh đúc nóng</h2><p>Bát bánh đúc nóng ấm là món ăn rất được yêu thích mỗi khi trời trở lạnh. Bánh mềm mịn kết hợp nhân thịt đậm đà và nước dùng mặn ngọt ăn hoài không ngán. Thưởng thức món bánh đúc nóng và cảm nhận khung cảnh thi vị của mùa thu miền bắc chắc chắn sẽ khiến ai ai đến đây cũng phải thích thú vô cùng.</p><p><img src=\"https://static.hawonkoo.vn/hwk02/images/2023/09/banh-duc-nong-2(1).jpg\" alt=\"\" width=\"1000\" height=\"563\"></p><h2>Bánh giò</h2><p>Bánh giò là món ăn sáng quen thuộc nhưng lại trở nên thơm ngon lạ thường vào tiết trời mùa thu. Chiếc bánh nóng hổi bốc khói nghi ngút, ẩn giấu bên trong lớp lá chuối được gói ghém cẩn thận là phần bột mịn mượt núng nính. Bánh chín trong, mềm, dậy mùi hạt tiêu và nhân thịt mỡ hành chinh phục người dùng ngay từ những miếng đầu tiên.</p><p><img src=\"https://static.hawonkoo.vn/hwk02/images/2023/09/banh-gio.jpg\" alt=\"\" width=\"1000\" height=\"563\"></p><h2>Bánh tôm</h2><p>Bánh tôm rất thích hợp để thưởng thức vào mùa thu se lạnh. Chiếc bánh được chiên vàng ươm, thơm phức. Vị bánh giòn tan, kết hợp với rau sống và nước mắm chua ngọt khơi dậy hương vị hấp dẫn không thể chối từ.</p><p><img src=\"https://static.hawonkoo.vn/hwk02/images/2023/09/banh-tom.jpg\" alt=\"\" width=\"1000\" height=\"563\"></p><h2>Bánh rán mặn</h2><p>Bánh rán mặn là một món ăn vặt phổ biến ở miền Bắc vào những ngày mùa thu se lạnh. Cắn miếng bánh nóng hổi, giòn rụm và cảm nhận lớp vỏ tan trong miệng cùng phần nhân mềm mịn lôi cuốn thì còn gì tuyệt bằng. Bạn còn chần chờ gì nữa mà không trổ tài làm bánh rán mặn vào dịp cuối tuần, đảm bảo cả nhà ai cũng mê tít đấy nhé!</p><p><img src=\"https://static.hawonkoo.vn/hwk02/images/2023/09/banh-ran-man.jpg\" alt=\"\" width=\"1000\" height=\"563\"></p><h2>Bánh trôi tàu</h2><p>Là một món bánh nổi tiếng của người Hoa nhưng bánh trôi tàu lại cực kỳ phù hợp và được người Việt vô cùng yêu thích. Bát bánh trôi tàu với những viên tròn đều, vỏ bánh mềm dẻo, nhân mè đen bùi béo hòa quyện cùng nước đường gừng ngọt ngào ấm nóng hứa hẹn sẽ sưởi ấm tâm hồn đam mê ẩm thực của bất cứ ai.</p><p><img src=\"https://static.hawonkoo.vn/hwk02/images/2023/09/banh-troi-tau.jpg\" alt=\"\" width=\"1000\" height=\"563\"></p><h2>Bánh mì nướng muối ớt</h2><p>Mùa thu sẽ trở nên thật tuyệt vời nếu bạn được thưởng thức những chiếc bánh mì nướng muối ớt full topping. Món ăn vặt yêu thích của giới trẻ được chế biến một cách đơn giản, kết hợp giữa nhiều nguyên liệu như bánh mì, chà bông, giò lụa, bò khô,... cùng sốt tương ớt cay cay đậm vị.</p><p><img src=\"https://static.hawonkoo.vn/hwk02/images/2023/09/banh-mi-nuong-muoi-ot.jpg\" alt=\"\" width=\"1000\" height=\"563\"></p><h2>Bánh xèo</h2><p>Món bánh xèo cuốn rau xanh rất được ưa chuộng vào những buổi tụ họp bạn bè vào mùa thu. Vị bánh giòn béo được cân bằng bởi rau sống và nước mắm chua ngọt khiến ai đã ăn 1 miếng thì không thể dừng lại được.</p><p><img src=\"https://static.hawonkoo.vn/hwk02/images/2023/10/cach-lam-banh-xeo-bang-noi-chien-khong-dau-1.jpg\" alt=\"\" width=\"1000\" height=\"563\"></p><h2>Bánh trung thu</h2><p>Đây là món bánh không thể thiếu vào dịp tết trung thu ở Việt Nam. Miếng bánh ngọt đậm, nhân đủ vị thập cẩm, đậu xanh, sữa dừa, khoai môn,... bạn có thể thoải mái lựa chọn. Thưởng thức bánh trung thu ngọt bùi, cùng người thân quây quần bên bàn trà ấm áp là thú vui tao nhã bạn nhất định phải thử vào Đêm Hội Trăng Rằm.</p><p><img src=\"https://static.hawonkoo.vn/hwk02/images/2023/09/banh-trung-thu.jpg\" alt=\"\" width=\"1000\" height=\"563\"></p><p>Như vậy, mùa thu là mùa của những thức quà tuyệt vời, của những tâm hồn ẩm thực lên ngôi. Còn gì tuyệt vời hơn khi được chiêm ngưỡng cảnh sắc mùa thu lãng mạn và thưởng thức những món bánh mùa thu đông mà Hawonkoo đã chia sẻ.</p><p>Thay vì phải đi xa để thưởng thức, giờ đây, bạn đã có thể tự tay chế biến những món bánh ngon với <a href=\"https://hawonkoo.vn/noi-chien-khong-dau\">chiếc nồi chiên không dầu</a> tiện lợi ngay tại nhà. Để biết thêm thông tin về nồi chiên không dầu đa năng và công thức làm bánh ngon từ thiết bị này, vui lòng liên hệ <strong>Hotline 1900 232396</strong> hoặc truy cập website <a href=\"https://hawonkoo.vn/\">Hawonkoo</a>.</p>', 0, 1, '2023-12-03 17:41:06', '2024-08-14 08:28:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_categories`
--

CREATE TABLE `post_categories` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `post_categories`
--

INSERT INTO `post_categories` (`id`, `name`) VALUES
(1, 'Chưa có chuyên mục'),
(2, 'Bánh nào ngon nhất mùa hè ?'),
(9, 'Giới thiệu bánh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `category_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `quantity` int NOT NULL,
  `price` int NOT NULL,
  `sale_price` int NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `views` int NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `category_id`, `name`, `image`, `quantity`, `price`, `sale_price`, `create_date`, `views`, `details`, `short_description`, `status`) VALUES
(2, 4, 'Bánh Kem Trang Trí Tiệc Cưới 3 Tầng Sang Trọng Gía Tại Xưởng Chất Liệu Formek Bên', 'banhkem-2.jpg', 19, 1000000, 650000, '2023-11-18 10:15:54', 3, '<h3>Product Description</h3><p><br>Bánh kèm 3 tầng của chúng tôi là sự kết hợp hoàn hảo giữa sự tinh tế và đẳng cấp, mang đến một điểm nhấn độc đáo cho tiệc cưới của bạn.&nbsp;<br>Với chất lượng và dịch vụ chuyên nghiệp, chúng tôi sẽ giúp bạn tạo nên một ngày trọng đại hoàn hảo và đáng nhớ.\"</p><p>Bảo hành tân nơi nhà sx<br>Hotline hỗ trợ : Thủy : 0979.941.048</p><p><i>#kebanhcuoi #formek #banhkem</i></p>', '<p><strong>Đóng gói kĩ càng, giao hàng nhanh chóng. Đầy đủ số lượng&nbsp;</strong></p>', 1),
(6, 6, 'Crinkle cookies - bánh quy mềm chocolate phiên bản ít ngọt 200gr - 10 chiếc', 'banhquy.jpg', 50, 100000, 49000, '2023-11-20 22:23:49', 0, '<h3><strong>Product Description</strong></h3><p><br>Bánh Choco Crinkle cookies ít ngọt - Món quà tuyệt vời cho ai yêu thích sô cô la!</p><p>Bạn đang tìm kiếm món quà ngọt ngào, đầy hương vị cho những ai yêu thích sô cô la? Hãy thử mua Bánh Choco Crinkle ít ngọt của chúng tôi! Với hương vị sô cô la đậm đà và miếng bánh dẻo, giòn, chắc chắn sẽ khiến ai nhận được nó rất ấn tượng.</p><p>Đặc điểm nổi bật:</p><p>- Hương vị của bánh được làm từ cacao nguyên chất thơm ngon.<br>- Miếng bánh dẻo giòn và không quá ngọt.<br>- Lý tưởng để làm quà biếu hoặc tự thưởng cho bản thân.</p><p>Sản phẩm này có giá rất phải chăng với mỗi chiếc được đóng túi xinh xinh khoảng 20gr. Chúc bạn có trải nghiệm ẩm thực trọn vẹn!<br>Hsd: Sản phẩm homemade nên sử dụng 1 tháng kể từ ngày sản xuất.</p>', '<p><strong>Homemade</strong></p><p><strong>Low Fat, Low Sugar</strong></p><p><strong>Bột mỳ hữu cơ, cacao, đường, trứng...</strong></p><p><strong>200G/GR</strong></p>', 1),
(14, 20, 'Bánh Donut phủ sô cô la kem trứng tươi túi 12 cái', 'donut2.jpg', 5, 120000, 102000, '2023-11-20 22:54:49', 0, '<p><strong>&nbsp;sỉ và lẻ đồ trẻ em</strong><br><strong>hạn sử dụng và ngày sản xuất in trên bao bì</strong><br><strong>đảm bảo toàn hàng mới</strong><br><strong>màu sắc sặc sỡ bắt mắt trẻ em</strong><br><strong>hàng có sẵn, ảnh tự chụp&nbsp;</strong><br><strong>sản phẩm phù hợp an toàn đồ chơi cho trẻ nhỏ&nbsp;</strong></p>', '<p>Bánh ngon lắm nhà, nên mua á, giao hàng cũng nhanh lắm, shop phục vụ tốt</p>', 1),
(15, 20, 'Bánh Doowee Donut socola thơm mềm xốp 1 gói 12 chiếc', 'donut.jpg', 48, 118000, 95000, '2023-11-20 23:05:47', 1, '<h2>Product Description</h2><p>&nbsp;</p><p>Bánh Donut xuất phát từ Mỹ và là món ngọt được các “tín đồ ăn vặt” cả thế giới yêu thích. Khi mới du nhập vào Việt Nam, bánh Donut trở thành một trào lưu được giới trẻ nhiệt tình hưởng ứng, bởi vẻ đáng yêu, ngộ nghĩnh của mỗi chiếc bánh.</p><p>&nbsp;</p><p>Giờ đây bạn đã có thể thưởng thức hương vị thơm ngon hấp dẫn của bánh Donut mọi lúc, mọi nơi mà luôn đảm bảo chất lượng và vệ sinh an toàn thực phẩm với Bánh Doowee Donut của công ty Rebisco.</p><p>Sản phẩm có hình dạnh vòng tròn, phủ ngoài bằng lớp socola tan chảy quyện với nhân trứng béo ngọt bên trong, tạo cảm giác ngọt ngào, tan từ từ trong miệng.</p><p>Với nguồn nguyên liệu nhập khẩu từ Philipines và được sản xuất theo quy trình hiện đại, bánh donut sẽ là nguồn dinh dưỡng bổ sung năng lượng vô cùng hiệu quả cho bạn.</p><p>Thông số sản phẩm<br>- Thành phần: Bột mì, men, bơ, trứng, sữa, cacao,...<br>- Thương hiệu: Rebisco<br>- Xuất xứ: Việt Nam</p>', '<p>Bánh <strong>Donut </strong>xuất phát từ <i><strong>Mẽo </strong></i>và là món ngọt được các “<strong>tín đồ ăn vặt</strong>” cả thế giới yêu thích. Khi mới du nhập vào <strong>Việt Nam</strong>, bánh <strong>Donut </strong>trở thành một trào lưu được giới trẻ nhiệt tình hưởng ứng, bởi vẻ đáng yêu, ngộ nghĩnh của mỗi chiếc bánh.</p>', 1),
(18, 16, 'Bông lan trứng muối - For Keto, DAS, Lowcarb, Eatclean & Tiểu đường', 'bong-lan-3.jpg', 66, 150000, 120000, '2023-11-20 23:20:33', 0, '<h2>Product Description</h2><p>Bánh bông lan trứng muối dành riêng cho dân Keto, DAS, Lowcarb &amp; Tiểu đường. Cốt bánh bông xốp, ngọt dịu kết hợp cùng sốt dầu trứng thơm ngậy hoặc sốt phô mai ngọt thanh. Đây là sự lựa chọn \"an toàn\" nhất trong menu Bếp Gừng vì phù hợp với đa số khẩu vị khách hàng, rất xứng đáng để bạn cho vào giỏ hàng!</p><p><br>HSD: 1 tháng (Note tượng trưng theo yêu cầu của shopee để được phê duyệt món) Nếu còn thắc mắc hay gặp vấn đề cần hỗ trợ, bạn đừng ngại ngần liên hệ với Bếp theo các thông tin dưới đây để chúng mình tư vấn, giải quyết cho bạn nhé! Cảm ơn bạn đã luôn tin tưởng và ủng hộ Bếp ạ!&nbsp;<br>&nbsp;</p><p>#Keto #DAS #Lowcarb #banhketohanoi #dashanoi #bếpketohanoi #banhankieng #ketofood #ketodiet #cakesdiet #dasdiet #tieuduong #tieuduongthaiky #beophi #gym #yoga #erobic #hiit #giamcan #bepnhagung #gungdasshop #tranthingocanh</p><p>&nbsp;</p>', '<p><strong>eheheheheheh</strong></p>', 1),
(20, 2, 'Bánh bông lan tươi Gizza Original mông to (Hàng Việt Nam) - Ăn vặt, bữa sáng, bữa phụ', 'bong-lan.jpg', 55, 200000, 160000, '2023-11-20 23:31:04', 2, '<h2>Product Description</h2><p>- Bánh bông lan tươi Gizza với màu vàng nâu đặc trưng cùng hình dáng mềm xốp, mướt mịn và hương vị gây thương nhớ... Đặc biệt là dù nhỏ gọn nhưng Gizza lại cung cấp năng lượng vượt trội cho cả ngày dài.</p><p>- Là dòng bánh tươi được yêu thích hàng đầu, Gizza mang tới cảm giác mềm mịn, thơm lừng, tan ngay trong miệng khi ăn. Bánh tươi Gizza là lựa chọn hoàn hảo cho bữa ăn sáng tiện lợi của các bé và phụ huynh, vừa ngon vừa đầy đủ chất dinh dưỡng lại no lâu.</p><p>- Thành phần: Bột mì 32%, dầu hạt cải – Trứng 15% – Muối – Dextrose-Các chất : Diphosphate, natri carbonate-Sữa bột gầy, Kali Sorbate – lactose, acid điều hòa – flavourings.</p><p>- Sản xuất tại: Công ty Cổ phần sản xuất và thương mại SBT Việt Nam NAY ĐÃ CÓ THÊM KHAY ĐỰNG TRONG GÓI BÁNH giúp sản phẩm luôn giữ được hình dáng và kết cấu không bị tác động ngoại lực&nbsp;</p><p>#banhbonglan #bánh #energy #ăn_vặt #ăn_sáng #bữa_phụ #ăn_kiêng #doanvat #anvat #socola #mongto #rẻ #monglep</p>', '<p><strong>Bột mì 32%, dầu hạt cải – Trứng 15% – Mu</strong></p><p><br><i><strong>Cream Puffs</strong></i></p>', 1),
(21, 17, 'Bánh mì nóng tại xưởng', 'a4a88a3871cc645a2d164bb3264cfb39.jpg', 20, 110000, 88000, '2023-11-23 09:54:06', 0, '<h2>Product Description</h2><p>BÁNH MỲ ĐEN HEALTHY HẠT DINH DƯỠNG! MỖI LẦN KHÁCH ĐẶT 20-30 cái! ăn dần, bánh giành cho các bạn ăn kiêng, giảm cân, eatclean! có thể bỏ tủ lạnh ngăn mát 4 ngày, ngăn đông 3 tuần( lúc ăn làm nóng bằng lò vi sóng) ! vẫn siêu thơm siêu ngon!! 35k/ chiếc ship! siêu to khổng lồ mà giá siêu yêu nhé! Bánh mỳ đen của Tiệm được ADELA Bakery sx 100% ogarnic tốt cho sức khoẻ! #banhmyden #tiembanhmedau #eatclean #ogarnic #banhmyhealthy #banhmygiamcan</p>', '<p><br><strong>Lúa mạch, hạt dinh dưỡng</strong></p><p><strong>Bột mỳ nguyên cám, hạt dinh dưỡng</strong></p>', 1),
(23, 6, 'Bánh Gấu Nhân Kem', '272bbb798407080af204f4e7ff58dd58.jpg', 29, 150000, 120000, '2023-11-23 12:19:16', 1, '<p>Bánh gấu là bánh quy chất lượng cao với vị ngon của nhân kem sữa dừa thơm ngon. Sản phẩm là sự kết hợp giữa hương vị ngọt ngào, đậm đà của lớp kem từ bên trong và vị giòn tan của vỏ bánh bên ngoài, sẽ hấp dẫn bất kì ai mỗi khi thưởng thức. Bánh được làm từ những nguyên liệu có nguồn gốc từ thiên nhiên, đảm bảo chất lượng vệ sinh an toàn thực phẩm. Bánh có hình gấu dễ thương, ngộ nghĩnh, đáng yêu, sẽ mang lại cảm giác thú vị cho người thưởng thức. Thông số sản phẩm - Thành phần: Bột mỳ, dầu tinh luyện, đường, bơ, chất thay thế bơ cacao, chất béo thực vật tinh khiết đã được Hydro hóa, sữa bột, tinh bột ngô, trứng gà, vani, chất điều vị, chất chống oxy hóa, màu thực phẩm. - Xuất xứ: Việt Nam - Trọng lượng: 1 thùng/5kg #lưuý : Trong quá trình đóng gói shop đã lựa chọn bỏ hết cái vỡ, nhưng khi vận chuyển xa không tránh khỏi có cái bị vỡ mong quý khách thông cảm.</p>', '<p>Date: &nbsp; &nbsp;&nbsp;<strong> 6 Months</strong></p>', 1),
(24, 17, 'Bánh mỳ star dâu đỏ', 'vn-11134207-7r98o-lntmvlu9l5yycb.jpg', 121, 150000, 120000, '2023-11-23 12:20:16', 0, '<h2>Product Description</h2><p>Hương vị: thơm ngon, mềm.</p><p>Bao bì/Mẫu mã: còn lâu</p><p>Shop giao hàng nhanh, đóng gói cẩn thận, đủ số lượng, uy tín, sản phẩm rất ổn, cảm ơn shop ạ.</p><p><br>Bánh mềm. Ngon. Mua đc mã sale rẻ quá. Tiếc k mua nhiều :D bên shop bán rẻ hơn so với shop khác. Chủ shop nhiệt tình lắm ạ. Mai mốt ủng hộ shop nhiều nhé ạ. Shop có bán bánh mochi kem lạnh. Không tẩm dừa bên ngoài k ạ?</p>', '<p><strong>Chưa có gì hết</strong></p>', 1),
(25, 17, 'Bánh mì Star', 'vn-11134207-7r98o-lntmvlu9nz3ue8.jpg', 50, 200000, 160000, '2023-11-23 16:21:03', 2, '<p>Bánh mì tươi các vị (nho, socola, dâu, khoai môn, ruốc) Bánh mì tươi các vị (nho, socola, dâu, khoai môn, ruốc) . Xuất xứ: Việt Nam. <strong>#banhmituoi #banhmiruoc #banhmidau #banhkhoaimon #banhmisocola&nbsp;</strong></p><p>Hương vị: ngon</p><p>Bao bì/Mẫu mã: đẹp , chắc ,...ok</p><p>Sản phẩm đẹp, ngon, còn hạn, giao nhanh, shiper thân thiện, shop nhiệt tình, đúng gói chắc chắn, bánh ngon bánh có vị ngọt nói chung là được hết về mọi mặt!rẻ, đẹp chất lượng, giao nhanh…</p><p>#taphoakhangtrang #hanggiadungkhangtrang #freeship #freeshipextra</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p><br>&nbsp;</p>', '<p><strong>Công ty Bánh mì Việt Lê</strong></p><p><strong>Caffeine Free</strong><br>&nbsp;</p>', 1),
(26, 2, 'Bánh trung thu 6 vị', 'vn-11134207-7r98o-ly1jo25x4449dc.jpg', 45, 380000, 200000, '2023-11-23 16:23:55', 17, '<p>Set 6 bánh trung thu mini 75g ADELA BAKERY</p><p>Gồm 6 vị:</p><p>Đậu đỏ</p><p>Sen trà tảo</p><p>Sầu riêng</p><p>Cafe rum nho</p><p>Khoai môn hạt điều</p><p>Đậu xanh</p><p>Sỉ từ 10 hộp chỉ từ 5x</p><p>Hsd: 20 ngày</p><p>Hotline: 0902 11 9696 - 094 658 9399</p><p><br><img src=\"https://down-vn.img.susercontent.com/file/vn-11134208-7r98o-ly1qjdfq7paz13\" width=\"873\" height=\"784\"></p><p><br>&nbsp;</p>', '<p><strong>Brand</strong> &nbsp; &nbsp; &nbsp;<a href=\"https://shopee.vn/search?brands=1063859\">Adela</a></p><p><strong>Country of Origin&nbsp;</strong> &nbsp; &nbsp; Vietnam</p><p><strong>Food Type</strong> &nbsp; &nbsp; &nbsp;Seasonal</p><p><strong>Manufacturer/trader address</strong> &nbsp; &nbsp; &nbsp;Công ty TNHH Adela</p>', 1),
(27, 4, 'Bánh kem dâu tây hot trend', 'vn-11134207-7r98o-lwuah67z89uh6d.jpg', 30, 250000, 180000, '2023-11-23 20:31:17', 2, '<h2>Product Description</h2><p>Bánh sinh nhật là món quà không thể thiếu khi đến ngày sinh nhật. Và cả năm có 1 lần hãy để bên em phục vụ ạ ^^ Ai đã từng ăn nhà em rồi chắc hẳn vừa ngon vừa rẻ. Bánh đặt trước 15-30 phút là xong. Tội gì ko đặt bánh- bánh vừa mới- vừa mềm- vừa đẹp Bánh sinh nhật chỉ ship hoả tốc nội thành Hà Nội. Lh: 0984246869 địa chỉ: 22 ngõ 126 Phố Mễ Trì Hạ, Từ Liêm, HN</p>', '<p><strong>Cream</strong></p>', 1),
(28, 16, 'Bánh hoa tulip', 'vn-11134207-7r98o-lnwi5ma4ep657a.jpg', 500, 200000, 180000, '2023-11-29 20:36:43', 23, '<h2>Product Description</h2><p>bánh hot trend hoa tulip. Món quà tặng cho các mẹ, các chị em, ng iu ngày quan trọng thật đẹp và rực rỡ luôn ạ số điện thoại liên hệ: 0984246869</p>', '<p><strong>Cream ngon ngọt</strong></p>', 1),
(29, 4, 'Bánh kem mẫu 2 con chuột cute', 'e06ae1cdd1ccfc15a4d8fdb55426dff8.jpg', 30, 80000, 50000, '2023-12-02 20:54:53', 14, '<h2>Product Description</h2><p>Bánh sinh nhật là món quà không thể thiếu khi đến ngày sinh nhật. Ai đã từng ăn nhà em rồi chắc hẳn vừa ngon vừa rẻ. Bánh đặt trước 15-30 phút là xong. Tội gì ko đặt bánh- bánh vừa mới- vừa mềm- vừa đẹp Lh: 0984246869 địa chỉ: 22 ngõ 126 Phố Mễ Trì Hạ, Từ Liêm, HN</p>', '<p><strong>Ice cream Cake</strong></p><p><strong>Twin Pack</strong></p>', 1),
(30, 17, 'Bánh mì nguyên cám mix hạt ADELA BAKERY', '56547d9660b4591809b51ff3d34b3878.jpg', 48, 120000, 102000, '2023-12-02 20:56:21', 8, '<h2>Product Description</h2><p>BÁNH MỲ ĐEN HEALTHY HẠT DINH DƯỠNG! MỖI LẦN KHÁCH ĐẶT 20-30 cái! ăn dần , bánh giành cho các bạn ăn kiêng, giảm cân, eatclean! có thể bỏ tủ lạnh ngăn mát 4 ngày, ngăn đông 3 tuần( lúc ăn làm nóng bằng lò vi sóng) ! vẫn siêu thơm siêu ngon!! 35k/ chiếc ship! siêu to khổng lồ mà giá siêu yêu nhé! Bánh mỳ đen của Tiệm được ADELA Bakery sx 100% ogarnic tốt cho sức khoẻ! #banhmyden #tiembanhmedau #eatclean #ogarnic #banhmyhealthy #banhmygiamcan</p>', '<p>Hãng bánh: &nbsp; &nbsp; &nbsp;&nbsp;<strong>Khaled Hosseini</strong></p>', 1),
(34, 23, 'Sản phẩm test', 'e06ae1cdd1ccfc15a4d8fdb55426dff8.jpg', 12, 100000, 1000, '2024-08-14 08:37:07', 0, '<p>chưa luôn</p>', '<p>Chưa có</p>', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Tên đăng nhập',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Họ tên',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 là khách hàng 1 là nhân viên',
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `full_name`, `image`, `email`, `phone`, `address`, `role`, `active`) VALUES
(15, 'admin', '$2y$10$wSgpv97va9U0x.E0XgWZiO6ucoWkt08j73z4VTkhxXiJaGwP913Gm', 'Đặng Đình Anh Tú', 'user-default.png', 'tuwtf2605@gmail.com', '0976542314', 'Ha Noi', 1, 1),
(16, 'tusdz', '$2y$10$HMfEX8jeleKPBxqyIm.R2e9FRkD6hG2qrVpIpwtJMMgidR5cDXw7i', 'dang dinh anh tu', 'user-default.png', 'tuddaph43370@fpt.edu.vn', '0974566306', 'Mỹ Đình, HN', 0, 1),
(17, 'client', '$2y$10$ZOuDjQjlIdnnbBlVQ9x7ReC4jU4hk8NSQlgWqFLH9Hpvg0oDX7Vvm', 'Nguyễn Văn A', 'user-default.png', 'gpttuonthi123@gmail.com', '0874566321', 'Hàm Nghi, Mỹ Đình, HN', 0, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`orderdetails_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_category` (`category_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `cart_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `orderdetails_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Các ràng buộc cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `post_categories` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
