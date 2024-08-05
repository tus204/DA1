<header id="header"
    class="header header-sticky z-index-5 header-sticky-smart disable-transition-all position-absolute start-0 end-0">
    <div class="sticky-area">
        <div class="main-header nav navbar navbar-light navbar-expand-xl py-6 py-xl-0">
            <div class="container-wide container flex-nowrap">
                <div class="w-72px d-flex d-xl-none">
                    <button class="navbar-toggler align-self-center  border-0 shadow-none px-0 canvas-toggle p-4"
                        type="button" data-bs-toggle="offcanvas" data-bs-target="#offCanvasNavBar"
                        aria-controls="offCanvasNavBar" aria-expanded="false" aria-label="Toggle Navigation">
                        <span class="fs-24 toggle-icon"></span>
                    </button>
                </div>
                <a href="index-2.html" class="navbar-brand has-sticky-logo py-4 mx-auto w-xl-50">
                    <img class="light-mode-img" src="assets/images/others/logo.png" width="179" height="26"
                        alt="Poly Bakery - Bootstrap 5 HTML Templates">
                    <img class="dark-mode-img" src="assets/images/others/logo-white.png" width="179" height="26"
                        alt="Poly Bakery - Bootstrap 5 HTML Templates">
                    <img class="sticky-logo sticky-logo-light" src="assets/images/others/logo.png" width="179"
                        height="26" alt="Poly Bakery - Bootstrap 5 HTML Templates">
                    <img class="sticky-logo sticky-logo-dark" src="assets/images/others/logo-white.png" width="179"
                        height="26" alt="Poly Bakery - Bootstrap 5 HTML Templates"></a>
                <div class="d-none d-xl-flex w-xl-50">
                    <ul class="navbar-nav">
                        <li
                            class="nav-item transition-all-xl-1 py-xl-11 py-0 me-xxl-12 me-xl-10 dropdown dropdown-hover dropdown-fullwidth">
                            <a class="nav-link d-flex justify-content-between position-relative py-xl-0 px-xl-0 text-uppercase fw-semibold ls-1 fs-15px fs-xl-14px"
                                href="index.php" id="menu-item-home" aria-haspopup="true" aria-expanded="false">Home</a>
                        </li>
                        <li
                            class="nav-item transition-all-xl-1 py-xl-11 py-0 me-xxl-12 me-xl-10 dropdown dropdown-hover dropdown-fullwidth position-static">
                            <a class="nav-link d-flex justify-content-between position-relative py-xl-0 px-xl-0 text-uppercase fw-semibold ls-1 fs-15px fs-xl-14px"
                                href="store.html" id="menu-item-shop" aria-haspopup="true"
                                aria-expanded="false">Shop</a>
                        </li>
                        <li
                            class="nav-item transition-all-xl-1 py-xl-11 py-0 me-xxl-12 me-xl-10 dropdown dropdown-hover">
                            <a class="nav-link d-flex justify-content-between position-relative py-xl-0 px-xl-0 text-uppercase fw-semibold ls-1 fs-15px fs-xl-14px"
                                href="#" id="menu-item-pages" aria-haspopup="true" aria-expanded="false">Posts</a>
                        </li>
                        <li class="nav-item transition-all-xl-1 py-xl-11 me-xl-9  dropdown-hover dropdown-fullwidth">
                            <a class="nav-link d-flex flex-nowrap justify-content-center py-xl-0 px-xl-0 text-uppercase fw-semibold ls-1 fs-15px fs-xl-14px"
                                href="#" id="menu-item-blocks" aria-haspopup="" aria-expanded="">About us</a>
                        </li>
                    </ul>
                </div>
                <div class="icons-actions d-flex justify-content-end w-xl-50 fs-28px text-body-emphasis">
                    <div class="px-xl-5 d-inline-block">
                        <a class="lh-1 color-inherit text-decoration-none" href="#" data-bs-toggle="offcanvas"
                            data-bs-target="#searchModal" aria-controls="searchModal" aria-expanded="false">
                            <svg class="icon icon-magnifying-glass-light">
                                <use xlink:href="#icon-magnifying-glass-light"></use>
                            </svg>
                        </a>
                    </div>
                    <!-- <div class="px-5 d-none d-xl-inline-block">
                        <a class="position-relative lh-1 color-inherit text-decoration-none" href="shop/wishlist.html">
                            <svg class="icon icon-star-light">
                                <use xlink:href="#icon-star-light"></use>
                            </svg>
                            <span
                                class="badge bg-dark text-white position-absolute top-0 start-100 translate-middle mt-4 rounded-circle fs-13px p-0 square"
                                style="--square-size: 18px">3</span>
                        </a>
                    </div> -->
                    <div class="px-5 d-none d-xl-inline-block">
                        <a class="position-relative lh-1 color-inherit text-decoration-none" href="#"
                            data-bs-toggle="offcanvas" data-bs-target="#shoppingCart" aria-controls="shoppingCart"
                            aria-expanded="false">
                            <svg class="icon icon-star-light">
                                <use xlink:href="#icon-shopping-bag-open-light"></use>
                            </svg>
                            <span
                                class="badge bg-dark text-white position-absolute top-0 start-100 translate-middle mt-4 rounded-circle fs-13px p-0 square"
                                style="--square-size: 18px">3</span>
                        </a>
                    </div>
                    <?php if (isset($_SESSION['user'])): ?>
                        <div class="color-modes position-relative ps-5">
                            <a class="bd-theme btn btn-link nav-link dropdown-toggle d-inline-flex align-items-center justify-content-center p-0 position-relative"
                                href="#" aria-expanded="true" data-bs-toggle="dropdown" data-bs-display="static"
                                aria-label="User menu">
                                <svg class="icon icon-user-light">
                                    <use xlink:href="#icon-user-light"></use>
                                </svg>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end fs-14px" data-bs-popper="static">
                                <li>
                                    <a class="dropdown-item d-flex align-items-center" href="index.php?act=">
                                        Hồ sơ
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-item d-flex align-items-center" href="index.php?act=dangxuat">
                                        Đăng xuất
                                    </a>
                                </li>
                            </ul>
                        </div>
                    <?php else: ?>
                        <div class="px-5 d-none d-xl-inline-block pt-1">
                            <a class="lh-1 color-inherit text-decoration-none" href="index.php?act=dangnhap">
                                <i class="fa-regular fa-arrow-right-to-bracket fs-4"></i>
                            </a>
                        </div>
                    <?php endif; ?>

                    <!-- <div class="px-5 d-none d-xl-inline-block pt-1">
                        <a class="lh-1 color-inherit text-decoration-none" href="index.php?act=dangnhap">
                            <i class="fa-regular fa-arrow-right-to-bracket fs-4"></i>
                        </a>
                    </div> -->
                    <!-- <div class="px-5 d-none d-xl-inline-block">
                        <a class="lh-1 color-inherit text-decoration-none" href="index.php?act=dangnhap">
                            <svg class="icon icon-user-light">
                                <use xlink:href="#icon-user-light"></use>
                            </svg>
                        </a>
                    </div> -->
                    <!-- <div class="color-modes position-relative ps-5">
                        <a class="bd-theme btn btn-link nav-link dropdown-toggle d-inline-flex align-items-center justify-content-center p-0 position-relative rounded-circle"
                            href="#" aria-expanded="true" data-bs-toggle="dropdown" data-bs-display="static"
                            aria-label="Toggle theme (light)">
                            <svg class="bi my-1 theme-icon-active">
                                <use href="#sun-fill"></use>
                            </svg>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-end fs-14px" data-bs-popper="static">
                            <li>
                                <button type="button" class="dropdown-item d-flex align-items-center active"
                                    data-bs-theme-value="light" aria-pressed="true">
                                    <svg class="bi me-4 opacity-50 theme-icon">
                                        <use href="#sun-fill"></use>
                                    </svg>
                                    Light
                                    <svg class="bi ms-auto d-none">
                                        <use href="#check2"></use>
                                    </svg>
                                </button>
                            </li>
                            <li>
                                <button type="button" class="dropdown-item d-flex align-items-center"
                                    data-bs-theme-value="dark" aria-pressed="false">
                                    <svg class="bi me-4 opacity-50 theme-icon">
                                        <use href="#moon-stars-fill"></use>
                                    </svg>
                                    Dark
                                    <svg class="bi ms-auto d-none">
                                        <use href="#check2"></use>
                                    </svg>
                                </button>
                            </li>
                            <li>
                                <button type="button" class="dropdown-item d-flex align-items-center"
                                    data-bs-theme-value="auto" aria-pressed="false">
                                    <svg class="bi me-4 opacity-50 theme-icon">
                                        <use href="#circle-half"></use>
                                    </svg>
                                    Auto
                                    <svg class="bi ms-auto d-none">
                                        <use href="#check2"></use>
                                    </svg>
                                </button>
                            </li>
                        </ul>
                    </div> -->
                </div>
            </div>
        </div>
    </div>
</header>