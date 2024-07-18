<h1>Tài khoản</h1>
<div class="voucher-admin">
    <div class="box-add-voucher">
        <form action="" method="post">
            <h2>Tạo tài khoản người dùng</h2>
            <input type="text" name="username" placeholder="Tên người dùng" required>
            <input type="text" name="password" placeholder="Mật khẩu" required> 
            <button name="submit" type="submit">Xác nhận</button>
        </form>
    </div>
    <div class="admin-table">
        <table class="fl-table">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên người dùng</th>
                    <th>Trạng thái</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                $stt = 0;
                foreach ($taikhoan as $key ) { 
                    $stt ++;
                    ?>               
                    <tr>
                        <td><?php echo $stt ?></td>
                        <td><?php echo $key['username'] ?></td>
                        <td>
                            <?php if($key['status'] == 'on') { ?>
                                <a href="index.php?act=taikhoan&off=<?php echo $key['id'] ?>">OFF</a>
                            <?php } else { ?>
                                <a href="index.php?act=taikhoan&on=<?php echo $key['id'] ?>">ON</a>
                            <?php } ?>
                        </td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
</div>