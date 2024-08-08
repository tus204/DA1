<?php

    $success = '';
    $error = '';
    if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["add_to_cart"])) {
        $product_id = $_POST["product_id"];
        $user_id = $_POST["user_id"];
        $product_name = $_POST["name"];
        $product_price = $_POST["price"];
        $product_quantity = $_POST["product_quantity"];
        $product_image = $_POST["image"];

        // Đếm số lượng sản trong giỏ hàng
        $product = $CartModel->select_cart_by_id($product_id, $user_id);
        // Kiểm tra xem có sản phẩm trong giỏ hàng hay không
        if($product && is_array($product)) {
            // Số lượng mới = số lượng hiện tại + số lượng vừa thêm
            $current_quantity = $product['product_quantity'];
            $new_quantity = $current_quantity + $product_quantity;

            // Cập nhật số lượng
            $CartModel->update_cart($new_quantity, $product_id, $user_id);
            $success .= 'Đã cập nhật số lượng cho sản phẩm: '.$product_name;
        }
        else {
            $product_quantity = $product_quantity;
            $CartModel->insert_cart($product_id, $user_id, $product_name, $product_price, $product_quantity, $product_image);
            $success = "Đã thêm sản phẩm vào giỏ hàng";
            
        }

    }

    if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["update_cart"] ) && isset($_SESSION['user'])) {
        // header("Location: index.php?url=gio-hang");
        // Lấy thông tin cần thiết từ form
        $user_id = $_SESSION['user']['id'];
        $product_id = $_POST["product_id"];
        $new_quantity = $_POST["quantity"];
        $index = 0; // Đếm số sản phẩm xóa

        for ($i = 0; $i < count($product_id); $i++) {
            $id = $product_id[$i];
            $quantity = $new_quantity[$i];
            
            if ($quantity <= 0) {
                // Nếu số lượng >=0 xóa sản phẩm trong giỏ hàng     
                $CartModel->delete_product_in_cart($id, $user_id);

                $index += 1;
            } elseif($quantity > 0) {
                $CartModel->update_cart($quantity, $id, $user_id);
                
            }
        }
        
        if ($index > 0) {
            $success = 'Đã xóa ' . $index . ' sản phẩm ra khỏi giỏ hàng';
        } else {
            $success = 'Cập nhật thành công';
        }
    }

    if(isset($_GET['xoa'])) {
        $cart_id = $_GET['xoa'];
        $result = $CartModel->delete_cart_by_id($cart_id);

        $success = 'Đã xóa 1 sản phẩm';
    }
?>