<!-- Instagram End -->
<div style="border: 1px solid #0A68FF;"></div>
<!-- Footer Section Begin -->
<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-7">
                <div class="footer__about">
                    <div class="footer__logo">
                        <a href="./index.html"><img src="public/img/logo2.png" alt=""></a>
                    </div>
                    <p>Chào mừng bạn đến với Poly Bakery nơi cung cấp những loại bánh chất lượng</p>

                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-5">
                <div class="footer__widget">
                    <h6>ĐƯỜNG DẪN</h6>
                    <ul>
                        <li><a href="#">Về chúng tôi</a></li>
                        <li><a href="#">Blogs</a></li>
                        <li><a href="#">Liên hệ</a></li>
                        <li><a href="#">FAQ</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-4">
                <div class="footer__widget">
                    <h6>tÀI khoẢN</h6>
                    <ul>
                        <li><a href="#">Tài khoản của tôi</a></li>
                        <li><a href="#">Theo dõi đơn hàng</a></li>
                        <li><a href="#">Thủ tục thanh toán</a></li>
                        <li><a href="#">Danh sách yêu thích</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-md-8 col-sm-8">
                <div class="footer__newslatter">
                    <h6>BẢN TIN</h6>
                    <form action="#">
                        <input type="text" placeholder="Email">
                        <button type="submit" class="site-btn">Theo dõi</button>
                    </form>
                    <div class="footer__payment">
                        <a href="#"><img src="public/img/payment/payment-1.png" alt=""></a>
                        <a href="#"><img src="public/img/payment/payment-2.png" alt=""></a>
                        <a href="#"><img src="public/img/payment/payment-3.png" alt=""></a>
                        <a href="#"><img src="public/img/payment/payment-4.png" alt=""></a>
                        <a href="#"><img src="public/img/payment/payment-5.png" alt=""></a>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                <div class="footer__copyright__text">
                    <p>Copyright &copy;
                        <script>document.write(new Date().getFullYear());</script> All rights reserved | This project is
                        made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="#" target="_blank">N8</a>
                    </p>
                </div>
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </div>
        </div>
    </div>
</footer>
<!-- Footer Section End -->

<!-- Search Begin -->
<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch">+</div>
        <form action="tim-kiem" method="get" class="search-model-form">
            <input type="search" name="query" id="search-input" placeholder="TÌM KIẾM.....">
        </form>
    </div>
</div>
<!-- Search End -->

<!-- Toatr -->
<!-- <script>
    $(document).ready(function () {
        $("#toastr-success-top-right").on("click", function () {
            toastr.success("1 sản phẩm đã thêm vào giỏ", "Thành công", {
                closeButton: true,
                debug: false,
                newestOnTop: false,
                progressBar: true,
                positionClass: "toast-top-right",
                preventDuplicates: false,
                onclick: null,
                showDuration: "300",
                hideDuration: "1000",
                timeOut: "5000",
                extendedTimeOut: "1000",
                showEasing: "swing",
                hideEasing: "linear",
                showMethod: "fadeIn",
                hideMethod: "fadeOut"
            });
        });
    });
</script> -->
<script>
    $(document).ready(function () {
        <?php if (isset($_SESSION['success_message'])): ?>
            toastr.success("<?= $_SESSION['success_message'] ?>");
            <?php unset($_SESSION['success_message']); ?>
        <?php endif; ?>

        <?php if (isset($_SESSION['error_message'])): ?>
            toastr.error("<?= $_SESSION['error_message'] ?>");
            <?php unset($_SESSION['error_message']); ?>
        <?php endif; ?>
    });
</script>

<!-- Js Plugins -->
<script src="public/js/jquery-3.3.1.min.js"></script>
<script src="public/js/bootstrap.min.js"></script>
<script src="public/js/jquery.magnific-popup.min.js"></script>
<script src="public/js/jquery-ui.min.js"></script>
<script src="public/js/mixitup.min.js"></script>
<script src="public/js/jquery.countdown.min.js"></script>
<script src="public/js/jquery.slicknav.js"></script>
<script src="public/js/owl.carousel.min.js"></script>
<script src="public/js/jquery.nicescroll.min.js"></script>
<script src="public/js/main.js"></script>

<!-- dialogflow -->
<script src="https://www.gstatic.com/dialogflow-console/fast/messenger/bootstrap.js?v=1"></script>
<df-messenger intent="WELCOME" chat-title="Chatbot hỗ trợ khách hàng" agent-id="1157ce11-d40f-4696-806a-ae5e0dbbc980"
    language-code="vi"></df-messenger>


</body>

</html>