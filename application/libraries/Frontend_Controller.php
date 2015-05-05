<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Frontend_Controller extends MX_Controller {

	public $data=array();
	public function __construct()
	{
		parent::__construct();
		$this->output->enable_profiler('config');
		// echo "inside ".__function__." of class:".get_class()."<br/>";
	}

}
