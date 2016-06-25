<!DOCTYPE html>
<html>
<head>
<title>MGM</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="<?php echo bloginfo('template_url') ?>/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="<?php echo bloginfo('template_url') ?>/css/style.css" rel='stylesheet' type='text/css' />
<script src="<?php echo bloginfo('template_url') ?>/js/jquery-1.11.0.min.js"></script>
<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="<?php echo bloginfo('template_url') ?>/css/responsive-nav.css">
<link rel="stylesheet" href="<?php echo bloginfo('template_url') ?>/css/pricing.css">
<link rel="stylesheet" href="<?php echo bloginfo('template_url') ?>/css/style_faq.css"> <!-- Resource style -->
<script src="js/modernizr.js"></script> <!-- Modernizr -->

<script src="<?php echo bloginfo('template_url') ?>/js/pricing.js"></script>
<script src="<?php echo bloginfo('template_url') ?>/js/responsive-nav.js"></script>
<!--Start-smoth-scrolling-->
		<script type="text/javascript" src="<?php echo bloginfo('template_url') ?>/js/move-top.js"></script>
		<script type="text/javascript" src="<?php echo bloginfo('template_url') ?>/js/easing.js"></script>	
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
<!--end-smoth-scrolling-->
<!--start-top-nav-script-->
		<script>
			$(function() {
				var pull 		= $('#pull');
					menu 		= $('nav ul');
					menuHeight	= menu.height();
				$(pull).on('click', function(e) {
					e.preventDefault();
					menu.slideToggle();
				});
				$(window).resize(function(){
	        		var w = $(window).width();
	        		if(w > 320 && menu.is(':hidden')) {
	        			menu.removeAttr('style');
	        		}
	    		});
			});
		</script>
<!--End-top-nav-script-->
<!--light-box-files -->
		<script src="<?php echo bloginfo('template_url') ?>/js/jquery.chocolat.js"></script>
		<link rel="stylesheet" href="<?php echo bloginfo('template_url') ?>/css/chocolat.css" type="text/css" media="screen" charset="utf-8" />
		<!--light-box-files -->
		<script type="text/javascript" charset="utf-8">
		$(function() {
			$('#example1 a').Chocolat();
		});
		</script>

</head>
<body>
	<!--start-header-->
	<div class="header" id="home">
		<div class="container">
			<div class="logo">
				<a href="index.html"><img src="<?php echo bloginfo('template_url') ?>/images/logo.png" alt=""></a>  
			</div>
			<div class="quote">
				<a href="quote.html">GET A QUOTE</a>
			</div>
			<!--start-top-nav-->
			<nav class="top-nav">
				<ul class="top-nav">
					<li><a href="index.html"  class="active">Home</a></li>
					<li><a href="<?php echo site_url(); ?>/faq">FAQ</a></li>
					<li><a href="about.html">About us</a></li>
					<li><a href="<?php echo site_url(); ?>/contactus">Contact us</a></li>
				</ul>
					<a href="#" id="pull"><img src="<?php echo bloginfo('template_url') ?>/images/menu-icon.png" title="menu" /></a>
			</nav>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--end-header-->