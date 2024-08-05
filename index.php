<?php
ob_start();
session_start();

include ("./user/header.php");
include ("./user/navbar.php");
include ("./model/pdo.php");
include ("./model/taikhoan.php");
include ("./model/sanpham.php");
include 'config_mail.php';
include 'VerifyEmail.class.php';

if (isset($_GET['act']) && ($_GET['act'] != '')) {
    $act = $_GET['act'];
    switch ($act) {
        case 'dangnhap':
            if (isset($_SESSION['user'])) {
                header('location: index.php');
                exit();
            }
            if (isset($_POST['submit'])) {
                $username = $_POST['username'];
                $password = $_POST['password'];
                $vali_usern = validate_username($username);
                $vali_pass = validate_password($password);
                if ($vali_usern == '' && $vali_pass == '') {
                    $mess = confirm_taikhoan($username, $password);
                    if ($mess == '') {
                        header('Location: index.php');
                        exit();
                    }
                }
                include ('./user/dangnhap.php');
            } else {
                include ('./user/dangnhap.php');
            }
            break;

        case 'dangxuat':
            logout_taikhoan();
            header('location: index.php');
            break;

        case 'dangky':
            if (isset($_SESSION['user'])) {
                header('location: index.php');
            }
            if (isset($_POST['submit'])) {
                $username = $_POST['username'];
                $email = $_POST['email'];
                $password = $_POST['password'];
                $re_password = $_POST['re_password'];
                if ($username != '' && $email != '' && $password != '' && $re_password != '' && $password == $re_password) {
                    $mess_usern = register_user($username);
                    $mess_email = register_email($email);
                    $mess_pass = register_password($password);
                    if ($mess_usern == false && $mess_email == false && $mess_pass == false) {
                        register_taikhoan($username, $email, $password);
                        $alert_info = "Đã gửi link xác thực đến email của bạn. Vui lòng kiểm tra email và xác thực tài khoản.";
                    }
                }
                include ('./user/dangky.php');
            } else {
                include ('./user/dangky.php');
            }
            break;

        case 'verify':
            if (isset($_GET['token'])) {
                $token = $_GET['token'];
                if (verify_email($token)) {
                    $alert_success = "Xác thực thành công! Bạn có thể đăng nhập.";
                } else {
                    $alert_error = "Liên kết xác thực không hợp lệ hoặc đã hết hạn.";
                }
                include ('./user/dangky.php');
            } else {
                include ('./user/home.php');
            }
            break;

        case 'forgot_password':
            if (isset($_POST['submit'])) {
                $email = $_POST['email'];
                $mess = forgot_email($email);
                if ($mess === false) {
                    send_password_reset_link($email);
                    $alert_info = "Đã gửi link đặt lại mật khẩu đến email của bạn. Vui lòng kiểm tra email.";
                } else {
                    $alert_error = '';
                }
                include ('./user/quenmatkhau.php');
            } else {
                include ('./user/quenmatkhau.php');
            }
            break;

        case 'reset_password':
            if (isset($_GET['token'])) {
                $token = $_GET['token'];
                if (isset($_POST['submit'])) {
                    $new_password = $_POST['password'];
                    $re_password = $_POST['re_password'];
                    if (empty($new_password) || empty($re_password)) {
                        $mess = 'Bạn phải điền đầy đủ thông tin';
                    } elseif ($new_password != $re_password) {
                        $mess = 'Mật khẩu không khớp';
                    } else {
                        if (reset_password($token, $new_password)) {
                            $alert_success = "Đặt lại mật khẩu thành công! Bạn có thể đăng nhập.";
                        } else {
                            $alert_error = "Liên kết đặt lại mật khẩu không hợp lệ hoặc đã hết hạn.";
                        }
                    }
                }
                include ('./user/khoiphucmatkhau.php');
            } else {
                include ('./user/home.php');
            }
            break;

        default:
            # code...
            break;
    }
} else {
    if (isset($_SESSION['user'])) {
        $id_user = id_taikhoan($_SESSION['user']);
        $role = check_role($id_user['id']);
        if ($role['role'] == 1) {
            header('location: admin');
        }
    }
    $sanphams = loadall_sanpham();
    $sanphams_feat = loadall_sanpham_feat();
    $danhmucs = load_danhmuc();
    include ("./user/home.php");
}

include ('./user/footer.php');

?>