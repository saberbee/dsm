<?php
/*
Template Name: Deposite Submit
*/
?>
<?php
 $usrname = $_REQUEST["usrname"];
 $address   = $_REQUEST["address"];
 $phone   = $_REQUEST["phone"];
 $country   = $_REQUEST["country"];
 $email   = $_REQUEST["email"];
 $Withdrawal_amount   = $_REQUEST["Withdrawal_amount"];
 $MT4_account   = $_REQUEST["MT4_account"];
 $Bank_name   = $_REQUEST["Bank_name"];
 $Bank_swift   = $_REQUEST["Bank_swift"];
 $Banck_account_number   = $_REQUEST["Banck_account_number"];
 $iban_number   = $_REQUEST["iban_number"];
 $branch_name   = $_REQUEST["branch_name"];
 $routing_code   = $_REQUEST["routing_code"];
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
$mail->Subject = "MGM Withdrawal";
$bd = "Username : " . $usrname . "<br>";
$bd = $bd. "email : " . $email . "<br>";
$bd = $bd ."Address : " . $address . "<br>";
$bd = $bd ."Phone : " .$phone. "<br>";
$bd = $bd ."Country : " . $country . "<br>";
$bd = $bd ."Withdrawal Amount : " . $Withdrawal_amount . "<br>";
$bd = $bd ."MT4 Account : " . $MT4_account . "<br>";
$bd = $bd ."Bank Name : " . $Bank_name . "<br>";
$bd = $bd ."Bank Swift : " . $Bank_swift . "<br>";
$bd = $bd ."Banck Account Number : " . $Banck_account_number . "<br>";
$bd = $bd ."branch Name : " . $branch_name . "<br>";
$bd = $bd ."routing_code : " . $routing_code . "<br>";
$mail->Body = $bd;
$mail->AddAddress("m.saber@beeinteractivemena.com");

 if(!$mail->Send()) {
    echo "Mailer Error: " . $mail->ErrorInfo;
 } else {
    echo "Message has been sent";
echo '<script>window.location.href = "/dsm/withdrawl";</script>';
	
 }
echo "</div>";
?>
