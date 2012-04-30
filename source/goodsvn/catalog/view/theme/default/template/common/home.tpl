<?php echo $header; ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/goodsvn/css/index.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/goodsvn/css/screen.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/goodsvn/css/global.css" />

<script>
		$(function(){
			// Set starting slide to 1
			var startSlide = 1;
			// Get slide number if it exists
			if (window.location.hash) {
				startSlide = window.location.hash.replace('#','');
			}
			// Initialize Slides
			$('#slides').slides({
				preload: true,
				preloadImage: 'img/loading.gif',
				generatePagination: true,
				play: 3000,
				pause: 1000,
				hoverPause: true,
				// Get the starting slide
				start: startSlide,
				animationComplete: function(current){
					// Set the slide number as a hash
					window.location.hash = '#' + current;
				}
			});
		});
		$('#home').addClass('menu_item_active');
	</script>
<div class="main">
	<div class="main_left">
		<div id="slides" class="slides">
			<div class="slides_container">
                    <div class="slide">
                        <div class="bg_img"><img src="image/goodsvn/slide/slide1.png" /></div>
                		<div class="slide_text"><a href="">Consumer products</a></div>
                    </div>
                    <div class="slide">
                        <div class="bg_img"><img src="image/goodsvn/slide/slide2.png" /></div>
                		<div class="slide_text"><a href="">Foodstuff & Beverage</a></div>
                    </div>
                    <div class="slide">
                        <div class="bg_img"><img src="image/goodsvn/slide/slide3.png" /></div>
                		<div class="slide_text"><a href="">RATTAN & BAMBOO</a></div>
                    </div>
                    <div class="slide">
                        <div class="bg_img"><img src="image/goodsvn/slide/slide4.png" /></div>
                		<div class="slide_text"><a href="">HOUSEHOLD GOODS </a></div>
                    </div>
               </div>
        </div>

        <!--end slider -->
        <div class="content_left">
        	<div class="title_img">
            	<img src="image/goodsvn/title.png">
                <div class="news">
                	<img src="image/goodsvn/news_img.png">
                    <div class="news_text">
Welcome to Goodsvn Trading Services import and export Joint Stock Company. We are a wholesale company specialized in consumer goods, foodstuff and ceramics... More specially, we can process ceramic products according to your requirements.
With a clear target is to bring the most qualified products to international market and to maximize your comfortable life, we bring "goods for life" with an absolute assurance. We hope that we can receive your understandability, your trust and your support.

                    </div>
                    <div class="clear_both"></div>
                </div>
            </div>
            <div class="line"></div>
            <div class="title_img">
            	<div class="best_offer">
            	<img src="image/goodsvn/title_offers.png">
				<ul class="list_item">
				<?php
					 foreach ($categories as $category) {
						echo '<li><div class="icon_li"></div><a href="'.$category['href'].'">'.$category['name'].'</a>';
						if ($category['children']) {
							echo '<div class="arrow"></div><ul>';
							foreach ($category['children'] as $child) 
							{
								echo '<li><a href="'.$child['href'].'">'.$child['name'].'</a></li>';
							}
							echo '</ul></li>';
						}
						else
						{
							echo '</li>';
						}
					}
				?>
				</ul>
                    <a href="http://goodsvn.com/index.php?route=product/category"><img src="image/goodsvn/btn_more.png" class="btn_more"></a>
                </div>
                <div class="line_vertical"></div>
              <div class="your_request">
            		<img src="image/goodsvn/request.jpg" width="250px" />
					<p>This is stove to burn ceramic follow traditional type </p>
              </div>
            </div>
        </div>
    </div>
    <div class="line2"></div>
    <div class="main_right">
    	<div class="select">
            <div id="google_translate_element" align="center"></div>  
        </div>
        <div class="title_hot_product"></div>
        <div class="slide_hot_product">
        	<marquee direction="down" scrollamount="4" onmouseout="this.start()" onmouseover="this.stop()"> 
            <?php foreach($products as $p): ?>
                <div>
                    <a href="<?php echo $p['href'];?>"><img title="<?php echo $p['name'];?>" src="<?php echo $p['thumb'];?>"></a>
                    <p style="font-weight:bold;color:blue"><?php echo $p['name'];?></p>
                </div>
            <?php endforeach; ?>
			</marquee>
        </div>
        <div class="line3"></div>
        <div class="clear_both20"></div>
        <div class="title_support"></div>
        <div class="support">
        	<div class="support_item"><img src="image/goodsvn/icon_yahoo.png"><a href="ymsgr:sendim?goodsvn@ymail.com">GoodsVN</a></div>
            <div class="support_item"><img src="image/goodsvn/icon_skype.png"><a href="skype:goodsvn?call">Mr.Khanh</a></div>
            <div class="support_item"><img src="image/goodsvn/icon_yahoo.png"><a href="ymsgr:sendim?llicklick">GoodsVN</a></div>
            <div class="support_item"><img src="image/goodsvn/icon_skype.png"><a href="skype:llicklick?call">Mr.Khanh</a></div>
            <div class="clear_both5"></div>
        </div>
        <div class="like_google">
         	<div class="icon_right"></div><div class="number_like_google">300</div><div class="icon_left"></div><div class="google"></div>
        </div>
        <div class="like_facebook">
            <div class="facebook"></div><div class="icon_left"></div><div class="number_like_facebook">100</div><div class="icon_right"></div>
        	<div class="clear_both"></div>
        </div>
        <div class="clear_both10"></div>
        <div class="hotline">Hotline: <span>(+84) 983 977 377</span></div>
        <div class="line3"></div>
        <div class="title_services"></div>
        <div class="manufactory">
        	<img src="image/goodsvn/manufactory.jpg">
            <div class="manufactory_text">Here is stove to burn ceramic products by gas system of goodsvn SJC., Ours manufactory in ThuanAn Dist, BinhDuong Province. </div>
        </div>
        <div class="statistics">
        </div>
    </div>
    <div class="clear_both"></div>
</div>
<?php echo $column_left; ?><?php echo $column_right; ?>
<?php echo $footer; ?>