<div class="product_menu"><?php echo $parent_category['name']?></div>
   <div class="catalogue_list">
   <?php 
      foreach ($categories as $category) {
        echo '<div class="catalogue_left"><a href="' . $category['href'].'">'.$category['name'].'</a></div>';
        echo '<div class="catalogue_right">['. $category['total'] .']</div>';
      }     
   ?>
   <div class="clear_both"></div>
</div>