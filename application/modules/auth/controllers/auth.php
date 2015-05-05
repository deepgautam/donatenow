<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class auth extends MY_Controller {

	const MODULE='auth/';

	function __construct()
	{
		$this->load->library(array('form_validation','session','breadcrumb'));
		parent::__construct();
		$this->load->model('user_m');
		$this->template_data['user_m']=$this->user_m;
	}

	public function index()
	{
		$this->template_data['subview']=self::MODULE.'index';
		$this->load->view('admin/main_layout',$this->template_data);
	}

	function login()
	{
		try {
			if($this->session->userdata('username'))
				redirect('dashboard');
			if($this->input->post())
			{
				$config=array(
					array(
						'field'=>'username',
						'rules'=>'trim|required|min_length[3]'
						),
					array(
						'field'=>'password',
						'rules'=>'trim|required|min_length[5]'
						)
					);	
				$this->form_validation->set_rules($config);
				if($this->form_validation->run($this)===TRUE)
				{
					$username=$this->input->post('username',true);
					$pass=$this->input->post('password',true);
					$this->load->model('user_m');
					$user=$this->user_m->check_login($username,$pass);
					if($user)
					{
						$user_m=$this->user_m;
						switch ($user['status']) {
							case $user_m::PENDING:{
								throw new Exception("Pending user");
								break;
							}
							case $user_m::BLOCKED:{
								throw new Exception("Blocked user");
								break;
							}
							case $user_m::DELETED:{
								throw new Exception("Deleted user");
								break;
							}
						}
						$this->session->set_userdata('username',$user['username']);
						$this->session->set_userdata('id',$user['id']);
						redirect('dashboard');
					}
					else
						throw new Exception("Invalid Username/Password");
				}
				else{
					throw new Exception(validation_errors());
				}
			}
			$this->load->view('login',$this->template_data);
		} catch (Exception $e) {
			$this->session->set_flashdata('error', "Login Failed <hr/> ".$e->getMessage());
			redirect("auth/login");
		}
	}

	function logout()
	{
		// $this->session->unset_userdata('username');
		$this->session->sess_destroy();
		// $this->login();
		redirect('auth/login');
	}


}

/* End of file user.php */
/* Location: ./application/modules/user/controllers/user.php */