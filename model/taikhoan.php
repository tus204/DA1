<?php

// Xác nhận tài khoản đăng nhập và tạo SESSion
session_start();

include 'config_mail.php';

// check tai khoan
function confirm_taikhoan($username, $password) {
    $sql = "SELECT * FROM users WHERE username = '$username' AND status = 'on'";
    $result = pdo_query_one($sql);
    if ($result) {
        if (password_verify($password, $result['password'])) {
            $_SESSION['user'] = $username;
            if ($result['role'] == 1) {
                header('Location: admin_dashboard.php'); // Điều hướng đến trang quản trị
                exit();
            }
            return ''; // Không có lỗi
        } else {
            return 'Mật khẩu không chính xác';
        }
    } else {
        return 'Tài khoản không hợp lệ hoặc đã tạm dừng';
    }
}

// VALIDATE USERNAME FORM ĐĂNG NHẬP - CHECK RỖNG
function validate_username($username) { 
    if ($username == '') {
        return 'Vui lòng không để trống tên đăng nhập';
    }
}
// VALIDATE PASSWORD FORM ĐĂNG NHẬP - CHECK RỖNG
function validate_password($password) { 
    if ($password == '') {
        return 'Vui lòng không để trống mật khẩu';
    }
}
//  ĐĂNG XUÁT TÀI KHOẢN
function logout_taikhoan() {
    unset($_SESSION['user']);
}
// VALIDATE USERNAME
function register_user($username) {
    $pattern = '/^[a-zA-Z][a-zA-Z0-9_]{4,19}$/';
    if(!preg_match($pattern, $username)) {
        return 'Tên đăng nhập không hợp lệ';
    } else {
        $sql = "SELECT * FROM users WHERE username = '$username' ";
        $result = pdo_query($sql);
        if ($result != false) {
            return "Tên đăng nhập đã tồn tại";
        } else {
            return false;
        }
    }
}

// VALIDATE EMAIL
function register_email($email) {
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        return 'Email không hợp lệ';
    } else {
        $sql = "SELECT * FROM users WHERE email = '$email'";
        $result = pdo_query($sql);
        if ($result != false) {
            return "Email đã được sử dụng";
        } else {
            return false;
        }
    }
}

// VALIDATE PASSWORD
function register_password($password) {
    $pattern = '/^\S{6,}$/';
    if(!preg_match($pattern, $password)) {
        return 'Mật khẩu phải đủ 6 ký tự';
    } else {
        return false;
    }
}
// THÊM TÀi KHOẢN
function register_taikhoan($username, $email, $password) {
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);
    $token = bin2hex(random_bytes(32)); // random token
    date_default_timezone_set('Asia/Ho_Chi_Minh');
    $expires_at = date('Y-m-d H:i:s', strtotime('+5 minutes')); // 5p het han token

    $sql = "INSERT INTO users (username, email, password, verification_token, token_expires_at) VALUES ('$username', '$email', '$hashed_password', '$token', '$expires_at')";
    pdo_execute($sql);

    $verification_link = "http://localhost/fpoly/du_an_1/index.php?act=verify&token=$token";
    send_verification_email($email, $verification_link);
}

// check mail
function verify_email($token) {
    $sql = "SELECT email, token_expires_at FROM users WHERE verification_token = '$token' AND token_expires_at > NOW()";
    $result = pdo_query_one($sql);

    if ($result) {
        $email = $result['email'];
        $sql = "UPDATE users SET verified = 1, verification_token = NULL, token_expires_at = NULL WHERE email = '$email'";
        pdo_execute($sql);
        return true;
    }
    return false;
}


// RESET PASSWORD 

// VALIDATE EMAIL FORGOT
function forgot_email($email) {
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        return 'Email không hợp lệ';
    } else {
        $sql = "SELECT * FROM users WHERE email = '$email'";
        $result = pdo_query($sql);
        if ($result == false) {
            return "Email không tồn tại !!!";
        } else {
            return false;
        }
    }
}
function send_password_reset_link($email) {
    $token = bin2hex(random_bytes(32)); // random token
    date_default_timezone_set('Asia/Ho_Chi_Minh');
    $expires_at = date('Y-m-d H:i:s', strtotime('+5 minutes')); // 5 phút hết hạn token

    $sql = "UPDATE users SET verification_token = '$token', token_expires_at = '$expires_at' WHERE email = '$email'";
    pdo_execute($sql);

    $reset_link = "http://localhost/fpoly/du_an_1/index.php?act=reset_password&token=$token";
    send_verification_email($email, $reset_link); 
}

function reset_password($token, $new_password) {
    $sql = "SELECT email FROM users WHERE verification_token = '$token' AND token_expires_at > NOW()";
    $result = pdo_query_one($sql);

    if ($result) {
        $email = $result['email'];
        $hashed_password = password_hash($new_password, PASSWORD_DEFAULT);
        $sql = "UPDATE users SET password = '$hashed_password', verification_token = NULL, token_expires_at = NULL WHERE email = '$email'";
        pdo_execute($sql);
        return true;
    }
    return false;
}

// HIỂN THỊ ID NGƯỜI DÙNG
function id_taikhoan($name){
    $sql ="SELECT id FROM users WHERE username = '$name'";
    $result = pdo_query_one($sql);
    return $result;
}
// HIỂN THỊ THÔNG TIN TÀI KHOẢN BẰNG USER_ID
function load_taikhoan($id) {
    $sql = "SELECT * FROM users WHERE id = $id";
    $rs = pdo_query_one($sql);
    return $rs;
}
// UPDATE USER
function update_user($id, $name, $phone, $email, $img) {
   if ($img == '') {
        $sql = "UPDATE `users` SET `email`='$email',`name`='$name',`phone`='$phone'
        WHERE id = $id";
        pdo_execute($sql);
   } else {
        $sql = "UPDATE `users` SET `email`='$email',`name`='$name',`phone`='$phone',`avatar`='$img'
        WHERE id = $id";
        pdo_execute($sql);
   }
}
// XÁC DỊNH PHÂN QUYỀN
function check_role($id) {
    $sql = "SELECT * FROM users WHERE id = $id";
    $rs = pdo_query_one($sql);
    return $rs;
}
// HIỂN THỊ TÀI KHAORN NGƯỜI DÙNG ADMIN
function loadall_taikhoan_admin() {
    $sql = "SELECT * FROM users WHERE role != 1";
    $rs = pdo_query($sql);
    return $rs;
}
// THÊM TÀI KHOẢN TỪ ADMIN
function add_taikhoan_admin($username, $password) {
    $sql = "INSERT INTO `users`(`username`, `password`) VALUES ('$username','$password')";
    pdo_execute($sql);
}
// TẮT TRẠNG THÁI TOÀN KHOẢN ADMIN
function status_taikhoan_off($id){
    $sql = "UPDATE `users` SET `status`='off' WHERE id = $id;";
    pdo_execute($sql);
}
// BẬT TRẠNG THÁI TOÀN KHOẢN ADMIN
function status_taikhoan_on($id){
    $sql = "UPDATE `users` SET `status`='on' WHERE id = $id;";
    pdo_execute($sql);
}
?>