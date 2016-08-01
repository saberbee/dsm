<?php get_header(); ?>
	<!--start-banner-->
	<div class="banner">
		<div  id="top" class="callbacks_container">
			 <ul class="rslides" id="slider4">
			       <li>
						<div class="banner-1"></div>	
					</li>
					<li>
							<div class="banner-2"></div>	
					</li>
					<li>
							<div class="banner-3"></div>	
					</li>
			  </ul>
			</div>
	 	<div class="clearfix"> </div>
	</div>
		<!--End-banner-->
		<!--Slider-Starts-Here-->
		<script type="text/javascript">
  document.getElementById("homenav").className = "active";
		</script>
				<script src="<?php echo bloginfo('template_url') ?>/js/responsiveslides.min.js"></script>
			 <script>
			    // You can also use "$(window).load(function() {"
			    $(function () {
			      // Slideshow 4
			      $("#slider4").responsiveSlides({
			        auto: true,
			        pager: true,
			        nav: false,
			        speed: 500,
			        namespace: "callbacks",
			        before: function () {
			          $('.events').append("<li>before event fired.</li>");
			        },
			        after: function () {
			          $('.events').append("<li>after event fired.</li>");
			        }
			      });
			
			    });
			  </script>
			<!--End-slider-script-->
	<!--start-build-->
	<div class="build">
		<div class="container">
			<div class="build-mian">
				<div class="col-md-8 build-left">
					<h1>*Very Tight Spreads <br> <span>*better forex Rates  </span> <br> <span style="color:white;font-weight: 300;margin: 0;">*No limits on scalping  </span> <br><span>*No Stop loss hunting  </span><br> <span style="color:white;font-weight: 300;margin: 0;">*No conflict of interest between <span> MGM </span> and its <span> clients. </span></span></h1>

				</div>
				<div class="col-md-4 build-right">
					<a href="#">Download Our Software</a>
				</div>

				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--End-build-->	
	<!--start-design-->	
	<div class="design">
		
<div class="container">
	<!--Begin Plan Basic!-->
	<div class="col-md-3 klausbg hvr-float" style="background:transparent;">
		
	</div>
	<div class="col-md-3 klausbg hvr-float" style="background: #d3e1ee;">
		<div class="klausheader">
		<h5>Demo</h5>
		<span class="klaus_package">Account</span>
		</div>
		
		<div class="klaus_features skinthreeklaus_features" >
		<li><i class="fa fa-check-circle"></i> Design + HTML5 </li>
		<li class="klaus_plancolor"><i class="fa fa-check-circle"></i> One Page Scroll-down Layout</li>
		<li><i class="fa fa-check-circle"></i> Pricing is for 5 vert. sections</li>
		<li class="klaus_plancolor"><i class="fa fa-times-circle"></i> Responsive / Mobile Ready</li>
		<li><i class="fa fa-times-circle"></i> Bootstrap Framework</li>
		<li class="klaus_plancolor"><i class="fa fa-times-circle"></i> CSS3 &amp; jQuery Powered</li>
		</div>	
		
		<div class="klaus_getaquote skinthreegetquote"><li><a href="#">GET A QUOTE</a></li></div>
	</div>
	<!--End Plan Basic!-->
	
	
	<!--Begin Plan Business!-->
	
	<!--End Plan Business!-->
	
	<!--Begin Plan Ultimate!-->
	<div class="col-md-3 klausbg skinthreeultimate hvr-float">
		<div class="klausheader skinthreeucolor">
		<h5>Real</h5>
		<span class="klaus_package">Account</span>
		</div>
		
		<div class="klaus_features skinthreeklaus_features skinthreeucolor">
		<li><i class="fa fa-check-circle"></i> Design + HTML5 </li>
		<li class="skinthreeklaus_plancolor"><i class="fa fa-check-circle"></i> One Page Scroll-down Layout</li>
		<li><i class="fa fa-check-circle"></i> Pricing is for 5 vert. sections</li>
		<li class="skinthreeklaus_plancolor"><i class="fa fa-times-circle"></i> Responsive / Mobile Ready</li>
		<li><i class="fa fa-times-circle"></i> Bootstrap Framework</li>
		<li class="skinthreeklaus_plancolor"><i class="fa fa-times-circle"></i> CSS3 &amp; jQuery Powered</li>
		</div>	
		
		<div class="klaus_getaquote skinthreegetquote skinthreeucolorget"><li><a href="#">GET A QUOTE</a></li></div>
	</div>
	<!--End Plan Ultimate!-->
	<div class="col-md-3 klausbg hvr-float" style="background: transparent; border-right: 0px solid #ffffff;">
			</div>
