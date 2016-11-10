<?php
/*
Template Name: Deposite Submit
*/
?>
<?php
 $usrname = $_REQUEST["usrname"];
 $address   = $_REQUEST["address"];
 $phone   = $_REQUEST["phone"];
 $depositamount   = $_REQUEST["depositamount"];
 $depositmethod   = $_REQUEST["depositmethod"];
 $mtaccount   = $_REQUEST["mtaccount"];
 $email   = $_REQUEST["email"];
 $phone_type   = $_REQUEST["phone_type"];
 $country   = $_REQUEST["country"];
 $wayofcontact   = $_REQUEST["wayofcontact"];
 $timeofcontact   = $_REQUEST["timeofcontact"];
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
$mail->Subject = "MGM Deposite";
$bd = "Username : " . $usrname . "<br>";
$bd = $bd. "email : " . $email . "<br>";
$bd = $bd ."Address : " . $address . "<br>";
$bd = $bd ."Deposite Amount : " . $depositamount . "<br>";
$bd = $bd ."Deposite Method : " . $depositmethod . "<br>";
$bd = $bd ."MT4 Account : " . $mtaccount . "<br>";
$bd = $bd ."Phone : " . $phone_type ." - " .$phone. "<br>";
$bd = $bd ."Country : " . $country . "<br>";
$bd = $bd ."Way Of Contact : " . $wayofcontact . "<br>";
$bd = $bd ."Time Of Contact : " . $timeofcontact . "<br>";
$mail->Body = $bd;
$mail->AddAddress("m.saber@beeinteractivemena.com");

 if(!$mail->Send()) {
    echo "Mailer Error: " . $mail->ErrorInfo;
 } else {
    echo "Message has been sent";
echo '<script>window.location.href = "/dsm/deposit";</script>';
	
 }
echo "</div>";
?>
