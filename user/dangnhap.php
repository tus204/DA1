<div class="container w-50 pt-lg-20 mt-1">
    <div class="modal-header text-center border-0 pb-0">
        <h3 class="modal-title w-100 " id="signInModalLabel">Sign In</h3>
    </div>
    <div class="modal-body px-sm-13 px-8">
        <p class="text-center fs-16 mb-10">Don’t have an account yet? <a href="index.php?act=dangky"
                class="text-black">Sign up</a> for
            free</p>
        <form action="index.php?act=dangnhap" method="POST">
            <input name="username" type="text" class="form-control mb-5 <?php if (isset($vali_usern)) {
                echo 'is-invalid';
            } ?>" placeholder="Your Username" value="<?php if (isset($username))
                echo $username; ?>">
            <span class="text-danger mb-3"><?php if (isset($vali_usern)) {
                echo $vali_usern;
            } ?> </span>
            <input name="password" type="password" class="form-control mb-5 <?php if (isset($vali_pass)) {
                echo 'is-invalid';
            } ?>" placeholder="Password">
            <span class="text-danger"><?php if (isset($vali_pass)) {
                echo $vali_pass;
            } ?> </span>
            <?php if (isset($mess)) { ?>
                <span class="text-danger"><?php echo $mess ?></span> <br>
            <?php } ?>
            <div class="d-flex align-items-center justify-content-between mt-8 mb-7">
                <div class="custom-control d-flex form-check">
                    <input name="stay-signed-in" type="checkbox" class="form-check-input rounded-0 me-3"
                        id="staySignedIn" checked>
                    <label class="custom-control-label text-body" for="staySignedIn">Stay signed in</label>
                </div>
                <a href="index.php?act=forgot_password" class="text-secondary">Forgot your password?</a>
            </div>
            <button type="submit" value="Login" name="submit"
                class="btn btn-dark btn-hover-bg-primary btn-hover-border-primary w-100">Log In</button>
        </form>
    </div>
    <!-- <div class="modal-footer px-13 pt-0 pb-12 border-0">
            <div class="border-bottom w-100"></div>
            <div class="text-center lh-1 mb-8 w-100 mt-n5">
                <span class="fs-14 bg-body lh-1 px-4">or Log-in with</span>
            </div>
            <div class="d-flex w-100">
                <a href="#"
                    class="btn btn-outline-secondary w-100 border-2x me-5 btn-hover-bg-primary btn-hover-border-primary"><i
                        class="fab fa-facebook-f me-4" style="color: #2E58B2"></i>Facebook</a>
                <a href="#"
                    class="btn btn-outline-secondary w-100 border-2x mt-0 btn-hover-bg-primary btn-hover-border-primary"><i
                        class="fab fa-google me-4" style="color: #DD4B39"></i>Google</a>
            </div>
        </div> -->
</div>