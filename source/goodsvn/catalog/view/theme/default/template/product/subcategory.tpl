<?php echo $header;?>
  <script type="text/javascript">
		$(document).ready(function(){				
	        $('#product').addClass('menu_item_active');
		});	
	</script>
<div class="main">
	<div class="main_left">
    	<?php echo $category;?>
        <!-- start manufactor -->
        <?php echo $manufacturer_left;?>
        <!-- end manufactor -->
        <!-- newproduct_left -->
        <?php echo $newproduct_left;?>
        
       <!--  information -->
       	<?php echo $information;?>
    </div>
    <!--end main left-->
    <div class="line2"></div>
    <div class="main_center">
    	<div class="breadcrumb">
		    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
		    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		    <?php } ?>
		</div><br/>
    	<?php 
		  // var_dump($categories);
		  
		  	echo '<div class="menu_center">' . $parent_category['name']. '</div>';
		  	echo '<div class="products_list">';
		  	foreach ($categories as $category)
		  	{
		  		echo '<div class="products_item"><a href="'. $category['href'] .'"><img src="'. $category['image'].'" /><div class="products_item_name">'. $category['name'] .'</div></a></div>';
		  	}
		  	echo '<div class="clear_both"></div></div>';
         ?>
		<?php echo $newproduct;?>
        
    </div>
    <!--end main center-->
    <div class="line2"></div>
    <div class="main_right">
    	<div class="select">
            <div id="google_translate_element" align="center"></div>  
        </div>
         <!-- hotproduct_right -->
        <?php echo $hotproduct_right;?>
        <!--  newsletter -->
        <?php echo $newslettersubscribe;?>
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
<div class="count_visited"></div>
<?php echo $footer;?>