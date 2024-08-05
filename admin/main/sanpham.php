<div class="row mb-9 align-items-center justify-content-between">
    <div class="col-md-6 mb-8 mb-md-0">
        <h2 class="fs-4 mb-0">Product List</h2>
        <p>Lorem ipsum dolor sit amet.</p>
    </div>
    <div class="col-md-6 d-flex flex-wrap justify-content-md-end">
        <a href="#" class="btn btn-outline-primary btn-hover-bg-primary me-4">
            Export
        </a>
        <a href="#" class="btn btn-outline-primary btn-hover-bg-primary me-4">
            Import
        </a>
        <a href="?act=add_sanpham" class="btn btn-primary">
            Create new
        </a>
    </div>
</div>
<div class="card mb-4 rounded-4 p-7">
    <div class="card-header bg-transparent px-0 pt-0 pb-7">
        <div class="row align-items-center justify-content-between">
            <div class="col-md-4 col-12 mr-auto mb-md-0 mb-6">
                <select class="form-select">
                    <option selected data-select2-id="3">All Categories</option>
                    <?php foreach ($dm as $item) { ?>
                        <option><?= $item['name'] ?></option>
                    <?php } ?>
                </select>
            </div>
            <div class="col-md-8">
                <div class="row justify-content-end flex-nowrap d-flex">
                    <div class="col-lg-4 col-md-6 col-6">
                        <input type="date" class="form-control bg-input border-0">
                    </div>
                    <div class="col-lg-4 col-md-6 col-6">
                        <select class="form-select">
                            <option>Status</option>
                            <option>On</option>
                            <option>Off</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="card-body px-0 pt-7 pb-0">
        <div class="table-responsive">
            <table class="table table-hover align-middle table-nowrap mb-0">
                <tbody>
                    <tr>
                        <th>#</th>
                        <th>Name</th>
                        <th>Price</th>
                        <th>Status</th>
                        <th>Category</th>
                        <th>Action</th>
                    </tr>
                    <?php foreach ($sanpham as $key => $value) {
                        $sp = load_sanpham_admin($value['pro_id']);
                        $cate = load_danhmuc_admin($sp['id_categ']);
                        $price = loadone_price($value['pro_id']);
                        ?>
                        <tr>
                            <td><?= $key + 1 ?></td>
                            <td>
                                <div class="d-flex align-items-center flex-nowrap">
                                    <a href="#" title="Flowers cotton dress">
                                        <img src="#" data-src="../assets/images/products/<?php echo $sp['img'] ?>"
                                            alt="Flowers cotton dress" class="lazy-image" width="60" height="80">
                                    </a>
                                    <a href="" title="Flowers cotton dress" class="ms-6">
                                        <p class="fw-semibold text-body-emphasis mb-0"><?=$sp['name']?></p>
                                    </a>
                                </div>
                            </td>
                            <td>
                                <select name="" id="" class="form-select w-75">
                                    <option value="1">Nhỏ - <?php echo $price[0]['price'] ?></option>
                                    <option value="2">Vừa - <?php echo $price[1]['price'] ?></option>
                                    <option value="3">Lớn - <?php echo $price[2]['price'] ?></option>
                                </select>
                            </td>
                            <td>
                                <span
                                    class="badge rounded-lg rounded-pill alert py-3 px-4 mb-0 alert-success border-0 text-capitalize fs-12">
                                    <?= $sp['status'] ?>
                                </span>
                            </td>
                            <td>
                                <?= $cate['name'] ?>
                            </td>
                            <td class="">
                                <div class="d-flex flex-nowrap">
                                    <a href="?act=edit_sanpham&id_edit=<?= $sp['id'] ?>"
                                        class="btn btn-primary py-4 px-5 btn-xs fs-13px me-4"><i
                                            class="far fa-pen me-2"></i> Edit</a>
                                    <a href="?act=del_sanpham&del=<?= $sp['id'] ?>"
                                        class="btn btn-outline-primary btn-hover-bg-danger btn-hover-border-danger btn-hover-text-light py-4 px-5 fs-13px btn-xs me-4"
                                        onclick="return confirm('Are you sure you want to delete this item?')"><i
                                            class="far fa-trash me-2"></i> Delete</a>
                                </div>
                            </td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
<nav aria-label="Page navigation example" class="mt-6 mb-4">
    <ul class="pagination justify-content-start">
        <li class="page-item active mx-3"><a class="page-link" href="#">01</a></li>
        <li class="page-item mx-3"><a class="page-link" href="#">02</a></li>
        <li class="page-item mx-3"><a class="page-link" href="#">03</a></li>
        <li class="page-item mx-3"><a class="page-link dot" href="#">...</a></li>
        <li class="page-item mx-3"><a class="page-link" href="#">16</a></li>
        <li class="page-item mx-3">
            <a class="page-link" href="#"><i class="far fa-chevron-right"></i></a>
        </li>
    </ul>
</nav>