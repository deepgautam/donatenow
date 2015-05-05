<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class MY_Controller extends MX_Controller {

	private $template_data='';

	public function __construct()
	{
		parent::__construct();
		//Do your magic here
		// echo "inside ".__function__." of class:".get_class()."<br/>";
	}

	public function index()
	{
		// echo "inside ".__function__." of class:".get_class();
	}

}

/* End of file MY_Controller.php */
/* Location: ./application/core/MY_Controller.php */