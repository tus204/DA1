<div class="container w-50 pt-lg-20 mt-1">
    <?php if (isset($alert_info)) { ?>
        <div class="alert alert-info"><?php echo $alert_info; ?></div>
    <?php } ?>
    <?php if (isset($alert_success)) { ?>
        <div class="alert alert-success"><?php echo $alert_success; ?></div>
    <?php } ?>
    <?php if (isset($alert_error)) { ?>
        <div class="alert alert-danger"><?php echo $alert_error; ?></div>
    <?php } ?>
    <div class="modal-header text-center border-0 pb-0">
        <h3 class="modal-title w-100" id="signUpModalLabel">Sign Up</h3>
    </div>
    <div class="modal-body px-sm-13 px-8">
        <p class="text-center fs-16 mb-10">Already have an account? <a href="index.php?act=dangnhap"
                class="text-black">Log in</a></p>
        <form action="index.php?act=dangky" method="POST">
            <input name="username" type="text" class="form-control mb-5 <?php if (isset($mess_usern))
                echo 'is-invalid'; ?>" placeholder="Username" value="<?php if (isset($username))
                    echo htmlspecialchars($username); ?>">
            <span class="text-danger"><?php if (isset($username) && $username == '')
                echo 'Bạn phải điền đầy đủ thông tin';
            elseif (isset($mess_usern))
                echo $mess_usern; ?></span>

            <input name="email" type="text" class="form-control mb-5 <?php if (isset($mess_email))
                echo 'is-invalid'; ?>" placeholder="Your email" value="<?php if (isset($email))
                    echo htmlspecialchars($email); ?>">
            <span class="text-danger"><?php if (isset($email) && $email == '')
                echo 'Bạn phải điền đầy đủ thông tin';
            elseif (isset($mess_email))
                echo $mess_email; ?></span>

            <input name="password" type="password" class="form-control mb-5 <?php if (isset($password) && $password == '')
                echo 'is-invalid'; ?>" placeholder="Password" value="<?php if (isset($password))
                    echo htmlspecialchars($password); ?>">
            <span class="text-danger"><?php if (isset($password) && $password == '')
                echo 'Bạn phải điền đầy đủ thông tin';
            elseif (isset($mess_pass))
                echo $mess_pass; ?></span>

            <input name="re_password" type="password" class="form-control mb-5 <?php if (isset($re_password, $password) && $password != $re_password)
                echo 'is-invalid'; ?>" placeholder="Confirm Password" value="<?php if (isset($re_password))
                    echo htmlspecialchars($re_password); ?>">
            <span class="text-danger"><?php if (isset($re_password, $password) && $re_password == '')
                echo 'Bạn phải điền đầy đủ thông tin';
            elseif (isset($re_password, $password) && $password != $re_password)
                echo 'Mật khẩu không khớp'; ?></span>

            <div class="d-flex align-items-center justify-content-between mt-8 mb-7">
                <div class="form-check">
                    <input name="agree-policy-terms" type="checkbox" class="form-check-input rounded-0 me-3"
                        id="agreePolicyTerm" checked>
                    <label class="form-check-label text-body" for="agreePolicyTerm">Yes, I agree with Grace... <a href="#"
                            class="text-black">Privacy Policy</a> and <a href="#" class="text-black">Terms of
                            Use</a></label>
                </div>
                <button type="submit" value="Sign Up" name="submit"
                    class="btn btn-dark btn-hover-bg-primary btn-hover-border-primary w-25">Sign Up</button>
            </div>
        </form>
    </div>
</div>