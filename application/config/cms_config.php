<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

const HOME_PAGE_PARTNER='partners';
const HOME_PAGE_COURSE='courses';
const HOME_PAGE_SLIDER='slider';

const NEWS_EVENTS='news-events';

const FOOTER_ADDRESS='address';
const FOOTER_LINKS='useful-links';


function is_default($slug){
	if(in_array($slug,
		array(
			HOME_PAGE_SLIDER,
			HOME_PAGE_PARTNER,
			HOME_PAGE_COURSE,
			FOOTER_ADDRESS,
			FOOTER_LINKS
			))) {
		return true;
}
else 
	return false;
}

function show_pre($arry = Null)
{
	if ($arry) {
		echo "<pre>";
		print_r($arry);
		echo "</pre>";
	}
}

$config['site_name']="Vision Soft Site";
$config['powered_by']="Vision Soft";

$config['admin_template_path']="admin/templates/";
$config['admin_template']="default";
$config['admin_template']="charisma-master";
$config['admin_template']="metis";

function template_asset_path(){
	$path="templates/default";
	$path="templates/charisma-master";
	$path="templates/metis";
	return $path;
}

function admin_template_asset_path(){
	$path="templates/admin/default";
	$path="templates/admin/charisma-master";
	$path="templates/admin/metis";
	return base_url().$path;
}

function front_template_path(){
	$path="templates/front/";
	return base_url().$path;
}

function front_assets_path(){
	$path="templates/assets/";
	return base_url().$path;
}

// for mailng
$config['smtp_host']  = 'smtp.gmail.com';
$config['smtp_port']  = 465;
$config['smtp_username'] = 'celosiadesigns4u@gmail.com';
$config['smtp_password'] = 'setedeep';
$config['smtp_type'] = 'ssl';



/* End of file cms_config.php */
/* Location: ./application/config/cms_config.php */