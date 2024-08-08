<?php
$list_name_cate = $CategoryModel->select_name_categories();

$success = '';
$error = array(
    'name' => '',
    'image' => '',
);

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["add_category"])) {
    $name = trim($_POST["name"]);
    $status = $_POST["status"];
    $image = $_FILES["image"]['name'];

    //Kiểm tra tên danh mục đã tồn tại chưa
    foreach ($list_name_cate as $value) {
        if ($value['name'] == $name) {
            $error['name'] .= 'Tên danh mục đã tồn tại.<br>';
            break; 
        }
    }

    if(empty($name)) {
        $error['name'] .= 'Vui lòng nhập tên danh mục';
    }

    if(strlen($name) > 255) {
        $error['name'] .= 'Tên danh mục tối đa 255 ký tự';
    }

    if(empty($image)) {
        $image = "default-product.jpg";
    }

    if(!empty($image)) {
        $img_valid = $BaseModel->is_image_valid($image);
        if (!$img_valid) {
            $error['image'] = 'File ảnh không hợp lệ chỉ được tải ảnh định dạng JPG, PNG';
        }
    }


    if(empty(array_filter($error))) {
        $target_dir = "../upload/";
        $target_file = $target_dir . basename($_FILES["image"]["name"]);

        if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {

        }

        try {
            $result = $CategoryModel->insert_categories($name, $image, $status);
            $success = 'Thêm danh mục thành công';
        } catch (Exception $e) {
            $error_message = $e->getMessage();
            echo 'Thêm danh mục thất bại: ' . $error_message;
        }

    }

    
}

$html_alert = $BaseModel->alert_error_success($error['image'], $success);
?>
