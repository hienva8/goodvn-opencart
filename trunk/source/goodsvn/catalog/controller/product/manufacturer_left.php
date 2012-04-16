<?php 
class ControllerProductManufacturerLeft extends Controller {  
	public function index() { 
		$this->language->load('product/manufacturer');
		
		$this->load->model('catalog/manufacturer');
		
		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->data['heading_title'] = $this->language->get('heading_title');
		
		$this->data['text_index'] = $this->language->get('text_index');
		$this->data['text_empty'] = $this->language->get('text_empty');
		
		$this->data['categories'] = array();
									
		$results = $this->model_catalog_manufacturer->getManufacturers();
		$this->data['manufacturer'][]= array();
		foreach ($results as $result) {
			if (is_numeric(utf8_substr($result['name'], 0, 1))) {
				$key = '0 - 9';
			} else {
				$key = substr(utf8_strtoupper($result['name']), 0, 1);
			}
			
			if (!isset($this->data['manufacturers'][$key])) {
				$this->data['categories'][$key]['name'] = $key;
			}
			
			$this->data['manufacturers'][] = array(
				'name' => $result['name'],
				'href' => $this->url->link('product/manufacturer/product', 'manufacturer_id=' . $result['manufacturer_id'])
			);
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/manufacturer_left.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/product/manufacturer_left.tpl';
		} else {
			$this->template = 'default/template/product/manufacturer_left.tpl';
		}			
				
		$this->render();										
  	}
}
?>