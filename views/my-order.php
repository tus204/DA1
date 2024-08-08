
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