<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

function get_article_by_name($slug){
	$ci=& get_instance();
	try {
		$data['row']=$ci->load->model('article/article_m')->read_row_by_slug($slug);
		return $data;
	} catch (Exception $e) {
		redirect();
	}
}


function get_articles_of_category($cat_id){
	$ci=& get_instance();
	try {
		return $ci->load->model('article/article_m')->read_all_published_of_category($cat_id);
	} catch (Exception $e) {
		redirect();
	}
}

function get_category_of_article($id){
	$ci=& get_instance();
	try {
		return $ci->load->model('category/category_m')->read_row($id);
	} catch (Exception $e) {
		redirect();
	}
}


// partners
function get_partners_widget($category_name){
	$ci=& get_instance();
	try {
		$response=$ci->load->model('category/category_m')->read_row_by_slug($category_name);
		$data['row']=$response;
		$data['rows']=get_articles_of_category($response['id']);
		return $data;
	} catch (Exception $e) {
		redirect();
	}	
}
// partners

// partners

function get_category_and_subcategories($category_name){
	$ci=& get_instance();
	try {
		$response=$ci->load->model('category/category_m')->read_row_by_slug($category_name);
		$data['row']=$response;
		$data['rows']=$ci->load->model('category/category_m')->read_all_published_childs($response['id']);						
		return $data;
	} catch (Exception $e) {
		redirect();
	}	
}
function get_category_and_aritcles($category_name){
	$ci=& get_instance();
	try {
		$response=$ci->load->model('category/category_m')->read_row_by_slug($category_name);
		$data['row']=$response;
		$data['rows']=$ci->load->model('article/article_m')->read_all_published_of_category($response['id']);						
		return $data;
	} catch (Exception $e) {
		redirect();
	}	
}
// partners
// menu
function get_menu(){
	try {
		$ci=& get_instance();
		$response=$ci->load->model('menu/menu_m')->get_parents();
		$data['rows']=$response;
		return $data;
	} catch (Exception $e) {
		redirect();
	}		
}

function get_menus(){
	try {
		$ci=& get_instance();
		$response=$ci->load->model('menu/menu_m')->read_menus_for_ordering();
		return $response;		
	} catch (Exception $e) {
		redirect();
	}		
}

function no_of_child_menus($id){
	try {
		$ci=& get_instance();
		$response=$ci->load->model('menu/menu_m')->nested_childs($id);
		if($response[0]['nested_child'])
			return $response[0]['nested_child'];
		else 
			return 0;
	} catch (Exception $e) {
		redirect();
	}		
}

// setting
function get_setting($name){
	try {
		$ci=& get_instance();
		$response=$ci->load->model('setting/setting_m')->read_row_by_name($name);
		return $response['value'];		
	} catch (Exception $e) {
		redirect();
	}		
}
// setting
