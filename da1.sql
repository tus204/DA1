-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th8 08, 2024 lúc 02:54 AM
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
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(180, 30, 16, 'Bánh mì nguyên cám mix hạt ADELA BAKERY', 102000, 2, '56547d9660b4591809b51ff3d34b3878.jpg');

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
(20, 'Bánh Donut', 'banh-donut.jpg', 1);

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
(12, 'okela', '2024-08-07 08:22:14', 0, 16, 26);

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
(108, 57, 26, 4, 200000);

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
(52, 16, '2024-08-07 06:33:47', 102000, 'Ha Noi', '0987654312', '', 1),
(53, 16, '2024-08-07 06:43:26', 50000, 'Ha Noi', '0987654312', '', 1),
(54, 16, '2024-08-07 06:55:38', 50000, 'Mỹ Đình, HN', '0974566306', '', 1),
(55, 16, '2024-08-07 08:24:08', 400000, 'Mỹ Đình, HN', '0974566306', '', 1),
(56, 16, '2024-08-07 08:29:14', 200000, 'Mỹ Đình, HN', '0974566306', '', 3),
(57, 16, '2024-08-07 08:30:47', 800000, 'Mỹ Đình, HN', '0974566306', '', 4);

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
(1, 9, 'Top 5+ món bánh ngon nên thử trong đời', 'top-sach.jpg', 'Admin', '<p><strong>Ngày nay, bạn có thể tìm thấy hàng triệu cuốn sách trên thế giới thuộc vô số chủ đề độc đáo. Tuy nhiên, có những cuốn sách tâm đắc nhất mà bạn không thể bỏ lỡ và nhất định nên đọc một lần. Hãy cùng Sforum điểm qua top 22+ những cuốn sách hay 2023 nên đọc trong đời ngay bây giờ nhé. Đừng quên chọn cho mình cuốn sách ưng ý nhất để đem về tủ sách nhà mình!</strong></p><h4><strong>Nhà giả kim</strong></h4><p>“Nhà giả kim” là một trong những cuốn sách hay của tác giả Paulo Coelho, kể về cuộc hành trình theo đuổi giấc mơ của Santiago, một chàng chăn cừu người Tây Ban Nha. Cuốn sách truyền đạt thông điệp về việc tìm kiếm quy luật của vũ trụ và ý nghĩa thực sự của cuộc đời. Và đây không chỉ là một câu chuyện phiêu lưu mà còn là một hành trình tìm kiếm bản thân, khám phá niềm tin và theo đuổi đam mê.</p><h4><strong>Đắc nhân tâm</strong></h4><p>“Đắc nhân tâm” do Dale Carnegie viết là một trong những cuốn sách hay bán chạy nhất mọi thời đại. Cuốn sách này chứa đựng những bài học về kỹ năng giao tiếp, làm thế nào để thu hút và ảnh hưởng đến người khác. Không chỉ dừng lại ở việc truyền đạt những kỹ năng mềm, cuốn sách còn giúp người đọc hiểu rõ hơn về tâm lý con người và cách xây dựng mối quan hệ.</p><h4><strong>Cà phê cùng Tony</strong></h4><p>“Cà phê cùng Tony” là sách hay nên đọc cho giới trẻ của tác giả Tony Buổi Sáng chứa đựng những suy nghĩ, bài học về cuộc sống, công việc và tình yêu dưới góc nhìn của Tony - một người trẻ tuổi đầy nhiệt huyết. Thông qua những câu chuyện ngắn gọn, dễ hiểu, Tony giúp người đọc nhìn lại và định hình lại quan điểm về nhiều vấn đề trong cuộc sống. Cuốn sách còn một người bạn đồng hành, giúp bạn tìm thấy niềm vui, hạnh phúc và ý nghĩa trong từng khoảnh khắc của cuộc đời.</p><h4><strong>Người giàu có nhất thành Babylon</strong></h4><p>George S. Clason thông qua “Người giàu có nhất thành Babylon” đã trình bày những bài học tài chính quý báu dưới dạng các câu chuyện huyền bí từ Babylon cổ đại, nơi được coi là nền kinh tế phồn thịnh nhất từng tồn tại. Đây là cuốn sách hay 2023 cực kỳ hot mà nhắc tới chắc hẳn ai cũng từng nghe qua một lần.</p><p>Cuốn sách cung cấp cho người đọc những nguyên tắc quản lý tài chính cá nhân, tiết kiệm và đầu tư một cách thông minh. Mỗi chương đều mang đến một bài học riêng biệt, giúp người đọc hiểu biết về việc làm giàu không chỉ dựa vào thu nhập, mà còn cần sự khôn ngoan, kỷ luật và hiểu biết về tiền bạc.</p><h4><strong>Cách nghĩ để thành công (Think &amp; Grow Rich)</strong></h4><p>“Think &amp; Grow Rich” thuộc top những cuốn sách hay nên đọc và là một tác phẩm kinh điển của Napoleon Hill, được viết dựa trên nghiên cứu của ông về hàng trăm người thành đạt nhất thế kỷ 20. Cuốn sách không chỉ giới thiệu về việc kiếm tiền mà còn về việc xây dựng tư duy thành công. Hill trình bày 13 bước để đạt đến sự giàu có và thành công, bắt đầu từ ý thức định hướng, lòng tin và sức mạnh của việc tạo lập mục tiêu cụ thể.</p>', 0, 1, '2023-11-29 17:13:09', '2024-08-07 09:44:07'),
(5, 2, 'Những nhà sản xuất bánh có sức ảnh hưởng nhất hiện nay', 'tac-gia.jpg', 'Admin', '<p><strong>Năm 2015, bên cạnh những tác giả đã quá đỗi quen thuộc thì thị trường xuất bản còn đón nhận nhiều gương mặt trẻ. Họ đã thổi một làn gió mới tới những người yêu sách, đem đến tinh thần mua sách và đọc sách ở thế hệ 9x, 10x.&nbsp;</strong></p><p>Cùng LĐTĐ điểm tên 10 nhà văn, tác giả tạo được tiếng vang nhất trong làng sách Việt Nam trong năm qua.</p><h4><strong>Nguyễn Nhật Ánh</strong></h4><p>Năm 2015 có thể coi là một năm “đại thắng” đối với nhà văn Nguyễn Nhật Anh. “Tôi thấy hoa vàng trên cỏ xanh” thu nhận thành công trên mức tưởng tượng khi được chuyển thể thành phim nhựa giới thiệu tới khán giả trong và ngoài nước. Bên cạnh sự phủ sóng mạnh mẽ của “Tôi thấy hoa vàng trên cỏ xanh”, những cuốn sách khác của nhà văn Nguyễn Nhật Ánh như: “Bảy bước tới mùa hè”, “Cô gái đến từ hôm qua”… cũng nhanh chóng trở thành “best-seller” ngay từ khi mới ra mắt.</p><p>Thành công của những tác phẩm do Nguyễn Nhật Ánh sáng tác đến từ sự dung dị, đời thường, gắn liền với những kỷ niệm tươi đẹp của tuổi thơ. Mỗi cuốn sách như một bức tranh mở ra trước mắt người đọc những khung cảnh chân phương, đầy ắp tiếng cười.</p><h4><strong>Nguyễn Phong Việt</strong></h4><p>“Đi qua thương nhớ”, “Sinh ra là để cô đơn” hay mới đây nhất là “Sống một cuộc đời bình thường” đều là những cuốn sách được yêu mến của Nguyễn Phong Việt.</p><p>Được mệnh danh là nhà thơ “ăn khách” nhất, Nguyễn Phong Việt chia sẻ: “Tôi may mắn khi mình có rất nhiều cảm xúc. Ngay từ tập thơ đầu, tôi là người làm thơ không câu nệ câu chữ. Mình nghĩ câu đó cần 20 từ thì viết 20 từ chứ không phải vì để cho ngắn gọn, cho người đọc dễ chịu thì viết ngắn hơn. Mình viết mình cảm nhận được trước đã, rồi độc giả mới hiểu. Sau này, tôi có sự thỏa hiệp nho nhỏ, thay đổi vài từ để cảm xúc của câu chữ không bị bóp nghẹt trong đau đớn”.</p><h4><strong>Anh Khang</strong></h4><p>Sớm định hình phong cách riêng trong dòng văn học trẻ sôi động, Anh Khang - tác giả sinh năm 1987 được độc giả trẻ đón nhận qua những tựa sách “hot” như “Ngày trôi về phía cũ”, “Đường hai ngả người thương thành lạ” hay “Buồn làm sao buông”.</p><p>Văn của Anh Khang không tìm đến sự nổi loạn hay phá cách trong con chữ mà tạo ra dấu ấn riêng nhờ sự nhạy cảm trong lối suy nghĩ thấu đáo, truyền tải đúng tâm tình của người trẻ hiện đại. Anh Khang là một trong những tác giả trẻ sở hữu số lượng fans đông đảo nhất hiện nay trên mạng xã hội cũng như ngoài đời thực.</p>', 0, 1, '2023-11-29 17:25:47', '2024-08-07 09:44:31'),
(8, 9, 'Top bánh kem 2024', 'top-sach-tam-li.jpg', 'Admin', '<p><i>Tâm lý học là một ngành học thú vị và hấp dẫn, bởi vì nó giúp chúng ta hiểu được tâm lý con người, một thứ rất phức tạp và biến đổi. Nhiều người muốn nâng cao kiến thức về tâm lý học và tìm đọc những cuốn sách chất lượng và hữu ích về ngành học này. Trong bài viết này, sẽ giới thiệu cho bạn top cuốn sách tâm lý nổi tiếng hiện nay.</i></p><h4><strong>Tư duy nhanh và chậm – Daniel Kahneman</strong></h4><p>Tư Duy Nhanh Và Chậm là một cuốn sách nổi tiếng của Daniel Kahneman, một nhà tâm lý học xuất sắc. Sách giải thích rằng tâm trí con người có hai hệ thống hoạt động khác nhau: Hệ thống 1 hoạt động nhanh chóng, trực giác và không cần suy nghĩ nhiều; Hệ thống 2 hoạt động chậm rãi, cẩn thận và cần nhiều sự chú ý. Tác giả cũng cho thấy rằng con người thường mắc phải những sai lầm trong việc ra quyết định, do bị ảnh hưởng bởi những cảm xúc, định kiến và thiếu nhất quán. Cuốn sách này sẽ giúp bạn đọc hiểu được nhiều điều thú vị và sâu sắc về tâm lý con người và nhận ra rằng “Chúng ta không giỏi như chúng ta nghĩ”.</p><h4><a href=\"https://tiki.vn/search?q=phi%20l%C3%BD%20tr%C3%AD\"><strong>Phi lý trí</strong></a><strong> – Dan Ariely</strong></h4><p>Phi Lý Trí là một tác phẩm trong top cuốn sách tâm lý của Dan Ariely, một giáo sư tâm lý học và kinh tế học hành vi, trong đó ông đã trình bày những nghiên cứu và thí nghiệm của mình về sự thiếu hợp lý của con người trong việc ra quyết định và tiết lộ những hiện tượng tâm lý mới lạ và thú vị. Ông đã khẳng định rằng: chúng ta thường bị ảnh hưởng bởi một “hệ thống” phi lý trí vô hình.&nbsp;</p><p>Ông đã kết hợp những nghiên cứu khoa học với những ví dụ thực tế để giúp chúng ta nhận ra những “điểm mù” trong cách suy nghĩ hàng ngày. Phi Lý Trí của Dan Ariely là một cuốn sách tâm lý học rất cuốn hút bởi ông đã sử dụng ngôn ngữ dễ hiểu nhưng vẫn khiến người đọc phải suy ngẫm về những hành vi và những sai lầm của bản thân để có thể sống một cách hợp lý và tốt đẹp hơn.</p><h4><strong>Im lặng – Sức mạnh của người hướng nội</strong></h4><p>Trong cuốn sách này, Susan Cain đã nói về sự khác biệt giữa người hướng ngoại và người hướng nội, và những ưu điểm của người có tính cách nhạy cảm. Tác giả đã chỉ ra rằng người hướng nội có thể tận dụng tính cách của mình để chọn lựa công việc, lĩnh vực phù hợp với mình trong xã hội.&nbsp;</p><p>Cuốn sách này sẽ rất hữu ích cho bạn nếu bạn là người hướng nội muốn tìm đường đi cho bản thân, hoặc nếu bạn muốn hiểu thêm về người hướng nội để có thể quản lý, giao tiếp và hợp tác tốt hơn với họ.</p><h4><strong>Tâm Lý Học Đám Đông – Gustave Le Bon</strong></h4><p>Tác giả Gustave Le Bon, một nhà tâm lý học Pháp nổi tiếng, đã viết cuốn sách Tâm lý học đám đông để nghiên cứu về sự ảnh hưởng của đám đông đến lý trí và cảm xúc của con người. Tác giả đã dựa trên nhiều nghiên cứu về tinh thần và tính cách của các dân tộc, chủng tộc khác nhau trên thế giới. Tác giả đã cho rằng, con người bị chi phối bởi những yếu tố sinh học và tâm lý học. Chủng tộc là một thực thể ẩn sâu trong mỗi cá nhân và có ảnh hưởng đến mọi hành động, ham muốn, xung năng của họ. Tác giả cũng đã trải qua nhiều biến động lịch sử của Pháp, như Công Xã Paris, cách mạng Pháp 1789 và 1848. Những trải nghiệm này đã giúp tác giả có những quan sát và phân tích từ thực tiễn được thể hiện rõ nét trong cuốn sách Tâm lý học đám đông.</p>', 0, 1, '2023-12-03 13:45:32', '2024-08-07 09:44:46'),
(9, 9, '9 món bánh mà không nên bỏ lỡ dịp mùa đông', 'top-9-sach.jpg', 'Admin', '<p><strong>Bạn quan tâm đến tình hình kinh tế thế giới, bạn muốn bắt đầu một sự nghiệp kinh doanh mà phân vân không biết nền kinh tế thực sự vận hành như thế nào, bạn muốn tìm hiểu một tựa sách về kinh tế nhưng vẫn đang phân vân. Bài viết này sẽ giải đáp hết thắc mắc đó. Cùng tìm hiểu những cuốn sách về kinh doanh hay nhất được chúng tớ tổng hợp nhé.</strong></p><h4><strong>Thế giới phẳng – Thomas L.Friedman</strong></h4><p>Sách kinh tế Thế giới phẳng nói về vấn đề toàn cầu hóa dưới góc độ phân tích độc đáo. Theo tác giả, “phẳng” trong thế giới phẳng đó là sự kết nối, phá vỡ đi rào cản về chính trị, tôn giáo, địa lý, từ đó mở ra địa chính trị, địa kinh tế, phương thức sản xuất kinh doanh tiên tiến hiện đại hơn.</p><p>Cuốn sách tập trung mổ xẻ cấu trúc của nền kinh tế và chính trị đương đại, nêu rõ sự phát triển vượt bậc của khoa học kỹ thuật làm thay đổi diện mạo của nền kinh tế thế giới. Bằng cách trình bày hóm hỉnh hài hước, tác giả đã giúp người đọc hiểu thế giới phẳng được bắt đầu khi nào, diễn tiến ra sao, các yếu tố then chốt làm thế giới phẳng. Thông qua cuốn sách, các doanh nghiệp, quốc gia, cá nhân nhìn nhận rõ được cơ hội và thách thức trong bối cảnh toàn cầu hóa, từ đó đưa ra định hướng phát triển riêng cho mình.</p><h4><strong>Lược sử kinh tế học – Niall Kishtainy</strong></h4><p>Sách kinh tế Lược sử kinh tế học luôn nằm trong top những cuốn sách bán chạy nhất hiện nay. Đọc xong cuốn sách mọi người sẽ cảm nhận được kinh tế học không phải là những kiến thức cao siêu dành cho các doanh nhân, chính khách hay nhà kinh tế học mà nó có ích và gần gũi với cuộc sống củ mỗi người. Mỗi người trong thời đại hiện nay đều cần nắm được các kiến thức cơ bản về kinh tế để giúp cuộc sống của mình được tốt đẹp hơn.</p><p>Nội dung sách tập trung nói về các học thuyết và quy luật kinh tế kinh điển ở phương tây trong hàng nghìn năm qua dưới góc độ khác quan. Tác giả đưa ra những minh họa, ví dụ sống động và dễ hiểu để có thể tiếp cận được phần đa người đọc. Với độ dày khoảng 300 trang, sách kinh tế hay Lược sử kinh tế học giúp chúng ta nắm được các cột mốc quan trọng toàn cảnh nền kinh tế, từ lúc khởi nguồn đơn giản đến khi phức tạp hơn, xuất hiện giá trị thặng dư, buôn bán…</p><h4><strong>Doanh nghiệp của thế kỷ 21 – Robert T. Kiyosaki</strong></h4><p>Nhắc đến những cuốn sách kinh tế hay thì không thể nào kể thiếu tên cuốn Doanh nghiệp của thế kỷ 21. Cuốn sách này sẽ nêu rõ lý do tại sao cần phải xây dựng được cho mình doanh nghiệp riêng, và nên hoạt động trong lĩnh vực nào là tốt nhất. Bên cạnh đó tác giả cũng đưa ra nhiều kiến thức về tư duy làm giàu, cách tìm kiếm các phương tiện giúp xây dựng hình ảnh doanh nghiệp tốt hơn đối với khách hàng, người tiêu dùng, đối tác… Những công cụ, cách thức tìm kiếm mọi thứ để giúp doanh nghiệp phát triển toàn diện hơn cũng được bật mí chi tiết và đầy đủ nhất qua cuốn sách.</p><p>Cuốn sách khai sáng tư duy cho những ai đang mong muốn tự lập kinh doanh và làm giàu cho bản thân. Tác giả đưa ra giải pháp mà bất cứ ai cũng có thể vận dụng, áp dụng thành công mà không cần phải có tài năng hay thiên bẩm.</p><h4><strong>Tuần làm việc 4 giờ – Timothy Ferress</strong></h4><p>Một trong những cuốn sách kinh tế hay mà bạn nên đọc đó là Tuần làm việc 4 giờ. Đọc cuốn sách này, mỗi người sẽ tự trả lời được cho mình câu hỏi làm thế nào để có được cuộc sống tự do, thoải mái như một triệu phú, tỷ phú mà không cần phải có 1 triệu đô la, 1 tỷ đô la – số tiền mà ít ai có được trong suốt cuộc đời học tập, làm việc của mình. Tác giả đã giúp mỗi người biết cách tách biệt thu nhập với thời gian, từ đó xây dựng cho mình lối sống lý tưởng với nhiều hoạt động đa dạng như đi vòng quanh thế giới, đọc sách…</p><p>Từ cuốn sách, tác giả Timothy Ferress cũng đã có những chia sẻ về cách kiếm tiền 40 nghìn đô /tháng chỉ bằng cách làm 4 tiếng/tuần. Sự khác biệt của cuốn sách là đưa ra góc nhìn cuộc sống đơn giản và dễ thở hơn, thay vì đề cập đến các vấn đề thường gặp như thiếu thời gian làm việc, nghỉ ngơi, tinh thần căng thẳng… Nhìn chung mỗi người hoàn toàn có thể sống tốt với công việc mà mình có tiềm năng, quan trọng bạn cần phải khai phá tiềm năng của mình đúng đắn.</p><h4><strong>Chiến lược đại dương xanh – W. Chan Kim &amp; Renee Mauborgne</strong></h4><p>Chiến lược đại dương xanh là cuốn sách hay về kinh tế tiếp theo mà chúng tôi muốn giới thiệu đến các bạn đọc. Cuốn sách này xuất bản từ năm 2004, đến nay đã trải qua gần 20 năm nhưng vẫn giữ nguyên tính lịch sử và sự phù hợp với thời đại. Cuốn sách nổi tiếng này đã được dịch hơn 46 thứ tiếng và bán hơn 4 triệu bản trên toàn thế giới.</p><p>Nội dung cuốn sách đề cập đến chiến lược kinh doanh kinh điển mà các doanh nhân, lãnh đạo cần biết, đó là mở rộng và phát triển thị trường mới – một đại dương xanh – ở đó không có bất cứ sự cạnh tranh nào.</p><p>Chiến lược này nhấn mạnh tầm quan trọng của việc nâng cao giá trị dịch vụ cũng như sản phẩm, đi kèm với đó là giá thành hợp lý để mang lại nhiều quyền lợi cho người tiêu dùng. Chiến lược này có thể đưa các doanh nghiệp phát triển nhảy vọt và tăng trưởng mạnh mẽ về giá trị.</p>', 0, 1, '2023-12-03 17:41:06', '2024-08-07 09:45:06');

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
(1, 2, 'Tâm Lý Học Thành Công', 'tam-ly-hoc-thanh-cong.jpg', 100, 199000, 159000, '2023-11-18 08:22:03', 0, '<p><strong>Nếu bạn vẫn luôn tin rằng chỉ những ai may mắn sở hữu trí thông minh bẩm sinh mới có thể thành công thì nhất định bạn phải đọc cuốn sách này.</strong></p><p>Có thể bạn chưa biết, “Mindset: Tâm lý học thành công” của Tiến sĩ tâm lý học Carol S. Dweck (ĐH Stanford) là một trong sáu quyển sách được tỷ phú Bill Gates review và khuyên đọc vào năm 2015. Không chỉ vậy, cuốn sách này cũng được Satya Nadella - vị CEO tài ba của Microsoft – xem như một \"hồi chuông đánh thức gã khổng lồ đang ngủ say\" bên trong con người ông. Và đây cũng chính là cuốn sách mà anh <strong>Hoàng N.Trung</strong> (Section Manager - VEU) đã “highly recommend” trong buổi Morning Speech về “Growth Mindset” ngày 28/4, bởi theo anh đây là <i><strong>“một cuốn sách cho ta hiểu rõ về mindset và vì sao mindset lại quan trọng đối với sự thành công của mỗi người”. </strong></i>Giờ cùng review về cuốn sách này nhé!</p>', '<p>Nhà xuất bản: <strong>NXB Thế Giới</strong> &nbsp; &nbsp; &nbsp;Tác giả: <strong>Carol Dweck</strong></p>', 1),
(2, 2, 'Thuật thao túng', 'thuat-thao-tung.jpg', 100, 140000, 97000, '2023-11-18 10:15:54', 0, '<p>“Thuật Thao Túng – Góc Tối Ẩn Sau Mỗi Câu Nói” của tác giả <strong>Wladislaw Jachtchenko</strong> là một cuốn sách rất hữu ích để nâng cao kỹ năng và chiến lược giao tiếp của bạn. Cuốn sách cung cấp những kỹ năng và chiến lược giao tiếp cần thiết để đạt được sự thành công trong cuộc sống.</p>', '<p>Nhà xuất bản: <strong>NXB Thế Giới</strong> &nbsp; &nbsp; &nbsp;Tác giả: <strong>Wladislaw Jachtchenko</strong></p>', 1),
(6, 2, 'Tâm Lý Học Tội Phạm', 'tam-ly-hoc-toi-pham.jpg', 50, 145000, 100000, '2023-11-20 22:23:49', 0, '', '', 1),
(14, 17, 'An Nhiên Giữa Những Thăng Trầm', 'an-nhien.jpg', 5, 120000, 102000, '2023-11-20 22:54:49', 0, '<p>Ai trong đời chẳng từng một lần rơi vào tận cùng nỗi cô đơn, chợt thấy mình yếu đuối, mong manh quá đỗi; chẳng từng một lần chực gục ngã, buông xuôi trong bão giông cuộc đời; chẳng từng một lần chán nản trước thế sự đổi thay, lòng người nguội lạnh; chẳng từng một lần cảm thấy tìm chút bình an trong cuộc đời vô thường sao khó quá…</p><p>Thế rồi bất chợt một ngày kia, đâu đó trên đoạn đường trần xuất hiện những bài thơ chân tình, mộc mạc, ẩn chứa cả ân tình chuyển hóa kiếp nhân sinh:</p><p><i>Em có biết, tình yêu mầu nhiệm lắm!</i></p><p><i>Nếu bàn tay quen nắm, biết buông ra Cứ thầm lặng, yêu đâu cần vội vã</i></p><p><i>Giữa muôn loài thấy lại bóng hình ta…</i></p><p>Những bài văn mang đậm chất triết lý, chất chứa các bài học trị liệu nỗi khổ niềm đau của kiếp sống con người: <i>“Khi đến với cuộc đời này, ta chẳng mang theo thứ gì, khi rời đi, ta chỉ như một làn khói. Ngẫm lại đời người thật đơn giản vậy! Vinh hoa phú quý rồi cũng thoáng qua theo ngày tháng, ân ái tình thù rồi cũng trở về với cát bụi”.</i></p>', '<p>Nhà xuất bản: <strong>NXB Thế Giới</strong> &nbsp; &nbsp; &nbsp;Tác giả: <strong>Như Nhiên Thích Tánh Tuệ</strong></p>', 1),
(15, 17, 'Hành Trình Về Phương Đông', 'hanh-trinh-ve-phuong-dong.jpg', 50, 118000, 95000, '2023-11-20 23:05:47', 0, '<p>Nếu là một mọt sách thì chắc hản chúng ta ít nhất đã từng nghe qua tên cuốn sách <i>Hành trình về phương Đông, </i>mình cũng vậy, cũng từng tò mò, từng có ham muốn mãnh liệt đọc cuốn sách được mệnh danh all time best selling book này, và quả thực trải nghiệm đọc cuốn sách này thật khó có thể truyền đạt bằng lời nói hay ngôn ngữ ký hiệu như chúng ta vẫn đang thấy ở đây. Nhưng quả thực mình vẫn muốn chia sẻ và để lại một chút gì đó cảm nhận của bản thân về những điều mình học được, mình suy ngẫm hay ít ra là cho rằng là những nội dung mà sách hướng tới.&nbsp;</p><p><strong>Về tác giả Baird Thomas Spalding</strong></p><p>Là một nhà văn tâm linh người Mĩ sống vào cuốn thế kỷ XVIII đầu thế kỷ IX, những thông tin vè quê quán của ông hiện nay vẫn còn nhiều tranh cãi. Ông là nhà văn tâm linh với tác phẩm nổi tiếng Life and Teachng of the Masters of the Far East (tạm dịch: Cuộc đời các chân sư phương Đông).</p>', '<p>Nhà xuất bản: <strong>NXB Thế Giới</strong> &nbsp; &nbsp; &nbsp;Tác giả: <strong>Baird T Spalding</strong></p>', 1),
(16, 17, 'Huyền Thuật Và Các Đạo Sĩ Tây Tạng', 'huyen-thuat-tay-trang.jpg', 200, 110000, 90000, '2023-11-20 23:09:13', 0, '<p><strong>HÀNH TRÌNH 12 NĂM TRONG ĐẤT PHẬT HUYỀN BÍ&nbsp;</strong></p><p>Gần 100 năm kể từ ngày ra mắt, Mystyquet et Magiciens du Tibet, cuốn sách vang dội châu Âu của nữ tác giả người Pháp Alexandra David – Neel, mới có dịp đến tay bạn đọc Việt Nam với tên gọi&nbsp;Huyền thuật và các đạo sĩ Tây Tạng. Cuốn sách là một thiên phóng sự đáng kinh ngạc của tác giả trong hành trình xuyên qua vùng đất Tây Tạng để khám phá các huyền thuật của đạo sĩ nơi đây.&nbsp;</p><p>Với ý định tiếp kiến Đức Đạt Lai Lạt Ma đời thứ 13 đang lánh nạn tại Ấn Độ (vì xung đột chính trị với triều đại Mãn Thanh), Alexandra David – Neel không ngờ các bí mật về huyền thuật Tây Tạng lẫn lời chỉ dẫn sâu xa của những vị đạo sư đã dẫn bà đi xa hơn dự định ban đầu của mình. Sau 12 năm rong ruổi khắp Tây Tạng, Alexandra đã để lại tập sách Huyền thuật và các đạo sĩ Tây Tạng như một công trình nghiên cứu quan trọng về vùng đất đầy bí ẩn này.</p><p>&nbsp;</p>', '<p>Nhà xuất bản: <strong>NXB Thế Giới</strong> &nbsp; &nbsp; &nbsp;Tác giả: <strong>Alexandra David Neel</strong></p>', 1),
(17, 17, 'Muôn Kiếp Nhân Sinh', 'muonkiepnhansinh.jpg', 30, 270000, 187000, '2023-11-20 23:12:48', 0, '<p><i><strong>Muôn kiếp nhân sinh</strong></i> là một bộ sách về <a href=\"https://vi.wikipedia.org/wiki/T%C3%A2m_linh\">tâm linh</a> do giáo sư John Vũ sáng tác dưới <a href=\"https://vi.wikipedia.org/wiki/B%C3%BAt_danh\">bút danh</a> Nguyên Phong và được công ty <a href=\"https://vi.wikipedia.org/wiki/First_News\">First News</a> phát hành năm 2020. Thông qua hành trình trải nghiệm quá khứ qua nhiều kiếp sống của một doanh nhân người Mỹ, tác phẩm bàn về <a href=\"https://vi.wikipedia.org/wiki/Quan_h%E1%BB%87_nh%C3%A2n_qu%E1%BA%A3\">luật nhân quả</a>, sự <a href=\"https://vi.wikipedia.org/wiki/Lu%C3%A2n_h%E1%BB%93i\">luân hồi</a>, <a href=\"https://vi.wikipedia.org/wiki/T%C3%A1i_sinh_(Ph%E1%BA%ADt_gi%C3%A1o)\">tái sinh</a> và cuộc sống của con người.</p><p>Sau thành công của tác phẩm phóng tác <i>Hành trình về phương Đông</i>, Nguyên Phong nhận được sự chú ý của độc giả Việt Nam qua những ấn phẩm dịch thuật về tâm linh. Điều này đã thu hút sự chú ý của Giám đốc công ty <a href=\"https://vi.wikipedia.org/wiki/First_News\">First News</a> Nguyễn Văn Phước, là tiền đề cho quá trình hợp tác lâu dài giữa Nguyên Phong với công ty này. Năm 2017, Nguyên Phong bắt tay vào sáng tác <i>Muôn kiếp nhân sinh</i>.</p>', '<p>Nhà xuất bản: <strong>NXB Thế Giới</strong> &nbsp; &nbsp; &nbsp;Tác giả: <strong>Nguyên Phong</strong></p>', 1),
(18, 16, 'Bông lan trứng muối - For Keto, DAS, Lowcarb, Eatclean & Tiểu đường', 'bong-lan2.jpg', 66, 150000, 120000, '2023-11-20 23:20:33', 0, '<h2>Product Description</h2><p>Bánh bông lan trứng muối dành riêng cho dân Keto, DAS, Lowcarb &amp; Tiểu đường. Cốt bánh bông xốp, ngọt dịu kết hợp cùng sốt dầu trứng thơm ngậy hoặc sốt phô mai ngọt thanh. Đây là sự lựa chọn \"an toàn\" nhất trong menu Bếp Gừng vì phù hợp với đa số khẩu vị khách hàng, rất xứng đáng để bạn cho vào giỏ hàng!</p><p><br>HSD: 1 tháng (Note tượng trưng theo yêu cầu của shopee để được phê duyệt món) Nếu còn thắc mắc hay gặp vấn đề cần hỗ trợ, bạn đừng ngại ngần liên hệ với Bếp theo các thông tin dưới đây để chúng mình tư vấn, giải quyết cho bạn nhé! Cảm ơn bạn đã luôn tin tưởng và ủng hộ Bếp ạ!&nbsp;<br>&nbsp;</p><p>#Keto #DAS #Lowcarb #banhketohanoi #dashanoi #bếpketohanoi #banhankieng #ketofood #ketodiet #cakesdiet #dasdiet #tieuduong #tieuduongthaiky #beophi #gym #yoga #erobic #hiit #giamcan #bepnhagung #gungdasshop #tranthingocanh</p><p>&nbsp;</p>', '<p><strong>eheheheheheh</strong></p>', 1),
(20, 2, 'Bánh bông lan tươi Gizza Original mông to (Hàng Việt Nam) - Ăn vặt, bữa sáng, bữa phụ', 'bong-lan.jpg', 55, 200000, 160000, '2023-11-20 23:31:04', 2, '<h2>Product Description</h2><p>- Bánh bông lan tươi Gizza với màu vàng nâu đặc trưng cùng hình dáng mềm xốp, mướt mịn và hương vị gây thương nhớ... Đặc biệt là dù nhỏ gọn nhưng Gizza lại cung cấp năng lượng vượt trội cho cả ngày dài.</p><p>- Là dòng bánh tươi được yêu thích hàng đầu, Gizza mang tới cảm giác mềm mịn, thơm lừng, tan ngay trong miệng khi ăn. Bánh tươi Gizza là lựa chọn hoàn hảo cho bữa ăn sáng tiện lợi của các bé và phụ huynh, vừa ngon vừa đầy đủ chất dinh dưỡng lại no lâu.</p><p>- Thành phần: Bột mì 32%, dầu hạt cải – Trứng 15% – Muối – Dextrose-Các chất : Diphosphate, natri carbonate-Sữa bột gầy, Kali Sorbate – lactose, acid điều hòa – flavourings.</p><p>- Sản xuất tại: Công ty Cổ phần sản xuất và thương mại SBT Việt Nam NAY ĐÃ CÓ THÊM KHAY ĐỰNG TRONG GÓI BÁNH giúp sản phẩm luôn giữ được hình dáng và kết cấu không bị tác động ngoại lực&nbsp;</p><p>#banhbonglan #bánh #energy #ăn_vặt #ăn_sáng #bữa_phụ #ăn_kiêng #doanvat #anvat #socola #mongto #rẻ #monglep</p>', '<p><strong>Bột mì 32%, dầu hạt cải – Trứng 15% – Mu</strong></p><p><br><i><strong>Cream Puffs</strong></i></p>', 1),
(21, 17, 'Bánh mì nóng tại xưởng', 'a4a88a3871cc645a2d164bb3264cfb39.jpg', 20, 110000, 88000, '2023-11-23 09:54:06', 0, '<h2>Product Description</h2><p>BÁNH MỲ ĐEN HEALTHY HẠT DINH DƯỠNG! MỖI LẦN KHÁCH ĐẶT 20-30 cái! ăn dần, bánh giành cho các bạn ăn kiêng, giảm cân, eatclean! có thể bỏ tủ lạnh ngăn mát 4 ngày, ngăn đông 3 tuần( lúc ăn làm nóng bằng lò vi sóng) ! vẫn siêu thơm siêu ngon!! 35k/ chiếc ship! siêu to khổng lồ mà giá siêu yêu nhé! Bánh mỳ đen của Tiệm được ADELA Bakery sx 100% ogarnic tốt cho sức khoẻ! #banhmyden #tiembanhmedau #eatclean #ogarnic #banhmyhealthy #banhmygiamcan</p>', '<p><br><strong>Lúa mạch, hạt dinh dưỡng</strong></p><p><strong>Bột mỳ nguyên cám, hạt dinh dưỡng</strong></p>', 1),
(23, 6, 'Bánh Gấu Nhân Kem', '272bbb798407080af204f4e7ff58dd58.jpg', 30, 150000, 120000, '2023-11-23 12:19:16', 0, '<p>Bánh gấu là bánh quy chất lượng cao với vị ngon của nhân kem sữa dừa thơm ngon. Sản phẩm là sự kết hợp giữa hương vị ngọt ngào, đậm đà của lớp kem từ bên trong và vị giòn tan của vỏ bánh bên ngoài, sẽ hấp dẫn bất kì ai mỗi khi thưởng thức. Bánh được làm từ những nguyên liệu có nguồn gốc từ thiên nhiên, đảm bảo chất lượng vệ sinh an toàn thực phẩm. Bánh có hình gấu dễ thương, ngộ nghĩnh, đáng yêu, sẽ mang lại cảm giác thú vị cho người thưởng thức. Thông số sản phẩm - Thành phần: Bột mỳ, dầu tinh luyện, đường, bơ, chất thay thế bơ cacao, chất béo thực vật tinh khiết đã được Hydro hóa, sữa bột, tinh bột ngô, trứng gà, vani, chất điều vị, chất chống oxy hóa, màu thực phẩm. - Xuất xứ: Việt Nam - Trọng lượng: 1 thùng/5kg #lưuý : Trong quá trình đóng gói shop đã lựa chọn bỏ hết cái vỡ, nhưng khi vận chuyển xa không tránh khỏi có cái bị vỡ mong quý khách thông cảm.</p>', '<p>Date: &nbsp; &nbsp;&nbsp;<strong> 6 Months</strong></p>', 1),
(24, 17, 'Bánh mỳ star dâu đỏ', 'vn-11134207-7r98o-lntmvlu9l5yycb.jpg', 123, 150000, 120000, '2023-11-23 12:20:16', 0, '<h2>Product Description</h2><p>Hương vị: thơm ngon, mềm.</p><p>Bao bì/Mẫu mã: còn lâu</p><p>Shop giao hàng nhanh, đóng gói cẩn thận, đủ số lượng, uy tín, sản phẩm rất ổn, cảm ơn shop ạ.</p><p><br>Bánh mềm. Ngon. Mua đc mã sale rẻ quá. Tiếc k mua nhiều :D bên shop bán rẻ hơn so với shop khác. Chủ shop nhiệt tình lắm ạ. Mai mốt ủng hộ shop nhiều nhé ạ. Shop có bán bánh mochi kem lạnh. Không tẩm dừa bên ngoài k ạ?</p>', '<p><strong>Chưa có gì hết</strong></p>', 1),
(25, 17, 'Bánh mì Star', 'vn-11134207-7r98o-lntmvlu9nz3ue8.jpg', 50, 200000, 160000, '2023-11-23 16:21:03', 2, '<p>Bánh mì tươi các vị (nho, socola, dâu, khoai môn, ruốc) Bánh mì tươi các vị (nho, socola, dâu, khoai môn, ruốc) . Xuất xứ: Việt Nam. <strong>#banhmituoi #banhmiruoc #banhmidau #banhkhoaimon #banhmisocola&nbsp;</strong></p><p>Hương vị: ngon</p><p>Bao bì/Mẫu mã: đẹp , chắc ,...ok</p><p>Sản phẩm đẹp, ngon, còn hạn, giao nhanh, shiper thân thiện, shop nhiệt tình, đúng gói chắc chắn, bánh ngon bánh có vị ngọt nói chung là được hết về mọi mặt!rẻ, đẹp chất lượng, giao nhanh…</p><p>#taphoakhangtrang #hanggiadungkhangtrang #freeship #freeshipextra</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p><br>&nbsp;</p>', '<p><strong>Công ty Bánh mì Việt Lê</strong></p><p><strong>Caffeine Free</strong><br>&nbsp;</p>', 1),
(26, 2, 'Bánh trung thu 6 vị', 'vn-11134207-7r98o-ly1jo25x4449dc.jpg', 45, 380000, 200000, '2023-11-23 16:23:55', 15, '<p>Set 6 bánh trung thu mini 75g ADELA BAKERY</p><p>Gồm 6 vị:</p><p>Đậu đỏ</p><p>Sen trà tảo</p><p>Sầu riêng</p><p>Cafe rum nho</p><p>Khoai môn hạt điều</p><p>Đậu xanh</p><p>Sỉ từ 10 hộp chỉ từ 5x</p><p>Hsd: 20 ngày</p><p>Hotline: 0902 11 9696 - 094 658 9399</p><p><br><img src=\"https://down-vn.img.susercontent.com/file/vn-11134208-7r98o-ly1qjdfq7paz13\" width=\"873\" height=\"784\"></p><p><br>&nbsp;</p>', '<p><strong>Brand</strong> &nbsp; &nbsp; &nbsp;<a href=\"https://shopee.vn/search?brands=1063859\">Adela</a></p><p><strong>Country of Origin&nbsp;</strong> &nbsp; &nbsp; Vietnam</p><p><strong>Food Type</strong> &nbsp; &nbsp; &nbsp;Seasonal</p><p><strong>Manufacturer/trader address</strong> &nbsp; &nbsp; &nbsp;Công ty TNHH Adela</p>', 1),
(27, 4, 'Bánh kem dâu tây hot trend', 'vn-11134207-7r98o-lwuah67z89uh6d.jpg', 30, 250000, 180000, '2023-11-23 20:31:17', 0, '<h2>Product Description</h2><p>Bánh sinh nhật là món quà không thể thiếu khi đến ngày sinh nhật. Và cả năm có 1 lần hãy để bên em phục vụ ạ ^^ Ai đã từng ăn nhà em rồi chắc hẳn vừa ngon vừa rẻ. Bánh đặt trước 15-30 phút là xong. Tội gì ko đặt bánh- bánh vừa mới- vừa mềm- vừa đẹp Bánh sinh nhật chỉ ship hoả tốc nội thành Hà Nội. Lh: 0984246869 địa chỉ: 22 ngõ 126 Phố Mễ Trì Hạ, Từ Liêm, HN</p>', '<p><strong>Cream</strong></p>', 1),
(28, 16, 'Bánh hoa tulip', 'vn-11134207-7r98o-lnwi5ma4ep657a.jpg', 500, 200000, 180000, '2023-11-29 20:36:43', 2, '<h2>Product Description</h2><p>bánh hot trend hoa tulip. Món quà tặng cho các mẹ, các chị em, ng iu ngày quan trọng thật đẹp và rực rỡ luôn ạ số điện thoại liên hệ: 0984246869</p>', '<p><strong>Cream ngon ngọt</strong></p>', 1),
(29, 4, 'Bánh kem mẫu 2 con chuột cute', 'e06ae1cdd1ccfc15a4d8fdb55426dff8.jpg', 30, 80000, 50000, '2023-12-02 20:54:53', 5, '<h2>Product Description</h2><p>Bánh sinh nhật là món quà không thể thiếu khi đến ngày sinh nhật. Ai đã từng ăn nhà em rồi chắc hẳn vừa ngon vừa rẻ. Bánh đặt trước 15-30 phút là xong. Tội gì ko đặt bánh- bánh vừa mới- vừa mềm- vừa đẹp Lh: 0984246869 địa chỉ: 22 ngõ 126 Phố Mễ Trì Hạ, Từ Liêm, HN</p>', '<p><strong>Ice cream Cake</strong></p><p><strong>Twin Pack</strong></p>', 1),
(30, 17, 'Bánh mì nguyên cám mix hạt ADELA BAKERY', '56547d9660b4591809b51ff3d34b3878.jpg', 50, 120000, 102000, '2023-12-02 20:56:21', 8, '<h2>Product Description</h2><p>BÁNH MỲ ĐEN HEALTHY HẠT DINH DƯỠNG! MỖI LẦN KHÁCH ĐẶT 20-30 cái! ăn dần , bánh giành cho các bạn ăn kiêng, giảm cân, eatclean! có thể bỏ tủ lạnh ngăn mát 4 ngày, ngăn đông 3 tuần( lúc ăn làm nóng bằng lò vi sóng) ! vẫn siêu thơm siêu ngon!! 35k/ chiếc ship! siêu to khổng lồ mà giá siêu yêu nhé! Bánh mỳ đen của Tiệm được ADELA Bakery sx 100% ogarnic tốt cho sức khoẻ! #banhmyden #tiembanhmedau #eatclean #ogarnic #banhmyhealthy #banhmygiamcan</p>', '<p>Hãng bánh: &nbsp; &nbsp; &nbsp;&nbsp;<strong>Khaled Hosseini</strong></p>', 1),
(31, 6, 'Phương Nam', 'dat-rung-phuong-nam_ban-dien-anh.jpg', 50, 180000, 126000, '2023-12-02 20:59:06', 0, '<p><i><strong>Đất rừng phương Nam</strong></i> (tựa <a href=\"https://vi.wikipedia.org/wiki/Ti%E1%BA%BFng_Anh\">tiếng Anh</a>: <i><strong>Song of the South</strong></i>) là một bộ phim điện ảnh chuyển thể thành sách năm 2023</p><p>An là một cậu bé sinh sống ở đô thành của khu vực <a href=\"https://vi.wikipedia.org/wiki/Nam_K%E1%BB%B3_L%E1%BB%A5c_t%E1%BB%89nh\">Nam Kỳ Lục tỉnh</a> cùng với mẹ của mình vào những năm 1920&nbsp;– 1930. Ba của An là Hai Thành, một người đi theo <a href=\"https://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Minh\">cách mạng</a> với mong muốn đánh đuổi thực dân Pháp ra khỏi Việt Nam. Khi danh tính của Hai Thành bị bại lộ, mẹ của An đã dẫn cậu rời khỏi đô thành dưới sự chỉ dẫn của thầy giáo Bảy. Trên đường đi thì một cuộc <a href=\"https://vi.wikipedia.org/wiki/Bi%E1%BB%83u_t%C3%ACnh\">biểu tình</a> của quần chúng nhân dân đã diễn ra khi Võ Tòng – một thành viên của tổ chức Nghĩa quân Lục tỉnh – bị bắt giữ. Tại đây, một vụ xô xát đã diễn ra giữa binh lính Pháp và những người biểu tình, dẫn đến việc mẹ của An vô tình đã bị lính Pháp bắn chết. Út Lục Lâm – một tên trộm trong thời chiến đã vô tình thấy cảnh tượng này nên hắn đã quyết định hỗ trợ An rời khỏi đó.</p>', '<p>Nhà xuất bản: <strong>NXB Thế Giới</strong> &nbsp; &nbsp; &nbsp;Tác giả: <strong>Tô Ánh Nguyệt</strong></p>', 0),
(32, 16, 'Kiếm Tiền Từ Tiktok', 'kiem-tien-titok.jpg', 50, 120000, 100000, '2023-12-02 21:00:48', 1, '<p>TikTok là một ứng dụng mạng xã hội chuyên tạo và chia sẻ video ngắn dành cho giới trẻ. Người dùng có thể quay một video ngắn từ 15 giây, sau đó chỉnh sửa, thêm nhạc, chèn hiệu ứng… thông qua phần mềm này để tạo nên một video hoàn chỉnh cho chính mình. Không ít cá nhân thu được lợi tức trên TikTok. Ngoài ra, cũng có không ít công ty cũng xem TikTok như một địa điểm marketing mới của mình.</p><p>Nội dung sách chú ý đến mọi khía cạnh của nền tảng này kèm ví dụ đầy đủ, bắt đầu từ khái niệm TikTok đến kỹ xảo, thao tác thực tế cần có để có thể trở thành một ngôi sao trên bầu trời Tiktok với 8 nội dung đáng lưu ý:</p>', '<p>Nhà xuất bản: <strong>NXB Thế Giới</strong> &nbsp; &nbsp; &nbsp;Tác giả: <strong>Giang Trung</strong></p>', 0);

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
(8, 'admin', '$2y$10$zwNwMKly8otZrxWr6BTTxuRdX5eGj/2FbZT3wI3TfQ6Io8/jgAlLC', 'Admin', 'user-default.png', 'khoacntt2003@gmail.com', '0336216559', 'Cần Thơ', 1, 1),
(15, 'tus204', '$2y$10$wSgpv97va9U0x.E0XgWZiO6ucoWkt08j73z4VTkhxXiJaGwP913Gm', 'Đặng Đình Anh Tú', 'user-default.png', 'tuwtf2605@gmail.com', '0976542314', 'Ha Noi', 1, 1),
(16, 'tusdz', '$2y$10$HMfEX8jeleKPBxqyIm.R2e9FRkD6hG2qrVpIpwtJMMgidR5cDXw7i', 'dang dinh anh tu', 'user-default.png', 'tuddaph43370@fpt.edu.vn', '0974566306', 'Mỹ Đình, HN', 0, 1);

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `cart_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `orderdetails_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
