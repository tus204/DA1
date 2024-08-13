<?php

class BannerModel
{
    // lay het roi sort
    public function select_all_banners($order_by = 'id', $sort = 'DESC')
    {
        $sql = "SELECT * FROM banners ORDER BY $order_by $sort";
        return pdo_query($sql);
    }

    public function get_all_banners($order_by = 'id', $sort = 'DESC')
    {
        $sql = "SELECT * FROM banners WHERE status = 1 ORDER BY $order_by $sort";
        return pdo_query($sql);
    }

    // Lấy banner theo id
    public function select_banner_by_id($id)
    {
        $sql = "SELECT * FROM banners WHERE id = ?";
        return pdo_query_one($sql, $id);
    }

    // Thêm mới banner
    public function insert_banner($title, $image, $status)
    {
        $sql = "INSERT INTO banners (title, image, status) VALUES (?, ?, ?)";
        pdo_execute($sql, $title, $image, $status);
    }

    // Cập nhật banner
    public function update_banner($id, $title, $image, $status)
    {
        $sql = "UPDATE banners SET 
            title = '" . $title . "', 
            status = '" . $status . "'";

        if ($image != '') {
            $sql .= ", image = '" . $image . "'";
        }

        $sql .= " WHERE id = " . $id;

        pdo_execute($sql);
    }


    // Xóa banner
    public function delete_banner($id)
    {
        $sql = "DELETE FROM banners WHERE id = ?";
        pdo_execute($sql, $id);
    }
}

$BannerModel = new BannerModel();

?>