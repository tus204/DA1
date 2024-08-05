<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'vendor/autoload.php';

function send_verification_email($email, $verification_link, $subject) {
    $mail = new PHPMailer(true);

    try {

        $mail->isSMTP();
        $mail->Host       = 'smtp.gmail.com'; 
        $mail->SMTPAuth   = true;
        $mail->Username   = 'tuwtf2605@gmail.com'; 
        $mail->Password   = 'rpaz cbwz lfkd jmky'; 
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
        $mail->Port       = 587;

        $mail->setFrom('no-reply@meomeo.com', 'bo Tus hehe');

        $mail->addAddress($email);

        $mail->isHTML(true);        
        $mail->CharSet = 'utf-8';
        $mail->Subject = $subject;
        $mail->Body    = "Click here to verifycation broo: <a href='$verification_link'>$verification_link</a>";
        $mail->Body    .= "<br><b>Đường link có hiệu lực trong 5p !!!</b>";

        $mail->send();
        return true;
    } catch (Exception $e) {
        // echo "Không thể gửi email. Lỗi: {$mail->ErrorInfo}";
        return false;
    }
}
?>
