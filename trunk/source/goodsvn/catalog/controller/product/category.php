<?php 
class ControllerProductCategory extends Controller {  
	public function index() { 
		$this->language->load('product/category');
		
		$this->load->model('catalog/category');
		
		$this->load->model('catalog/product');
		
		$this->load->model('tool/image'); 
		
		
		if (isset($this->request->get['path'])) {
			$parts = explode('_', (string)$this->request->get['path']);
		} else {
			$parts = array();
		}
		
	/*	if (isset($parts[0])) {
			$this->data['category_id'] = $parts[0];
		} else {
			$this->data['category_id'] = 0;
		}
		
		//add new
		if (isset($parts[1])) {
			$this->data['child_id'] = $parts[1];
		} else {
			$this->data['child_id'] = $this->data['category_id'] ;
		}
		$this->data['list_cate']=1;
		if(count($parts)==0)
		{
			$this->data['name']='';
			$this->data['child_id'] = 0;
		}else{
			if(count($parts)===2)
			{
				$this->data['list_cate']=0;
			}
			$this->data['name']='Catalogue';
		}
		*/
		$this->data['category_id'] = 0;
		$this->data['child_id'] = 0;
		$this->data['name']='Catalogue';
		//echo $this->data['child_id'];	
		$this->data['categories'] = array();
		$category_info = $this->model_catalog_category->getCategory($this->data['child_id']);	
		$this->data['parent_category'] =$category_info;
		$this->data['href_parent']='';
		if ($category_info) {
	  		$this->document->setTitle($category_info['name']);
			$this->document->setDescription($category_info['meta_description']);
			$this->document->setKeywords($category_info['meta_keyword']);
			
			$this->data['heading_title'] = $category_info['name'];
			$this->data['href_parent'] = $this->url->link('product/listproduct', 'path=' . $category_info['category_id']);
		}else {
			$this->document->setTitle("Catalogue");
			$this->data['heading_title'] = "Catalogue";
			$this->data['href_parent']='';
		}
		$this->document->addLink('catalog/view/theme/default/goodsvn/css/products.css','stylesheet');
		$categories = $this->model_catalog_category->getCategories($this->data['child_id']);
		
		/*if($categories && count($categories)>0)
		{
			$this->data['list_cate']=1;
		}else{
			$this->data['list_cate']=0;
		}*/
		$this->data['list_cate']=0;
		//echo count($categories);
		
		foreach ($categories as $category) 
		{
			$children_data = array();
			
			$children = $this->model_catalog_category->getCategories($category['category_id']);
			$total = 0;
			foreach ($children as $child) 
			{
				$this->data['list_cate']=1;
				$data = array(
					'filter_category_id'  => $child['category_id'],
					'filter_sub_category' => true
				);		
					
				$product_total = $this->model_catalog_product->getTotalProducts($data);
				$total += $product_total;
				
				
			/*	if(count($parts)==0)
				{
					$href = $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id']);
				}
				else{
					$href = $this->url->link('product/listproduct', 'path=' . $child['category_id']);
				}	
				*/
				$child_childs = $this->model_catalog_category->getCategories($child['category_id']);	
				if($child_childs && count($child_childs)>0)
				{
					$href = $this->url->link('product/subcategory', 'path=' . $category['category_id'] . '_' . $child['category_id']);
				}
				else {
					$href = $this->url->link('product/listproduct', 'path=' . $child['category_id']);
				}
			 if ($child['image']) { 
				$image = $this->model_tool_image->resize($child['image'], 183, 164); 
				} else { 
				$image = $this->model_tool_image->resize('no_image.jpg', 183, 164);  
				}		
				$children_data[] = array(
					'category_id' => $child['category_id'],
					'name'        => $child['name'] ,
					'total'		  => $product_total ,
					'image'		  => $image,
					'href'        => $href	
				);					
			}
			
			$data = array(
				'filter_category_id'  => $category['category_id'],
				'filter_sub_category' => true	
			);		
				
			$product_total = $this->model_catalog_product->getTotalProducts($data);
			if ($category['image']) { 
				$image = $this->model_tool_image->resize($category['image'], 183, 164); 
				} else { 
				$image = $this->model_tool_image->resize('no_image.jpg', 183, 164);  
				}
				if($children && count($children)>0)
				{
					$href = $this->url->link('product/subcategory', 'path=' . $this->data['category_id']. '_' . $category['category_id']);
				}
				else{
					$href = $this->url->link('product/listproduct', 'path=' . $category['category_id']);
				}
/*
				if(count($parts)==2)
				{
					$href = $this->url->link('product/listproduct', 'path=' . $category['category_id']);
					
				}
				else{
					$href = $this->url->link('product/category', 'path=' . $this->data['category_id']. '_' . $category['category_id']);
				}	
*/				
				$this->data['categories'][] = array(
					'category_id' => $category['category_id'],
					'name'        => $category['name'] ,
					'total'		  => $product_total ,
					'children'    => $children_data,
					'image'		  => $image,
					'href'        => $href,
					'cate_href'		=>$this->url->link('product/listproduct', 'path=' . $category['category_id'])
				);
			
		}
		
		if(count($categories)==0)
		{
			$this->redirect($this->url->link('product/listproduct&path='.$this->data['child_id']));
		}
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/category.tpl')) {
				$this->template = $this->config->get('config_template') . '/template/product/category.tpl';
			} else {
				$this->template = 'default/template/product/category.tpl';
			}
			
			$this->children = array(
				'module/category',
				'common/column_right',
				'common/content_top',
				'common/content_bottom',
				'common/footer',
				'common/header',
				'product/newproduct',
				'product/newproduct_left',
				'product/hotproduct_right',
				'product/manufacturer_left',
				'module/newslettersubscribe',
				'module/information'
			);
				
			$this->response->setOutput($this->render());	
		
  	}
}
?>