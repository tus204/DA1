<main id="content" class="wrapper layout-page">
    <section>
        <div class="slick-slider hero hero-header-09"
            data-slick-options="{&#34;arrows&#34;:false,&#34;autoplay&#34;:true,&#34;cssEase&#34;:&#34;ease-in-out&#34;,&#34;dots&#34;:false,&#34;fade&#34;:true,&#34;infinite&#34;:true,&#34;slidesToShow&#34;:1,&#34;speed&#34;:600}">
            <div class=" vh-100 d-flex align-items-center">
                <div class="lazy-bg bg-overlay position-absolute z-index-1 w-100 h-100   light-mode-img"
                    data-bg-src="assets/images/hero-slider/slider1.jpg">
                </div>
                <div class="lazy-bg bg-overlay dark-mode-img position-absolute z-index-1 w-100 h-100"
                    data-bg-src="assets/images/hero-slider/slider1_dark.jpg">
                </div>
                <div class="position-relative z-index-2 container container-xxl pt-22 pb-15 pt-xl-13 pb-xl-11">
                    <div class="border-0 ps-lg-1 mx-md-0 mx-auto hero-card text-center">
                        <div class="text-start text-xl-center">
                            <div data-animate="fadeInDown">
                                <p class="text-primary mb-8 hero-title font-primary">Made for you!</p>
                                <h1 class="mb-7 hero-title">Beauty Inspired by Real Life</h1>
                                <p class="hero-desc fs-18px mb-11 text-body-calculate">Made using clean, non-toxic
                                    ingredients, our products are designed for everyone.</p>
                            </div>
                            <a href="#" data-animate="fadeInUp"
                                class="btn btn-lg btn-dark btn-hover-bg-primary btn-hover-border-primary">
                                Shop Now
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class=" vh-100 d-flex align-items-center">
                <div class="lazy-bg bg-overlay position-absolute z-index-1 w-100 h-100   light-mode-img"
                    data-bg-src="assets/images/hero-slider/slider2.jpg">
                </div>
                <div class="lazy-bg bg-overlay dark-mode-img position-absolute z-index-1 w-100 h-100"
                    data-bg-src="assets/images/hero-slider/slider2_dark.jpg">
                </div>
                <div class="position-relative z-index-2 container container-xxl pt-22 pb-15 pt-xl-13 pb-xl-11">
                    <div class="border-0 ps-lg-1 mx-md-0 mx-auto hero-card text-center">
                        <div class="text-start text-xl-center">
                            <div data-animate="fadeInDown">
                                <p class="text-primary mb-8 hero-title font-primary">Made for you!</p>
                                <h1 class="mb-7 hero-title">Beauty Inspired by Real Life</h1>
                                <p class="hero-desc fs-18px mb-11 text-body-calculate">Made using clean, non-toxic
                                    ingredients, our products are designed for everyone.</p>
                            </div>
                            <a href="#" data-animate="fadeInUp"
                                class="btn btn-lg btn-dark btn-hover-bg-primary btn-hover-border-primary">
                                Shop Now
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class=" vh-100 d-flex align-items-center">
                <div class="lazy-bg bg-overlay position-absolute z-index-1 w-100 h-100   light-mode-img"
                    data-bg-src="assets/images/hero-slider/slider3.jpg">
                </div>
                <div class="lazy-bg bg-overlay dark-mode-img position-absolute z-index-1 w-100 h-100"
                    data-bg-src="assets/images/hero-slider/slider3_dark.jpg">
                </div>
                <div class="position-relative z-index-2 container container-xxl pt-22 pb-15 pt-xl-13 pb-xl-11">
                    <div class="border-0 ps-lg-1 mx-md-0 mx-auto hero-card text-center">
                        <div class="text-start text-xl-center">
                            <div data-animate="fadeInDown">
                                <p class="text-primary mb-8 hero-title font-primary">Made for you!</p>
                                <h1 class="mb-7 hero-title">Beauty Inspired by Real Life</h1>
                                <p class="hero-desc fs-18px mb-11 text-body-calculate">Made using clean, non-toxic
                                    ingredients, our products are designed for everyone.</p>
                            </div>
                            <a href="#" data-animate="fadeInUp"
                                class="btn btn-lg btn-dark btn-hover-bg-primary btn-hover-border-primary">
                                Shop Now
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="shop_our_feature_products">
        <div class="container-xxl py-lg-18 pt-14 pb-15 mb-3 mt-1">
            <div class="mb-12 pb-3 text-center" data-animate="fadeInUp">
                <h2 class="mb-5">Discover our featured baked goods</h2>
                <p class="fs-18px mb-0 mw-xl-30 mw-lg-50 mw-md-75 ms-auto me-auto">Crafted with wholesome, non-toxic
                    ingredients, our treats are made for everyone to enjoy.</p>
            </div>
            <div class="row">
                <div class="col-lg-5 mb-10 mb-lg-0" data-animate="fadeInUp">
                    <div class="card border-0 rounded-0 hover-zoom-in hover-shine">
                        <img class="lazy-image w-100 img card-img object-fit-cover banner-02"
                            src="./assets/images/product/cake_card.jpg"
                            data-src="./assets/images/products/cake_card.jpg" width="570" height="913"
                            alt="Empower Yourself">
                        <div class="card-img-overlay p-12 m-2 d-inline-flex flex-column justify-content-end">
                            <h5 class="card-subtitle fw-normal font-primary text-white fs-1 mb-5">Birthday Cake
                            </h5>
                            <h3 class="card-title mb-0 fs-2 text-white">Special</h3>
                            <div class="mt-10 pt-2">
                                <a href="#" class="btn btn-white">Explore More</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="row gy-11">
                        <?php foreach ($sanphams_feat as $sp) {
                            extract($sp);
                            $gia = load_price($id);
                            ?>
                            <div class="col-md-4 col-sm-6 col-12">
                                <div class="card card-product grid-1 bg-transparent border-0" data-animate="fadeInUp">
                                    <figure class="card-img-top position-relative mb-7 overflow-hidden ">
                                        <a href="shop/product-details-v1.html" class="hover-zoom-in d-block"
                                            title="Enriched Duo">
                                            <img src="#" data-src="./assets/images/products/<?=$sp['img']?>"
                                                class="img-fluid lazy-image w-100" alt="Enriched Duo" width="330"
                                                height="440" style="object-fit: cover; height: 330px;">
                                        </a>
                                        <div class="position-absolute d-flex z-index-2 product-actions  horizontal"><a
                                                class="text-body-emphasis bg-body bg-dark-hover text-light-hover rounded-circle square product-action shadow-sm add_to_cart"
                                                href="#" data-bs-toggle="tooltip" data-bs-placement="top"
                                                data-bs-title="Add To Cart">
                                                <svg class="icon icon-shopping-bag-open-light">
                                                    <use xlink:href="#icon-shopping-bag-open-light"></use>
                                                </svg>
                                            </a><a
                                                class="text-body-emphasis bg-body bg-dark-hover text-light-hover rounded-circle square product-action shadow-sm quick-view"
                                                href="#" data-bs-toggle="tooltip" data-bs-placement="top"
                                                data-bs-title="Quick View">
                                                <span data-bs-toggle="modal" data-bs-target="#quickViewModal"
                                                    class="d-flex align-items-center justify-content-center">
                                                    <svg class="icon icon-eye-light">
                                                        <use xlink:href="#icon-eye-light"></use>
                                                    </svg>
                                                </span>
                                            </a>
                                        </div>
                                    </figure>
                                    <div class="card-body text-center p-0">
                                        <span
                                            class="d-flex align-items-center price text-body-emphasis fw-bold justify-content-center mb-3 fs-6"><?php echo $gia['price'] ?>
                                            VND</span>
                                        <h4
                                            class="product-title card-title text-primary-hover text-body-emphasis fs-15px fw-500 mb-3">
                                            <a class="text-decoration-none text-reset"
                                                href="shop/product-details-v1.html"><?php echo $name ?></a>
                                        </h4>
                                        <div class="d-flex align-items-center fs-12px justify-content-center">
                                            <div class="rating">
                                                <div class="empty-stars">
                                                    <span class="star">
                                                        <svg class="icon star-o">
                                                            <use xlink:href="#star-o"></use>
                                                        </svg>
                                                    </span>
                                                    <span class="star">
                                                        <svg class="icon star-o">
                                                            <use xlink:href="#star-o"></use>
                                                        </svg>
                                                    </span>
                                                    <span class="star">
                                                        <svg class="icon star-o">
                                                            <use xlink:href="#star-o"></use>
                                                        </svg>
                                                    </span>
                                                    <span class="star">
                                                        <svg class="icon star-o">
                                                            <use xlink:href="#star-o"></use>
                                                        </svg>
                                                    </span>
                                                    <span class="star">
                                                        <svg class="icon star-o">
                                                            <use xlink:href="#star-o"></use>
                                                        </svg>
                                                    </span>
                                                </div>
                                                <div class="filled-stars" style="width: 100%">
                                                    <span class="star">
                                                        <svg class="icon star text-primary">
                                                            <use xlink:href="#star"></use>
                                                        </svg>
                                                    </span>
                                                    <span class="star">
                                                        <svg class="icon star text-primary">
                                                            <use xlink:href="#star"></use>
                                                        </svg>
                                                    </span>
                                                    <span class="star">
                                                        <svg class="icon star text-primary">
                                                            <use xlink:href="#star"></use>
                                                        </svg>
                                                    </span>
                                                    <span class="star">
                                                        <svg class="icon star text-primary">
                                                            <use xlink:href="#star"></use>
                                                        </svg>
                                                    </span>
                                                    <span class="star">
                                                        <svg class="icon star text-primary">
                                                            <use xlink:href="#star"></use>
                                                        </svg>
                                                    </span>
                                                </div>
                                            </div><span class="reviews ms-4 pt-3 fs-14px">2947 reviews</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="bg-section-2 pb-lg-18 pb-16 pt-lg-17 pt-15 mb-4">
        <div class="container container-xxl">
            <div class="row align-items-center">
                <div class="col-md-6 mb-md-9" data-animate="fadeInUp">
                    <h2 class="fs-3 mb-0">Categories</h2>
                </div>
                <div class="col-md-6 mb-10 mb-md-9" data-animate="fadeInUp">
                    <p class="fs-18px fw-semibold text-primary text-md-end mb-0">@Poly Bakery_</p>
                </div>
            </div>
            <div class="mx-4 slick-slider"
                data-slick-options="{&quot;slidesToShow&quot;: 5,&quot;infinite&quot;:false,&quot;autoplay&quot;:false,&quot;dots&quot;:true,&quot;arrows&quot;:true,&quot;responsive&quot;:[{&quot;breakpoint&quot;: 1366,&quot;settings&quot;: {&quot;slidesToShow&quot;:5 }},{&quot;breakpoint&quot;: 992,&quot;settings&quot;: {&quot;slidesToShow&quot;:3}},{&quot;breakpoint&quot;: 768,&quot;settings&quot;: {&quot;slidesToShow&quot;: 2}},{&quot;breakpoint&quot;: 576,&quot;settings&quot;: {&quot;slidesToShow&quot;: 2}}]}">
                <?php foreach ($danhmucs as $dm) {
                    extract($dm);
                    // $gia = load_price($id);    
                    ?>
                    <div class="px-6" data-animate="fadeInUp">
                        <a href="assets/images/categories/<?php echo $thumbnail ?>" title="cate 1" data-gallery="categories"
                            class="hover-zoom-in hover-shine  card-img-overlay-hover hover-zoom-in hover-shine d-block">
                            <img class="lazy-image" width="247" height="247"
                                data-src="assets/images/categories/<?php echo $thumbnail ?>" alt="cate 1" src="">
                            <span
                                class="card-img-overlay text-center fw-normal font-primary text-white fs-3 bg-dark bg-opacity-30">
                                <p class="mt-18"></p><?php echo $name ?></p>
                            </span>
                        </a>
                    </div>
                <?php } ?>
            </div>
        </div>
    </section>
    <section class="container container-xxl pt-lg-18 pt-15">
        <div class="mb-12 pb-3 text-center" data-animate="fadeInUp">
            <h2 class="mb-5">Customer Favorite Beauty Essentials</h2>
            <p class="fs-18px mb-0 mw-xl-30 mw-lg-50 mw-md-75 ms-auto me-auto">Made using clean, non-toxic
                ingredients, our products are designed for everyone.</p>
        </div>
        <div class="row">
            <div class="col-lg-5 mb-12 mb-xl-0 order-lg-1" data-animate="fadeInUp">
                <div class="card border-0 rounded-0 hover-zoom-in hover-shine">
                    <img class="lazy-image w-100 img-fluid card-img object-fit-cover banner-02" src="#"
                        data-src="./assets/images/banner/banner-34.jpg" width="570" height="913" alt="Pamper Your Skin">
                    <div class="card-img-overlay p-12 m-2 d-inline-flex flex-column justify-content-end">
                        <h5 class="card-subtitle fw-normal font-primary text-white fs-1 mb-5">Get the Glow</h5>
                        <h3 class="card-title mb-0 fs-2 text-white">Pamper Your Skin</h3>
                        <div class="mt-10 pt-2">
                            <a href="#" class="btn btn-white">Explore More</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-7">
                <div class="row gy-11">
                    <?php foreach ($sanphams_feat as $sp) {
                        extract($sp);
                        $gia = load_price($id);
                        ?>
                        <div class="col-md-4 col-sm-6 col-12">
                            <div class="card card-product grid-1 bg-transparent border-0" data-animate="fadeInUp">
                                <figure class="card-img-top position-relative mb-7 overflow-hidden ">
                                    <a href="shop/product-details-v1.html" class="hover-zoom-in d-block h-75" 
                                        title="Enriched Duo">
                                        <img src="#" data-src="./assets/images/products/<?=$sp['img']?>"
                                            class="img-fluid lazy-image w-100" alt="Enriched Duo" width="330" height="440"  style="object-fit: cover; height: 330px;">
                                    </a>
                                    <div class="position-absolute d-flex z-index-2 product-actions  horizontal"><a
                                            class="text-body-emphasis bg-body bg-dark-hover text-light-hover rounded-circle square product-action shadow-sm add_to_cart"
                                            href="#" data-bs-toggle="tooltip" data-bs-placement="top"
                                            data-bs-title="Add To Cart">
                                            <svg class="icon icon-shopping-bag-open-light">
                                                <use xlink:href="#icon-shopping-bag-open-light"></use>
                                            </svg>
                                        </a><a
                                            class="text-body-emphasis bg-body bg-dark-hover text-light-hover rounded-circle square product-action shadow-sm quick-view"
                                            href="#" data-bs-toggle="tooltip" data-bs-placement="top"
                                            data-bs-title="Quick View">
                                            <span data-bs-toggle="modal" data-bs-target="#quickViewModal"
                                                class="d-flex align-items-center justify-content-center">
                                                <svg class="icon icon-eye-light">
                                                    <use xlink:href="#icon-eye-light"></use>
                                                </svg>
                                            </span>
                                        </a>
                                    </div>
                                </figure>
                                <div class="card-body text-center p-0">
                                    <span
                                        class="d-flex align-items-center price text-body-emphasis fw-bold justify-content-center mb-3 fs-6"><?php echo $gia['price'] ?>
                                        VND</span>
                                    <h4
                                        class="product-title card-title text-primary-hover text-body-emphasis fs-15px fw-500 mb-3">
                                        <a class="text-decoration-none text-reset"
                                            href="shop/product-details-v1.html"><?php echo $name ?></a>
                                    </h4>
                                    <div class="d-flex align-items-center fs-12px justify-content-center">
                                        <div class="rating">
                                            <div class="empty-stars">
                                                <span class="star">
                                                    <svg class="icon star-o">
                                                        <use xlink:href="#star-o"></use>
                                                    </svg>
                                                </span>
                                                <span class="star">
                                                    <svg class="icon star-o">
                                                        <use xlink:href="#star-o"></use>
                                                    </svg>
                                                </span>
                                                <span class="star">
                                                    <svg class="icon star-o">
                                                        <use xlink:href="#star-o"></use>
                                                    </svg>
                                                </span>
                                                <span class="star">
                                                    <svg class="icon star-o">
                                                        <use xlink:href="#star-o"></use>
                                                    </svg>
                                                </span>
                                                <span class="star">
                                                    <svg class="icon star-o">
                                                        <use xlink:href="#star-o"></use>
                                                    </svg>
                                                </span>
                                            </div>
                                            <div class="filled-stars" style="width: 100%">
                                                <span class="star">
                                                    <svg class="icon star text-primary">
                                                        <use xlink:href="#star"></use>
                                                    </svg>
                                                </span>
                                                <span class="star">
                                                    <svg class="icon star text-primary">
                                                        <use xlink:href="#star"></use>
                                                    </svg>
                                                </span>
                                                <span class="star">
                                                    <svg class="icon star text-primary">
                                                        <use xlink:href="#star"></use>
                                                    </svg>
                                                </span>
                                                <span class="star">
                                                    <svg class="icon star text-primary">
                                                        <use xlink:href="#star"></use>
                                                    </svg>
                                                </span>
                                                <span class="star">
                                                    <svg class="icon star text-primary">
                                                        <use xlink:href="#star"></use>
                                                    </svg>
                                                </span>
                                            </div>
                                        </div><span class="reviews ms-4 pt-3 fs-14px">2947 reviews</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                </div>
            </div>
        </div>
    </section>
    <section class="py-lg-20 py-15">
        <div class="container container-xxl">
            <div class="row gx-30px gy-30px">
                <div class="col-lg-4" data-animate="fadeInUp">
                    <div class="d-flex">
                        <div class="me-9">
                            <img data-src="./assets/images/image-box/image-box-18.png" alt="Guaranteed PURE" width="90"
                                height="90" class="lazy-image" src="#" />
                        </div>
                        <div>
                            <h3 class="fs-4 mb-6">
                                Guaranteed PURE
                            </h3>
                            <p class="mb-0 pe-lg-12">All Grace formulations adhere to strict purity standards and
                                will never contain harsh or toxic ingredients</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4" data-animate="fadeInUp">
                    <div class="d-flex">
                        <div class="me-9">
                            <img data-src="./assets/images/image-box/image-box-19.png" alt="Completely Cruelty-Free"
                                width="90" height="90" class="lazy-image" src="#" />
                        </div>
                        <div>
                            <h3 class="fs-4 mb-6">
                                Completely Cruelty-Free
                            </h3>
                            <p class="mb-0 pe-lg-12">All Grace formulations adhere to strict purity standards and
                                will never contain harsh or toxic ingredients</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4" data-animate="fadeInUp">
                    <div class="d-flex">
                        <div class="me-9">
                            <img data-src="./assets/images/image-box/image-box-20.png" alt="Ingredient Sourcing"
                                width="90" height="90" class="lazy-image" src="#" />
                        </div>
                        <div>
                            <h3 class="fs-4 mb-6">
                                Ingredient Sourcing
                            </h3>
                            <p class="mb-0 pe-lg-12">All Grace formulations adhere to strict purity standards and
                                will never contain harsh or toxic ingredients</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="container-fluid px-9">
            <div class="row gy-30px gx-30px">
                <div class="col-12 col-md-4" data-animate="fadeInUp">
                    <div class="card border-0 rounded-0 hover-zoom-in hover-shine">
                        <img class="lazy-image card-img object-fit-cover lazy-image" src="#"
                            data-src="./assets/images/banner/banner-28.jpg" width="468" height="468"
                            alt="Autumn Skincare">
                        <div class="card-img-overlay d-inline-flex flex-column p-8 justify-content-end text-center">
                            <h3 class="card-title text-white lh-45px">Autumn Skincare</h3>
                            <div><a href="#"
                                    class="btn btn-link p-0 fw-semibold text-white text-decoration-none">Disvover
                                    Now <svg class="icon">
                                        <use xlink:href="#icon-arrow-right"></use>
                                    </svg></a></div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4" data-animate="fadeInUp">
                    <div class="card border-0 rounded-0 hover-zoom-in hover-shine">
                        <img class="lazy-image card-img object-fit-cover lazy-image" src="#"
                            data-src="./assets/images/banner/banner-26.jpg" width="468" height="468" alt="Sale 40% Off">
                        <div class="card-img-overlay d-inline-flex flex-column p-8 justify-content-end text-center">
                            <h3 class="card-title text-white lh-45px">Sale 40% Off</h3>
                            <div><a href="#" class="btn btn-link p-0 fw-semibold text-white text-decoration-none">Shop
                                    Sale
                                    <svg class="icon">
                                        <use xlink:href="#icon-arrow-right"></use>
                                    </svg></a></div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4" data-animate="fadeInUp">
                    <div class="card border-0 rounded-0 hover-zoom-in hover-shine">
                        <img class="lazy-image card-img object-fit-cover lazy-image" src="#"
                            data-src="./assets/images/banner/banner-27.jpg" width="468" height="468" alt="Save on Sets">
                        <div class="card-img-overlay d-inline-flex flex-column p-8 justify-content-end text-center">
                            <h3 class="card-title text-white lh-45px">Save on Sets</h3>
                            <div><a href="#"
                                    class="btn btn-link p-0 fw-semibold text-white text-decoration-none">Disvover
                                    Now <svg class="icon">
                                        <use xlink:href="#icon-arrow-right"></use>
                                    </svg></a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="pt-lg-18 pt-15 mt-3 pb-lg-17 pb-16" data-animate="fadeInUp">
        <div class="container container-xxl">
            <div class="col-lg-6 offset-lg-3">
                <div class="slick-slider custom-arrow dot-lg-0"
                    data-slick-options="{&quot;slidesToShow&quot;: 1,&quot;infinite&quot;:true,&quot;autoplay&quot;:true,&quot;dots&quot;:false,&quot;arrows&quot;:true,&quot;fade&quot;:false,&quot;cssEase&quot;:&quot;ease-in-out&quot;,&quot;speed&quot;:600, &quot;responsive&quot;:[{&quot;breakpoint&quot;: 992,&quot;settings&quot;: {&quot;slidesToShow&quot;:1,&quot;dots&quot;:true, &quot;arrows&quot;:false }}]}">
                    <div class="px-6 text-center">
                        <img src="#" data-src="./assets/images/testimonial/testimonial-10.png"
                            alt="Amazing product. The results are so transformative in texture."
                            class="lazy-image mx-auto mb-11" style="width: 80px; height: 80px">
                        <p class="text-primary fs-3 mb-12 pb-2">“Amazing product. The results are so transformative
                            in texture and my face feels plump and healthy.“</p>
                        <h4 class="fs-15px fw-bold text-uppercase mb-4">Kathleen C.</h4>
                    </div>
                    <div class="px-6 text-center">
                        <img src="#" data-src="./assets/images/testimonial/testimonial-11.png"
                            alt="Amazing product. The results are so transformative in texture."
                            class="lazy-image mx-auto mb-11" style="width: 80px; height: 80px">
                        <p class="text-primary fs-3 mb-12 pb-2">“Amazing product. The results are so transformative
                            in texture and my face feels plump and healthy.“</p>
                        <h4 class="fs-15px fw-bold text-uppercase mb-4">Kathleen C.</h4>
                    </div>
                    <div class="px-6 text-center">
                        <img src="#" data-src="./assets/images/testimonial/testimonial-12.png"
                            alt="Amazing product. The results are so transformative in texture."
                            class="lazy-image mx-auto mb-11" style="width: 80px; height: 80px">
                        <p class="text-primary fs-3 mb-12 pb-2">“Amazing product. The results are so transformative
                            in texture and my face feels plump and healthy.“</p>
                        <h4 class="fs-15px fw-bold text-uppercase mb-4">Kathleen C.</h4>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>