<?php 
class ControllerInformationAboutus extends Controller {
	    
  	public function index() {
        if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
			$this->data['base'] = $this->config->get('config_ssl');
		} else {
			$this->data['base'] = $this->config->get('config_url');
		}
        
        $this->document->setTitle('About us');
		$this->document->setDescription($this->config->get('config_meta_description'));
    
		$this->data['activity'] = $this->url->link('information/activity');
        
        $this->data['heading_title'] = $this->config->get('config_title');
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/aboutus.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/information/aboutus.tpl';
		} else {
			$this->template = 'default/template/information/aboutus.tpl';
		}
		
		$this->children = array(
			'common/column_left',
			'common/column_right',
			'common/content_top',
			'common/content_bottom',
			'common/footer',
			'common/header'
		);
				
 		$this->response->setOutput($this->render());		
  	}
}
?>
