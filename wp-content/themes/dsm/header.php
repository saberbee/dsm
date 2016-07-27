<!DOCTYPE html>
<html>
<head>
<title>MGM</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="<?php echo bloginfo('template_url') ?>/js/jquery-1.11.0.min.js"></script>
<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Bitter' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="<?php echo bloginfo('template_url') ?>/css/responsive-nav.css">
<link rel="stylesheet" href="<?php echo bloginfo('template_url') ?>/css/pricing.css">
<link rel="stylesheet" href="<?php echo bloginfo('template_url') ?>/css/style_faq.css">
<link rel="stylesheet" href="<?php echo bloginfo('template_url') ?>/css/normalize.css">
 <!-- Resource style -->
<link href="<?php echo bloginfo('template_url') ?>/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="<?php echo bloginfo('template_url') ?>/css/style.css" rel='stylesheet' type='text/css' />
<link href="<?php echo bloginfo('template_url') ?>/css/bootstrapp.min.css" rel='stylesheet' type='text/css' />
<link href="<?php echo bloginfo('template_url') ?>/css/pricing_table.css" rel='stylesheet' type='text/css' />
<link href="<?php echo bloginfo('template_url') ?>/css/dropdown.css" rel='stylesheet' type='text/css' />
<link href="<?php echo bloginfo('template_url') ?>/css/forms.css" rel='stylesheet' type='text/css' />
<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link href="<?php echo bloginfo('template_url') ?>/css/bootstrap.min.css" rel="stylesheet">
<link href="<?php echo bloginfo('template_url') ?>/css/themes/simple.min.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600,700' rel='stylesheet' type='text/css'>
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<script src="<?php echo bloginfo('template_url') ?>/js/modernizr.js"></script> <!-- Modernizr -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script type="text/javascript" src="<?php echo bloginfo('template_url') ?>/js/dist/js/jquery.marquee.js"></script>

<script src="<?php echo bloginfo('template_url') ?>/js/formValidate.js"></script>
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
				<span class="custom-dropdown big">
   					 <select id="list" onchange="changepage();" style="cursor:pointer">
       					 <option value="empty">User Area </option>    
       					 <option value="new">New Account</option>
        				 <option value="deposit">Deposit</option>  
						 <option value="withdrawl">Withdrawl</option>
  					 </select>
				</span>
			</div>
			<!--start-top-nav-->
			<nav class="top-nav">
				<ul class="top-nav">
					<li><a href="index.html"  class="active">Home</a></li>
					<li><a href="<?php echo site_url(); ?>/faq">FAQ</a></li>
					<li><a href="<?php echo site_url(); ?>/about">About us</a></li>
					<li><a href="<?php echo site_url(); ?>/contactus">Contact us</a></li>
				</ul>
					<a href="#" id="pull"><img src="<?php echo bloginfo('template_url') ?>/images/menu-icon.png" title="menu" /></a>
			</nav>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--end-header-->
<script type="text/javascript">
	function changepage(){
		var page = document.getElementById("list").value;
		if(page == "new"){
			window.location.href = "http://localhost/dsm/new-account/";
		}
		else if(page == "deposit"){
			window.location.href = "http://localhost/dsm/";
		}
		else if(page == "withdrawl"){
			window.location.href = "http://localhost/dsm";
		}
	}
</script>
	</script>
<style type="text/css">
	.news {
    padding-top: 1%;
}
    .header {
    height: inherit;
}
    .Wtopmenu2 {
    line-height: 23px !important;
}
</style>