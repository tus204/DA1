
<?php
    if(isset($_SESSION['user'])) {
        $user_id = $_SESSION['user']['id'];

        $list_orders = $OrderModel->select_list_orders($user_id);

?>
<div class="breadcrumb-option">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb__links">
                    <a href="index.php"><i class="fa fa-home"></i> Trang chủ</a>
                    <a href="index.php?url=thong-tin-tai-khoan">Tài khoản</a>
                    <span>Đơn mua</span>
                </div>
            </div>
        </div>
    </div>
</div>
<?php
    foreach ($list_orders as $value) {
        extract($value);
        $list_products_buyed = $OrderModel->select_orderdetails_and_products($order_id);
        //Trang thái đơn hàng
        $order_status = 'Chưa xác nhận';
        if($status == 2) {
            $order_status = 'Đã xác nhận';
        }elseif($status == 3) {
            $order_status = 'Đang giao';
        }elseif($status == 4) {
            $order_status = 'Giao thành công';
        }

        $date_formated = $BaseModel->date_format($date, '');
?>
