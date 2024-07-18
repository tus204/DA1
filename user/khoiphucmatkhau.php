<div class="hero">
    <div class="login_form">
        <h1>Đặt lại mật khẩu</h1>
        <?php if (isset($alert_success)) { ?>
            <div class="alert alert-success"><?php echo $alert_success; ?></div>
        <?php } ?>
        <?php if (isset($alert_error)) { ?>
            <div class="alert alert-danger"><?php echo $alert_error; ?></div>
        <?php } ?>
        <form class="input_box" action="index.php?act=reset_password&token=<?php echo htmlspecialchars($_GET['token']); ?>" method="POST">
            <input type="password" class="field" placeholder="Mật khẩu mới" name="password">
            <input type="password" class="field" placeholder="Nhập lại mật khẩu" name="re_password">
            <span class="valid"><?php if (isset($mess)) { echo $mess; } ?></span>
            <button type="submit" class="submit_btn" name="submit">Đặt lại mật khẩu</button>
        </form>
        <div class="tag">
            <span></span>
            <a href="index.php?act=dangnhap" class="btn btn-primary">Đăng nhập</a>
        </div>
    </div>
</div>
