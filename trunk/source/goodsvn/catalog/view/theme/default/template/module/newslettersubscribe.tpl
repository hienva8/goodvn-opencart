<div>
  <div id="frm_subscribe " class="newsletters">
  <div align="center" style="font-size:14;">Newsletters</div>
  <form name="subscribe" id="subscribe"   >
  <table border="0" cellpadding="2" cellspacing="2">
   <tr>
     <td align="left"><span class="required">*</span>&nbsp;<?php echo $entry_email; ?><br /><input type="text" value="Type your email adress" onclick="this.value=''" name="subscribe_email" id="subscribe_email"></td>
   </tr>
   
   <tr>
     <td align="left"><input type="hidden" name="subscribe_name" id="subscribe_name"> </td>
   </tr>

   <tr>
     <td align="center">
     <a class="button" onclick="email_subscribe()"><span><?php echo $entry_button; ?></span></a><?php if($option_unsubscribe) { ?>
      <?php } ?>    
     </td>
   </tr>
   <tr>
     <td align="center" id="subscribe_result"></td>
   </tr>
  </table>
  </form>
  </div>
<script language="javascript">
	<?php 
  		if(!$thickbox) { 
	?>	
function email_subscribe(){
	$.ajax({
			type: 'post',
			url: 'index.php?route=module/newslettersubscribe/subscribe',
			dataType: 'html',
            data:$("#subscribe").serialize(),
			success: function (html) {
				eval(html);
			}}); 
}
function email_unsubscribe(){
	$.ajax({
			type: 'post',
			url: 'index.php?route=module/newslettersubscribe/unsubscribe',
			dataType: 'html',
            data:$("#subscribe").serialize(),
			success: function (html) {
				eval(html);
			}}); 
}
   <?php }else{ ?>
function email_subscribe(){
	$.ajax({
			type: 'post',
			url: 'index.php?route=module/newslettersubscribe/subscribe',
			dataType: 'html',
            data:$("#subscribe").serialize(),
			success: function (html) {
				eval(html);
			}}); 
}
function email_unsubscribe(){
	$.ajax({
			type: 'post',
			url: 'index.php?route=module/newslettersubscribe/unsubscribe',
			dataType: 'html',
            data:$("#subscribe").serialize(),
			success: function (html) {
				eval(html);
			}}); 
}
   <?php } ?>
   
$('.fancybox_sub').fancybox({
	width: 180,
	height: 180,
	autoDimensions: false
});
</script>
</div>
