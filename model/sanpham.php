<?php
// HIỂN THỊ TOÀN BỘ SẢN PHẨM
function loadall_sanpham() {
    $sql="SELECT * FROM products WHERE status = 'on'";
    $result = pdo_query($sql);
    return $result;
}
// HIỂN THỊ TOÀN BỘ SẢN PHẨM FEATURE
function loadall_sanpham_feat() {
    $sql="SELECT * FROM products WHERE status = 'on' LIMIT 6";
    $result = pdo_query($sql);
    return $result;
}
// HIỂN THỊ GIÁ mặc đinh CỦA SẢN PHẨM Ở MENU (TRUY VẤN 1 BẢNG VARIANTS)
function load_price($id) {
    $sql = "SELECT * FROM variants WHERE pro_id = $id AND size_id = 1;";
    $result = pdo_query_one($sql);
    return $result;
}
// HIỂN THỊ GIÁ SẢN PHẨM Ở CHI TIẾT SẢN PHẨM
function load_prices_s($idsp, $ids) {
    $sql = "SELECT * FROM variants WHERE pro_id = $idsp AND size_id = $ids;";
    $result = pdo_query_one($sql);
    return $result;
}
// HIỂN THỊ CHI TIẾT SẢN PHẨM CHƯA CÓ GIÁ (TRUY VẤN 1 BẢNG PRODUCTS)
function loaddetail_sanpham($id) {
    $sql = "SELECT * FROM products WHERE id = $id";
    $result = pdo_query_one($sql);
    return $result;
}
// HIỂN THỊ SIZE CỦA SẢN PHẦM (TRUY VẤN 1 BẢNG SIZES)
function loadall_size() {
    $sql = "SELECT * FROM sizes";
    $result = pdo_query($sql);
    return $result;
}
// HIỂN THỊ BẢNG VARIANT BẰNG ID
function load_v() {
    $sql = "SELECT * FROM sizes";
    $result = pdo_query($sql);
    return $result;
}
// HIỂN THỊ TẤT CẢ ID SẢN PHẨM VỚI GIÁ MẶC ĐỊNH (ADMIN)
function loadall_id_sanpham_admin() {
    $sql = "SELECT v1.* FROM `variants` v1
            JOIN (SELECT pro_id, MIN(id) as min_id FROM `variants` GROUP BY pro_id) v2
            ON v1.pro_id = v2.pro_id AND v1.id = v2.min_id
            ORDER BY v1.id DESC";
    $rs = pdo_query($sql);
    return $rs;
}
// HIỂN THỊ TẤT CẢ ID SẢN PHẨM VỚI GIÁ MẶC ĐỊNH (ADMIN)
function load_sanpham_admin($id) {
    $sql = "SELECT * FROM `products` WHERE id = $id";
    $rs = pdo_query_one($sql);
    return $rs;
}
// HIỂN THỊ DANH MỤC
function load_danhmuc() {
    $sql = "SELECT * FROM `categories` ";
    $rs = pdo_query($sql);
    return $rs;
}
// HIỂN THỊ DANH MỤC ADMIN
function load_danhmuc_admin($id) {
    $sql = "SELECT * FROM `categories`WHERE id = $id";
    $rs = pdo_query_one($sql);
    return $rs;
}
// HIỂN THỊ GIÁ CỦA MỘT SẢN PHẨM
function loadone_price($id) {
    $sql = "SELECT price FROM `variants` WHERE pro_id = $id;";
    $rs = pdo_query($sql);
    return $rs;
}
// LOAD GIÁ CÁC SIZE CỦA SẢN PHẨM Ở ADMIN
function load_price_admin($id) {
    $sql = "SELECT * FROM variants WHERE pro_id = $id";
    $rs = pdo_query($sql);
    return $rs;
}
// HIỂN THỊ SẢN PHẨM VỪA THÊM VÀO
function load_id_sanpham() {
    $sql = "SELECT * FROM products ORDER BY id DESC LIMIT 1";
    $rs = pdo_query_one($sql);
    return $rs;
}
// THÊM SẢN PHẨM Ở ADMIN
function add_sanpham($cate, $name, $fact, $size_nho, $size_vua, $size_lon, $file) {
    $sql = "INSERT INTO `products`(`name`, `img`, `fact`,`id_categ`) 
            VALUES ('$name','$file','$fact','$cate')";
    pdo_execute($sql);
    $id = load_id_sanpham();
    $pro_id = $id['id'];
    $sql = "INSERT INTO `variants`(`pro_id`, `size_id`, `price`) 
    VALUES ('$pro_id','1','$size_nho')";
    pdo_execute($sql);
    $sql = "INSERT INTO `variants`(`pro_id`, `size_id`, `price`) 
    VALUES ('$pro_id','2','$size_vua')";
    pdo_execute($sql);
    $sql = "INSERT INTO `variants`(`pro_id`, `size_id`, `price`) 
    VALUES ('$pro_id','3','$size_lon')";
    pdo_execute($sql);
}
// SỬA SẢN PHẨM Ở ADMIN
function update_sanpham($cate, $name, $fact, $size_nho, $size_vua, $size_lon, $file, $pro_id) {
    if ($file != '') {
        $sql = "UPDATE `products` SET `name`='$name',`img`='$file',`fact`='$fact',`id_categ`='$cate' 
            WHERE id = $pro_id";
        pdo_execute($sql);
    } else {
        $sql = "UPDATE `products` SET `name`='$name',`fact`='$fact',`id_categ`='$cate' 
            WHERE id = $pro_id";
        pdo_execute($sql);
    }
    $sql = "UPDATE `variants` SET `price` = '$size_nho' WHERE pro_id = $pro_id AND size_id = 1 ;";
    pdo_execute($sql);
    $sql = "UPDATE `variants` SET `price` = '$size_vua' WHERE pro_id = $pro_id AND size_id = 2 ;";
    pdo_execute($sql);
    $sql = "UPDATE `variants` SET `price` = '$size_lon' WHERE pro_id = $pro_id AND size_id = 3 ;";
    pdo_execute($sql);
}
// XÓA SẢN PHẨM
function delete_sanpham($id) {
    $sql = "UPDATE `products` SET `status`= 'off' WHERE id = $id;";
    pdo_execute($sql);
}
// HIỂN THỊ TOP 10 SẢN PHẨM BÁN CHẠY
function load10_thongke() {
    $sql = "SELECT products.name, SUM(orders.quantity) AS soluong 
            FROM orders INNER JOIN products
            ON orders.pro_id = products.id
            WHERE orders.status = 'Đã giao hàng'
            GROUP BY products.name
            ORDER BY soluong DESC
            LIMIT 10";
    $rs = pdo_query($sql);
    return $rs;
}
// HIỂN THỊ TOP 10 ĐÁNH GIÁ
function load10_danhgia(){
    $sql = "SELECT products.name, AVG(rates.vote) AS danhgia
    FROM rates INNER JOIN products ON rates.pro_id = products.id
    WHERE rates.vote > 0
    GROUP BY rates.pro_id
    ORDER BY `danhgia` DESC
    LIMIT 10;";
    $rs = pdo_query($sql);
    return $rs;
}
// HIỂN THỊ TỔNG DOANH THU 1-4 TUẦN GẦN NHẤT
function load_doanhthu_tuan() {
    $arr = [];
    for ($i=0; $i<=4 ; $i++) { 
        $sql = "SELECT SUM(total_order.total_payment) AS doanhthu 
        FROM total_order INNER JOIN orders
        ON total_order.id = orders.od_id
        WHERE YEARWEEK(total_order.date, 1) = YEARWEEK(CURDATE() - INTERVAL $i WEEK, 1) 
        AND orders.status = 'Đã giao hàng';";
        $rs = pdo_query_one($sql);
        $r = $rs['doanhthu']."000";
        $arr[] = $r;
    }
    return $arr;
}
// HIỂN THỊ TỔNG DOANH THU 1-6 THÁNG GẦN NHẤT
function load_doanhthu_thang() {
    $doanhthu = [];
    $thang = [];
    for ($i=0; $i<=5 ; $i++) { 
        $sql = "SELECT SUM(total_order.total_payment) AS doanhthu, MONTHNAME(total_order.date) AS month
                FROM total_order INNER JOIN orders
                ON total_order.id = orders.od_id
                WHERE YEAR(date) = YEAR(CURDATE()) AND MONTH(date) = MONTH(CURDATE()) - $i 
            AND orders.status = 'Đã giao hàng';";
                $rs = pdo_query_one($sql);
                $r = $rs['doanhthu']."000";
                $doanhthu[] = $r;
                $thang[] = $rs['month'];
    }
    $arr = [$doanhthu, $thang];
    return $arr;
}
?>