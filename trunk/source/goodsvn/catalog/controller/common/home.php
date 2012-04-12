<?php  
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));

		$this->data['heading_title'] = $this->config->get('config_title');
		/*Some data*/
		$this->load->model('catalog/category');
		$this->load->model('catalog/product');
		
		$this->data['categories'] = array();
			
		$categories = $this->model_catalog_category->getCategories(0);
		
		foreach ($categories as $category) {
			$children_data = array();
				
			$children = $this->model_catalog_category->getCategories($category['category_id']);
				
			foreach ($children as $child) {
				$data = array(
							'filter_category_id'  => $child['category_id'],
							'filter_sub_category' => true
				);
					
				$product_total = $this->model_catalog_product->getTotalProducts($data);
					
				$children_data[] = array(
							'category_id' => $child['category_id'],
							'name'        => $child['name'] . ' (' . $product_total . ')',
							'href'        => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])	
				);
			}
				
			$data = array(
						'filter_category_id'  => $category['category_id'],
						'filter_sub_category' => true	
			);
		
			$product_total = $this->model_catalog_product->getTotalProducts($data);
		
			$this->data['categories'][] = array(
						'category_id' => $category['category_id'],
						'name'        => $category['name'] . ' (' . $product_total . ')',
						'children'    => $children_data,
						'href'        => $this->url->link('product/category', 'path=' . $category['category_id'])
			);
		}
		
		
		
		
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/home.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/home.tpl';
		} else {
			$this->template = 'default/template/common/home.tpl';
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