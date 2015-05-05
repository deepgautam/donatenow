<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


if (!function_exists('get_action_links')) {
	function get_action_links($user_m=NULL,$status=NULL){
		$alertClass="";
		$action_links=array();
		switch($status){
			case $user_m::PENDING:
			{
				$alertClass="active";
				$action_links=array($user_m::ACTIVE=>$user_m::ACTIVE);
				break;
			}
			case $user_m::ACTIVE:
			{
				$alertClass="";
				$action_links=array(
					$user_m::BLOCKED=>$user_m::BLOCKED,
					$user_m::DELETED=>$user_m::DELETED
					);
				break;
			}
			case $user_m::BLOCKED:
			{
				$alertClass="warning";
				$action_links=array(
					$user_m::ACTIVE=>$user_m::ACTIVE,
					$user_m::DELETED=>$user_m::DELETED
					);
				break;
			}
			case $user_m::DELETED:
			{
				$alertClass="danger";
				$action_links=array($user_m::ACTIVE=>$user_m::ACTIVE);
				break;
			}
		}
		return (array(
			'alertClass'=>$alertClass,
			'action_links'=>$action_links,
			));
	}
}


function count_group_user($group_id){
	try {
		$ci=& get_instance();
		return $ci->load->model('user/user_m')->count_group_user($group_id);
	} catch (Exception $e) {
		
	}
}	

/*function show_current_loggedin_username(){
	try {
		$ci=& get_instance();
		return $ci->load->model('user/user_m')->get_user_name();
	} catch (Exception $e) {

	}
}
*/
/* End of file user_helper.php */
