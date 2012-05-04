<?php  
class ControllerCommonHome extends Controller {
    	private $error = array(); 
	public function index() {
		$this->document->setTitle($this->config->get('config_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));

		$this->data['heading_title'] = $this->config->get('config_title');
		/*Some data*/
		$this->load->model('catalog/category');
		$this->load->model('catalog/product');
		//$this->document->addLink('catalog/view/theme/default/goodsvn/css/header.css','stylesheet');
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

				//add new 2012-05-04
				$href='';
				$child_childs = $this->model_catalog_category->getCategories($child['category_id']);	
				if($child_childs && count($child_childs)>0)
				{
					$href = $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id']);
				}
				else {
					$href = $this->url->link('product/listproduct', 'path=' . $child['category_id']);
				}
				$children_data[] = array(
							'category_id' => $child['category_id'],
							'name'        => $child['name'] . ' (' . $product_total . ')',
							'href'        => $href // $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])	
				);
			}
				
			$data = array(
						'filter_category_id'  => $category['category_id'],
						'filter_sub_category' => true	
			);
		
			$product_total = $this->model_catalog_product->getTotalProducts($data);
		
			if($children && count($children)>0)
			{
				$parent_href = $this->url->link('product/category', 'path=' . $category['category_id']);
			}else {
				$parent_href = $this->url->link('product/listproduct', 'path=' . $category['category_id']);
			}
			$this->data['categories'][] = array(
						'category_id' => $category['category_id'],
						'name'        => $category['name'] . ' (' . $product_total . ')',
						'children'    => $children_data,
						'href'        => $parent_href // $this->url->link('product/category', 'path=' . $category['category_id'])
			);
		}
        
     
		///hot product
        $setting = array();
        $setting['image_width'] = 150;
        $setting['image_height'] = 150;
        
        $this->load->model('catalog/product');
		$this->load->model('tool/image');
		$this->data['products'] = array();

		$results = $this->model_catalog_product->getPopularProducts(10);
		
		foreach ($results as $result) {
			if ($result['image']) {
				$image = $this->model_tool_image->resize($result['image'], $setting['image_width'], $setting['image_height']);
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
        //end hot product
        
		//contact form
            if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$mail = new Mail();
			$mail->protocol = $this->config->get('config_mail_protocol');
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->hostname = $this->config->get('config_smtp_host');
			$mail->username = $this->config->get('config_smtp_username');
			$mail->password = $this->config->get('config_smtp_password');
			$mail->port = $this->config->get('config_smtp_port');
			$mail->timeout = $this->config->get('config_smtp_timeout');				
			$mail->setTo($this->config->get('config_email'));
	  		$mail->setFrom($this->request->post['email']);
	  		$mail->setSender($this->request->post['name']);
	  		$mail->setSubject(sprintf($this->language->get('email_subject'), $this->request->post['name']));
	  		$mail->setText(strip_tags(html_entity_decode($this->request->post['enquiry'], ENT_QUOTES, 'UTF-8')));
      		$mail->send();

	  		$this->redirect($this->url->link('information/contact/success'));
    	}

		if (isset($this->error['name'])) {
    		$this->data['error_name'] = $this->error['name'];
		} else {
			$this->data['error_name'] = '';
		}
		
		if (isset($this->error['email'])) {
			$this->data['error_email'] = $this->error['email'];
		} else {
			$this->data['error_email'] = '';
		}		
		
		if (isset($this->error['enquiry'])) {
			$this->data['error_enquiry'] = $this->error['enquiry'];
		} else {
			$this->data['error_enquiry'] = '';
		}		
    
		$this->data['action'] = $this->url->link('common/home');
        	
		if (isset($this->request->post['name'])) {
			$this->data['name'] = $this->request->post['name'];
		} else {
			$this->data['name'] = $this->customer->getFirstName();
		}

		if (isset($this->request->post['email'])) {
			$this->data['email'] = $this->request->post['email'];
		} else {
			$this->data['email'] = $this->customer->getEmail();
		}
		
		if (isset($this->request->post['enquiry'])) {
			$this->data['enquiry'] = $this->request->post['enquiry'];
		} else {
			$this->data['enquiry'] = '';
		}
        //end contact form
		
		
		
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
    
    private function validate() {
        $this->language->load('information/contact');
    	if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 32)) {
      		$this->error['name'] = $this->language->get('error_name');
    	}

    	if (!preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $this->request->post['email'])) {
      		$this->error['email'] = $this->language->get('error_email');
    	}

    	if ((utf8_strlen($this->request->post['enquiry']) < 10) || (utf8_strlen($this->request->post['enquiry']) > 3000)) {
      		$this->error['enquiry'] = $this->language->get('error_enquiry');
    	}
		
		if (!$this->error) {
	  		return true;
		} else {
	  		return false;
		}  	  
  	}
}
?>