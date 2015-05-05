<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class group extends Admin_Controller {

	const MODULE='group/';

	function __construct()
	{
		parent::__construct();
		$this->load->model('group_m');
		$this->load->helper('user/user');
		$this->load->helper('group/group_permission');
		$this->template_data['group_m']=$this->group_m;
		$this->template_data['status']=group_m::status();
		$this->template_data['actions']=group_m::actions();
		$this->template_data['link']=base_url().self::MODULE;
		$this->template_data['groups']=$this->group_m->get_groups();
		$this->breadcrumb->append_crumb('List Groups',base_url().self::MODULE.'index');
	}

	function index($offset=0)
	{
		$per_page=5;
		$total_rows=$this->group_m->count_rows();
		$this->template_data['rows']=$this->group_m->read_all($per_page,$offset);
		if($total_rows>$per_page){
			$this->load->library('pagination');
			$config['base_url']=base_url().self::MODULE."index";
			$config['total_rows']=$total_rows;
			$config['per_page']=$per_page;
			$config['prev']='Previous';
			$config['next']='Next';
			$this->pagination->initialize($config);
			$this->template_data['pages']=$this->pagination->create_links();
		}
		$this->template_data['offset']=$offset;
		$this->template_data['subview']=self::MODULE.'list';
		$this->load->view('admin/main_layout',$this->template_data);
	}

	function add()
	{
		try {
			if($this->input->post())
			{
				$this->form_validation->set_rules($this->group_m->set_rules());
				if($this->form_validation->run($this)===TRUE)
				{
					$this->template_data['insert_data']=array(
						'name'=>$this->input->post('name'),
						'desc'=>$this->input->post('desc')
						);
					if($this->input->post('group'))
						$this->template_data['insert_data']['parent_group_id']=$this->input->post('group');
					$this->group_m->create_row($this->template_data['insert_data']);
					$this->session->set_flashdata('success', 'Group added successfully');
					$this->controller_redirect();				
				}
			}			
			$this->breadcrumb->append_crumb('Add','add');
			$this->template_data['subview']=self::MODULE.'add';
			$this->load->view('admin/main_layout',$this->template_data);
		} catch (Exception $e) {
			$this->session->set_flashdata('error', 'Couldnt add group '.$e->getMessage());
			redirect(current_url());
		}
	}

	function edit($id)
	{
		try {
			if(!$id) throw new Exception("Invalid Parameter", 1);
			$this->template_data['row']=$this->group_m->read_row($id);
			if($this->input->post())
			{
				$this->form_validation->set_rules($this->group_m->set_rules());
				if($this->form_validation->run($this)===TRUE)
				{
					$this->template_data['update_data']=array(
						'name'=>$this->input->post('name'),
						'desc'=>$this->input->post('desc'),
						'status'=>$this->input->post('status'),
						);
					if($this->input->post('group'))
						$this->template_data['insert_data']['parent_group_id']=$this->input->post('group');
					$this->group_m->update_row($id,$this->template_data['update_data']);
					$this->session->set_flashdata('success', 'Group updated successfully');
					$this->controller_redirect();				
				}
				else{
					throw new Exception("Could not add Testimonial <hr/>");
				}
			}			
		} catch (Exception $e) {

		}
		$this->breadcrumb->append_crumb('Edit','edit');
		$this->template_data['subview']=self::MODULE.'edit';
		$this->load->view('admin/main_layout',$this->template_data);
	}

	function action($action_id=NULL,$id=NULL){
		try{
			if(!$action_id || !$id) throw new Exception('Invalid paramter');
			switch($action_id){
				case group_m::ACTIVE:
				{
					$status=group_m::ACTIVE;
					break;
				}
				case group_m::BLOCKED:
				{
					$status=group_m::BLOCKED;
					break;
				}
				case group_m::DELETED:
				{
					$status=group_m::DELETED;
					break;
				}
			}
			$this->template_data=array('status'=>$status);
			$this->group_m->update_row($id,$this->template_data);
			$this->session->set_flashdata('success', 'Group '.group_m::status($action_id).' successfully');
		}
		catch(Exception $e){
			echo $e->getMessage();
		}
		$this->controller_redirect();				
	}

	function group_permsission($slug=FALSE)
	{
		try {
			if(!$slug) throw new Exception("Error Processing Request", 1);			
			$var=function(){
				$serialized_data = serialize(array('Math', 'Language', 'Science'));  
				$json_data = json_encode(array('Math', 'Language', 'Science'));  
				show_pre($serialized_data);
				show_pre($json_data);
				show_pre(json_decode($json_data));					
			};
			//echo $var();
			$this->template_data['group']=$this->group_m->read_row_by_slug($slug);
			if(!$this->template_data['group']) throw new Exception("Group Couldn't be found", 1);
			$this->load->model('group_permission_m');
			$this->load->model('permission_m');
			$this->template_data['group_permission_m']=$this->group_permission_m;
			$this->template_data['permission_m']=$this->permission_m;
			//reset old permission and save new permission
			if($this->input->post()){
				$this->group_permission_m->reset_group_permission($this->template_data['group']['id']);
				array_walk($this->input->post('permission'),
					function($val,$key){
						$insert_data=array(
							'group_id'=>$this->template_data['group']['id'],
							'permission_id'=>$key,
							);
						$this->group_permission_m->create_row($insert_data);
					},'');
				$this->session->set_flashdata('success', 'Group Permission updated successfully for Group :: '.ucfirst($this->template_data['group']['name']));
				$this->controller_redirect();				
			}
			$this->template_data['rows']=$this->permission_m->get_permissions();
			$group_permsissions=$this->group_permission_m->read_row($this->template_data['group']['id']);
			$gps=array();
			if($group_permsissions){
				foreach ($group_permsissions as $gp) {
					$gps[]=$gp['permission_id'];
				}
			}
			$this->template_data['row']=$this->template_data['group'];
			$this->template_data['group_permsissions']=$gps;
			$this->breadcrumb->append_crumb('Group Permission','#');
			$this->template_data['subview']=self::MODULE.'group_permission';
			$this->load->view('admin/main_layout',$this->template_data);
			
		} catch (Exception $e) {
			$this->session->set_flashdata('error', $e->getMessage());
			$this->controller_redirect();
		}
	}

	function controller_redirect(){
		$this->template_data['link']=base_url().self::MODULE;
		redirect($this->template_data['link']);				
	}

}	
