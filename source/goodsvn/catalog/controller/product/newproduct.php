<?php 
class ControllerProductNewProduct extends Controller {  
	public $image_with = 183;
	public $image_height = 164;
	public function index() 
	{ 
		//$this->language->load('product/category');
		
		//$this->load->model('catalog/category');
		
		$this->load->model('catalog/product');
		
		$this->load->model('tool/image'); 
		
		if (isset($this->request->get['path'])) {
			$parts = explode('_', (string)$this->request->get['path']);
		} else {
			$parts = array();
		}
		$list_cateid = array();
		if(count($parts) == 0)
		{
			$cateid = '';	
		}else{
			$cateid = end($parts);
		}
		if($cateid !='')
		{
			array_push($list_cateid, $cateid);
			$children = $this->model_catalog_category->getCategories($cateid);
			foreach ($children as $child) 
			{
				array_push($list_cateid, $child['category_id']);
				$children3 = $this->model_catalog_category->getCategories($child['category_id']);
				foreach ($children3 as $child3)
				{
					array_push($list_cateid, $child3['category_id']);
					$children4 = $this->model_catalog_category->getCategories($child3['category_id']);
					foreach ($children4 as $child4)
					{
						array_push($list_cateid, $child4['category_id']);
					}
				}
			}
		}
		if(count($list_cateid)>0)
		{
			$cateid = implode(",", $list_cateid);
		}
		$this->data['products'] = array();
		$results = $this->model_catalog_product->getLatestProductsByCategory(9,$cateid);
		if($results)
		{
			foreach ($results as $result) 
			{
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'],$this->image_with,$this->image_height);
				} else {
					$image = false;
				}
				
				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$price = false;
				}
						
				if ((float)$result['special']) {
					$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$special = false;
				}	
				
				if ($this->config->get('config_review_status')) {
					$rating = $result['rating'];
				} else {
					$rating = false;
				}
				
				$this->data['products'][] = array(
					'product_id' => $result['product_id'],
					'thumb'   	 => $image,
					'name'    	 => $result['name'],
					'price'   	 => $price,
					'special' 	 => $special,
					'rating'     => $rating,
					'reviews'    => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
					'href'    	 => $this->url->link('product/product', 'product_id=' . $result['product_id']),
				);
				
			}
		}
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/newproduct.tpl')) {
				$this->template = $this->config->get('config_template') . '/template/product/newproduct.tpl';
			} else {
				$this->template = 'default/template/product/newproduct.tpl';
			}
				
		$this->render();		
		
  	}
}
?>