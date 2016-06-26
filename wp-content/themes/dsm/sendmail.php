<?php 
 $name = $_POST['username'];
 $email = $_POST['usrmail'];
 $message = $_POST["usermessage"];
send_mail($name,$email,$message);
echo '<script>window.location.href = "/dsm/contactus";</script>';

function send_mail($name,$email,$message){

require 'PHPMailer/PHPMailerAutoload.php';
echo "<div hidden>";
$mail = new PHPMailer(); // create a new object
$mail->IsSMTP(); // enable SMTP
$mail->SMTPDebug = 1; // debugging: 1 = errors and messages, 2 = messages only
$mail->SMTPAuth = true; // authentication enabled
$mail->SMTPSecure = 'ssl'; // secure transfer enabled REQUIRED for Gmail
$mail->Host = "smtp.gmail.com";
$mail->Port = 465; // or 587
$mail->IsHTML(true);
$mail->Username = "saber.trika@gmail.com";
$mail->Password = "sasa2020";
$mail->SetFrom("mgm@mgmforex.com");
$mail->Subject = "contact us request";
$bd = "Username : " . $name . "<br>";
$bd = $bd. "email : " . $email . "<br>";
$bd = $bd ."Message : " . $message . "<br>";
$mail->Body = $bd;
$mail->AddAddress("m.saber@beeinteractivemena.com");

 if(!$mail->Send()) {
    echo "Mailer Error: " . $mail->ErrorInfo;
 } else {
    echo "Message has been sent";
 }
echo "</div>";
}

// header("Location : /contact");


?>