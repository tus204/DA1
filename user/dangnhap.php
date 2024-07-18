<?php if (isset($_SESSION['user'])) {
    header('location: index.php');
    } ?>
    
<div class="hero">

<div class="login_form">

    <h1>Đăng nhập</h1>

    <form class="input_box" action="index.php?act=dangnhap" method="POST">

        <input type="text" class="field" placeholder="Đăng nhập" name="username" value="<?php if(isset($username)) echo $username; ?>">
        <span class="valid"><?php if (isset($vali_usern)) { echo $vali_usern; } ?> </span>
        <input type="password" class="field mt-2" maxlength="10" placeholder="Mật khẩu" name="password">
        <span class="valid"><?php if (isset($vali_pass)) { echo $vali_pass; } ?> <br> </span>
        <?php if (isset($mess) ) { ?>
            <span class="mess"><?php echo $mess ?></span> <br>
        <?php } ?>
        <a href="index.php?act=forgot_password" class="text-decoration-none">Quên mật khẩu ?</a>
        
        <button type="submit" class="submit_btn mt-3" name="submit">Đăng nhập</button>

        <div class="tag">
            <span>Chưa có tài khoản?</span>
            <a href="index.php?act=dangky">Đăng ký</a>
        </div>

    </form>

</div>

</div>

</body>
</html>


