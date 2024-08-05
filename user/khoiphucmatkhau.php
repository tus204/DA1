<div class="container w-50 pt-lg-20 mt-1">
    <div class="modal-header text-center border-0 pb-0">
        <h3 class="modal-title w-100" id="resetPasswordModalLabel">Reset Password</h3>
    </div>
    <div class="modal-body px-sm-13 px-8">
        <?php if (isset($alert_success)) { ?>
            <div class="alert alert-success"><?php echo $alert_success; ?></div>
        <?php } ?>
        <?php if (isset($alert_error)) { ?>
            <div class="alert alert-danger"><?php echo $alert_error; ?></div>
        <?php } ?>
        <form action="index.php?act=reset_password&token=<?php echo htmlspecialchars($_GET['token']); ?>" method="POST">
            <input type="password" name="password" class="form-control mb-5 <?php if (isset($password_error)) { echo 'is-invalid'; } ?>" placeholder="New password">
            <input type="password" name="re_password" class="form-control mb-5 <?php if (isset($re_password_error)) { echo 'is-invalid'; } ?>" placeholder="Confirm password">
            <span class="text-danger mb-3"><?php if (isset($mess)) { echo $mess; } ?></span>
            <button type="submit" class="btn btn-dark btn-hover-bg-primary btn-hover-border-primary w-100" name="submit">Change</button>
        </form>
        <div class="d-flex align-items-center justify-content-between mt-8 mb-7">
            <span class="text-secondary"></span>
            <a href="index.php?act=dangnhap" class="btn btn-primary">Login</a>
        </div>
    </div>
</div>
