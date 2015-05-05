<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class campaign extends Frontend_Controller {

	public $data;
	const MODULE='campaign/';

	function __construct()
	{
		parent::__construct();
		$this->load->library(array('form_validation','session','breadcrumb'));
		$this->data['link']=base_url().self::MODULE;
		$this->load->model('campaign_m');
		$this->load->model('fund_categories/fund_categories_m');
		$this->data['categories']=$this->fund_categories_m->read_all_published();
		//show_pre($this->data['categories']);
	}

	public function index()
	{
		try {
			if($this->input->post()){
				$rules=$this->campaign_m->set_rules();
					
				$this->form_validation->set_rules($rules);
				if($this->form_validation->run($this)===TRUE)
				{
					$this->data['insert_data']=array(
						//'group_id'=>'1',
						'user_id'=>$this->session->userdata('lastuser_id'),
						'campaign_title'=>$this->input->post('campaign_title'),
						'fund_category_id'=>$this->input->post('categories'),
						'description'=>$this->input->post('description'),
						//'target_amount'=>get_slug($this->input->post('target_amount')),
						'target_amount'=>$this->input->post('target_amount'),
						
						'status'=>1,
						'created_at'=>date('Y-m-d H:i:s')
						);
					$this->campaign_m->create_row($this->data['insert_data']);
					$this->load->model('signup/signup_m');
					$this->data['insert_data']=array(
						'address_unit'=>$this->input->post('address_unit'),
						'address_street'=>$this->input->post('address_street'),
						'address_suburb'=>$this->input->post('address_suburb'),
						'address_state_id'=>$this->input->post('address_state_id')
					);
					$this->signup_m->update_row($this->session->userdata('lastuser_id'),$this->data['insert_data']);

					//send verfication code to his/her email
					$this->session->set_flashdata('success', 'Campaign added successfully');
					$this->controller_redirect();				
				}else{
					throw new Exception(validation_errors());
				}
			}
			$this->data['subview']=self::MODULE.'campaign';
			$this->load->view('front/main_layout',$this->data);		
		} catch (Exception $e) {
			$this->session->set_flashdata('error', 'Couldnt add campaign '.$e->getMessage());
			$this->controller_redirect();						
		}
	}


	public function personal_details()
	{
		try {
			if($this->input->post()){
				$rule=array(
					array(
						'field'=>'checkagree',
						'label'=>'i agree',
						'rules'=>'required'
						)
					);	
				$this->form_validation->set_rules($rule);
				if($this->form_validation->run($this)===TRUE)
				{
					$this->data['insert_data']=array(
						'video'=>$this->input->post('video')
						//'video'=>$this->input->post('video')
					);

					if($_FILES['photo']['name']){
						$this->data['insert_data']['pic']=$_FILES['photo']['name'];
						//$this->template_data['insert_data']['image']=$_FILES['image']['name'];
						$path='uploads/campaign';
						//$path.=article_m::file_path;
						upload_picture($path,'photo');
					}
					if($_FILES['document']['name']){
						$this->data['insert_data']['document']=$_FILES['document']['name'];
						//$this->template_data['insert_data']['image']=$_FILES['image']['name'];
						$path='uploads/campaign';
						//$path.=article_m::file_path;
						upload_file($path,'document');
					}

					$this->campaign_m->update_row_by_userid($this->session->userdata('lastuser_id'),$this->data['insert_data']);

					//send verfication code to his/her email
					$this->session->set_flashdata('success', 'personal details updated successfully');
					//$this->controller_redirect();	
					redirect(current_url());			
				}else{
					die(validation_errors());
					throw new Exception(validation_errors());
				}
			}
			$this->data['subview']=self::MODULE.'personal_details';
			$this->load->view('front/main_layout',$this->data);		
		} catch (Exception $e) {
			$this->session->set_flashdata('error', 'Couldnt add campaign '.$e->getMessage());
			redirect(current_url());
		}
	}


	function controller_redirect($msg=false){
		if($msg) $this->session->set_flashdata('error', $msg);
		$this->data['link']=base_url().self::MODULE;
		redirect($this->data['link']);				
	}

}

/* End of file sample.php */
/* Location: ./application/modules/sample/controllers/sample.php */