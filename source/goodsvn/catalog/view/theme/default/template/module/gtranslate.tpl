<?php
// -------------------------------------------------
// Google Translate for OpenCart v1.5.1.x, 1.5.2.x
// By Best-Byte
// www.best-byte.com
// -------------------------------------------------
?>
<div class="box">
 <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
<div id="google_translate_element" align="center"></div>  
<script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({
    pageLanguage: 'auto',
    autoDisplay: false,
    layout: google.translate.TranslateElement.InlineLayout.SIMPLE
  }, 'google_translate_element');
}
</script>
<script src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
   </div>
</div>
  