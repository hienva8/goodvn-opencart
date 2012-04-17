<?php echo $header;?>
<div class="main">
	<div class="main_left">
    	<?php echo $category;?>
        <!-- start manufactor -->
        <?php echo $manufacturer_left;?>
        <!-- end manufactor -->
        <!-- newproduct_left -->
        <?php echo $newproduct_left;?>
        <div class="product_menu">Informations</div>
        <div class="informations">
         	<div class="information_item"><a href="">How to Send an inquiry ?</a></div>
            <div class="information_item"><a href="">Privacy Notice</a></div>
            <div class="information_item"><a href="">Conditions of Use</a></div>
            <div class="information_item"><a href="">Contact Us</a></div>
            <div class="information_item"><a href="">Sitemap</a></div> 
        </div>
    </div>
    <!--end main left-->
    <div class="line2"></div>
    <div class="main_center">
    <div class="menu_center"><?php echo $heading_title;?></div>
        <div class="products_list">
        <?php 
        if($products)
        {
        foreach ($products as $product)
        {
        	echo '<div class="products_item"><a href="'. $product['href'].'"><img src="'. $product['thumb'].'" /><div class="products_item_name">'.$product['name'].'</div></a></div>';

        }
         echo '<div class="clear_both"></div>
        </div>';
         echo '<div class="pagination">'.$pagination.'</div>'; 
        }else { 
  			echo '<div class="content">'.$text_empty.'</div>';
        }
  		?>
        
		<?php echo $newproduct;?>
        
    </div>
    <!--end main center-->
    <div class="line2"></div>
    <div class="main_right">
    	<div class="select">
            <select>
                <option>Select Language</option>
                <option>English</option>
                <option>Vietnamese</option>
            </select>
        </div>
         <!-- hotproduct_right -->
        <?php echo $hotproduct_right;?>
        <div class="newsletters">Newsletters
        	<form name="" method="">
            	<input type="text" value="Type your email adress" onclick="this.value=''" onblur="this.value='Type your email adress'"/>
                <input type="submit" value="Go" />
            </form>
        </div>
        <div class="product_menu">Share with</div>
        <div class="share_with">
        	<a href=""><div class="icon1">Email</div></a>
            <a href=""><div class="icon2">Facebook</div></a>
            <a href=""><div class="icon3">Twitter</div></a>
            <a href=""><div class="icon4">Del.ici.ous</div></a>
            <a href=""><div class="icon5">Digg</div></a>
            <a href=""><div class="icon6">StumbleUpon</div></a>
        </div>
		<div class="factory" class="factory">        
            <img src="<?php echo HTTP_IMAGE;?>/data/Goodsvn/factory.jpg"  title="Goodfo's Factory"/>
            <div>This is ceramic semi products, The Goodsvn processing for customer</div>
        </div>
    </div>
    <div class="clear_both"></div>
</div>
<div class="count_visited"><div class="statistics">Vistors: 1738<br />Online:  279</div></div>
<?php echo $footer;?>