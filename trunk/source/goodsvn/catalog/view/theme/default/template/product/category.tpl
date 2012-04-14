<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/goodsvn/css/products.css" media="screen" />
<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="css/fix_ie7.css" />
<![endif]-->
<!--[if IE 8]>
<link rel="stylesheet" type="text/css" href="css/fix_ie7.css" />
<![endif]-->
<title>Goodfo</title>
</head>
<div class="header"><a href=""><img src="image/logo.png" align="goodfo.vn" /></a></div>
<div class="menu_bar">
	<div class="menu_link">
   	  <div class="menu_item menu_item_active">Home</div>
        <div class="menu_item">About us</div>
        <div class="menu_item">Products</div>
        <div class="menu_item">Contact</div>
        <div class="clear_both"></div>
    </div>
    <a href=""><img src="image/sign_in.png"/></a>
  <input type="text" value="Search products" onclick="this.value=''" onblur="this.value='Search products'"/>
</div>
<div class="main">
	<div class="main_left">
    	<?php echo $column_left;?>
        <div class="manufactures">Manufactures 
        	<select>
                <option>Select One</option>
                <option>Select One</option>
                <option>Select One</option>
            </select>
        </div>
        <div class="product_menu">New Products</div>
        <div class="new_products">
        	<marquee onmouseover="this.stop()" onmouseout="this.start()" scrollamount="4" direction="down"> 
                <div><a href=""><img src="image/hot/hot_product_1.jpg" title="sanpham 1"/><div title="sanpham 1">New Products Name</div></a></div>
                <div><a href=""><img src="image/hot/hot_product_2.jpg" title="sanpham 2"/><div title="sanpham 1">New Products Name</div></a></div>
                <div><a href=""><img src="image/hot/hot_product_3.jpg" title="sanpham 3"/><div title="sanpham 1">New Products Name</div></a></div>
                <div><a href=""><img src="image/hot/hot_product_1.jpg" title="sanpham 1"/><div title="sanpham 1">New Products Name</div></a></div>
                <div><a href=""><img src="image/hot/hot_product_1.jpg" title="sanpham 1"/><div title="sanpham 1">New Products Name</div></a></div>
                <div><a href=""><img src="image/hot/hot_product_2.jpg" title="sanpham 2"/><div title="sanpham 1">New Products Name</div></a></div>
                <div><a href=""><img src="image/hot/hot_product_3.jpg" title="sanpham 3"/><div title="sanpham 1">New Products Name</div></a></div>
                <div><a href=""><img src="image/hot/hot_product_1.jpg" title="sanpham 1"/><div title="sanpham 1">New Products Name</div></a></div>
			</marquee>
        </div>
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
    	<?php 
		  //  var_dump($categories);
		    	foreach ($categories as $category)
		    	{
		    		echo '<div class="menu_center">' . $category['name']. '</div>';
		    		echo '<div class="products_list">';
		    		if($category['children'])
		    		{
		    			foreach ($category['children'] as $child)
		    			{
		    				echo '<div class="products_item"><a href="'. $child['href'] .'"><img src="'. $child['image'].'" /><div class="products_item_name">'. $child['name'] .'</div></a></div>';
		    			}
		    		}
		    		echo '<div class="clear_both"></div></div>';
		    	}
         ?>
	
        <div class="menu_center">HOT PRODUCTS</div>
        <div class="products_list">
        	<div class="products_item"><a href=""><img src="image/product/product2_img.jpg" /><div class="products_item_name">Product Item Name</div></a></div>
            <div class="products_item"><a href=""><img src="image/product/product2_img.jpg" /><div class="products_item_name">Product Item Name</div></a></div>
            <div class="products_item"><a href=""><img src="image/product/product2_img.jpg" /><div class="products_item_name">Product Item Name</div></a></div>
            <div class="products_item"><a href=""><img src="image/product/product2_img.jpg" /><div class="products_item_name">Product Item Name</div></a></div>
            <div class="products_item"><a href=""><img src="image/product/product2_img.jpg" /><div class="products_item_name">Product Item Name</div></a></div>
            <div class="products_item"><a href=""><img src="image/product/product2_img.jpg" /><div class="products_item_name">Product Item Name</div></a></div>
            <div class="products_item"><a href=""><img src="image/product/product2_img.jpg" /><div class="products_item_name">Product Item Name</div></a></div>
            <div class="products_item"><a href=""><img src="image/product/product2_img.jpg" /><div class="products_item_name">Product Item Name</div></a></div>
            <div class="products_item"><a href=""><img src="image/product/product2_img.jpg" /><div class="products_item_name">Product Item Name</div></a></div>
            <div class="clear_both"></div>
        </div>
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
        <div class="product_menu">Hot Products</div>
        <div class="hot_products">
            <div class="hot_product_item"><a href="">Hand Washing Solution Gel Ht 300Ml</a></div>
            <div class="hot_product_item"><a href="">Camay Soap Romantic Red 125G</a></div>
            <div class="hot_product_item"><a href="">Clothes Detergent Axo Pink Herbal 800Ml</a></div>
            <div class="hot_product_item"><a href="">Clothes Detergent Zononrro Blue Nature</a></div>
            <div class="hot_product_item"><a href="">Clothes Detergent Zononrro Violet Nature 1000Ml</a></div>
            <div class="hot_product_item"><a href="">Dan Cream Shower 250Ml</a></div>
            <div class="hot_product_item"><a href="">Deodorant Roll Cool Kick For Men 50Ml</a></div>
            <div class="hot_product_item"><a href="">Deodorant Roll Fresh Vitality Energy 50Ml</a></div>
            <div class="hot_product_item"><a href="">Deodorant Roll Happy Time 20Ml</a></div>
            <div class="hot_product_item"><a href="">Dial Soy Almond Milk Shower Gel</a></div>
        </div>
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
            <img src="image/factory.jpg"  title="Goodfo's Factory"/>
            <div>This is ceramic semi products, The Goodsvn processing for customer</div>
        </div>
    </div>
    <div class="clear_both"></div>
</div>
<div class="count_visited"><div class="statistics">Vistors: 1738<br />Online:  279</div></div>
<div class="footer">
	
    
	<div class="logo1"><img src="image/logo1.png" width="70" height="70" /></div>
	<div class="sign">Copyright 2012 Goodsvn - All Right Reserved</div>
    <div class="logo2"><img src="image/logo2.png" width="70" height="70" /></div>
</div>
<body>

</body>
</html>