</div>

	</div>
	<!--End-design-->
	<!--start-work-->
	<div class="work">
		<div class="container">
			
					<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--End-work-->	
	<!--Slider-Starts-Here-->
			 <script>
			    // You can also use "$(window).load(function() {"
			    $(function () {
			      // Slideshow 4
			      $("#slider5").responsiveSlides({
			        auto: true,
			        pager: true,
			        nav: true,
			        speed: 500,
			        namespace: "callbacks",
			        before: function () {
			          $('.events').append("<li>before event fired.</li>");
			        },
			        after: function () {
			          $('.events').append("<li>after event fired.</li>");
			        }
			      });
			
			    });
			  </script>
			<!--End-slider-script-->
	<!---pop-up-box---->
		 <script type="text/javascript" src="<?php echo bloginfo('template_url') ?>/js/modernizr.custom.min.js"></script>    
		 <link href="<?php echo bloginfo('template_url') ?>/css/popup-box.css" rel="stylesheet" type="text/css" media="all"/>
		 <script src="<?php echo bloginfo('template_url') ?>/js/jquery.magnific-popup.js" type="text/javascript"></script>
	 <!---//pop-up-box---->
	 <div id="small-dialog" class="mfp-hide">
						<div class="login">
							<img src="<?php echo bloginfo('template_url') ?>/images/work-1.jpg" alt="" />
						</div>
	</div>
	<div id="small-dialog1" class="mfp-hide">
						<div class="login">
							<img src="<?php echo bloginfo('template_url') ?>/images/work-2.jpg" alt="" />
						</div>
	</div>
	<div id="small-dialog2" class="mfp-hide">
						<div class="login">
							<img src="<?php echo bloginfo('template_url') ?>/images/work-3.jpg" alt="" />
						</div>
	</div>				
					<script>
						$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
						});
																						
						});
				</script>			
	<!--start-footer-->
	<!-- requried-jsfiles-for owl -->
		<link href="<?php echo bloginfo('template_url') ?>/css/owl.carousel.css" rel="stylesheet">
		<script src="<?php echo bloginfo('template_url') ?>/js/owl.carousel.js"></script>
			<script>
				$(document).ready(function() {
					$("#owl-demo").owlCarousel({
						items : 5,
						lazyLoad : true,
						autoPlay : true,
						pagination : false,
					});
				});
			</script>
		<!-- //requried-jsfiles-for owl -->
	<!--start-clients-->	
	<div class="clients">
		<div class="container">
			<div class="clients-top">
				<h3>WE <span>LOVE</span> OUR CLIENTS THEY <span>LOVE</span> US!!</h3>
			</div>
			<div class="clients-btm">
				<div  id="top" class="callbacks_container">
			 	<ul class="rslides" id="slider6">
			       <li>
					<div class="clients-bottom">
						<p>“Vivamus viverra nibh in quam bibendum interdum. Duis convallis est ante, id pulvinar tortor tempus sed. Pellentesque nulla tellus,”</p>
						<h4>- BIN BURHAN <span>(CEO. UniqueGraph)</span></h4>
					</div>
				</li>
				<li>
					<div class="clients-bottom">
						<p>“Vivamus viverra nibh in quam bibendum interdum. Duis convallis est ante, id pulvinar tortor tempus sed. Pellentesque nulla tellus,”</p>
						<h4>- BIN <span>(CEO. UniqueGraph)</span></h4>
					</div>
				</li>
				<li>
					<div class="clients-bottom">
						<p>“Vivamus viverra nibh in quam bibendum interdum. Duis convallis est ante, id pulvinar tortor tempus sed. Pellentesque nulla tellus,”</p>
						<h4>- BURHAN <span>(CEO. UniqueGraph)</span></h4>
					</div>
				</li>
			  </ul>
			</div>
	 		<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--end-clients-->
	<!--Slider-Starts-Here-->
				<script src="<?php echo bloginfo('template_url') ?>/js/responsiveslides.min.js"></script>
			 <script>
			    // You can also use "$(window).load(function() {"
			    $(function () {
			      // Slideshow 4
			      $("#slider6").responsiveSlides({
			        auto: true,
			        pager: false,
			        nav: false,
			        speed: 500,
			        namespace: "callbacks",
			        before: function () {
			          $('.events').append("<li>before event fired.</li>");
			        },
			        after: function () {
			          $('.events').append("<li>after event fired.</li>");
			        }
			      });
			
			    });
			  </script>
			<!--End-slider-script-->	
	<!--start-news-->
	<?php $feed = 'https://rss.dailyfx.com/feeds/forex_market_news';
