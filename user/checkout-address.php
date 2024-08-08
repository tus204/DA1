<!-- Breadcrumb Begin -->
<?php
    $success = '';
    $error = array(
        'address' => '',
        'phone' => '',
    );
    $temp = array(
        'address' => '',
        'phone' => '',
        'note' => '',
    );
try {    
    if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["checkout"])) {
        // Table orders
        $user_id = $_POST["user_id"];
        $total = $_POST["total_checkout"];
        $address = $_POST["address"];
        $phone = $_POST["phone"];
        $note = $_POST["note"];

        // Check form
        if(empty($address)) {
            $error['address'] = 'Địa chỉ không được để trống';
        }

        if(strlen($address) > 255) {
            $error['address'] = 'Địa chỉ tối đa 255 ký tự';
        }

        if(empty($phone)) {
            $error['phone'] = 'Số điện thoại không được để trống';
        }
        else {
            //Biểu thức chính quy kiểm tra định dạng sdt
            if (!preg_match('/^(03|05|07|08|09)\d{8}$/', $phone)) {
                $error['phone'] = 'Số điện thoại không đúng định dạng.';
            }
        }
        // End heck form

        // Table orderdetails
        $arr_product_id = $_POST["product_id"];
        $arr_quantity = $_POST["quantity"];
        $arr_price = $_POST["price"];

        if(empty(array_filter($error))) {

            // Bước 1: Insert dữ liệu vào orders
            $OrderModel->insert_orders($user_id, $total, $address, $phone, $note);
            // Bước 2: Lấy order_id mới tạo để thểm vào Oderdetails
            $result_select = $OrderModel->select_order_id();
            $order_id = $result_select['order_id'];

            if(!empty($order_id)) {
                // Insert orderdetails
                for ($i = 0; $i < count($arr_product_id); $i++) {
                    $product_id = $arr_product_id[$i];
                    $quantity = $arr_quantity[$i];
                    $price = $arr_price[$i];
        
                    $OrderModel->insert_orderdetails($order_id, $product_id, $quantity, $price);
                }
                // Sau khi đặt hàng xóa giỏ hàng
                $OrderModel->delete_cart_by_user_id($user_id);
                header("Location: cam-on");
            }
        }else {
            $temp['address'] = $address;
            $temp['phone'] = $phone;
            $temp['note'] = $note;
        }

    }
} catch (Exception $e) {
    $error_message = $e->getMessage();
    echo $error_message;
}
