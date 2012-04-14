<div class="product_menu">Hot Products</div>
        <div class="hot_products">
        <?php foreach ($products as $pro)
            echo '<div class="hot_product_item"><a href="'.$pro['href'].'">'.$pro['name'].'</a></div>';
            
        ?>
       </div>