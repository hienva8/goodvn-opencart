<div class="menu_center">NEW PRODUCTS</div>
        <div class="products_list">
        <?php foreach ($products as $pro)
        {
        	echo '<div class="products_item"><a href="'. $pro['href'].'"><img src="'. $pro['thumb'].'" /><div class="products_item_name">'.$pro['name'].'</div></a></div>';

        }?>
            <div class="clear_both"></div>
        </div>