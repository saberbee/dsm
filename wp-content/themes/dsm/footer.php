<!--start-touch-->	
	<div class="touch">
		<div class="container">
			<div class="touch-main">
				<div class="col-md-4 touch-left">
					<h3>Get in touch</h3>
					<p>34789 Magic City Avenue, Los Angeles, CA, 94048</p>
					<p>Call: 123 456 789<p>
					<p>E-mail:<a href="mailto:example@email.com">testmail@sitename.com</a>
	   					<span><a href="mailto:example@email.com">testmail@sitename.com</a></span></p>
				</div>
				<div class="col-md-4 touch-left">
					<h3>@twitter</h3>
					<p>@twitterCheck out this great #codecanyon item 'Responsive Login, Sign Up and Payment Form Wizard' codecanyon.net/item/responsiv…</p>
					<label>about 2days ago</label>
				</div>
				<div class="col-md-4 touch-right">
					<ul>
						<li><a href="#"><span class="fb"> </span></a></li>
						<li><a href="#"><span class="twt"> </span></a></li>
						<li><a href="#"><span class="g"> </span></a></li>
						<li><a href="#"><span class="p"> </span></a></li>
						<li><a href="#"><span class="drb"> </span></a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--end-touch-->	
<script>
  var nav = responsiveNav(".nav-collapse");
</script>			
<script>
(function(){
	/*1*/var customSelects = document.querySelectorAll(".custom-dropdown__select");
	/*2*/for(var i=0; i<customSelects.length; i++){
		if (customSelects[i].hasAttribute("disabled")){
			customSelects[i].parentNode.className += " custom-dropdown--disabled";
		}
	}	
})()
</script>

<script src="<?php echo bloginfo('template_url') ?>/js/jquery.mobile.custom.min.js"></script>
<script src="<?php echo bloginfo('template_url') ?>/js/main.js"></script> <!-- Resource jQuery -->
</body>
</html>