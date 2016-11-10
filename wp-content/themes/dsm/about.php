<?php
/*
Template Name: About
*/
?>
<?php get_header(); ?>

<?php
/*
Template Name: FAQ
*/
?>
<?php get_header(); ?>

<div style="background-image: url('<?php echo bloginfo("template_url")?>/images/about.jpg');background-repeat:no-repeat;"> 
<ul class="plans">
<h3 style="font-size: 3em;color: #595959;font-weight: 600;margin: 0px;color: #2b8ccf;">Our Products </h3>
		<li class="plan highlight">
			<span class="price price-green" style="background-repeat: no-repeat;background-size: 43px 46px;background-image: url('http://localhost/dsm/wp-content/themes/dsm/images/forex.jpg');">
				<!-- <img src="<?php echo bloginfo("template_url")?>/images/forex.jpg"> -->
			</span>
			
			<div class="details">
				<h1 class="plan-title">Forex</h1>
				
			</div>
			
		</li>
		
		<li class="plan">
			<span class="price price-red" style="background-repeat: no-repeat;background-size: 46px 46px;background-image: url('http://localhost/dsm/wp-content/themes/dsm/images/gold.jpg');"></span>
			
			<div class="details">
				<h1 class="plan-title">Gold</h1>
			</div>
			
		</li>
		<li class="plan highlight">
			<span class="price price-green" style="background-repeat: no-repeat;background-size: 46px 46px;background-image: url('http://localhost/dsm/wp-content/themes/dsm/images/silver.jpg');"></span>
			
			<div class="details">
				<h1 class="plan-title">Silver</h1>
			</div>
			
		</li>
		
		<li class="plan">
			<span class="price price-red"></span>
			
			<div class="details">
				<h1 class="plan-title">indices</h1>
			</div>
			
		</li>
	</ul>
</div>
	<!--start-about-->
	<div class="about">
		<div class="container">
			<div class="about-main">

				<h3 style="font-size: 3em;
    color: #595959;
    font-weight: 600;
    margin: 0px;
    color: #2b8ccf;">Why MGM </h3>
				<p style="font-size: 16px;
    line-height: 1.8em;
    color: #1b242f;
    margin-top: 13px;">MGM  is a regulated Foreign Exchange Broker that offers a wide range of trading technologies and services. Our ECN/STP business model allows our clients to take advantage of transparent real-time pricing. All our clients have access to a unique Forex Trading environment that offers advanced STP (Straight Through Processing) liquidity, execution and trading functionality. Our Non-dealing desk model allows client orders to be executed automatically and instantaneously through our Market network of liquidity providers. </p>
				<div class="about-text">
					<div class="col-md-6 about-text-left">
						<img src="<?php echo bloginfo('template_url') ?>/images/broker1.jpg" alt="">
						<h4 style="margin-top: 10px;
    margin-bottom: 10px;
    color: #2b8ccf;">What is ECN Forex Trading?</h4>
						<p style="font-size: 16px;
    line-height: 1.8em;
    color: #1b242f;
    margin-top: 13px;">ECN, which stands for <b>Electronic Communication Network </b>, really is the way of the future for the Foreign Exchange Markets. ECN can best be described as a bridge linking smaller market participants with tier-1 liquidity providers through a FOREX ECN Broker. 
An ECN broker benefits from commission fees per transaction. The higher trading volume the broker's clients generate, the higher the broker's profitability.</p>
					</div>
					<div class="col-md-6 about-text-left">
						<img src="<?php echo bloginfo('template_url') ?>/images/broker2.jpg" alt="">
						<h4 style="margin-top: 10px;
    margin-bottom: 10px;
    color: #2b8ccf;">Our Business Model</h4>
						<p style="font-size: 16px;
    line-height: 1.8em;
    color: #1b242f;
    margin-top: 13px;">Unlike most typical forex brokers, MGM ECN forex broker has No Dealing Desk. Our business model is based on utilizing Straight Through Processing (STP), where all our client's orders are sent to the various premier and leading forex banks and qualified financial institutions that make up our pool of liquidity providers, eliminating the potential for any price or spread manipulations or any conflict of interest.</p>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
	</div>

	<?php
	$post_im = get_page_by_title("about");
	$media = get_attached_media( 'image' , $post_im->ID); 
	?>
	<?php foreach ($media as $key) { ?>
	<center>
	<div style="width: 100% ;display: block; padding-top: 10px;padding-bottom: 10px">
		<img src="<?php echo $key->guid?>">
	</div>
	</center>
<?php } ?>
		<script type="text/javascript">
  document.getElementById("aboutnav").className = "active";
		</script>

<?php get_footer(); ?>