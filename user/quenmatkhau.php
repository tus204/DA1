<div class="hero">
    <div class="login_form">
        <h1>Quên mật khẩu</h1>
        <?php if (isset($alert_info)) { ?>
            <div class="alert alert-info"><?php echo $alert_info; ?></div>
        <?php } ?>
        <form class="input_box" action="index.php?act=forgot_password" method="POST">
            <input type="text" class="field" placeholder="Nhập email của bạn" name="email" value="<?php if (isset($email)) { echo htmlspecialchars($email); } ?>">
            <span class="valid"><?php if (isset($email) && $email == '') { echo 'Bạn phải điền đầy đủ thông tin'; } elseif (isset($mess)) { echo $mess; } ?></span>
            <button type="submit" class="submit_btn fs-6 mt-2" name="submit">Gửi liên kết đặt lại mật khẩu</button>
        </form>
        <div class="tag">
            <span>Quay lại trang</span>
            <a href="index.php?act=dangnhap">Đăng nhập</a>
        </div>
    </div>
</div>