// $feed_to_array = (array) simplexml_load_file($feed);
$feed_to_array = new SimpleXmlElement( file_get_contents($feed) );
// print_r($feed_to_array->channel->item[2]->description);
?>
<div class="news" style="background-image: url('<?php echo bloginfo("template_url")?>/images/girl.png');background-repeat:no-repeat;">
<div style="width:30%"> </div>
<h1 style="margin-left:2%">Latest Market News</h1>
 <div class="block-hdnews" style="width:400px;margin-bottom: 10px;margin-left: 10px; float: left; background-color:#2b8ccf;">
          <div class="list-wrpaaer" style="height:380px">
             <ul class="list-aggregate" id="marquee-vertical">
             <?php foreach ($feed_to_array->channel->item as $item) { ?>
               <li>
                 <p>
                   <?php echo $item->description?>             
                 </p>
               </li>
               <?php } ?>

             </ul>
          </div><!-- list-wrpaaer -->

      </div> <!-- block-hdnews -->
	<div style="float:right ;margin-right:1%" >
	<h1 style="margin-top: -17%;">Exchange Rate</h1>
      <div "><div align="center" style="margin: 0px; padding: 0px; border: 2px solid rgb(136, 136, 136); width: 280px; background-color: transparent;"><noscript><div align="center" style="width: 100%;  margin: 0px; padding: 0px; text-align: center; color: rgb(0, 0, 0); background-color: transparent;"><a href="http://fx-rate.net/EGP/" style="text-decoration: none; font-size: 20px; font-weight: bold; text-align: center; color: rgb(0, 0, 0);"><img src="http://fx-rate.net/images/countries/eg.png" style="margin: 0px; padding: 0px; border: none;"> Egyptian Pound Exchange Rate</a></div></noscript><script type="text/javascript" src="http://fx-rate.net/fx-rates2.php?label_name=Egyptian Pound Exchange Rate&lab=0&width=215&currency=EGP&cp1_Hex=000000&cp2_Hex=3e9ad9&cp3_Hex=4c75d1&hbg=1&flag_code=eg&length=long&label_type=currency_name&cp=000000,2b8ccf,4c75d1&cid=EUR,USD,AED,AFN,ALL,AMD,AUD,CNY,JOD,SAR,BHD,UAH,GBP&lang=en"></script></div></div>	
      </div>

      </div>
	</div>
	<!--end-news-->	
<?php get_footer(); ?>


	<script type="text/javascript">
  $(function(){
  $('#marquee-vertical').marquee();  
  $('#marquee-horizontal').marquee({direction:'horizontal', delay:0, timing:50});  

});

</script>