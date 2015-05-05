<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class frontend extends Frontend_Controller {

	public $data;
	const MODULE='frontend/';

	function __construct()
	{
		parent::__construct();
		$this->load->library(array('form_validation','session','breadcrumb'));
		$this->data['link']=base_url().self::MODULE;
	}

	public function ok(){
		echo "inside ok of sample";
		$this->data['subview']=self::MODULE.'list';
		$this->load->view('front/main_layout',$this->data);
	}
	public function index()
	{
		$this->data['subview']=self::MODULE.'list';
		$this->load->view('front/main_layout',$this->data);		
	}

}

/* End of file sample.php */
/* Location: ./application/modules/sample/controllers/sample.php */