<div class="product_menu">Informations</div>
 <div class="informations">
 	<?php foreach ($informations as $information) { ?>
      <div class="information_item"><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></div>
     <?php } ?>
     <div class="information_item"><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></div>
     <div class="information_item"><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></div> 
 </div>