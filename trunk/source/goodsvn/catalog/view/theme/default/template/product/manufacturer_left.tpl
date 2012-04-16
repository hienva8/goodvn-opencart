<script type="text/javascript">
	$(document).ready(function(){
		$("#manufac").change(function(){
			if($(this).val()!=0)
			{
				window.location.href=$(this).val();
			}
		});
	});
</script>
<div class="manufactures">Manufactures 
 <select id="manufac">
    <option value="0">Select One</option>
    <?php foreach ($manufacturers as $manufacturer)
    	echo '<option class="manufac" value="'.$manufacturer['href'].'">'.$manufacturer['name'].'</option>';
    ?>
</select>
</div>