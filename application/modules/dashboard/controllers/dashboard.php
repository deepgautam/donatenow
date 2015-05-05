<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class dashboard extends Admin_Controller {

	const MODULE='dashboard/';

	function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		if($this->session->userdata('username')){
			$this->template_data['subview']=self::MODULE.'index';
			$this->load->view('admin/main_layout',$this->template_data);
		}
	}


}

/* End of file user.php */
/* Location: ./application/modules/user/controllers/user.php */