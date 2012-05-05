<?php echo $header; ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/goodsvn/css/about.css" media="screen" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/goodsvn/css/skin.css" media="screen" />
<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/goodsvn/css/fix_ie7.css" />
<![endif]-->
<!--[if IE 8]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/goodsvn/css/fix_ie7.css" />
<![endif]-->
<!--  jCarousel library-->
<script type="text/javascript" src="catalog/view/theme/default/goodsvn/js/about/jquery.jcarousel.min.js"></script>
<script type="text/javascript">
function mycarousel_initCallback(carousel)
{
    // Disable autoscrolling if the user clicks the prev or next button.
    carousel.buttonNext.bind('click', function() {
        carousel.startAuto(0);
    });

    carousel.buttonPrev.bind('click', function() {
        carousel.startAuto(0);
    });

    // Pause autoscrolling if the user moves with the cursor over the clip.
    carousel.clip.hover(function() {
        carousel.stopAuto();
    }, function() {
        carousel.startAuto();
    });
};

jQuery(document).ready(function() {
    jQuery('#mycarousel').jcarousel({
        auto: 0,
        wrap: 'last',
        initCallback: mycarousel_initCallback
    });
});

</script>
  <script type="text/javascript">
		$(document).ready(function(){				
	        $('#aboutus').addClass('menu_item_active');
		});	
	</script>
<div id="content">
  
  <div class="main">
	<div class="about_left">
    	<img src="image/goodsvn/about/title_history.png" title="" />
    	<div class="history">
        	With over 3 years experience in providing goods and about 10 years in processing ceramics, 
            our products have been exported to every nation and received belief of many consumers. 
            Also, our exporting network is based on customers' demands and requirements which will 
            be met by our reliable consumer goods. With the advantages of the cooperation with domestic 
            clients, we bring reliable Vietnamese products and reasonable price to our consumers.
        </div>
        <img src="image/goodsvn/about/map2.jpg" />
  </div>
    <div class="about_right">
   	  <img src="image/goodsvn/about/title_gallery.png" />
        <div id="wrap">
        	<ul id="mycarousel" class="jcarousel-skin-tango">
				<li><img src="image/goodsvn/about/about_slide1.jpg" /></li>
				<li><img src="image/goodsvn/about/about_slide2.jpg" /></li>
				<li><img src="image/goodsvn/about/about_slide1.jpg" /></li>
                <li><img src="image/goodsvn/about/about_slide2.jpg" /></li>
                <li><img src="image/goodsvn/about/about_slide1.jpg" /></li>
                <li><img src="image/goodsvn/about/about_slide2.jpg" /></li>
		    </ul>
        </div>
      <img src="image/goodsvn/about/title_our_object.png" />
      <div class="our_object">
        	To be a sustainable business, we realize our responsibility in meeting requirements of our 
            stakeholders. Our major purpose is to ensure benefits for our customers by delivering appropriate 
            goods accorded to your quality and price requirements. Additionally, we also focus on setting 
            up the satisfied and fair working condition as well as benefits for our staff. Another field 
            that we cannot ignore is the role of our clients who contribute their best products to 
            our service. We hope that we can achieve our goals in order to strengthen our trademark 
            to global market. 
        </div>
  </div>
    
    <div class="clear_both20"></div>
    <img src="image/goodsvn/about/title_activity.png" />
    <div class="about_image">
   	  	<div style="width: 298px;float:left;">
             <img class="about_image_img" src="image/goodsvn/about/about_img1.jpg" />
             <p>We are loading Omo Detergent export to customer Australia.</p>
        </div>
        <div style="width: 298px;float:left;">
         <img class="about_image_img" src="image/goodsvn/about/about_img2.jpg" />
         <p>The factory is processing ceramic products</p>
         </div>
         <div style="width: 298px;float:left;">
        <img src="image/goodsvn/about/xuat di nhat.jpg" style="width: 267px;" />
		<p>We are loading products export to Japan.</p>
        </div>
    </div>
    <div class="clear_both10"></div>
	<p style='text-align:right;'>
		<a href="http://goodsvn.com/index.php?route=information/activity"><img src="image/goodsvn/about/ouractivity.png" width="141" height="35" /></a>
	</p>
</div>
  
</div>
<?php echo $footer; ?>