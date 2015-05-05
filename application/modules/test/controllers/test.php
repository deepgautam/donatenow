<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
// Make sure to load the Facebook SDK for PHP via composer or manually

use Facebook\FacebookSession;
use Facebook\FacebookRedirectLoginHelper;
// add other classes you plan to use, e.g.:
use Facebook\FacebookRequest;
use Facebook\GraphUser;
use Facebook\FacebookRequestException;

class test extends Frontend_Controller {

	public $data;
	const MODULE='test/';

	function __construct()
	{
		parent::__construct();
		parse_str( $_SERVER['QUERY_STRING'], $_REQUEST );
		$this->load->library(array('form_validation','session','breadcrumb','facebook'));
		$this->data['link']=base_url().self::MODULE;
	}

	public function index()
	{
		$this->data['subview']=self::MODULE.'index';
		$this->load->view('front/main_layout',$this->data);		
	}

	public function mail() {
		$from['from_name'] = 'basant';
		$from['from_email'] =  'basant@gmail.com';
		$to['to_name'] = 'ramesh';
		$to['to_email'] = 'raxizel@gmail.com';					
		$subject = "Support question";
		$message= 'hey there';	
		$res = App\Mailer::sendMail($from, $to, $subject, $message);	
		show_pre($res);
	}

	public function jquery_validation()
	{
		$this->data['subview']=self::MODULE.'jquery_validation';
		$this->load->view('front/main_layout',$this->data);		
	}

	public function sign_up()
	{
		$this->data['subview']=self::MODULE.'sign_up';
		$this->load->view('front/main_layout',$this->data);		
	}

	public function fb_login()
	{
		$user = $this->facebook->getUser();

		// $this->data['user'] = $this->facebook->api('/me');
		// show_pre($this->data['user']);
		// die;

		if(!$user){
			$this->data['url'] = $this->facebook->getLoginUrl(array(
				'redirect_uri' => 'http://localhost/crowd/test', 
				'scope' => array("email") 
				));
		} else {
			$this->data['user'] = $this->facebook->api('/me');
			$this->data['url'] = 'test/fb_profile';
		}
		redirect($this->data['url']);
	}

	public function fb_profile(){
		$this->data['user'] = $this->facebook->api('/me');
		$this->data['subview']=self::MODULE.'profile';
		$this->load->view('front/main_layout',$this->data);
	}
	public function fb_logout()
	{
		die("log out");
		$this->load->library('facebook');
        // Logs off session from website
		$this->facebook->destroySession();
        // Make sure you destory website session as well.
		redirect('welcome/login');

	}


	public function signup(){
		$this->data['subview']=self::MODULE.'sign_up';
		$this->load->view('front/main_layout',$this->data);
	}

	public function user(){
		$user = $this->facebook->getUser();
		if(!$user){
            // Generate a login url
			$data['login_url'] = $this->facebook->getLoginUrl(array(
        		// 'redirect_uri' => site_url('test/logout'), 
				'redirect_uri' => 'http://ivmfilms.com', 
                'scope' => array("email") // permissions here
                ));
			redirect($data['login_url']);
		} else {
            // Get user's data and print it
			$user = $this->facebook->api('/me');
			$this->data['user'] = $user;
			$this->data['subview']=self::MODULE.'sign_up';
			$this->load->view('front/main_layout',$this->data);
			show_pre($user);
		}
	}

	public function fb_lib(){
		$this->load->library('facebook'); // Automatically picks appId and secret from config
        // OR
        // You can pass different one like this
        //$this->load->library('facebook', array(
        //    'appId' => 'APP_ID',
        //    'secret' => 'SECRET',
        //    ));

		$user = $this->facebook->getUser();
 // If user is not yet authenticated, the id will be zero
		if($user == 0){
            // Generate a login url
			$data['login_url'] = $this->facebook->getLoginUrl(array(
        		// 'redirect_uri' => site_url('test/logout'), 
				'redirect_uri' => 'http://ivmfilms.com', 
                'scope' => array("email") // permissions here
                ));
			redirect($data['login_url']);
		} else {
            // Get user's data and print it
			$user = $this->facebook->api('/me');
			$this->data['subview']=self::MODULE.'index';
			$this->load->view('front/main_layout',$this->data);		
			
			print_r($user);
		}
		die;

		if ($user) {
			try {
				$data['user_profile'] = $this->facebook->api('/me');
			} catch (FacebookApiException $e) {
				$user = null;
			}
		}else {
			$this->facebook->destroySession();
		}

		if ($user) {

            // $data['logout_url'] = site_url('http://localhost/crowd/test/login'); // Logs off application
            // OR 
            // Logs off FB!
			$data['logout_url'] = $this->facebook->getLogoutUrl();

		} else {
			$data['login_url'] = $this->facebook->getLoginUrl(array(
        		// 'redirect_uri' => site_url('http://localhost/crowd/test/logout'), 
                'scope' => array("email") // permissions here
                ));
			redirect($data['login_url']);
		}
		show_pre($data);
	}

	public function fb()
	{
		FacebookSession::setDefaultApplication($this->config->item('appID'), $this->config->item('appSecret'));
		$session = new FacebookSession('5e7c42d2d4e2b9b27b72fe9ea2862c44');
		show_pre($session);
		$helper = new FacebookRedirectLoginHelper('http://localhost/crowd/test');
		$loginUrl = $helper->getLoginUrl();
		try {
			$session = $helper->getSessionFromRedirect();
		} catch(FacebookRequestException $ex) {
		// When Facebook returns an error
		} catch(\Exception $ex) {
		// When validation fails or other local issues
		}
		if ($session) {
		// Logged in
		}
		// Use the login url on a link or button to 
		// redirect to Facebook for authentication
	}
}

/* End of file sample.php */
/* Location: ./application/modules/sample/controllers/sample.php */



http://ivmfilms.com/?code=AQD4IrDrKEnmab2ieHjIJTwy0cbHVuqzCikJm-Jadt3Dd98dcs653sAPSpYqoUn6kRSnxv3y7GsNwuVtmc8gT0O-Mm5BtXxJHrPehjAfS_OV3H1NzpNdQpW6OtOow8E266KAHBoqGySwgXY4Zf1Ox8dyEYPVyTCHzo6k3WEASvfgCBDXPdlx_npk-6RcXhCne3Q5hVVFuSIX1DuxgQQ1X9fUYQwBY4p1gv_x24UqtblJALQtR-1BAqkBLkj50ud97ASWWPBrCkaqpaOcS-MvlEtyHvO_vddWUCfiASQshyvj767WWZmeL3I4nyedf6i-irUiug-mS6yoqqmtvoYZl-AT&state=be210ace3b3f6a87954702b67ba26f0a#_=_