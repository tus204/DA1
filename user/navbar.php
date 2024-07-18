<nav>
    <div class="logo">
        <a href="index.php"><img src="./img/logo.png"></a>
    </div>

    <ul>
        <li><a href="index.php" class="action">Trang chủ</a></li>
        <li><a href="index.php?act=sanpham">Sản phẩm</a></li>
        <li><a href="about.html">About</a></li>
        <li><a href="gallery.html">Gallery</a></li>
        <li><a href="blog.html">Blog</a></li>
    </ul>

    <div class="login">
        <?php if (!isset($_SESSION['user'])) { ?>
            <a href="index.php?act=dangnhap">Đăng nhập</a>
        <?php } ?>
        <a href="index.php?act=giohang"><i class="fa-solid fa-cart-shopping fa-lg"></i></a>
        <?php if (isset($_SESSION['user'])) { ?>
            <div class="user-icon" id="userIcon">
                <a href="index.php?act=my_account" class="user-icon-link">
                    <i class="fas fa-circle-user fa-xl"></i>
                </a>
                <div class="user-options" id="userOptions">
                    <a href="index.php?act=my_account">Tài khoản của tôi</a>
                    <a href="index.php?act=donhang&status">Đơn hàng</a>
                    <a href="index.php?act=dangxuat">Đăng xuất</a>
                </div>
            </div>
        <?php } ?>
    </div>            
</nav>