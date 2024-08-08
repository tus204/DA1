<form action="?act=add_sanpham" method="POST" enctype="multipart/form-data">
    <div class="row mb-9 align-items-center">
        <div class="col-xxl-12">
            <div class="row">
                <div class="col-sm-6 mb-8 mb-sm-0">
                    <h2 class="fs-4 mb-0">Add New Product</h2>
                </div>
                <div class="col-sm-6 d-flex flex-wrap justify-content-sm-end">
                    <a href="#" class="btn btn-outline-primary me-4">
                        Save to draft
                    </a>
                    <button type="submit" name="submit" class="btn btn-primary">Publish</button>
                </div>
            </div>
        </div>
    </div>
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
                                    title</label>
                                <input type="text" placeholder="Type here" class="form-control" id="product_title"
                                    name="name">
                            </div>
                            <div class="mb-8">
                                <label class="mb-4 fs-13px ls-1 fw-bold text-uppercase">Full
                                    description</label>
                                <textarea placeholder="Type here" class="form-control" rows="4" name="fact"></textarea>
                            </div>
                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="mb-8">
                                        <label class="mb-4 fs-13px ls-1 fw-bold text-uppercase" for="16cm">Price
                                            size
                                            16cm</label>
                                        <input placeholder="Enter price..." type="number" class="form-control" id="16cm"
                                            name="size_nho">
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="mb-8">
                                        <label class="mb-4 fs-13px ls-1 fw-bold text-uppercase" for="20cm">Price
                                            size
                                            20cm</label>
                                        <input placeholder="Enter price..." type="number" class="form-control" id="20cm"
                                            name="size_vua">
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <label class="mb-4 fs-13px ls-1 fw-bold text-uppercase" for="24cm">Price size
                                        24cm</label>
                                    <input placeholder="Enter price..." type="number" class="form-control" id="24cm"
                                        name="size_lon">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="card mb-8 rounded-4">
                        <div class="card-header p-7 bg-transparent">
                            <h4 class="fs-18px mb-0 font-weight-500">Media</h4>
                        </div>
                        <div class="card-body p-7">
                            <div class="input-upload">
                                <div class="mb-7">
                                    <img src="../assets/images/dashboard/upload.svg" width="102" class="d-block mx-auto"
                                        alt>
                                </div>
                                <input class="form-control" type="file" name="img">
                            </div>
                        </div>
                    </div>
                    <div class="card mb-8 rounded-4">
                        <div class="card-header p-7 bg-transparent">
                            <h4 class="fs-18px mb-0 font-weight-500">Category</h4>
                        </div>
                        <div class="card-body p-7">
                            <div class="row mx-n3">
                                <div class="col-sm-12 mb-6 px-3">
                                    <label class="mb-4 fs-13px ls-1 fw-bold text-uppercase"
                                        for="currency">Category</label>
                                    <select class="form-select" id="currency" name="cate">
                                        <?php foreach ($dmuc as $dm) { ?>
                                            <option value="<?= $dm['id'] ?>"><?= $dm['name'] ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>