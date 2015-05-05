<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class MY_Form_validation extends CI_Form_validation {

	/**
	 * Alpha-numeric with underscores and dashes
	 *
	 * @access	public
	 * @param	string
	 * @return	bool
	 */
	public function alpha_space($str)
	{
		return ( ! preg_match("/^([-a-z0-9_-\ ])+$/i", $str)) ? FALSE : TRUE;
	}

	public function is_article_name_unique($str,$id)
	{
		$CI=CI::$APP;
		$entity=$CI->load->model('article/article_m')->read_row_by_name($str);		
		if (!$entity){
			return TRUE;			
		}
		else
		{
			if($id!=$entity['id']){
				$CI->form_validation->set_message("is_article_name_unique", "The %s ($str) is already used, please try another <br/>");
				return FALSE;
			}
			return TRUE;
		}
	}

	public function is_category_name_unique($str,$id)
	{
		$CI=CI::$APP;
		$entity=$CI->load->model('category/category_m')->read_row_by_name($str);		
		if (!$entity){
			return TRUE;			
		}
		else
		{
			if($id!=$entity['id']){
				$CI->form_validation->set_message("is_category_name_unique", "The %s ($str) is already used, please try another <br/>");
				return FALSE;
			}
			return TRUE;
		}
	}

	function isAlreadyRegistered($email,$editUserId)
	{

		// $this->form_validation->set_rules('email', 'Email', "required|valid_email|isAlreadyRegistered[".$user->id()."]");

		$CI=CI::$APP;
		$user=$CI->doctrine->em->getRepository('models\User')->findOneBy(array('email'=>$email));
		if (!$user)
			return TRUE;
		else
		{
			if($editUserId!=$user->id()){
				$CI->form_validation->set_message("isAlreadyRegistered", "The %s ($email) is already registered, please try another email address<br/>");
				return FALSE;
			}
			return TRUE;
		}
	}



	//callbacks by forms
}
// END Form Validation Class

