<?php
include '../model/pdo.php';
include '../model/taikhoan.php';

if (isset($_GET['act']) && ($_GET['act'] != '')) {
    $act = $_GET['act'];
    include "header_old.php";
    switch ($act) {

        case 'dangxuat':
            logout_taikhoan();
            header('location: ../index.php');
            break;

        case 'taikhoan':
            if (isset($_POST['submit'])) {  
                add_taikhoan_admin($_POST['username'], $_POST['password']);
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
        

        default:
            # code...
            break;
    }
} else {
    include("./main/home.php");
}

include "footer.php";


?>