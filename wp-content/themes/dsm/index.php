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
				<script src="<?php echo bloginfo('template_url') ?>/<?php echo bloginfo('template_url') ?>/js/responsiveslides.min.js"></script>
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
					<h1>WE READY TO BUILD<span>YOUR HOME</span></h1>
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
				</div>
				<div class="col-md-4 build-right">
					<a href="#">GET A QUOTE FOR FREE</a>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--End-build-->	
	<!--start-design-->	
	<div class="design">
		<div class="container">
			<div class="design-main">
				<div class="col-md-3 design-left">
					<div class="design-text">
						<img src="<?php echo bloginfo('template_url') ?>/images/design-1.png" alt="" />
						<h3>CONSULTING</h3>
						<p>Vivamus viverra nibh in quam bibendum interdum. Duis convallis est ante, id pulvinar tortor tempus sed. Pellentesque nulla tellus,</p>
					</div>
				</div>
				<div class="col-md-3 design-left">
					<div class="design-text">
						<img src="<?php echo bloginfo('template_url') ?>/images/design-2.png" alt="" />
						<h3>PLANNING</h3>
						<p>Vivamus viverra nibh in quam bibendum interdum. Duis convallis est ante, id pulvinar tortor tempus sed. Pellentesque nulla tellus,</p>
					</div>
				</div>
				<div class="col-md-3 design-left">
					<div class="design-text">
						<img src="<?php echo bloginfo('template_url') ?>/images/design-3.png" alt="" />
						<h3>DESIGN</h3>
						<p>Vivamus viverra nibh in quam bibendum interdum. Duis convallis est ante, id pulvinar tortor tempus sed. Pellentesque nulla tellus,</p>
					</div>
				</div>
				<div class="col-md-3 design-left">
					<div class="design-text">
						<img src="<?php echo bloginfo('template_url') ?>/images/design-4.png" alt="" />
						<h3>BUILD</h3>
						<p>Vivamus viverra nibh in quam bibendum interdum. Duis convallis est ante, id pulvinar tortor tempus sed. Pellentesque nulla tellus,</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--End-design-->
	<!--start-work-->
	<div class="work">
		<div class="container">
			<div class="work-top">
				<h3>OUR LATEST WORK</h3>
			</div>
			<div class="work-btm">
			<div  id="top" class="callbacks_container">
				<ul class="rslides" id="slider5">
					<li>	
							<div class="work-bottom">
								<div class="col-md-6 work-left">
									<img src="<?php echo bloginfo('template_url') ?>/images/work-1.jpg" alt="">
								</div>
								<div class="col-md-6 work-right">
									<div class="work-mian">
										<p>PROJECT NAME<span class="one">: Project name here</span></p>
										<p>LOCATION<span class="two">: Austin, TX</span></p>
										<p>OWNER<span class="tre">: John Doe</span></p>
										<p>PROJECT START<span class="fvr">: Feb 2013</span></p>
										<p>PROJECT END<span class="fve">: JUNE 2014</span></p>
									</div>
										<div class="work-one">
											<p>DESCRIPTION<label>:</label><span>Vivamus viverra nibh in quam bibendum interdum. Duis convallis est ante, id pulvinar tortor tempus sed. Pellentesque nulla tellus, Vivamus viverra nibh in quam bibendum interdum.  Duis convallis est ante, id pulvinar tortor tempus sed.  Pellentesque nulla tellus,</span></p>
										</div>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="pop-up">
								<a class="play-icon popup-with-zoom-anim" href="#small-dialog"><span> </span><img src="<?php echo bloginfo('template_url') ?>/images/pop-up.png" alt="" /></a>
							</div>
						</li>
						<li>	
							<div class="work-bottom">
								<div class="col-md-6 work-left">
									<img src="<?php echo bloginfo('template_url') ?>/images/work-2.jpg" alt="">
								</div>
								<div class="col-md-6 work-right">
									<div class="work-mian">
										<p>PROJECT NAME<span class="one">: Project name here</span></p>
										<p>LOCATION<span class="two">: Austin, TX</span></p>
										<p>OWNER<span class="tre">: John</span></p>
										<p>PROJECT START<span class="fvr">: JUNE 2013</span></p>
										<p>PROJECT END<span class="fve">: JAN 2014</span></p>
									</div>
										<div class="work-one">
											<p>DESCRIPTION<label>:</label><span> Viverra nibh in quam bibendum interdum. Duis convallis est ante, id pulvinar tortor tempus sed. Pellentesque nulla tellus, Vivamus viverra nibh in quam bibendum interdum.  Duis convallis est ante, id pulvinar tortor tempus sed.  Pellentesque nulla tellus,</span></p>
										</div>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="pop-up">
								<a class="play-icon popup-with-zoom-anim" href="#small-dialog1"><span> </span><img src="<?php echo bloginfo('template_url') ?>/images/pop-up.png" alt="" /></a>
							</div>
						</li>
						<li>	
							<div class="work-bottom">
								<div class="col-md-6 work-left">
									<img src="<?php echo bloginfo('template_url') ?>/images/work-3.jpg" alt="">
								</div>
								<div class="col-md-6 work-right">
									<div class="work-mian">
										<p>PROJECT NAME<span class="one">: Project name here</span></p>
										<p>LOCATION<span class="two">: Austin, TX</span></p>
										<p>OWNER<span class="tre">: Doe</span></p>
										<p>PROJECT START<span class="fvr">: NOV 2013</span></p>
										<p>PROJECT END<span class="fve">: FEB 2014</span></p>
									</div>
										<div class="work-one">
											<p>DESCRIPTION<label>:</label><span>Vivamus quam bibendum interdum. Duis convallis est ante, id pulvinar tortor tempus sed. Pellentesque nulla tellus, Vivamus viverra nibh in quam bibendum interdum.  Duis convallis est ante, id pulvinar tortor tempus sed.  Pellentesque nulla tellus,</span></p>
										</div>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="pop-up">
								<a class="play-icon popup-with-zoom-anim" href="#small-dialog2"><span> </span><img src="<?php echo bloginfo('template_url') ?>/images/pop-up.png" alt="" /></a>
							</div>
						</li>
							</ul>
						</div>
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
	<!--start-project-->
		<!-- start content_slider -->
	<div class="project">
		<div id="example1">
			<div id="owl-demo" class="owl-carousel text-center">
				<div class="item">
					<a href="images/zoom-1.jpg" title="Home" rel="title1">
						<img class="lazyOwl" data-src="<?php echo bloginfo('template_url') ?>/images/project-1.jpg" alt="name">
					</a>
					<div class="project-name">
						<p>Project title here</p>
						<span> </span>
					</div>
				</div>
				<div class="item">
					<a href="images/project-2.jpg" title="Home" rel="title1">
						<img class="lazyOwl" data-src="<?php echo bloginfo('template_url') ?>/images/project-2.jpg" alt="name">
					</a>
					<div class="project-name">
						<p>Project title here</p>
						<span> </span>
					</div>
				</div>
				<div class="item">
					<a href="images/project-3.jpg" title="Home" rel="title1">
						<img class="lazyOwl" data-src="<?php echo bloginfo('template_url') ?>/images/project-3.jpg" alt="name">
					</a>
					<div class="project-name">
						<p>Project title here</p>
						<span> </span>
					</div>
				</div>
				<div class="item">
					<a href="images/project-4.jpg" title="Home" rel="title1">
						<img class="lazyOwl" data-src="<?php echo bloginfo('template_url') ?>/images/project-4.jpg" alt="name">
					</a>
					<div class="project-name">
						<p>Project title here</p>
						<span> </span>
					</div>
				</div>
				<div class="item">
					<a href="images/project-5.jpg" title="Home" rel="title1">
						<img class="lazyOwl" data-src="<?php echo bloginfo('template_url') ?>/images/project-5.jpg" alt="name">
					</a>
					<div class="project-name">
						<p>Project title here</p>
						<span> </span>
					</div>
				</div>
				<div class="item">
					<a href="images/project-1.jpg" title="Home" rel="title1">
						<img class="lazyOwl" data-src="<?php echo bloginfo('template_url') ?>/images/project-1.jpg" alt="name">
					</a>
					<div class="project-name">
						<p>Project title here</p>
						<span> </span>
					</div>
				</div>
				<div class="item">
					<a href="images/project-2.jpg" title="Home" rel="title1">
						<img class="lazyOwl" data-src="<?php echo bloginfo('template_url') ?>/images/project-2.jpg" alt="name">
					</a>
					<div class="project-name">
						<p>Project title here</p>
						<span> </span>
					</div>
				</div>
				<div class="item">
					<a href="images/project-3.jpg" title="Home" rel="title1">
						<img class="lazyOwl" data-src="<?php echo bloginfo('template_url') ?>/images/project-3.jpg" alt="name">
					</a>
					<div class="project-name">
						<p>Project title here</p>
						<span> </span>
					</div>
				</div>
				<div class="item">
					<a href="images/project-4.jpg" title="Home" rel="title1">
						<img class="lazyOwl" data-src="<?php echo bloginfo('template_url') ?>/images/project-4.jpg" alt="name">
					</a>
					<div class="project-name">
						<p>Project title here</p>
						<span> </span>
					</div>
				</div>
				<div class="item">
					<a href="images/project-5.jpg" title="Home" rel="title1">
						<img class="lazyOwl" data-src="<?php echo bloginfo('template_url') ?>/images/project-5.jpg" alt="name">
					</a>
					<div class="project-name">
						<p>Project title here</p>
						<span> </span>
					</div>
				</div>
			</div>
		</div>
	</div>
			<!--//sreen-gallery-cursual---->
	<!--end-project-->	
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
	<div class="news">
		<div class="container">
			<div class="news-top">
				<h3>OUR LATEST NEWS</h3>
				<p>be always on the wave of latest news and updates</p>
			</div>
			<div class="news-bottom">
				<div class="col-md-4 news-left">
					<img src="<?php echo bloginfo('template_url') ?>/images/news-1.jpg" alt="" />
					<div class="news-main">
						<h4>Upadate news title</h4>
						<ul>
							<li><span>By:Admin</span></li>
							<li><span>01/01/2014</span></li>
							<li><span>5 Comment</span></li>
						</ul>
						<p>Vivamus viverra nibh in quam bibendum interdum. Duis convallis est ante, id pulvinar tortor tempus sed. Pellentesque nulla tellus,id pulvinar tortor tempus sed. Pellentesque nulla tellus,</p>
						<div class="news-btn">
							<a href="#">Read More</a>
						</div>
					</div>
				</div>
				<div class="col-md-4 news-left">
					<img src="<?php echo bloginfo('template_url') ?>/images/news-2.jpg" alt="" />
					<div class="news-main">
						<h4>Upadate news title</h4>
						<ul>
							<li><span>By:Admin</span></li>
							<li><span>01/01/2014</span></li>
							<li><span>5 Comment</span></li>
						</ul>
						<p>Vivamus viverra nibh in quam bibendum interdum. Duis convallis est ante, id pulvinar tortor tempus sed. Pellentesque nulla tellus,id pulvinar tortor tempus sed. Pellentesque nulla tellus,</p>
						<div class="news-btn">
							<a href="#">Read More</a>
						</div>
					</div>
				</div>
				<div class="col-md-4 news-left">
					<img src="<?php echo bloginfo('template_url') ?>/images/news-3.jpg" alt="" />
					<div class="news-main">
						<h4>Upadate news title</h4>
						<ul>
							<li><span>By:Admin</span></li>
							<li><span>01/01/2014</span></li>
							<li><span>5 Comment</span></li>
						</ul>
						<p>Vivamus viverra nibh in quam bibendum interdum. Duis convallis est ante, id pulvinar tortor tempus sed. Pellentesque nulla tellus,id pulvinar tortor tempus sed. Pellentesque nulla tellus,</p>
						<div class="news-btn">
							<a href="#">Read More</a>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="planning">
				<p>PRECISE PROJECT PLANNING, MODERN DESIGN AND SATISFYING RESULTS!</p>
			</div>
		</div>
	</div>
	<!--end-news-->	
	