<?php

// THÊM SẢN PHẨM VÀO PHẦN ĐÁNH GIÁ
function insert_rates($var_id, $user_id) {
    $after_var_id = implode(', ',$var_id);
    $sql = "SELECT pro_id FROM `orders` WHERE var_id IN($after_var_id)";
    $rs = pdo_query($sql);
    foreach ($rs as $key) {
        $od_id = $key['pro_id'];
        $sql ="INSERT INTO `rates`(`user_id`, `pro_id`) VALUES ('$user_id','$od_id')";
        pdo_execute($sql);
    }
}
// HIỂN THỊ SẢN PHẨM TỪ CHO NGƯỜI DÙNG ĐÁNH GIÁ
function loadall_rate($id) {
    $sql = "SELECT * FROM rates WHERE vote = 0 AND user_id = $id";
    $rs = pdo_query($sql);
    return $rs;
}
// NGƯỜI DÙNG ĐÁNH GIÁ 
function rate_sanpham($id,$rate) {
    $sql ="UPDATE `rates` SET `vote`= $rate  WHERE id = $id";
    pdo_execute($sql);
}



?>