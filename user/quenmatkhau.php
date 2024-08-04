<div class="container w-50 pt-lg-20 mt-1">
    <div class="modal-header text-center border-0 pb-0">
        <h3 class="modal-title w-100" id="forgotPasswordModalLabel">Forgot Password</h3>
    </div>
    <div class="modal-body px-sm-13 px-8">
        <?php if (isset($alert_info)) { ?>
            <div class="alert alert-info"><?php echo $alert_info; ?></div>
        <?php } ?>
        <form action="index.php?act=forgot_password" method="POST">
            <input type="text" name="email" class="form-control mb-5 <?php if (isset($email) && $email == '') { echo 'is-invalid'; } ?>" placeholder="Your email..." value="<?php if (isset($email)) { echo htmlspecialchars($email); } ?>">
            <span class="text-danger mb-3"><?php if (isset($email) && $email == '') { echo 'Bạn phải điền đầy đủ thông tin'; } elseif (isset($mess)) { echo $mess; } ?></span>
            <button type="submit" class="btn btn-dark btn-hover-bg-primary btn-hover-border-primary w-100" name="submit">Send link to reset password</button>
        </form>
        <div class="d-flex align-items-center justify-content-between mt-8 mb-7">
            <span class="text-secondary"><i class="fa-regular fa-angles-right"></i></span>
            <a href="index.php?act=dangnhap" class="text-secondary">Đăng nhập</a>
        </div>
    </div>
</div>

