<form action="?act=edit_sanpham&id=<?= $pro_id ?>" method="POST" enctype="multipart/form-data">
    <!-- Header Section -->
    <div class="row mb-9 align-items-center">
        <div class="col-xxl-12">
            <div class="row">
                <div class="col-sm-6 mb-8 mb-sm-0">
                    <h2 class="fs-4 mb-0">Edit Product</h2>
                </div>
                <div class="col-sm-6 d-flex flex-wrap justify-content-sm-end">
                    <a href="#" class="btn btn-outline-primary me-4">Save to draft</a>
                    <button type="submit" name="submit" class="btn btn-primary">Update</button>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Basic Information Section -->
    <div class="row">
        <div class="col-xxl-12">
            <div class="row">
                <div class="col-lg-8">
                    <div class="card mb-8 rounded-4">
                        <div class="card-header p-7 bg-transparent">
                            <h4 class="fs-18 mb-0 font-weight-500">Basic</h4>
                        </div>
                        <div class="card-body p-7">
                            <div class="mb-8">
                                <label for="product_title" class="mb-4 fs-13px ls-1 fw-bold text-uppercase">Product
                                    Title</label>
                                <input type="hidden" name="id" value="<?=$in4['id']?>">
                                <input type="text" placeholder="Type here" class="form-control" id="product_title"
                                    name="name" value="<?= $in4['name'] ?>">
                            </div>
                            <div class="mb-8">
                                <label class="mb-4 fs-13px ls-1 fw-bold text-uppercase">Full Description</label>
                                <textarea placeholder="Type here" class="form-control" rows="4"
                                    name="fact"><?= $in4['fact'] ?></textarea>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 mb-8">
                                    <label class="mb-4 fs-13px ls-1 fw-bold text-uppercase" for="16cm">Price Size
                                        16cm</label>
                                    <input placeholder="Enter price..." type="number" class="form-control" id="16cm"
                                        name="size_nho" value="<?= $p_size[0]['price'] ?>">
                                </div>
                                <div class="col-lg-4 mb-8">
                                    <label class="mb-4 fs-13px ls-1 fw-bold text-uppercase" for="20cm">Price Size
                                        20cm</label>
                                    <input placeholder="Enter price..." type="number" class="form-control" id="20cm"
                                        name="size_vua" value="<?= $p_size[1]['price'] ?>">
                                </div>
                                <div class="col-lg-4 mb-8">
                                    <label class="mb-4 fs-13px ls-1 fw-bold text-uppercase" for="24cm">Price Size
                                        24cm</label>
                                    <input placeholder="Enter price..." type="number" class="form-control" id="24cm"
                                        name="size_lon" value="<?= $p_size[2]['price'] ?>">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
