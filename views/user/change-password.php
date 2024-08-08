<!-- Breadcrumb Begin -->
<?php
    $success = '';
    $error = array(
        'password_old' => '',
        'new_password' => '',
        'confirm_new_password' => '',
    );
    $temp = array(
        'password_old' => '',
        'new_password' => '',
        'confirm_password' => '',
    );
  
    if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["change_password"])) {
        // Table orders
        $user_id = $_SESSION['user']['id'];
        $password_old = trim($_POST["password_old"]);
        $new_password = trim($_POST["new_password"]);
        $confirm_new_password = trim($_POST["confirm_new_password"]);

        if(empty($password_old)) {
            $error['password_old'] = 'Mật khẩu cũ không được để trống';
        }else {
            // Kiểm tra mật khẩu cũ đúng không
            $password_current = $_SESSION['user']['password'];
            $check_password = password_verify($password_old, $password_current);
            if (!$check_password) {
                $error['password_old'] = 'Mật khẩu cũ không chính xác';

                $temp['new_password'] = $new_password;
                $temp['confirm_password'] = $confirm_new_password;
            }else{
                $temp['password_old'] = $password_old;
            }
        }

        if(strlen($password_old) > 255) {
            $error['password_old'] = 'Mật khẩu cũ tối đa 255 ký tự';
        }

        if(empty($new_password)) {
            $error['new_password'] = 'Mật khẩu mới không được để trống';
        }

        if(strlen($new_password) > 255) {
            $error['new_password'] = 'Mật khẩu mới tối đa 255 ký tự';
        }

        if(!empty($new_password) && strlen($new_password) <8) {
            $error['new_password'] = 'Mật khẩu tối thiểu 8 ký tự';
        }

        if(empty($confirm_new_password)) {
            $error['confirm_new_password'] = 'Không được để trống';
        }

        if(strlen($confirm_new_password) > 255) {
            $error['confirm_new_password'] = 'Tối đa 255 ký tự';
        }

        if($new_password !== $confirm_new_password) {
            $error['confirm_new_password'] = 'Nhập lại mật khẩu không trùng khớp với mật khẩu mới';
            // Lưu vào biến tạm
            $temp['new_password'] = $new_password;
        }
          
        if(empty(array_filter($error))) {
            try {
                //MÃ hóa password
                $hashed_password = password_hash($new_password, PASSWORD_DEFAULT);
                $result = $CustomerModel->update_password($hashed_password, $user_id);

                // Cập nhật lại SESSION
                $_SESSION['user']['password'] = $hashed_password;
                
                setcookie('success_update', 'Thay đổi mật khẩu thành công', time() + 5, '/');
                header("Location: index.php?url=doi-mat-khau");
    
            } catch (Exception $e) {
                $error_message = $e->getMessage();
                echo 'Thay đổi mật khẩu thất bại: ' . $error_message;
                setcookie('success_update', 'Thay đổi mật khẩu thất bại', time() + 5, '/');
            }
        }
    }