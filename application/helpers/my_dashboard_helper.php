<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

function permission_permit(array $slugs){
	try {
		$ci=& get_instance();
		$total_pemission_allowed=0;
		$id=$ci->session->userdata('id');
		if(!$id) throw new Exception("User not logged in", 1);
		$user=$ci->load->model('user/user_m')->read_row($id);
		if(!$user) throw new Exception("User not found", 1);
		$group_permsissions=$ci->load->model('group/group_permission_m')->read_row($user['group_id']);
		if(!$group_permsissions) throw new Exception("Group Permsissions not found", 1);
		$gps=array();
		if($group_permsissions){
			foreach ($group_permsissions as $gp) {
				$gps[]=$gp['permission_id'];
			}
		}
		foreach ($slugs as $slug) {
			$permission=$ci->load->model('group/permission_m')->read_row_by_slug($slug);
			//show_pre($permission);
			if(!$permission) throw new Exception("Permission not found", 1);
			if(in_array($permission['id'], $gps)){
				$total_pemission_allowed++;
			}
		}
		if(count($slugs)>0 && count($slugs)==$total_pemission_allowed){
			return true;
		}		
	} catch (Exception $e) {
		$ci->session->set_flashdata('error', $e->getMessage());
		redirect();		
	}
}

function show_current_loggedin_username(){
	try {
		$ci=& get_instance();
		return $ci->load->model('user/user_m')->get_user_name();
	} catch (Exception $e) {

	}
}

function current_loggedin_user(){
	try {
		$ci=& get_instance();
		$id=$ci->session->userdata('id');
		return $ci->load->model('user/user_m')->read_row($id);
	} catch (Exception $e) {

	}
}

function redirect_to_dashboard($msg='Permission Denied'){
	$ci=& get_instance();
	$ci->session->set_flashdata('error', $msg);
	redirect();
}

