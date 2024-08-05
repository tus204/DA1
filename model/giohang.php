<?php
// THÊM SẢN PHẨM VÀO GIỎ HÀNG
function add_to_cart($id_user, $id_pro, $id_size,$id_var, $quantity) {
    if(checkcart_sanpham($id_user, $id_pro, $id_size)){
        $sql = "UPDATE `carts` SET quantity = quantity + $quantity 
                WHERE pro_id = $id_pro AND user_id = $id_user AND size_id = $id_size; ";
        pdo_execute($sql);
        header('location: index.php?act=chitietsanpham&id='.$id_pro);
    } else {
        $sql = "INSERT INTO `carts`( `user_id`, `pro_id`, `size_id`, `var_id`, `quantity`) 
                VALUES ($id_user,$id_pro, $id_size, $id_var, $quantity)";
        pdo_execute($sql);
        header('location: index.php?act=chitietsanpham&id='.$id_pro);
    }
}
// KIỂM TRA SẢN PHẨM TRONG GIỎ HÀNG ĐÃN TỒN TẠI HAY CHƯA
function checkcart_sanpham($user_id, $pro_id, $size_id) {
    $sql = "SELECT * FROM carts WHERE user_id = $user_id AND pro_id = $pro_id AND size_id = $size_id;";
    $rs = pdo_query_one($sql);
    if ($rs) {
        return true;
    } else {
        return false;
    }
}
// HIỂN THỊ TOÀN BỘ THÔNG TIN TRONG GIỎ HÀNG
function loadall_giohang(){
    $sql = "SELECT * FROM carts ORDER BY id DESC";
    $rs = pdo_query($sql);
    return $rs;
}

// HIỂN THỊ THÔNG TIN CỦA BẢNG VARIANTS
function load_bienthe ($pro_id, $size_id){
    $sql = "SELECT * FROM variants WHERE pro_id = $pro_id AND size_id = $size_id";
    $result = pdo_query_one($sql);
    return $result;
}
// HIỂN THỊ THÔNG TIN CỦA BẢNG VARIANTS 2 BẰNG VAR_ID
function load_bienthe2 ($var_id){
    $sql = "SELECT * FROM variants WHERE id = $var_id";
    $result = pdo_query_one($sql);
    return $result;
}
// HIỂN THỊ THÔNG TIN CỦA BẢNG VARIANTS 2 BẰNG ID_CARTS
function loadall_giohang2 ($id){
    $sql = "SELECT * FROM carts WHERE id = $id ";
    $result = pdo_query_one($sql);
    return $result;
}
// HIỂN THỊ THÔNG TIN GIỎ HÀNG CHO NGƯỜI DÙNG
function load_in4_giohang($pro_id, $size_id, $var_id, $user_id) {
    $sql = "SELECT carts.id, products.name, products.img, sizes.name AS size, variants.price FROM carts
            INNER JOIN products ON carts.pro_id = products.id
            INNER JOIN sizes ON carts.size_id = sizes.id
            INNER JOIN variants ON carts.var_id = variants.id
            INNER JOIN users ON carts.user_id = users.id
            WHERE products.id = $pro_id AND sizes.id = $size_id AND variants.id = $var_id AND users.id = $user_id;";
    $result = pdo_query_one($sql);
    return $result;
}


// XÓA SẢN PHẨM TRANG GIỎ HÀNG
function del_sanpham_cart($id) {
    $sql = "DELETE FROM carts WHERE id = $id";
    pdo_execute($sql);
}
// TĂNG GIẢM SỐ LƯỢNG SẢN PHẨM TRONG GIỎ HÀNG 
function change_num_sanpham_cart($user_id, $var_id, $act){
    $bienthe = load_bienthe2($var_id);
    extract($bienthe);
    $sql = "SELECT * FROM carts WHERE user_id = $user_id AND pro_id = $pro_id AND size_id = $size_id;";
    $rs = pdo_query_one($sql);
    $id = $rs['id'];
    $quantity = $rs['quantity'];
    if($act == 'less') {
        $sql = "UPDATE `carts` 
                SET quantity = CASE
                    WHEN $quantity > 1 THEN $quantity - 1 
                    ELSE 1
                    END
                    WHERE id = $id";
        pdo_execute($sql);
    } 
    if($act == 'more') {
        $sql = "UPDATE `carts` SET quantity = $quantity + 1 WHERE id = $id";
        pdo_execute($sql);
    } 
}
// HIỂN THỊ SỐ SẢN PHẨM CÓ TRONG GIỎ HÀNG 
function num_sanpham_cart(){
    $sql = "SELECT COUNT(*) AS num FROM carts";
    $rs = pdo_query_one($sql);
    return $rs;
}
?>