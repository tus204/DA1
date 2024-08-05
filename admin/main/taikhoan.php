<div class="row mb-9 align-items-center justify-content-between">
    <div class="col-sm-6 mb-8 mb-sm-0">
        <h2 class="fs-4 mb-0">User list</h2>
    </div>
    <!-- <div class="col-sm-6 d-flex flex-wrap justify-content-sm-end">
        <a href="#" class="btn btn-primary">
            <i class="far fa-plus"></i>
            <span class="d-inline-block ml-1">Create new</span>
        </a>
    </div> -->
</div>
<div class="card mb-4 rounded-4 p-7">
    <div class="row">
        <div class="col-md-3">
            <form action="" method="POST">
                <div class="mb-8">
                    <label for="username" class="mb-5 fs-13px ls-1 fw-semibold text-uppercase">User name</label>
                    <input id="username" name="username" type="text" class="form-control mb-5 <?php if (isset($mess_usern))
                        echo 'is-invalid'; ?>" placeholder="Username" value="<?php if (isset($username))
                            echo htmlspecialchars($username); ?>">
                    <span class="text-danger"><?php if (isset($username) && $username == '')
                        echo 'Bạn phải điền đầy đủ thông tin';
                    elseif (isset($mess_usern))
                        echo $mess_usern; ?></span>
                </div>
                <div class="mb-8">
                    <label for="password" class="mb-5 fs-13px ls-1 fw-semibold text-uppercase">Password</label>
                    <input id="password" name="password" type="password" class="form-control mb-5 <?php if (isset($password) && $password == '')
                        echo 'is-invalid'; ?>" placeholder="Password" value="<?php if (isset($password))
                            echo htmlspecialchars($password); ?>">
                    <span class="text-danger"><?php if (isset($password) && $password == '')
                        echo 'Bạn phải điền đầy đủ thông tin';
                    elseif (isset($mess_pass))
                        echo $mess_pass; ?></span>
                </div>
                <div class="mb-8">
                    <label class="mb-5 fs-13px ls-1 fw-semibold text-uppercase">Status</label>
                    <select class="form-select" name="status">
                        <option value="on">ON</option>
                        <option value="off">OFF</option>
                    </select>
                </div>
                <div class="d-grid">
                    <button type="submit" name="submit" class="btn btn-primary">Create user</button>
                </div>
            </form>
        </div>
        <div class="col-md-9 pt-5">
            <div class="card-body px-0 pt-7 pb-0">
                <div class="table-responsive">
                    <table class="table table-hover align-middle table-nowrap mb-0 table-borderless">
                        <thead class="table-light">
                            <tr>
                                <th class="align-middle" scope="col">#
                                </th>
                                <th class="align-middle" scope="col">User
                                </th>
                                <th class="align-middle" scope="col">Email
                                </th>
                                <th class="align-middle" scope="col">Status
                                </th>
                                <th class="align-middle" scope="col">Registered
                                </th>
                                <!-- <th class="align-middle text-center" scope="col">Action
                        </th> -->
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $stt = 0;
                            foreach ($taikhoan as $key) {
                                $stt++;
                                ?>
                                <tr>
                                    <td><?php echo $stt ?></td>
                                    <td>
                                        <div class="d-flex align-items-center flex-nowrap">
                                            <img src="#"
                                                data-src="<?php echo $key['avatar'] != NULL ? $key['avatar'] : '../assets/images/dashboard/avt_default.png' ?>"
                                                alt="<?php echo $key['username'] ?>" width="60" height="60"
                                                class="lazy-image rounded-pill">
                                            <div class="ms-5">
                                                <a href="dashboard/sellers-profile.html"
                                                    title="Mary Monasa"><?php echo $key['username'] ?></a>
                                                <span class="d-block fs-13px text-muted">ID #<?php echo $key['id'] ?></span>
                                            </div>
                                        </div>
                                    </td>
                                    <td><?php echo $key['email'] != NULL ? $key['email'] : '' ?></td>
                                    <td>
                                        <?php if ($key['status'] == 'on') { ?>
                                            <a href="index.php?act=taikhoan&off=<?php echo $key['id'] ?>">
                                                <span
                                                    class="badge rounded-lg rounded-pill alert py-3 px-4 mb-0 alert-success border-0 text-capitalize fs-12">ON</span>
                                            </a>
                                        <?php } else { ?>
                                            <a href="index.php?act=taikhoan&on=<?php echo $key['id'] ?>">
                                                <span
                                                    class="badge rounded-lg rounded-pill alert py-3 px-4 mb-0 alert-danger border-0 text-capitalize fs-12">OFF</span>
                                            </a>
                                        <?php } ?>
                                    </td>
                                    <td>
                                        <span
                                            class="badge rounded-lg rounded-pill alert py-3 px-4 mb-0 alert-success border-0 text-capitalize fs-12">
                                            <?php if ($key['verified'] == '1') {
                                                echo 'Verified';
                                                ?>
                                            <?php } else {
                                                echo 'Not verified';
                                                ?>
                                            <?php } ?>
                                        </span>
                                    </td>
                                    <!-- <td class="text-center">
                                <a href="?act=xoa" class="text-capitalize fs-13px btn-xs py-4 text-danger"><i class="fa-solid fa-trash"></i></a>
                            </td> -->
                                </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>

            </div>
            <!-- <nav aria-label="Page navigation example" class="mt-6 mb-4">
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
            </nav> -->
        </div>
    </div>
</div>
</div>