<!-- Breadcrumb Begin -->
<?php
    $success = '';
    $error = array(
        'full_name' => '',
        'address' => '',
        'phone' => '',
        'image' => '', 
    );
  
    if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["update_profile"])) {
        // Table orders
        $user_id = $_SESSION['user']['id'];
        $full_name = trim($_POST["full_name"]);
        $address = trim($_POST["address"]);
        $phone = trim($_POST["phone"]);
        $image = $_FILES["image"]['name'];

        if(empty($full_name)) {
            $error['full_name'] = 'Họ tên không được để trống';
        }

        if(strlen($full_name) > 255) {
            $error['full_name'] = 'Họ tên tối đa 255 ký tự';
        }

        if(empty($address)) {
            $error['address'] = 'Địa chỉ không được để trống';
        }

        if(strlen($address) > 255) {
            $error['address'] = 'Địa chỉ tối đa 255 ký tự';
        }

        if(empty($phone)) {
            $error['phone'] = 'Số điện thoại không được để trống';
        }else {
            //Biểu thức chính quy kiểm tra định dạng sdt
            if (!preg_match('/^(03|05|07|08|09)\d{8}$/', $phone)) {
                $error['phone'] = 'Số điện thoại không đúng định dạng.';
            }
        }
        

        if(!empty($image)) {
            $img_valid = $BaseModel->is_image_valid($image);
            if (!$img_valid) {
                $error['image'] = 'File ảnh không hợp lệ chỉ được tải ảnh định dạng JPG, PNG';
            }
        }