    <?php /* post Template */?>

    <?php $single_id = get_the_ID();?>
    <?php $det_post = get_post($single_id);?>
    <?php get_header(); ?>
      <?php
          $post = get_page_by_title("slider");
          $media = get_attached_media( 'image' , $post->post_id); ?>

  <!--  -->

<!-- <div class="container page">
          <div class="row">
            <div class="col-md-12">
            </div>
          </div>

    		<div class="row">
              <div class="col-md-12 module-list">        			
                <h2 style="font-family: 'Titillium Web', sans-serif;color: #2d2f37;
    font-size: 30px;
    font-weight: 700;
    text-transform: uppercase;
    border-top: 3px solid #2b8ccf;
    border-bottom: 3px solid #2b8ccf;
    float: left;
    width: 100%;
    margin: 0;
    padding-top: 5px;
    padding-bottom:5px;
    margin-bottom: 10px"></h2>
    <br><br>
    <div style="font-size: 15px ;width:80%">
       ?>

    </div>
             </div>
            </div>

</div>
 -->

 <div class="about">
    <div class="container">
      <div class="about-main">

        <h3 style="font-size: 3em;
    color: #595959;
    font-weight: 600;
    margin: 0px;
    color: #2b8ccf;"><?php echo $det_post->post_title; ?> </h3>
        <p style="font-size: 16px;
    line-height: 1.8em;
    color: #1b242f;
    margin-top: 13px;"> <?php echo $det_post->post_content;?> </p>
      </div>
    </div>
  </div>

<?php get_footer(); ?>