<?php
/*
Template Name: New Account Submit
*/
?>
<?php
 $usrname = $_REQUEST["usrname"];
 $email   = $_REQUEST["email"];
 $phone   = $_REQUEST["phone"];
 $phone_type   = $_REQUEST["phone_type"];
 $wayofcontact   = $_REQUEST["wayofcontact"];
 $timeofcontact   = $_REQUEST["timeofcontact"];
 $from   = $_REQUEST["from"];
 $to   = $_REQUEST["to"];
 $amount   = $_REQUEST["amount"];
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
$mail->Subject = "MGM Internal Transfer";
$bd = "Username : " . $usrname . "<br>";
$bd = $bd. "email : " . $email . "<br>";
$bd = $bd ."Phone : " . $phone_type ." - " .$phone. "<br>";
$bd = $bd ."Way Of Contact : " . $wayofcontact . "<br>";
$bd = $bd ."Time Of Contact : " . $timeofcontact . "<br>";
$bd = $bd ."From : " . $from . "<br>";
$bd = $bd ."To : " . $to . "<br>";
$bd = $bd ."Amount : " . $amount . "<br>";
$mail->Body = $bd;
$mail->AddAddress("m.saber@beeinteractivemena.com");

 if(!$mail->Send()) {
    echo "Mailer Error: " . $mail->ErrorInfo;
 } else {
    echo "Message has been sent";
echo '<script>window.location.href = "/dsm/internal-transfer";</script>';
	
 }
echo "</div>";
?>
