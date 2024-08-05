<?php 
// HIỂN THỊ ĐỊA CHỈ CỦA NGƯỜI DÙNG
function load_address($id) {
    $sql = "SELECT * FROM address WHERE user_id = $id";
    $rs = pdo_query_one($sql);
    return $rs;
}
// THÊM ĐỊA CHỈ (THÊM , SỬA VÀ XÓA)
function change_address($user_id, $name, $phone, $address) {
    $sql = "UPDATE users SET `name`='$name',`phone`='$phone' WHERE id = $user_id;";
    pdo_execute($sql);
    $sql = "DELETE FROM address WHERE user_id = $user_id";
    pdo_execute($sql);
    $sql = "INSERT INTO `address`(`user_id`, `adr`) VALUES ($user_id,'$address')";
    pdo_execute($sql);
}
// HIỂN THỊ VOUCHER CỦA NGƯỜI DÙNG 
function loadall_voucher($id) {
    $sql = "SELECT user_voucher.id, user_voucher.user_id, voucher.value, voucher.type, user_voucher.voucher_id
            FROM user_voucher INNER JOIN voucher 
            ON user_voucher.voucher_id = voucher.id 
            WHERE user_voucher.user_id = $id;";
    $rs = pdo_query($sql);
    return $rs;
}



?>