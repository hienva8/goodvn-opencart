<?php
// -------------------------------------------------
// Google Translate for OpenCart v1.5.1.x, 1.5.2.x
// By Best-Byte
// www.best-byte.com
// -------------------------------------------------
?>
<?php
class ControllerModuleGtranslate extends Controller {

	protected function index() {
		$this->language->load('module/gtranslate');

    $this->data['heading_title'] = $this->language->get('heading_title');

		$this->id = 'gtranslate';

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/gtranslate.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/gtranslate.tpl';
		} else {
			$this->template = 'default/template/module/gtranslate.tpl';
		}

		$this->render();
	}
}
?>
