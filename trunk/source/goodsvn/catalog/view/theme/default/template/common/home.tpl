<?php echo $header; ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/goodsvn/css/index.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/goodsvn/css/screen.css" />

<script type="text/javascript" src="catalog/view/theme/default/goodsvn/js/easySlider1.7.js"></script>
<script type="text/javascript" src="catalog/view/theme/default/goodsvn/js/jquery.cycle.all.js"></script>
    <script type="text/javascript">
		$(document).ready(function(){	
			$("#slider").easySlider({
				auto: true, 
				continuous: true
			});
		});	
	</script>



<div class="main">
	<div class="main_left">
    <div id="slider" class="slide">
            <ul>				
				<li>
                	<div class="bg_img"><img src="image/goodsvn/slide/slide1.png" /></div>
                	<div class="slide_text"><a href="">Sed lobortis egestas nibh vel laoreet</a></div>
                </li>
                <li>
                	<div class="bg_img"><img src="image/goodsvn/slide/slide2.png" /></div>
                	<div class="slide_text"><a href="">Sed lobortis egestas nibh vel laoreet</a></div>
                </li>
                <li>
                	<div class="bg_img"><img src="image/goodsvn/slide/slide3.png" /></div>
                	<div class="slide_text"><a href="">Sed lobortis egestas nibh vel laoreet</a></div>
                </li>
                <li>
                	<div class="bg_img"><img src="image/goodsvn/slide/slide4.png" /></div>
                	<div class="slide_text"><a href="">Sed lobortis egestas nibh vel laoreet</a></div>
                </li>
			</ul>
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
                    <a href=""><img src="image/goodsvn/btn_more.png" class="btn_more"></a>
                </div>
                <div class="line_vertical"></div>
              <div class="your_request">
            		<img src="image/goodsvn/title_your_request.png" />
                	<div class="your_request_text">
                    	Donec nibh orci, pellentesque ac sollicitudin vel, tincidunt eget elit. Etiam pretium, lacus ac dignissim pellentesque, 
                    </div>
                    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="contact">
                   	      <input name="name" type="text" value="<?php if($name != ''){echo $name;}else{echo 'Name';}  ?>">
                          <?php if ($error_name) { ?>
                                <span class="error"><?php echo $error_name; ?></span>
                          <?php } ?>
                          <input name="email" type="text" value="<?php if($email != ''){echo $email;}else{echo 'Email';}  ?>">
                              <?php if ($error_email) { ?>
                                <span class="error"><?php echo $error_email; ?></span>
                                <?php } ?>
                          <textarea name="enquiry" rows="4"><?php if($enquiry != ''){echo $enquiry;}else{echo 'Messsage';}  ?></textarea>
                            <?php if ($error_enquiry) { ?>
                               <br/> <span class="error"><?php echo $error_enquiry; ?></span>
                                <?php } ?><br/>
                      <input onclick="$('#contact').submit();" type="submit" value="" />
                    </form>
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
            <div class="support_item"><img src="image/goodsvn/icon_skype.png"><a href="">Mr.Khanh</a></div>
            <div class="support_item"><img src="image/goodsvn/icon_yahoo.png"><a href="ymsgr:sendim?llicklick">GoodsVN</a></div>
            <div class="support_item"><img src="image/goodsvn/icon_skype.png"><a href="">Mr.Khanh</a></div>
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
        <div class="hotline">Hotline: <span>(08-3) 261 3229</span></div>
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