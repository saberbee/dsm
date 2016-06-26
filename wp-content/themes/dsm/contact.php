<?php 
/*

Template Name:Contacts Us

*/

?>


<?php get_header();?>

	<!--start-contact-->
	<div class="contact">
		<div class="container">
			<div class="contact-top">
				<h3>Contact Us</h3>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
			</div>
			<div class="mp">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3451.4021767285776!2d31.343994950246188!3d30.111303281769008!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145815dc56f5ab71%3A0x852a416868137e0e!2sEl-Higaz+Square%2C+Al+Matar%2C+Qism+El-Nozha%2C+Cairo+Governorate%2C+Egypt!5e0!3m2!1sen!2sus!4v1466872303328" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
			</div>
			<div class="contact-bottom">
				<div class="col-md-5 contact-bottom-left">
					<h3>Contact Information</h3>
					<p>In pharetra dui vitae odio maximus vulputate. Nulam finibus dui more neque dui vitae odio maximu.In pharetra dui vitae odio maximus vulputate. Nullfinibus dui more neque.odio maximus vulputate. Nulla odio maximus vulputate. Nulla odio maxi.</p>
					<h6>The Company Name agi.
						<span>756 gt globel Place,</span>
						CD-Road,M 07 435.
					</h6>
					<p>Telephone: +1 234 567 9871
						<span>FAX: +1 234 567 9871</span>
						E-mail: <a href="mailto:info@example.com">mail@user.com</a>
					</p>
				</div>
				<div class="col-md-7 contact-bottom-right">
					<h3>Get in touch</h3>
					<div class="contact-text">
					<form action="<?php echo bloginfo('template_url');?>/sendmail.php" method="post" id="contact-form">
						<input id="username" name="username" type="text" placeholder="First Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.placeholder = 'First Name';}"/>
						<input id="usrmail" name="usrmail" type="text" placeholder="Email" onfocus="this.placeholder = '';" onblur="if (this.value == '') {this.placeholder = 'Email';}"/>
					</div>
					<div class="contact-textarea">
						<textarea id="usermessage" name="usermessage" placeholder="Message:" onfocus="this.placeholder = '';" onblur="if (this.value == '') {this.placeholder = 'Message';}"></textarea>
					</div>
					<div class="contact-but">
						<input type="submit" />
					</form>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--end-contact-->

<?php get_footer();?>


  <!-- Load jQuery and the validate plugin -->
  <script src="//ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
  
  <!-- jQuery Form Validation code -->
  <script>
  
  // When the browser is ready...
  $(function() {
  
    // Setup form validation on the #register-form element
    $("#contact-form").validate({
    
        // Specify the validation rules
        rules: {
            username: {required:true,},
            usermessage: "required",
            usrmail: {
                required: true,
                email: true
            }
        },
        // Specify the validation error messages
        messages: {
            username: "Please enter your name",
            usermessage: "Please enter message",
            usrmail: "Please enter a valid email address",
        },
        
        submitHandler: function(form) {
            form.submit();
        }
    });

  });
  
  </script>

  <style type="text/css">
  	.label {
  width:100px;
  text-align:right;
  float:left;
  padding-right:10px;
  font-weight:bold;
}
#register-form label.error {
  color:#FB3A3A;
  font-weight:bold;
}
h1 {
  font-family: Helvetica;
  font-weight: 100;
  color:#333;
  padding-bottom:20px;
}
.error
{
	color: red;
    padding-left: 10px;
    background: none;
    padding: 0px;
}
  </style>
