<div class="hero2">

    <div class="login_form2">

        <h1>Đăng ký</h1>

        <?php if (isset($alert_info)) { ?>
            <div class="alert alert-info"><?php echo $alert_info; ?></div>
        <?php } ?>
        <?php if (isset($alert_success)) { ?>
            <div class="alert alert-success"><?php echo $alert_success; ?></div>
        <?php } ?>
        <?php if (isset($alert_error)) { ?>
            <div class="alert alert-danger"><?php echo $alert_error; ?></div>
        <?php } ?>

        <form class="input_box2" action="index.php?act=dangky" method="POST">

            <input type="text" class="field2" placeholder="Tên người dùng" name="username" value="<?php if (isset($username)) {
                echo $username;
            } ?>">
            <span class="valid"><?php if (isset($username) && $username == '') {
                echo 'Bạn phải điền đầy đủ thông tin';
            } elseif (isset($mess_usern)) {
                echo $mess_usern;
            } ?>
            </span>
            <input type="text" class="field2" placeholder="Email" name="email" value="<?php if (isset($email)) {
                echo $email;
            } ?>">
            <span class="valid"><?php if (isset($email) && $email == '') {
                echo 'Bạn phải điền đầy đủ thông tin';
            } elseif (isset($mess_email)) {
                echo $mess_email;
            } ?>
            </span>

            <input type="password" class="field2" placeholder="Mật khẩu" maxlength="10" name="password" value="<?php if (isset($password)) {
                echo $password;
            } ?>">
            <span class="valid"><?php if (isset($password) && $password == '') {
                echo 'Bạn phải điền đầy đủ thông tin';
            } elseif (isset($mess_pass)) {
                echo $mess_pass;
            } ?>
            </span>
            <input type="password" class="field2" placeholder="Xác nhận mật khẩu" maxlength="10" name="re_password"
                value="<?php if (isset($re_password)) {
                    echo $re_password;
                } ?>">
            <span class="valid"><?php if (isset($re_password, $password) && $re_password == '') {
                echo 'Bạn phải điền đầy đủ thông tin';
            } elseif (isset($re_password, $password) && $password != $re_password) {
                echo 'Mật khẩu không khớp';
            } ?>
            </span>
            <button type="submit" class="submit_btn2" name="submit">Đăng ký</button>

            <div class="tag2 mb-3">
                <span>Đã có tài khoản?</span>
                <a href="index.php?act=dangnhap">Đăng nhập</a>
            </div>

        </form>

    </div>

</div>

</body>

</html>