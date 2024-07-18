<div class="admin-box-left">
            <div class="logo"><img src="../img/logo.png" alt="LOGO " ></div>
            <div class="admin-nav">
                <ul>
                    <li <?php if(!isset($act)) {echo "style='background-color: rgb(221, 197, 156); border-right: 7px solid rgb(158, 127, 72);'";} ?>><a href="index.php">Trang chủ</a></li>
                    <li <?php if(isset($act) && $act == 'taikhoan') {echo "style='background-color: rgb(221, 197, 156); border-right: 7px solid rgb(158, 127, 72);'";} ?>><a href="index.php?act=taikhoan" style="">Tài khoản</a></li>
                    <li <?php if(isset($act) && $act == 'sanpham') {echo "style='background-color: rgb(221, 197, 156); border-right: 7px solid rgb(158, 127, 72);'";} ?>><a href="index.php?act=sanpham" style="">Sản phẩm</a></li>
                    <li <?php if(isset($act) && $act == 'donhang') {echo "style='background-color: rgb(221, 197, 156); border-right: 7px solid rgb(158, 127, 72);'";} ?>><a href="index.php?act=donhang&status=Đang xử lý" style="">Đơn hàng</a></li>
                    <li <?php if(isset($act) && $act == 'voucher') {echo "style='background-color: rgb(221, 197, 156); border-right: 7px solid rgb(158, 127, 72);'";} ?>><a href="index.php?act=voucher">Mã giảm giá</a></li>
                    <li <?php if(isset($act) && $act == 'thongke') {echo "style='background-color: rgb(221, 197, 156); border-right: 7px solid rgb(158, 127, 72);'";} ?>>
                        <a href="index.php?act=thongke&url=doanhthu_tuan">Thống kê</a>
                    </li>
                    <li><a href="index.php?act=dangxuat">Đăng xuất</a></li>
                </ul>
            </div>
        </div>