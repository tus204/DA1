<nav>
    <div class="logo">
        <a href="index.php"><img src="./img/main_logo.png" alt="logo"></a>
    </div>

    <ul>
        <li><a href="index.php" class="action">Trang chủ</a></li>
        <li><a href="index.php?act=sanpham">Sản phẩm</a></li>        
        <li><a href="blog.html">Bài viết</a></li>
        <li><a href="about.html">Giới thiệu</a></li>
    </ul>

    <div class="login">
        <form action="{{ route('sanphams.index') }}" method="get" class="mx-3">
            <div class="input-group">
                <input type="text" name="search" id="" class="form-control" placeholder="Tìm kiếm...">
                <button type="submit" class="btn btn-outline-secondary text-black"><i
                        class="fa-solid fa-magnifying-glass fa-lg"></i></button>
            </div>
        </form>
        <a href="index.php?act=giohang"><i class="fa-solid fa-cart-shopping fa-lg"></i></a>
        <?php if (!isset($_SESSION['user'])) { ?>
            <a href="index.php?act=dangnhap" alt="Đăng nhập"><i class="fa-solid fa-right-to-bracket fa-lg"></i></a>
        <?php } ?>
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