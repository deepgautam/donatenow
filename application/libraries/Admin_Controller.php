<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin_Controller extends MY_Controller {

	public $template_data='';
	public function __construct()
	{
		parent::__construct();
		$this->template_data='';
		$this->output->enable_profiler('config');
		$this->load->library(array('form_validation','session','breadcrumb','form_validation'));
		if(!$this->session->userdata('username')){
			// echo "seesion not set";
			redirect('auth/login');
/*			$auth_module = modules::load('auth');
			$auth_module->login();
*/		}
		else{
		// echo "inside ".__FUNCTION__." of class:".get_class();
			// echo "seesion set:".$this->session->userdata('username');
			$this->template_data['site_name']=config_item('site_name');
			$this->template_data['powered_by']=config_item('powered_by');
			$this->template_data['errors']='';
		//loading globally requried helper, libraries n etc
			$this->load->helper(array('form','text','my_text','my_date','my_table','my_dashboard','my_file','my_ui'));
			file_helper_init();
			$this->breadcrumb->append_crumb('Dashboard',base_url('dashboard').'');
		}
		// show_pre($this);
	}	

	public function index()
	{
		echo "inside ".__FUNCTION__." of class:".get_class();
	}


}

/* End of file Admin_Controller.php */
/* Location: ./application/libraries/Admin_Controller.php */