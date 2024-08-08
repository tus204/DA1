<?php

$success = '';

$error = array(
    'name' => '',
    'image' => '',
);

if(isset($_GET['id']) && $_GET['id'] > 0) {
    $category_id = $_GET['id'];

    $category_one = $CategoryModel->select_category_by_id($category_id);
    extract($category_one);
}else {
    header("Location: index.php?quanli=danh-sach-danh-muc");
}


if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["update_category"])) {
    $name = trim($_POST["name"]);
    $status = $_POST["status"];
    $image = $_FILES["image"]['name'];

    if(strlen($name) > 255) {
        $error['name'] = 'Tên danh mục tối đa 255 ký tự';
    }

    // Kiểm tra hình ảnh
    if(!empty($image)) {
        $img_valid = $BaseModel->is_image_valid($image);
        if (!$img_valid) {
            $error['image'] = 'File ảnh không hợp lệ';
        }
    }

    if(empty(array_filter($error))) {
        $target_dir = "../upload/";
        $target_file = $target_dir . basename($_FILES["image"]["name"]);

        if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {

        }

        try {
            $result = $CategoryModel->update_category($name, $image, $status, $category_id);
            setcookie('success_update', 'Cập nhật danh mục thành công', time() + 5, '/');
            header("Location: index.php?quanli=cap-nhat-danh-muc&id=".$category_id);

        } catch (Exception $e) {
            $error_message = $e->getMessage();
            echo 'Cập nhật sản phẩm thất bại: ' . $error_message;
            setcookie('success_update', 'Cập nhật danh mục thất bại', time() + 5, '/');
        }

    }
}

if(isset($_COOKIE['success_update']) && !empty($_COOKIE['success_update'])) {
    $success = $_COOKIE['success_update'];
}

$html_alert = $BaseModel->alert_error_success($error['image'], $success);
?>
