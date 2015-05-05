<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class fund_categories extends Frontend_Controller {

	public $data;
	const MODULE='fund_categories/';

	function __construct()
	{
		parent::__construct();
		$this->load->library(array('form_validation','session','breadcrumb'));
		$this->data['link']=base_url().self::MODULE;
		$this->load->model('fund_categories');

	}

	public function index()
	{
		try {
			if($this->input->post()){
				$rules=$this->fund_categories->set_rules();
					
				$this->form_validation->set_rules($rules);
				if($this->form_validation->run($this)===TRUE)
				{
					$this->data['insert_data']=array(
						//'group_id'=>'1',
						'user_id'=>$this->session->userdata('lastuser_id'),
						'campaign_title'=>$this->input->post('campaign_title'),
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
			
		}
	}

	public function verify()
	{
		try {
			if($this->input->post()){
			}
			$this->data['subview']=self::MODULE.'verify';
			$this->load->view('front/main_layout',$this->data);		
		} catch (Exception $e) {
			
		}
	}

	public function campaign()
	{
		try {
			if($this->input->post()){
				$rule=array(
					array(
						'field'=>'campaign_title',
						'rules'=>'trim|xss_clean|required|min_length[5]'
						),
					array(
						'field'=>'description',
						'rules'=>'trim|xss_clean|required'
						),
					array(
						'field'=>'target_amount',
						'rules'=>'trim|xss_clean|required|greater_than[2]'
						)
					
					);	
				$this->form_validation->set_rules($rule);
				if($this->form_validation->run($this)===TRUE)
				{
					$this->template_data['insert_data']=array(
						//'group_id'=>'1',
						'campaign_title'=>$this->input->post('campaign_title'),
						'description'=>$this->input->post('description'),
						//'target_amount'=>get_slug($this->input->post('target_amount')),
						'target_amount'=>$this->input->post('target_amount'),
						'address_unit'=>$this->input->post('address_unit'),
						'address_street'=>$this->input->post('address_street'),
						'address_suburb'=>$this->input->post('address_suburb'),
						'address_state_id'=>$this->input->post('address_state_id'),
						'status'=>1,
						//'created_at'=>datetime()
						);
					$this->campaign_m->create_row($this->template_data['insert_data']);

					//send verfication code to his/her email
					$this->session->set_flashdata('success', 'sign_up added successfully');
					$this->controller_redirect();				
				}else{
					throw new Exception(validation_errors());
				}
			}
			$this->data['subview']=self::MODULE.'campaign';
			$this->load->view('front/main_layout',$this->data);		
		} catch (Exception $e) {
			
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