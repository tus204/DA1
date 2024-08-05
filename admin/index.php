<?php
ob_start();
session_start();
include '../model/pdo.php';
include '../model/donhang.php';
include '../model/taikhoan.php';
include '../model/sanpham.php';
include '../model/voucher.php';
include '../config_mail.php';
include 'header.php';

if (isset($_GET['act']) && ($_GET['act'] != '')) {
    $act = $_GET['act'];
    // include "header_old.php";
    switch ($act) {

        case 'dangxuat':
            logout_taikhoan();
            header('location: ../index.php');
            break;

        case 'taikhoan':
            if (isset($_POST['submit'])) {
                $username = $_POST['username'];
                $password = $_POST['password'];
                $status = $_POST['status'];
                if ($username != '' && $password != '') {
                    $mess_usern = register_user($username);
                    $mess_pass = register_password($password);
                    if ($mess_usern == false && $mess_pass == false) {
                        add_taikhoan_admin($username, $password, $status);
                        $_SESSION['success'] = 'Thêm mới user thành công';
                        header('Location: ?act=taikhoan');
                        exit();
                    }
                }
            }
            if (isset($_GET['off'])) {
                status_taikhoan_off($_GET['off']);
            }
            if (isset($_GET['on'])) {
                status_taikhoan_on($_GET['on']);
            }
            $taikhoan = loadall_taikhoan_admin();
            include './main/taikhoan.php';
            break;

        case 'sanpham':
            // if (isset($_GET['id_edit'])) {
            //     $pro_id = $_GET['id_edit'];
            //     $url = "index.php?act=sanpham&edit=$pro_id";
            //     $in4 = load_sanpham_admin($pro_id);
            //     $dmuc = load_danhmuc_admin($in4['id_categ']);
            //     $dm = load_danhmuc();
            //     $p_size = load_price_admin($pro_id);
            // }
            // // else {

            // //     $url = "index.php?act=sanpham&add";
            // // }
            // if (isset($_GET['edit'])) {
            //     $pro_id = $_POST['pro_id'];
            //     $cate = $_POST['cate'];
            //     $name = $_POST['name'];
            //     $fact = $_POST['fact'];
            //     $size_nho = $_POST['size-nho'];
            //     $size_vua = $_POST['size-vua'];
            //     $size_lon = $_POST['size-lon'];
            //     $file = $_FILES['img'];
            //     move_uploaded_file($file['tmp_name'], "../img/" . $file['name']);
            //     update_sanpham($cate, $name, $fact, $size_nho, $size_vua, $size_lon, $file['name'], $pro_id);
            //     header('location: index.php?act=sanpham');
            // }
            // if (isset($_GET['del'])) {
            //     $od_id = $_GET['del'];
            //     delete_sanpham($od_id);
            // }
            $dm = load_danhmuc();
            $sanpham = loadall_id_sanpham_admin();
            include './main/sanpham.php';
            break;

        case 'add_sanpham':
            if (isset($_POST['submit'])) {
                $cate = $_POST['cate'];
                $name = $_POST['name'];
                $fact = $_POST['fact'];
                $size_nho = $_POST['size_nho'];
                $size_vua = $_POST['size_vua'];
                $size_lon = $_POST['size_lon'];
                $file = $_FILES['img'];
                move_uploaded_file($file['tmp_name'], "../assets/images/products/" . $file['name']);
                add_sanpham($cate, $name, $fact, $size_nho, $size_vua, $size_lon, $file['name']);
                header('Location: index.php?act=sanpham');
            }
            $dmuc = load_danhmuc();
            include './main/add_sanpham.php';
            break;

        case 'edit_sanpham':
            if (isset($_GET['id_edit'])) {
                $pro_id = $_GET['id_edit'];
                $url = "index.php?act=edit_sanpham&edit=$pro_id";
                $in4 = load_sanpham_admin($pro_id);
                $dmuc = load_danhmuc_admin($in4['id_categ']);
                $dm = load_danhmuc();
                $p_size = load_price_admin($pro_id);
            }
            include './main/edit_sanpham.php';
            if (isset($_POST['submit'])) {
                $pro_id = $_POST['id'];
                $cate = $_POST['cate'];
                $name = $_POST['name'];
                $fact = $_POST['fact'];
                $size_nho = $_POST['size_nho'];
                $size_vua = $_POST['size_vua'];
                $size_lon = $_POST['size_lon'];
                $file = $_FILES['img'];
                if ($file['tmp_name']) {
                    move_uploaded_file($file['tmp_name'], "../assets/images/products/" . $file['name']);
                    update_sanpham($cate, $name, $fact, $size_nho, $size_vua, $size_lon, $file['name'], $pro_id);
                } else {
                    update_sanpham($cate, $name, $fact, $size_nho, $size_vua, $size_lon, '', $pro_id);
                }
                header('Location: index.php?act=sanpham');
            }
            break;

        case 'del_sanpham':
            if (isset($_GET['del'])) {
                $od_id = $_GET['del'];
                delete_sanpham($od_id);
                header('Location: index.php?act=sanpham');
            }
            break;

        default:
            # code...
            break;
    }
} else {
    include ("home.php");
}

include "footer.php";


?>