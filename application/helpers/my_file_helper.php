<?php

function file_helper_init(){
	$config['upload_path']="uploads/files/";
	$config['upload_pic_path']=$config['upload_path']."pics/";
	$config['upload_vdo_path']=$config['upload_path']."vdos/";
}

function get_upload_file_path(){
	return $path=base_url()."uploads/files/";
}

function get_upload_pic_path(){
	return $path=get_upload_file_path()."pics/";
}

function get_upload_video_path(){
	return $path=get_upload_file_path()."videos/";
}

function get_relative_upload_file_path(){
	return "./uploads/files/pics/";
}

function get_relative_upload_video_path(){
	return "./uploads/files/videos/";
}

function upload_picture($path=null,$file_input_name=null){
	$ci=& get_instance();
	if($path && $file_input_name){
		$config['upload_path'] = $path;
		$config['allowed_types'] = 'gif|jpg|png';
		$config['max_size']	= '1000';
		$config['max_width']  = '1024';
		$config['max_height']  = '768';
		$ci->load->library('upload', $config);
		if (!$ci->upload->do_upload($file_input_name))
		{
			$data['error']=$ci->upload->display_errors();
			throw new Exception("Could not upload picture <hr/>".$data['error']);
		}
		else{
			$data['success'] = array('upload_data' => $ci->upload->data());
		}			
	}
}

function upload_video($path=null,$file_input_name=null){
	$ci=& get_instance();
	if($path && $file_input_name){
		$config['upload_path'] = $path;
		$config['allowed_types'] = 'mp3|mp4|3gp|flv';
		$config['max_size']	= '25000';
		/*$config['max_width']  = '1024';
		$config['max_height']  = '768';
		*/
		$ci->load->library('upload', $config);
		if ( ! $ci->upload->do_upload($file_input_name))
		{
			$data['error']=$ci->upload->display_errors();
			throw new Exception("Could not upload video <hr/>".$data['error']);
		}
		else{
			$data['success'] = array('upload_data' => $ci->upload->data());
		}			
	}
}

function is_picture_exists($pic){
	if($pic){
		$path=get_upload_pic_path();
		$file=$path.$pic;
		return $file;
		if(file_exists($file)){
			return $file;
		}
		return false;
	}
}

function is_video_exists($pic){
	if($pic){
		$path=get_upload_video_path();
		$file=$path.$pic;
		return $file;
		if(file_exists($file)){
			return $file;
		}
		else
			echo "nf";
		// return false;
	}
}

function is_article_picture_exists($pic){
	if($pic){
		$path=get_upload_pic_path().'/articles/';
		$file=$path.$pic;
		return $file;
		if(file_exists($file)){
			return $file;
		}
		return false;
	}
}

//api version
function is_picture_exists_api($pic){
	if($pic){
		return $pic;
		if(file_exists($pic)){
			return $pic;
		}
		return false;
	}
}
//api version
?>