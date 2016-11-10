<?php
/*
Template Name: news
*/
?>
<?php get_header(); ?>

	<?php $feed = 'https://rss.dailyfx.com/feeds/forex_market_news';
// $feed_to_array = (array) simplexml_load_file($feed);
$feed_to_array = new SimpleXmlElement( file_get_contents($feed) );
// print_r($feed_to_array->channel->item[2]->description);
?>

<div>
	<img width="100%" src="<?php echo bloginfo("template_url")?>/images/news.jpg">
</div>

<?php 
$args = array( 'numberposts' => 10, 'category_name' => 'news' );
$news_posts = get_posts( $args );
// print_r($news_posts);
// echo $news_posts[0]->post_date;
$today =  date("Y-m-d");
?>

<?php if(isset($news_posts)){ ?>
<center>
<div class="" style="width:80%">
<div> </div>
<h1 style="margin-left:2%">Breaking News</h1>
 <div class="block-hdnews" style="background-color:#2b8ccf;">
          <div class="list-wrpaaer">
             <ul class="list-aggregate">
               <?php foreach ($news_posts as $key ) { 
         		if($today == date("Y-m-d", strtotime($key->post_date))){ ?>
               <li>
                 <span style="font-size: 15px ;color: white">
					<?php echo $key->post_content; ?>
                 </span>
               </li>
               <?php }}?>
             </ul>
          </div><!-- list-wrpaaer -->

      </div> <!-- block-hdnews -->
</center>
<?php } ?>

<center>
<div class="news" style="width:80%">
<div> </div>
<h1 style="margin-left:2%">Latest Market News</h1>
 <div class="block-hdnews" style="background-color:#2b8ccf;">
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
</center>
      </div>


<?php get_footer();?>

	<script type="text/javascript">
  $(function(){
  $('#marquee-vertical').marquee();  
  $('#marquee-horizontal').marquee({direction:'horizontal', delay:0, timing:50});  

});

</script>