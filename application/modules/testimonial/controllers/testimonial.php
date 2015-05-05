<?php 
class testimonial extends Admin_Controller
{
	const MODULE='testimonial/';

	function __construct()
	{
		parent::__construct();
		if(!permission_permit(['administrator-testimonial'])) redirect_to_dashboard();
		$this->load->helper(array('testimonial'));
		$this->load->model('testimonial_m');
		$this->template_data['testimonial_m']=$this->testimonial_m;
		$this->template_data['status']=testimonial_m::status();
		$this->template_data['actions']=testimonial_m::actions();
		$this->template_data['link']=base_url().self::MODULE;
		$this->breadcrumb->append_crumb('List Testimonials',base_url().self::MODULE.'index');
	}

	function index($offset=0)
	{
		if(!permission_permit(['list-testimonial'])) redirect_to_dashboard();
		$per_page=5;
		$total_rows=$this->testimonial_m->count_rows();
		$this->template_data['rows']=$this->testimonial_m->read_all($per_page,$offset);
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
			if(!permission_permit(array('list-testimonial','add-testimonial'))) $this->controller_redirect('Permissioin Denied');
			if($this->input->post())
			{
				$this->form_validation->set_rules($this->testimonial_m->set_rules(array('status')));
				$this->set_upload_rule();
				if($this->form_validation->run($this)===TRUE)
				{
					$this->template_data['insert_data']=array(
						'testimonial'=>$this->input->post('testimonial'),
						'std_name'=>$this->input->post('std_name'),
						'std_email'=>$this->input->post('std_email'),
						'std_add'=>$this->input->post('std_add'),
						'std_pic'=>$_FILES['std_pic']['name'],
						'status'=>0,
						);
					$this->upload();
					$this->testimonial_m->create_row($this->template_data['insert_data']);
					$this->session->set_flashdata('success', 'Testimonial added successfully');
					$this->controller_redirect();				
				}
			}			
			$this->breadcrumb->append_crumb('Add','add');
			$this->template_data['subview']=self::MODULE.'add';
			$this->load->view('admin/main_layout',$this->template_data);
		} catch (Exception $e) {
			$this->session->set_flashdata('error', 'Couldnt add testimonial '.$e->getMessage());
			$this->controller_redirect();
		}
	}

	function edit($id=FALSE)
	{
		try {
			if(!permission_permit(array('list-testimonial','edit-testimonial'))) throw new Exception("Permissioin Denied", 1);
			if(!$id) throw new Exception("Error Processing Request", 1);
			$response=$this->get($id);
			if(!$response['success']) throw new Exception($response['data'], 1);
			$this->template_data['row']=$response['data'];
			
			if($this->input->post())
			{
				$this->form_validation->set_rules($this->testimonial_m->set_rules());
				if($this->form_validation->run($this)===TRUE)
				{
					$this->template_data['update_data']=array(
						'testimonial'=>$this->input->post('testimonial'),
						'std_name'=>$this->input->post('std_name'),
						'std_email'=>$this->input->post('std_email'),
						'std_add'=>$this->input->post('std_add'),
						'status'=>$this->input->post('status'),
						);
					if (!empty($_FILES['std_pic']['name']))	{
						$this->upload();
						$this->template_data['update_data']['std_pic']=$_FILES['std_pic']['name'];
					}	

					$this->testimonial_m->update_row($id,$this->template_data['update_data']);
					$this->session->set_flashdata('success', 'Testimonial updated successfully');
					$this->controller_redirect();				
				}
				else{
					throw new Exception("Could not add Testimonial <hr/>");
				}
			}			
			$this->breadcrumb->append_crumb('Edit','edit');
			$this->template_data['subview']=self::MODULE.'edit';
			$this->load->view('admin/main_layout',$this->template_data);
		} catch (Exception $e) {
			$this->controller_redirect('Couldnt edit testimonial '.$e->getMessage());
		}
	}

	function activate($id=NULL){
		try{
			if(!permission_permit(array('activate-testimonial'))) $this->controller_redirect('Permissioin Denied');
			if(!$id) throw new Exception('Invalid paramter');
			$response=$this->get($id);
			if(!$response['success']) throw new Exception($response['data'], 1);
			$this->template_data=array('status'=>testimonial_m::ACTIVE);
			$this->testimonial_m->update_row($id,$this->template_data);
			$this->session->set_flashdata('success', 'Testimonial activated successfully');
		}
		catch(Exception $e){
			$this->session->set_flashdata('error', 'Testimonial not activated '.$e->getMessage());
		}
		$this->controller_redirect();				
	}


	function block($id=NULL){
		try{
			if(!permission_permit(array('block-testimonial'))) $this->controller_redirect('Permissioin Denied');
			$response=$this->get($id);
			if(!$response['success']) throw new Exception($response['data'], 1);
			$this->template_data=array('status'=>testimonial_m::BLOCKED);
			$this->testimonial_m->update_row($id,$this->template_data);
			$this->session->set_flashdata('success', 'Testimonial blocked successfully');
		}
		catch(Exception $e){
			$this->session->set_flashdata('error', 'Testimonial not blocked '.$e->getMessage());
		}
		$this->controller_redirect();				
	}

	function delete($id=NULL){
		try{
			if(!permission_permit(array('delete-testimonial'))) $this->controller_redirect('Permissioin Denied');
			if(!$id) throw new Exception('Invalid paramter');
			$response=$this->get($id);
			if(!$response['success']) throw new Exception($response['data'], 1);
			$this->template_data=array('status'=>testimonial_m::DELETED);
			$this->testimonial_m->update_row($id,$this->template_data);
			$this->session->set_flashdata('success', 'Testimonial deleted successfully');
		}
		catch(Exception $e){
			$this->session->set_flashdata('error', 'Testimonial not deleted '.$e->getMessage());
		}
		$this->controller_redirect();				
	}

	function modal(){
		$this->template_data['subview']=self::MODULE.'hello';
		$this->load->view('admin/modal_layout',$this->template_data);
	}

	function upload(){
		$config['upload_path'] = "./uploads/pics/testimonials/";
		$config['allowed_types'] = 'gif|jpg|png';
		$config['max_size']	= '1000';
		$config['max_width']  = '1024';
		$config['max_height']  = '768';
		$this->load->library('upload', $config);
		if ( ! $this->upload->do_upload('std_pic'))
		{
			$data['error']=$this->upload->display_errors();
			throw new Exception("Could not add Testimonial <hr/>".$data['error']);
		}
		else{
			$data['success'] = array('upload_data' => $this->upload->data());
		}
	}

	function set_upload_rule(){
		if (empty($_FILES['std_pic']['name']))
			$this->form_validation->set_rules('std_pic', 'Student Picture', 'trim|required|xss_clean');
	}

	function controller_redirect($msg=false){
		if($msg) $this->session->set_flashdata('error', $msg);
		$this->template_data['link']=base_url().self::MODULE;
		redirect($this->template_data['link']);				
	}

	function get($id=FALSE){
		$response['success']=false;
		$response['data']='Error Processing Request';
		if(!$id) return $response;
		$testimonial=$this->testimonial_m->read_row($id);
		if($testimonial) {
			$response['success']=true;
			$response['data']=$testimonial;
		}
		else{
			$response['data']='Testimonial not found';
		}
		return $response;
	}
}
?>