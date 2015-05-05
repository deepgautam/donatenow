<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

function get_all_groups(){
	try {
		$ci=& get_instance();
		return $ci->load->model('group/group_m')->get_groups();
	} catch (Exception $e) {
		
	}
}	


/* End of file user_helper.php */
