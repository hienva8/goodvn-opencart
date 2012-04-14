<div class="product_menu">New Products</div>
        <div class="new_products">
        	<marquee onmouseover="this.stop()" onmouseout="this.start()" scrollamount="4" direction="down"> 
        	<?php 
        		foreach ($products as $pro)
                echo '<div><a href="'.$pro['href'].'"><img src="'.$pro['thumb'].'" title="'.$pro['name'].'"/><div title="'.$pro['name'].'">'.$pro['name'].'</div></a></div>';
                
			?>
            </marquee>
        </div>