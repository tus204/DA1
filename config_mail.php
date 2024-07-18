<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'vendor/autoload.php';

function send_verification_email($email, $verification_link) {
    $mail = new PHPMailer(true);

    try {

        $mail->isSMTP();
        $mail->Host       = 'smtp.gmail.com'; 
        $mail->SMTPAuth   = true;
        $mail->Username   = 'tuwtf2605@gmail.com'; 
        $mail->Password   = 'rpaz cbwz lfkd jmky'; 
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
        $mail->Port       = 587;

        $mail->setFrom('your_email@example.com', 'no-reply@meomeo.com');

        $mail->addAddress($email);

        $mail->isHTML(true);
        $mail->Subject = 'Xác thực email của bạn';
        $mail->Body    = "Click here to verifycation broo: <a href='$verification_link'>$verification_link</a>";

        $mail->send();
    } catch (Exception $e) {
        echo "Không thể gửi email. Lỗi: {$mail->ErrorInfo}";
    }
}
?>
