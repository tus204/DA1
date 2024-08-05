<?php
// HIỂN THỊ ĐON TOTAL_ĐƠN HÀNG
function load_total_order($user_id) {
    $sql = "SELECT * FROM total_order WHERE user_id = $user_id";
    $rs = pdo_query($sql);
    return $rs;
}

// HIỂN THỊ ĐƠN HÀNG THEO TRẠNG THÁI
function load_donhang($status,$user_id,$od_id) {
    if($status == "") {
        $sql = "SELECT * FROM orders WHERE user_id = $user_id AND od_id = $od_id ORDER BY id DESC";
        $rs = pdo_query($sql);
        return $rs;
    } else {
        $sql = "SELECT * FROM orders WHERE user_id = $user_id AND od_id = $od_id AND status = '$status' ORDER BY id DESC";
        $rs = pdo_query($sql);
        return $rs;
    }  
} 
// HIỂN THỊ ĐƠN HÀNG THEO TRẠNG THÁI Ở ADMIN
function load_donhang_admin($status) {
    if($status == "") {
        $sql = "SELECT * FROM orders";
        $rs = pdo_query($sql);
        return $rs;
    } else {
        $sql = "SELECT * FROM orders WHERE status = '$status' ORDER BY od_id";
        $rs = pdo_query($sql);
        return $rs;
    }   
}
// HIỂN THỊ CHI TIẾT ĐƠN HÀNG 
function load_detail_donhang($id) {
    $sql = "SELECT users.name, users.phone, address.adr,products.name AS pro_name, sizes.name AS size, orders.quantity, total_order.total_payment 
        FROM `orders` INNER JOIN users ON users.id = orders.user_id
        INNER JOIN address ON address.id = orders.adr_id
        INNER JOIN total_order ON total_order.id = orders.od_id
        INNER JOIN products ON products.id = orders.pro_id
        INNER JOIN sizes ON sizes.id = orders.size_id
        WHERE orders.od_id = $id;";
    $rs = pdo_query($sql);
    return $rs;
}


// end thành phần con

// THÊM VÀO BẢNG TOTAL_ORDER ĐỂ TẠO ĐƠN HÀNG VÀ CÁC XỬ LÝ NHỎ 
function insert_total_order($user_id,$voucher_id,$total_price,$total_payment, $payment_method, $request, $id_carts,$adr_id ) {
    $sql = "INSERT INTO `total_order`(`user_id`, `voucher_id`, `total_price`, `total_payment`) 
    VALUES ($user_id,$voucher_id,$total_price,$total_payment)";
    pdo_execute($sql);
    $sql = "SELECT id FROM total_order ORDER BY id DESC LIMIT 1";
    $rs = pdo_query_one($sql);
    $od_id = $rs['id'];
    foreach ($id_carts as $key) {
        $in4 = loadall_giohang2($key);
        $pro_id = $in4['pro_id'];
        $size_id = $in4['size_id'];
        $quantity = $in4['quantity'];
    $sql = "INSERT INTO `orders` (`od_id`, `user_id`, `pro_id`, `size_id`, `var_id`, `quantity`, `adr_id`, `request`, `payment_method`) 
    VALUES ('$od_id', '$user_id', '$pro_id', '$size_id', '$key', '$quantity', '$adr_id', '$request', '$payment_method');";
    pdo_execute($sql);
    $sql = "DELETE FROM carts WHERE id = $key";
    pdo_execute($sql);
    }
    $sql = "DELETE FROM user_voucher WHERE voucher_id = $voucher_id";
    pdo_execute($sql);
}
// CẬP NHẬT ĐƠN HÀNG Ở ADMIN 
function update_donhang($action, $od_id) {
    if($action == 'completed') {
        $sql = "UPDATE `orders` SET `status`='Đã giao hàng' WHERE od_id = $od_id";
        pdo_execute($sql);
        $sql = "SELECT * FROM orders WHERE od_id = $od_id";
        $rs = pdo_query($sql);
        foreach ($rs as $key) {
            $od_id = $key['pro_id'];
            $user_id = $key['user_id'];
            $sql ="INSERT INTO `rates`(`user_id`, `pro_id`) VALUES ('$user_id','$od_id')";
            pdo_execute($sql);
        }
    }
    if($action == 'deleted') {
        $sql = "UPDATE `orders` SET `status`='Đã hủy' WHERE od_id = $od_id";
        pdo_execute($sql);
    }
}
// HIỂN THỊ THÔNG TIN USER ĐƠN HÀNG BẰNG USER_ID
function in4_donhang_ud($id) {
    $sql = "SELECT users.name, users.phone, address.adr
        FROM `orders` INNER JOIN users ON users.id = orders.user_id
        INNER JOIN address ON address.id = orders.adr_id
        WHERE orders.user_id = $id LIMIT 1;";
    $rs = pdo_query_one($sql);
    return $rs;
}



?>
