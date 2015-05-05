<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class signup extends Frontend_Controller {

	public $data;
	const MODULE='signup/';

	function __construct()
	{
		parent::__construct();
		$this->load->library(array('form_validation','session','breadcrumb'));
		$this->data['link']=base_url().self::MODULE;
		$this->load->model('signup_m');

	}


	public function index()
	{
		try {
			// $lastuser= $this->signup_m->read_row_by_name('ramesh');
			// 			show_pre($lastuser);

			if($this->input->post())
			{			
				$rules=$this->signup_m->set_rules();
				$this->form_validation->set_rules($rules);
				if($this->form_validation->run($this)===TRUE)
				{
					$this->data['insert_data']=array(
						'group_id'=>'1',
						'username'=>$this->input->post('username'),
						'first_name'=>$this->input->post('first_name'),
						'last_name'=>$this->input->post('last_name'),
						'email'=>$this->input->post('email'),
						'pass'=>sha1($this->input->post('password')),
						'address_unit'=>$this->input->post('address_unit'),
						'address_street'=>$this->input->post('address_street'),
						'address_suburb'=>$this->input->post('address_suburb'),
						'address_state_id'=>$this->input->post('address_state_id'),
						'status'=>1,
						'contact_emails'=>$this->input->post('contact_emails'),
						'created_at'=>date('Y-m-d H:i:s'),
						);
					$this->signup_m->create_row($this->data['insert_data']);
					$lastuser= $this->signup_m->read_row_by_name($this->input->post('username'));
					if($lastuser){
						$this->session->set_userdata('lastuser_id', $lastuser['id']);
						//show_pre($lastuser);
						redirect('campaign');
					}

					//send verfication code to his/her email
					$this->session->set_flashdata('success', 'sign_up added successfully');
					$this->controller_redirect();				
				}else{
					throw new Exception(validation_errors());
				}
			}
		} catch (Exception $e) {
			$this->session->set_flashdata('error', 'Couldnt Signup '.$e->getMessage());
		}
		$this->data['subview']=self::MODULE.'sign_up';
		$this->load->view('front/main_layout',$this->data);		
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
					$this->signup_m->create_row($this->template_data['insert_data']);

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