<?php 
//  THÊM VOUCHER MỚi
function add_voucher($value, $type) {
    $sql = "INSERT INTO `voucher`(`value`, `type`) VALUES ('$value','$type')";
    pdo_execute($sql);
}
// HIỂN THỊ DANH SÁCH NGƯỜI DÙNG CÓ VOUCHER
function load_voucher() {
    $sql = "SELECT * FROM `users` WHERE status = 'on' AND role != 1;";
    // $sql = "SELECT * FROM `user_voucher` GROUP BY user_id";
    $rs = pdo_query($sql);
    return $rs;
}
// HIỂN THỊ VOUCHER CỦA MỘT NGƯỜI DÙNG
function load_voucher_user($id) {
    $sql = "SELECT * FROM `user_voucher` WHERE user_id = $id";
    $rs = pdo_query($sql);
    return $rs;
}
// HIỂN THỊ SỐ LƯỢNG VOUCHER CỦA 1 NGƯỜI DÙNG
function loadnum_voucher ($user_id) {
    $sql = "SELECT COUNT(voucher_id) AS soluong FROM `user_voucher` WHERE user_id = $user_id;";
    $rs = pdo_query_one($sql);
    return $rs;
}
// HIỂN THỊ CHI TIẾT VOUCHER CỦA NGƯỜI DÙNG 
function load_voucher_detail($id) {
    $sql = "SELECT * FROM `voucher` WHERE id = $id";
    $rs = pdo_query_one($sql);
    return $rs;
}
// XÓA VOUCHER CỦA NGƯỜI DÙNG ADMIN
function detete_voucher_user($user_id, $voucher_id) {
    $sql = "DELETE FROM `user_voucher` WHERE user_id = $user_id  AND voucher_id = $voucher_id";
    pdo_execute($sql);
}
// HIỂN THỊ TOÀN BỘ VOUCHER
function loadall_voucher() {
    $sql = "SELECT * FROM voucher";
    $rs = pdo_query($sql);
    return $rs;
}
// THÊM VOUCHER CHO NGƯỜI DÙNG 
function add_voucher_user($user_id, $voucher_id){
    $sql = "INSERT INTO `user_voucher`(`user_id`, `voucher_id`) VALUES ('$user_id','$voucher_id')";
    pdo_execute($sql);
}
?>