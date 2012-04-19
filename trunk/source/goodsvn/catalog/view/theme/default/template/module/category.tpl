<div class="product_menu">
<?php if($name ==='')
	{
		echo 'Catalogue';}else{echo $parent_category['name'];}?></div>
   <div class="catalogue_list ">
   <ul class="list_item">
   <?php 
      foreach ($categories as $category) {
        echo '<li><div class="catalogue_left"><a href="' . $category['href'].'">'.$category['name'].' ('.$category['total'].' )</a></div>';
        
      if ($category['children']) {
			echo '<div class="arrow"></div><ul>';
			foreach ($category['children'] as $child) 
			{
				echo '<li><a href="'.$child['href'].'">'.$child['name'].'</a></li>';
			}
			echo '</ul></li>';
		}
      }     
   ?>
   </ul>
   <div class="clear_both"></div>
</div>