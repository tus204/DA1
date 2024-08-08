<?php
    $list_catgories = $CategoryModel->getCategoryProductCount();

    $success = '';
    $error = '';
    if(isset($_GET['xoa']) && isset($_GET['qty_pd'])) {
        $category_id = $_GET['xoa'];
        $quantity_product = $_GET['qty_pd'];

        if($quantity_product <=0) {
            $CategoryModel->delete_category($category_id);
            
            setcookie('success_delete', 'Đã xóa thành công 1 danh mục', time() + 5, '/');
            header("Location: index.php?quanli=danh-sach-danh-muc");
        }else {
            $error = 'Không thể xóa danh mục tồn tại sản phẩm';
        }
    }

    if(isset($_COOKIE['success_delete']) && !empty($_COOKIE['success_delete'])) {
        $success = $_COOKIE['success_delete'];
    }

    $html_alert = $BaseModel->alert_error_success($error, $success);
?>