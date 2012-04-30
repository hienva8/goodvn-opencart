<?php  
class ControllerModuleCategory extends Controller {
	protected function index() {
		$this->language->load('module/category');
		
    	$this->data['heading_title'] = $this->language->get('heading_title');
		
		if (isset($this->request->get['path'])) {
			$parts = explode('_', (string)$this->request->get['path']);
		} else {
			$parts = array();
		}
		if (isset($parts[0])) {
			$this->data['category_id'] = $parts[0];
		} else {
			$this->data['category_id'] = 0;
		}
		
		if (isset($parts[1])) {
			if(isset($parts[2]))
			{
				$this->data['child_id'] = $parts[2];
				$this->data['category_id'] = $parts[1];
			}
			else{
				$this->data['child_id'] = $parts[1];
			}
		} else {
			$this->data['child_id'] = $this->data['category_id'] ;
		}
		if(count($parts)==0)
		{
			$this->data['name']='';
			$this->data['child_id'] = 0;
		}else{
			$this->data['name']='Catalogue';
		}
							
		$this->load->model('catalog/category');
		$this->load->model('catalog/product');
		
		$this->data['categories'] = array();
		$this->data['parent_category'] = $this->model_catalog_category->getCategory($this->data['child_id']);			
		//var_dump($this->data['parent_category']);	
		
		$categories = $this->model_catalog_category->getCategories($this->data['child_id']);
		
		foreach ($categories as $category) {
			$children_data = array();
			
			$children = $this->model_catalog_category->getCategories($category['category_id']);
			$total = 0;
			foreach ($children as $child) {
				$data = array(
					'filter_category_id'  => $child['category_id'],
					'filter_sub_category' => true
				);		
					
				$product_total = $this->model_catalog_product->getTotalProducts($data);
				$total += $product_total;
				if(count($parts)==0)
				{
					$href = $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id']);
				}
				else{
					$href = $this->url->link('product/listproduct', 'path=' . $child['category_id']);
				}			
				$children_data[] = array(
					'category_id' => $child['category_id'],
					'name'        => $child['name'] ,
					'total'		  => $product_total ,
					//'image'		  => HTTP_IMAGE. '/cache/'.$child['image'],
					'href'        => $href	
				);					
			}
			
			$data = array(
				'filter_category_id'  => $category['category_id'],
				'filter_sub_category' => true	
			);		
				
			$product_total = $this->model_catalog_product->getTotalProducts($data);
			if(count($parts)==2)
			{
				$href = $this->url->link('product/listproduct', 'path=' . $category['category_id']);	
			}
			else{
				if(count($parts)==0){
					$href = $this->url->link('product/category', 'path=' . $category['category_id']);
				}else{
					$href = $this->url->link('product/category', 'path=' . $this->data['category_id']. '_' . $category['category_id']);
				}
			}				
			$this->data['categories'][] = array(
				'category_id' => $category['category_id'],
				'name'        => $category['name'] ,
				'total'		  => $product_total ,
				'children'    => $children_data,
				//'image'		  => HTTP_IMAGE. '/cache/'.$child['image'],
				'href'        => $href
			);
		}
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/category.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/category.tpl';
		} else {
			$this->template = 'default/template/module/category.tpl';
		}
		
		$this->render();
  	}
}
?>